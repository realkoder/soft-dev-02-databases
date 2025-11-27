-- MySQL dump 10.13  Distrib 8.0.44, for Linux (aarch64)
--
-- Host: localhost    Database: munchora
-- ------------------------------------------------------
-- Server version	8.0.44

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
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2025-10-09 15:13:03.927289','2025-10-09 15:13:03.927291');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
INSERT INTO `feedbacks` VALUES (1,'Love the recipes! Keep up the great work.','Alice Johnson','alice@example.com','general','2025-10-09 15:13:35.712737','2025-10-09 15:13:35.712737'),(2,'Found a bug when trying to upload an image.','Bob Smith','bob@example.com','bug','2025-10-09 15:13:35.715244','2025-10-09 15:13:35.715244'),(3,'Could you add more vegan recipes?','Carol Lee','carol@example.com','features','2025-10-09 15:13:35.717423','2025-10-09 15:13:35.717423'),(4,'The website is loading slowly on mobile.','David Kim','david@example.com','general','2025-10-09 15:13:35.719676','2025-10-09 15:13:35.719676'),(5,'I appreciate the detailed cooking instructions!','Eve Martinez','eve@example.com','general','2025-10-09 15:13:35.721843','2025-10-09 15:13:35.721843'),(6,'Would love a dark mode option.','Frank Green','frank@example.com','features','2025-10-09 15:13:35.724298','2025-10-09 15:13:35.724298'),(7,'The login process is confusing.','Grace Hopper','grace@example.com','interface','2025-10-09 15:13:35.726286','2025-10-09 15:13:35.726286'),(8,'Great app, but the search feature could be faster.','Hannah Brown','hannah@example.com','general','2025-10-09 15:13:35.730263','2025-10-09 15:13:35.730263'),(9,'Images sometimes fail to upload on Safari.','Ian Clarke','ian@example.com','bug','2025-10-09 15:13:35.732733','2025-10-09 15:13:35.732733'),(10,'Please add a category filter for recipes.','Jane Doe','jane@example.com','features','2025-10-09 15:13:35.734886','2025-10-09 15:13:35.734886'),(11,'Really enjoy the grocery list feature.','Kevin Lee','kevin@example.com','general','2025-10-09 15:13:35.737027','2025-10-09 15:13:35.737027'),(12,'The AI recipe generator is amazing!','Laura Kim','laura@example.com','general','2025-10-09 15:13:35.739458','2025-10-09 15:13:35.739458'),(13,'I had trouble resetting my password.','Mike Taylor','mike@example.com','bug','2025-10-09 15:13:35.741614','2025-10-09 15:13:35.741614'),(14,'Consider adding multi-language support.','Nina Patel','nina@example.com','features','2025-10-09 15:13:35.743766','2025-10-09 15:13:35.743766'),(15,'Some recipes are missing nutrition info.','Oliver White','oliver@example.com','bug','2025-10-09 15:13:35.746972','2025-10-09 15:13:35.746972'),(16,'The mobile layout looks great!','Paula Adams','paula@example.com','general','2025-10-09 15:13:35.749369','2025-10-09 15:13:35.749369'),(17,'Notifications for saved recipes would be helpful.','Quinn Martin','quinn@example.com','features','2025-10-09 15:13:35.751478','2025-10-09 15:13:35.751478'),(18,'Sometimes the app crashes when uploading images.','Rachel Scott','rachel@example.com','bug','2025-10-09 15:13:35.759111','2025-10-09 15:13:35.759111'),(19,'Love the step-by-step recipe instructions.','Sam Wilson','sam@example.com','general','2025-10-09 15:13:35.761823','2025-10-09 15:13:35.761823'),(20,'Would be great to share recipes with friends.','Tina Young','tina@example.com','features','2025-10-09 15:13:35.765018','2025-10-09 15:13:35.765018');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_audits`
--

LOCK TABLES `grocery_list_audits` WRITE;
/*!40000 ALTER TABLE `grocery_list_audits` DISABLE KEYS */;
INSERT INTO `grocery_list_audits` VALUES (1,'7927edc6-2b07-42ff-8204-7716c12e11ec','bf513f79-9851-4123-9e62-31976e22bbc0','INSERT',NULL,'{\"name\": \"Home\", \"created_at\": \"2025-10-09 15:13:35.774325\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(2,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Etc\", \"created_at\": \"2025-10-09 15:13:35.778336\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(3,'e03f487c-c81e-44d1-9ea6-14505199eb21','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"stuff\", \"created_at\": \"2025-10-09 15:13:35.782021\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(4,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Dinner party\", \"created_at\": \"2025-10-09 15:13:35.785319\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(5,'6754a304-1dd7-40bd-ab59-b79f0fd21c8a','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Work\", \"created_at\": \"2025-10-09 15:13:35.788934\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(6,'d7e1ee7d-f0cc-4968-9b84-1ba2197fb32b','d0bb7407-9dd7-4991-b4d3-90dc1c592026','INSERT',NULL,'{\"name\": \"Shared\", \"created_at\": \"2025-10-09 15:13:35.792333\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(7,'98fa5d68-a9ae-4c96-b6e9-6d470a0d1d21','486731fc-e3f3-49ae-9426-1c3bf03844ae','INSERT',NULL,'{\"name\": \"Random\", \"created_at\": \"2025-10-09 15:13:35.796103\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(8,'b5a8167d-7582-43ae-a22a-b70ad431e272','bf513f79-9851-4123-9e62-31976e22bbc0','INSERT',NULL,'{\"name\": \"Sports\", \"created_at\": \"2025-10-09 15:13:35.799233\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(9,'e5adaa67-26f8-4a8b-9b29-cc6ba916c7ed','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Baking\", \"created_at\": \"2025-10-09 15:13:35.802722\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(10,'6cf199be-117f-40de-861b-698c11480aae','a931dd50-2988-4d56-8815-12a211e85eb7','INSERT',NULL,'{\"name\": \"Holiday\", \"created_at\": \"2025-10-09 15:13:35.807369\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(11,'84d1d647-e562-4a9c-86b7-7c09e59e332d','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"TEST LISTE\", \"created_at\": \"2025-10-09 15:18:20.707605\"}','2025-10-09 15:18:20.000000','2025-10-09 15:18:20.000000'),(12,'2bbd3641-c54d-4776-9c07-0c182364ad51','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:31:56.621402\"}','2025-10-17 11:31:56.000000','2025-10-17 11:31:56.000000'),(13,'2bbd3641-c54d-4776-9c07-0c182364ad51','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:31:56.621402\"}',NULL,'2025-10-17 11:31:57.000000','2025-10-17 11:31:57.000000'),(14,'fd6baf03-4832-40a8-9c4d-86f8bc48c128','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:31:58.242202\"}','2025-10-17 11:31:58.000000','2025-10-17 11:31:58.000000'),(15,'fd6baf03-4832-40a8-9c4d-86f8bc48c128','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:31:58.242202\"}',NULL,'2025-10-17 11:32:00.000000','2025-10-17 11:32:00.000000'),(16,'650fc0e4-2c4c-4496-8042-13a1ee4f32ce','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:32:02.129509\"}','2025-10-17 11:32:02.000000','2025-10-17 11:32:02.000000'),(17,'650fc0e4-2c4c-4496-8042-13a1ee4f32ce','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:32:02.129509\"}',NULL,'2025-10-17 11:32:02.000000','2025-10-17 11:32:02.000000'),(18,'8df1f796-8597-48cc-9a34-59d3458fed19','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Test List 🍹\", \"created_at\": \"2025-10-17 11:32:03.011372\"}','2025-10-17 11:32:03.000000','2025-10-17 11:32:03.000000'),(19,'8df1f796-8597-48cc-9a34-59d3458fed19','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Test List 🍹\", \"created_at\": \"2025-10-17 11:32:03.011372\"}',NULL,'2025-10-17 11:32:03.000000','2025-10-17 11:32:03.000000'),(20,'45950184-cbc8-4194-af34-4c2b387ae77a','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:32:04.541828\"}','2025-10-17 11:32:04.000000','2025-10-17 11:32:04.000000'),(21,'45950184-cbc8-4194-af34-4c2b387ae77a','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Shopping 🛒\", \"created_at\": \"2025-10-17 11:32:04.541828\"}',NULL,'2025-10-17 11:32:04.000000','2025-10-17 11:32:04.000000'),(22,'5e8f0de2-0630-4d1f-9eab-cafb0894cfc9','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"My Shopping List\", \"created_at\": \"2025-11-25 13:04:40.208350\"}','2025-11-25 13:04:40.000000','2025-11-25 13:04:40.000000'),(23,'60598aa1-d7f5-42a2-9e22-0b5e5e98e3fc','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"My Shopping List\", \"created_at\": \"2025-11-25 14:01:58.717737\"}','2025-11-25 14:01:58.000000','2025-11-25 14:01:58.000000'),(24,'60598aa1-d7f5-42a2-9e22-0b5e5e98e3fc','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"My Shopping List\", \"created_at\": \"2025-11-25 14:01:58.717737\"}','{\"name\": \"YO SUP\", \"created_at\": \"2025-11-25 14:01:58.717737\"}','2025-11-25 14:02:06.000000','2025-11-25 14:02:06.000000'),(25,'60598aa1-d7f5-42a2-9e22-0b5e5e98e3fc','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"YO SUP\", \"created_at\": \"2025-11-25 14:01:58.717737\"}','{\"name\": \"HELTISKK\", \"created_at\": \"2025-11-25 14:01:58.717737\"}','2025-11-25 14:04:51.000000','2025-11-25 14:04:51.000000'),(26,'60598aa1-d7f5-42a2-9e22-0b5e5e98e3fc','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"HELTISKK\", \"created_at\": \"2025-11-25 14:01:58.717737\"}',NULL,'2025-11-25 14:05:07.000000','2025-11-25 14:05:07.000000'),(27,'1fc83de9-103c-4ef7-80da-10242d176eed','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"feeg\", \"created_at\": \"2025-11-26 21:14:41.127193\"}','2025-11-26 21:14:41.000000','2025-11-26 21:14:41.000000'),(28,'1fc83de9-103c-4ef7-80da-10242d176eed','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"feeg\", \"created_at\": \"2025-11-26 21:14:41.127193\"}',NULL,'2025-11-26 21:14:45.000000','2025-11-26 21:14:45.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_item_audits`
--

LOCK TABLES `grocery_list_item_audits` WRITE;
/*!40000 ALTER TABLE `grocery_list_item_audits` DISABLE KEYS */;
INSERT INTO `grocery_list_item_audits` VALUES (1,'1','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Guldkorn\", \"category\": \"breakfast 🥣\", \"created_at\": \"2025-10-09 15:13:35.815648\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(2,'2','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Coco Pops\", \"category\": \"breakfast 🥣\", \"created_at\": \"2025-10-09 15:13:35.820767\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(3,'3','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Beans\", \"category\": \"canned goods 🥫\", \"created_at\": \"2025-10-09 15:13:35.825282\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(4,'4','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Bread\", \"category\": \"bakery 🥖\", \"created_at\": \"2025-10-09 15:13:35.829160\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(5,'5','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Hand soap\", \"category\": \"cleaning 🧼\", \"created_at\": \"2025-10-09 15:13:35.832254\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(6,'6','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Salt\", \"category\": \"condiments 🧂\", \"created_at\": \"2025-10-09 15:13:35.836873\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(7,'7','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Pepper\", \"category\": \"condiments 🧂\", \"created_at\": \"2025-10-09 15:13:35.839897\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(8,'8','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-09 15:13:35.843280\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(9,'9','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Beef\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-09 15:13:35.846994\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(10,'10','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Leverpostej\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-09 15:13:35.850678\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(11,'11','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Hellefisk\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.853638\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(12,'12','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Rødspætte\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.856904\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(13,'13','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"name\": \"Fiskefilet\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.861438\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(14,'14','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Sild\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.865472\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(15,'15','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Cod\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.868458\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(16,'16','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Squid\", \"category\": \"fish 🐟\", \"created_at\": \"2025-10-09 15:13:35.873146\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(17,'17','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Cheese\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-09 15:13:35.876094\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(18,'18','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Skyr\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-09 15:13:35.879453\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(19,'19','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Egg\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-09 15:13:35.882485\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(20,'20','322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"name\": \"Milk\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-09 15:13:35.887069\"}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(21,'21','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-17 11:31:57.289124\"}','2025-10-17 11:31:57.000000','2025-10-17 11:31:57.000000'),(22,'21','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-10-17 11:31:57.289124\"}',NULL,'2025-10-17 11:31:57.000000','2025-10-17 11:31:57.000000'),(23,'22','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Banana\", \"category\": \"fruits 🍎\", \"created_at\": \"2025-10-17 11:31:58.879959\"}','2025-10-17 11:31:58.000000','2025-10-17 11:31:58.000000'),(24,'23','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Carrot\", \"category\": \"vegetables 🥦\", \"created_at\": \"2025-10-17 11:31:59.597952\"}','2025-10-17 11:31:59.000000','2025-10-17 11:31:59.000000'),(25,'24','0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"name\": \"Milk\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-17 11:32:00.194783\"}','2025-10-17 11:32:00.000000','2025-10-17 11:32:00.000000'),(26,'22','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Banana\", \"category\": \"fruits 🍎\", \"created_at\": \"2025-10-17 11:31:58.879959\"}',NULL,'2025-10-17 11:32:00.000000','2025-10-17 11:32:00.000000'),(27,'23','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Carrot\", \"category\": \"vegetables 🥦\", \"created_at\": \"2025-10-17 11:31:59.597952\"}',NULL,'2025-10-17 11:32:00.000000','2025-10-17 11:32:00.000000'),(28,'24','0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"name\": \"Milk\", \"category\": \"dairy 🥚\", \"created_at\": \"2025-10-17 11:32:00.194783\"}',NULL,'2025-10-17 11:32:00.000000','2025-10-17 11:32:00.000000'),(29,'25','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-25 20:20:05.456388\"}','2025-11-25 20:20:05.000000','2025-11-25 20:20:05.000000'),(30,'25','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-25 20:20:05.456388\"}',NULL,'2025-11-25 20:20:19.000000','2025-11-25 20:20:19.000000'),(31,'26','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','2025-11-26 08:14:02.000000','2025-11-26 08:14:02.000000'),(32,'26','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','2025-11-26 08:14:11.000000','2025-11-26 08:14:11.000000'),(33,'27','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','2025-11-26 08:17:30.000000','2025-11-26 08:17:30.000000'),(34,'27','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"Chicken\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','{\"name\": \"Sausages\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','2025-11-26 08:17:53.000000','2025-11-26 08:17:53.000000'),(35,'27','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"Sausages\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','{\"name\": \"Ribeye\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','2025-11-26 08:18:21.000000','2025-11-26 08:18:21.000000'),(36,'27','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"Ribeye\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','{\"name\": \"Steak\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}','2025-11-26 08:18:24.000000','2025-11-26 08:18:24.000000'),(37,'27','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"Steak\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:17:30.459049\"}',NULL,'2025-11-26 08:18:36.000000','2025-11-26 08:18:36.000000'),(38,'26','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','2025-11-26 08:22:49.000000','2025-11-26 08:22:49.000000'),(39,'26','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','2025-11-26 08:22:50.000000','2025-11-26 08:22:50.000000'),(40,'26','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}','2025-11-26 08:22:51.000000','2025-11-26 08:22:51.000000'),(41,'28','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"yoyo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','2025-11-26 08:22:53.000000','2025-11-26 08:22:53.000000'),(42,'29','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"MORE\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:55.110763\"}','2025-11-26 08:22:55.000000','2025-11-26 08:22:55.000000'),(43,'29','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"MORE\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:55.110763\"}','{\"name\": \"MORE\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:55.110763\"}','2025-11-26 08:22:56.000000','2025-11-26 08:22:56.000000'),(44,'28','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"yoyo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','{\"name\": \"yoyo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','2025-11-26 08:22:56.000000','2025-11-26 08:22:56.000000'),(45,'28','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"yoyo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','{\"name\": \"feinge\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','2025-11-26 08:23:00.000000','2025-11-26 08:23:00.000000'),(46,'28','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"feinge\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','{\"name\": \"feinge\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}','2025-11-26 08:23:01.000000','2025-11-26 08:23:01.000000'),(47,'28','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"feinge\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:53.424150\"}',NULL,'2025-11-26 08:23:03.000000','2025-11-26 08:23:03.000000'),(48,'29','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"MORE\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:22:55.110763\"}',NULL,'2025-11-26 08:23:03.000000','2025-11-26 08:23:03.000000'),(49,'30','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"LETD GOOO\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:23:07.033588\"}','2025-11-26 08:23:07.000000','2025-11-26 08:23:07.000000'),(50,'30','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"LETD GOOO\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:23:07.033588\"}','{\"name\": \"yoghurt\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:23:07.033588\"}','2025-11-26 08:23:11.000000','2025-11-26 08:23:11.000000'),(51,'30','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"yoghurt\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:23:07.033588\"}',NULL,'2025-11-26 08:23:15.000000','2025-11-26 08:23:15.000000'),(52,'31','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"efefe\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:33:50.730670\"}','2025-11-26 08:33:50.000000','2025-11-26 08:33:50.000000'),(53,'32','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"gergr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:33:52.304389\"}','2025-11-26 08:33:52.000000','2025-11-26 08:33:52.000000'),(54,'33','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"fergergr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:06.997883\"}','2025-11-26 08:34:06.000000','2025-11-26 08:34:06.000000'),(55,'34','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"efeger\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:55.997512\"}','2025-11-26 08:34:55.000000','2025-11-26 08:34:55.000000'),(56,'26','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"OKAY KØD!!\", \"category\": \"meat 🍗\", \"created_at\": \"2025-11-26 08:14:02.313734\"}',NULL,'2025-11-26 08:34:57.000000','2025-11-26 08:34:57.000000'),(57,'31','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"efefe\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:33:50.730670\"}',NULL,'2025-11-26 08:34:58.000000','2025-11-26 08:34:58.000000'),(58,'34','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"efeger\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:55.997512\"}',NULL,'2025-11-26 08:34:58.000000','2025-11-26 08:34:58.000000'),(59,'33','fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"name\": \"fergergr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:06.997883\"}','{\"name\": \"yo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:06.997883\"}','2025-11-26 08:35:01.000000','2025-11-26 08:35:01.000000'),(60,'33','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"yo\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:34:06.997883\"}',NULL,'2025-11-26 08:35:04.000000','2025-11-26 08:35:04.000000'),(61,'35','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"fefe\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:39.034259\"}','2025-11-26 21:14:39.000000','2025-11-26 21:14:39.000000'),(62,'36','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"efege\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:47.045655\"}','2025-11-26 21:14:47.000000','2025-11-26 21:14:47.000000'),(63,'36','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"efege\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:47.045655\"}',NULL,'2025-11-26 21:14:49.000000','2025-11-26 21:14:49.000000'),(64,'37','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"efege\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:55.272871\"}','2025-11-26 21:14:55.000000','2025-11-26 21:14:55.000000'),(65,'37','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"efege\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:55.272871\"}',NULL,'2025-11-26 21:14:58.000000','2025-11-26 21:14:58.000000'),(66,'35','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"fefe\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:14:39.034259\"}',NULL,'2025-11-26 21:14:58.000000','2025-11-26 21:14:58.000000'),(67,'32','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"gergr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 08:33:52.304389\"}',NULL,'2025-11-26 21:14:59.000000','2025-11-26 21:14:59.000000'),(68,'38','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"rgrpr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:15:03.151229\"}','2025-11-26 21:15:03.000000','2025-11-26 21:15:03.000000'),(69,'39','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"Milk\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:15:06.814547\"}','2025-11-26 21:15:06.000000','2025-11-26 21:15:06.000000'),(70,'40','fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"name\": \"Eggs\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:15:08.650901\"}','2025-11-26 21:15:08.000000','2025-11-26 21:15:08.000000'),(71,'38','fb033692-9c2b-4a4a-a372-a9941b836694','DELETE','{\"name\": \"rgrpr\", \"category\": \"no category 📦\", \"created_at\": \"2025-11-26 21:15:03.151229\"}',NULL,'2025-11-26 21:15:11.000000','2025-11-26 21:15:11.000000');
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
  `grocery_list_id` varchar(36) NOT NULL,
  `added_by_id` varchar(36) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grocery_list_items_on_grocery_list_id` (`grocery_list_id`),
  KEY `index_grocery_list_items_on_added_by_id` (`added_by_id`),
  CONSTRAINT `fk_rails_5b28c0d393` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_c4bf98b414` FOREIGN KEY (`grocery_list_id`) REFERENCES `grocery_lists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_items`
--

LOCK TABLES `grocery_list_items` WRITE;
/*!40000 ALTER TABLE `grocery_list_items` DISABLE KEYS */;
INSERT INTO `grocery_list_items` VALUES (1,'Guldkorn','breakfast 🥣',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.815648','2025-10-09 15:13:35.815648'),(2,'Coco Pops','breakfast 🥣',0,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.820767','2025-10-09 15:13:35.820767'),(3,'Beans','canned goods 🥫',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.825282','2025-10-09 15:13:35.825282'),(4,'Bread','bakery 🥖',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.829160','2025-10-09 15:13:35.829160'),(5,'Hand soap','cleaning 🧼',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.832254','2025-10-09 15:13:35.832254'),(6,'Salt','condiments 🧂',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.836873','2025-10-09 15:13:35.836873'),(7,'Pepper','condiments 🧂',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.839897','2025-10-09 15:13:35.839897'),(8,'Chicken','meat 🍗',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.843280','2025-10-09 15:13:35.843280'),(9,'Beef','meat 🍗',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.846994','2025-10-09 15:13:35.846994'),(10,'Leverpostej','meat 🍗',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.850678','2025-10-09 15:13:35.850678'),(11,'Hellefisk','fish 🐟',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.853638','2025-10-09 15:13:35.853638'),(12,'Rødspætte','fish 🐟',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.856904','2025-10-09 15:13:35.856904'),(13,'Fiskefilet','fish 🐟',1,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.861438','2025-10-09 15:13:35.861438'),(14,'Sild','fish 🐟',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.865472','2025-10-09 15:13:35.865472'),(15,'Cod','fish 🐟',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.868458','2025-10-09 15:13:35.868458'),(16,'Squid','fish 🐟',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.873146','2025-10-09 15:13:35.873146'),(17,'Cheese','dairy 🥚',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.876094','2025-10-09 15:13:35.876094'),(18,'Skyr','dairy 🥚',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.879453','2025-10-09 15:13:35.879453'),(19,'Egg','dairy 🥚',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.882485','2025-10-09 15:13:35.882485'),(20,'Milk','dairy 🥚',1,'2f55106d-3286-4600-96a4-63b9505e2468','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.887069','2025-10-09 15:13:35.887069'),(39,'Milk','no category 📦',0,'5e8f0de2-0630-4d1f-9eab-cafb0894cfc9','fb033692-9c2b-4a4a-a372-a9941b836694','2025-11-26 21:15:06.814547','2025-11-26 21:15:06.814547'),(40,'Eggs','no category 📦',0,'5e8f0de2-0630-4d1f-9eab-cafb0894cfc9','fb033692-9c2b-4a4a-a372-a9941b836694','2025-11-26 21:15:08.650901','2025-11-26 21:15:08.650901');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery_list_shares`
--

LOCK TABLES `grocery_list_shares` WRITE;
/*!40000 ALTER TABLE `grocery_list_shares` DISABLE KEYS */;
INSERT INTO `grocery_list_shares` VALUES (1,'6cf199be-117f-40de-861b-698c11480aae','a931dd50-2988-4d56-8815-12a211e85eb7','2025-10-09 15:13:35.898274','2025-10-09 15:13:35.898274'),(2,'e5adaa67-26f8-4a8b-9b29-cc6ba916c7ed','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.903110','2025-10-09 15:13:35.903110'),(3,'d7e1ee7d-f0cc-4968-9b84-1ba2197fb32b','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.907562','2025-10-09 15:13:35.907562'),(4,'5359db47-3821-4e74-a6a8-01811e219e5d','9962d52b-430e-4b0e-986a-d028281b1e28','2025-10-09 15:13:35.912920','2025-10-09 15:13:35.912920'),(5,'d7e1ee7d-f0cc-4968-9b84-1ba2197fb32b','a931dd50-2988-4d56-8815-12a211e85eb7','2025-10-09 15:13:35.919241','2025-10-09 15:13:35.919241'),(6,'5359db47-3821-4e74-a6a8-01811e219e5d','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.924222','2025-10-09 15:13:35.924222'),(7,'5359db47-3821-4e74-a6a8-01811e219e5d','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.928833','2025-10-09 15:13:35.928833'),(8,'b5a8167d-7582-43ae-a22a-b70ad431e272','9962d52b-430e-4b0e-986a-d028281b1e28','2025-10-09 15:13:35.933737','2025-10-09 15:13:35.933737'),(9,'5359db47-3821-4e74-a6a8-01811e219e5d','a931dd50-2988-4d56-8815-12a211e85eb7','2025-10-09 15:13:35.938559','2025-10-09 15:13:35.938559'),(10,'e03f487c-c81e-44d1-9ea6-14505199eb21','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.943340','2025-10-09 15:13:35.943340'),(11,'e5adaa67-26f8-4a8b-9b29-cc6ba916c7ed','61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','2025-10-09 15:13:35.947867','2025-10-09 15:13:35.947867'),(12,'7927edc6-2b07-42ff-8204-7716c12e11ec','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.952744','2025-10-09 15:13:35.952744'),(13,'7927edc6-2b07-42ff-8204-7716c12e11ec','61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','2025-10-09 15:13:35.957371','2025-10-09 15:13:35.957371'),(14,'6cf199be-117f-40de-861b-698c11480aae','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.962849','2025-10-09 15:13:35.962849'),(15,'b5a8167d-7582-43ae-a22a-b70ad431e272','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.967388','2025-10-09 15:13:35.967388'),(16,'6cf199be-117f-40de-861b-698c11480aae','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.973965','2025-10-09 15:13:35.973965'),(17,'5359db47-3821-4e74-a6a8-01811e219e5d','486731fc-e3f3-49ae-9426-1c3bf03844ae','2025-10-09 15:13:35.978094','2025-10-09 15:13:35.978094'),(18,'98fa5d68-a9ae-4c96-b6e9-6d470a0d1d21','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.982834','2025-10-09 15:13:35.982834'),(19,'d7e1ee7d-f0cc-4968-9b84-1ba2197fb32b','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.987346','2025-10-09 15:13:35.987346'),(20,'6754a304-1dd7-40bd-ab59-b79f0fd21c8a','a931dd50-2988-4d56-8815-12a211e85eb7','2025-10-09 15:13:35.991966','2025-10-09 15:13:35.991966');
/*!40000 ALTER TABLE `grocery_list_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery_lists`
--

DROP TABLE IF EXISTS `grocery_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery_lists` (
  `id` varchar(36) NOT NULL DEFAULT (uuid()),
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
INSERT INTO `grocery_lists` VALUES ('2f55106d-3286-4600-96a4-63b9505e2468','Dinner party','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.785319','2025-10-09 15:13:35.785319'),('5359db47-3821-4e74-a6a8-01811e219e5d','Etc','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','2025-10-09 15:13:35.778336','2025-10-09 15:13:35.778336'),('5e8f0de2-0630-4d1f-9eab-cafb0894cfc9','My Shopping List','fb033692-9c2b-4a4a-a372-a9941b836694','2025-11-25 13:04:40.208350','2025-11-25 13:04:40.208350'),('6754a304-1dd7-40bd-ab59-b79f0fd21c8a','Work','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.788934','2025-10-09 15:13:35.788934'),('6cf199be-117f-40de-861b-698c11480aae','Holiday','a931dd50-2988-4d56-8815-12a211e85eb7','2025-10-09 15:13:35.807369','2025-10-09 15:13:35.807369'),('7927edc6-2b07-42ff-8204-7716c12e11ec','Home','bf513f79-9851-4123-9e62-31976e22bbc0','2025-10-09 15:13:35.774325','2025-10-09 15:13:35.774325'),('84d1d647-e562-4a9c-86b7-7c09e59e332d','TEST LISTE','fb033692-9c2b-4a4a-a372-a9941b836694','2025-10-09 15:18:20.707605','2025-10-09 15:18:20.707605'),('98fa5d68-a9ae-4c96-b6e9-6d470a0d1d21','Random','486731fc-e3f3-49ae-9426-1c3bf03844ae','2025-10-09 15:13:35.796103','2025-10-09 15:13:35.796103'),('b5a8167d-7582-43ae-a22a-b70ad431e272','Sports','bf513f79-9851-4123-9e62-31976e22bbc0','2025-10-09 15:13:35.799233','2025-10-09 15:13:35.799233'),('d7e1ee7d-f0cc-4968-9b84-1ba2197fb32b','Shared','d0bb7407-9dd7-4991-b4d3-90dc1c592026','2025-10-09 15:13:35.792333','2025-10-09 15:13:35.792333'),('e03f487c-c81e-44d1-9ea6-14505199eb21','stuff','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.782021','2025-10-09 15:13:35.782021'),('e5adaa67-26f8-4a8b-9b29-cc6ba916c7ed','Baking','322abb37-4f35-4a14-a54a-07315ceede10','2025-10-09 15:13:35.802722','2025-10-09 15:13:35.802722');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Lime Juice','fruits 🍎',10,'1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:35.439572','2025-10-09 15:13:35.439572'),(2,'Tortilla','grains 🌾',2,'1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:35.443247','2025-10-09 15:13:35.443247'),(3,'Onion','vegetables 🥦',50,'1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:35.446556','2025-10-09 15:13:35.446556'),(4,'Chocolate','snacks 🍫',100,'1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:35.449795','2025-10-09 15:13:35.449795'),(5,'Vegetable Broth','fruits 🍎',200,'1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:35.454712','2025-10-09 15:13:35.454712'),(6,'Mozzarella Cheese','dairy 🥚',100,'23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:35.458175','2025-10-09 15:13:35.458175'),(7,'Bell Pepper','vegetables 🥦',100,'23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:35.462854','2025-10-09 15:13:35.462854'),(8,'Tortilla','grains 🌾',2,'23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:35.466017','2025-10-09 15:13:35.466017'),(9,'Olives','fruits 🍎',30,'23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:35.470879','2025-10-09 15:13:35.470879'),(10,'Flour','grains 🌾',100,'23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:35.474520','2025-10-09 15:13:35.474520'),(11,'Quinoa','grains 🌾',100,'30247353-ff99-4d50-aada-d5da6a7b5074','2025-10-09 15:13:35.488840','2025-10-09 15:13:35.488840'),(12,'Mixed Vegetables','vegetables 🥦',150,'30247353-ff99-4d50-aada-d5da6a7b5074','2025-10-09 15:13:35.492841','2025-10-09 15:13:35.492841'),(13,'Tahini','sauces & oils 🫙',30,'30247353-ff99-4d50-aada-d5da6a7b5074','2025-10-09 15:13:35.496912','2025-10-09 15:13:35.496912'),(14,'Mushrooms','vegetables 🥦',100,'3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:35.500021','2025-10-09 15:13:35.500021'),(15,'Tomato','vegetables 🥦',50,'3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:35.504133','2025-10-09 15:13:35.504133'),(16,'Olives','fruits 🍎',30,'3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:35.508064','2025-10-09 15:13:35.508064'),(17,'Yogurt','dairy 🥚',50,'3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:35.511536','2025-10-09 15:13:35.511536'),(18,'Paprika','meat 🍗',5,'3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:35.515235','2025-10-09 15:13:35.515235'),(19,'Spaghetti','grains 🌾',200,'7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:35.518653','2025-10-09 15:13:35.518653'),(20,'Pancetta','meat 🍗',100,'7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:35.522406','2025-10-09 15:13:35.522406'),(21,'Eggs','dairy 🥚',2,'7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:35.525810','2025-10-09 15:13:35.525810'),(22,'Parmesan Cheese','dairy 🥚',50,'7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:35.531435','2025-10-09 15:13:35.531435'),(23,'Parmesan Cheese','dairy 🥚',50,'7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:35.534909','2025-10-09 15:13:35.534909'),(24,'Cream','dairy 🥚',50,'87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:35.538949','2025-10-09 15:13:35.538949'),(25,'Cabbage','vegetables 🥦',50,'87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:35.542286','2025-10-09 15:13:35.542286'),(26,'Lime Juice','fruits 🍎',10,'87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:35.545799','2025-10-09 15:13:35.545799'),(27,'Arborio Rice','grains 🌾',100,'87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:35.548958','2025-10-09 15:13:35.548958'),(28,'Chili Powder','meat 🍗',5,'87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:35.553940','2025-10-09 15:13:35.553940'),(29,'Eggs','dairy 🥚',2,'c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:35.557342','2025-10-09 15:13:35.557342'),(30,'Chocolate','snacks 🍫',100,'c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:35.560784','2025-10-09 15:13:35.560784'),(31,'Sugar','meat 🍗',50,'c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:35.563645','2025-10-09 15:13:35.563645'),(32,'Butter','dairy 🥚',20,'c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:35.568272','2025-10-09 15:13:35.568272'),(33,'Bread','grains 🌾',1,'c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:35.571582','2025-10-09 15:13:35.571582'),(34,'Tomato','vegetables 🥦',50,'c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:35.576307','2025-10-09 15:13:35.576307'),(35,'Milk','dairy 🥚',50,'c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:35.579150','2025-10-09 15:13:35.579150'),(36,'Pancetta','meat 🍗',100,'c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:35.582417','2025-10-09 15:13:35.582417'),(37,'Tortilla','grains 🌾',2,'c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:35.585655','2025-10-09 15:13:35.585655'),(38,'Red Onion','vegetables 🥦',20,'c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:35.588978','2025-10-09 15:13:35.588978'),(39,'Mixed Vegetables','vegetables 🥦',150,'c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:35.592086','2025-10-09 15:13:35.592086'),(40,'Tahini','sauces & oils 🫙',30,'c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:35.595088','2025-10-09 15:13:35.595088'),(41,'Shrimp','fish 🐟',150,'c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:35.598916','2025-10-09 15:13:35.598916'),(42,'Eggs','dairy 🥚',2,'c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:35.602231','2025-10-09 15:13:35.602231'),(43,'Lemon Juice','fruits 🍎',10,'dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:35.606580','2025-10-09 15:13:35.606580'),(44,'Parmesan Cheese','dairy 🥚',50,'dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:35.615227','2025-10-09 15:13:35.615227'),(45,'Cream','dairy 🥚',50,'dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:35.618872','2025-10-09 15:13:35.618872'),(46,'Chili Flakes','meat 🍗',2,'dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:35.624411','2025-10-09 15:13:35.624411'),(47,'Bread','grains 🌾',1,'dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:35.627912','2025-10-09 15:13:35.627912'),(48,'Balsamic Vinegar','sauces & oils 🫙',10,'f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:35.630661','2025-10-09 15:13:35.630661'),(49,'Tortilla','grains 🌾',2,'f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:35.634332','2025-10-09 15:13:35.634332'),(50,'Chili Powder','meat 🍗',5,'f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:35.637580','2025-10-09 15:13:35.637580'),(51,'Tomato','vegetables 🥦',50,'f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:35.642431','2025-10-09 15:13:35.642431'),(52,'Arborio Rice','grains 🌾',100,'f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:35.645442','2025-10-09 15:13:35.645442'),(53,'chicken breast','meat 🍗',2,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.339717','2025-10-09 15:15:12.339717'),(54,'ciabatta bread loaf','bakery 🥖',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.351697','2025-10-09 15:15:12.351697'),(55,'hummus','canned goods 🥫',4,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.363062','2025-10-09 15:15:12.363062'),(56,'cucumber','vegetables 🥦',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.372740','2025-10-09 15:15:12.372740'),(57,'tomato','fruits 🍎',2,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.384487','2025-10-09 15:15:12.384487'),(58,'red onion','vegetables 🥦',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.409942','2025-10-09 15:15:12.409942'),(59,'feta cheese','dairy 🥚',100,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.416488','2025-10-09 15:15:12.416488'),(60,'olive oil','sauces & oils 🫙',2,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.420426','2025-10-09 15:15:12.420426'),(61,'lemon','fruits 🍎',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.431396','2025-10-09 15:15:12.431396'),(62,'fresh spinach leaves','vegetables 🥦',50,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.435268','2025-10-09 15:15:12.435268'),(63,'dried oregano','spices & herbs 🌶️',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.438983','2025-10-09 15:15:12.438983'),(64,'salt','spices & herbs 🌶️',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.442895','2025-10-09 15:15:12.442895'),(65,'black pepper','spices & herbs 🌶️',1,'f8313d08-bd95-43ed-b0d5-fe86a5d09444','2025-10-09 15:15:12.445734','2025-10-09 15:15:12.445734'),(66,'all-purpose flour','bakery 🥖',200,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.635106','2025-11-26 11:18:33.635106'),(67,'baking powder','spices & herbs 🌶️',10,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.641658','2025-11-26 11:18:33.641658'),(68,'granulated sugar','condiments 🧂',25,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.645310','2025-11-26 11:18:33.645310'),(69,'salt','spices & herbs 🌶️',2,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.648177','2025-11-26 11:18:33.648177'),(70,'egg','dairy 🥚',1,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.652276','2025-11-26 11:18:33.652276'),(71,'milk','dairy 🥚',250,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.654717','2025-11-26 11:18:33.654717'),(72,'unsalted butter, melted','dairy 🥚',50,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.657896','2025-11-26 11:18:33.657896'),(73,'vanilla extract','condiments 🧂',5,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.661004','2025-11-26 11:18:33.661004'),(74,'orange zest','fruits 🍎',1,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.663506','2025-11-26 11:18:33.663506'),(75,'maple syrup','condiments 🧂',50,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.666186','2025-11-26 11:18:33.666186'),(76,'fresh mixed berries','fruits 🍎',100,'ab3a61c6-4861-41f0-a2af-2faa35091e24','2025-11-26 11:18:33.668399','2025-11-26 11:18:33.668399'),(86,'all-purpose flour','bakery 🥖',200,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.154346','2025-11-26 11:32:22.154346'),(87,'baking powder','spices & herbs 🌶️',15,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.155917','2025-11-26 11:32:22.155917'),(88,'granulated sugar','condiments 🧂',25,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.157248','2025-11-26 11:32:22.157248'),(89,'pinch of salt','spices & herbs 🌶️',1,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.158505','2025-11-26 11:32:22.158505'),(90,'egg','dairy 🥚',1,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.159604','2025-11-26 11:32:22.159604'),(91,'whole milk','dairy 🥚',240,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.160815','2025-11-26 11:32:22.160815'),(92,'unsalted butter, melted','dairy 🥚',50,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.162332','2025-11-26 11:32:22.162332'),(93,'pure vanilla extract','condiments 🧂',5,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.163864','2025-11-26 11:32:22.163864'),(94,'honey','condiments 🧂',30,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.165819','2025-11-26 11:32:22.165819'),(95,'creamy peanut butter','condiments 🧂',60,'703d2d50-0574-4c71-b6f5-b475317c1190','2025-11-26 11:32:22.167342','2025-11-26 11:32:22.167342');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'a931dd50-2988-4d56-8815-12a211e85eb7',1,99.99,'USD','draft',NULL,'2025-10-09 15:13:36.000000','2026-10-09 15:13:36.000000','2025-10-09 15:13:36.000000','2025-10-09 15:13:36.000000'),(2,'486731fc-e3f3-49ae-9426-1c3bf03844ae',2,299.99,'USD','draft',NULL,'2025-10-09 15:13:36.000000','2026-10-09 15:13:36.000000','2025-10-09 15:13:36.000000','2025-10-09 15:13:36.000000'),(3,'fb033692-9c2b-4a4a-a372-a9941b836694',3,9.99,'USD','draft',NULL,'2025-11-25 11:02:05.000000','2025-12-25 11:02:05.000000','2025-11-25 11:02:05.000000','2025-11-25 11:02:05.000000'),(4,'fb033692-9c2b-4a4a-a372-a9941b836694',4,9.99,'USD','draft',NULL,'2025-11-25 11:12:26.000000','2025-12-25 11:12:26.000000','2025-11-25 11:12:26.000000','2025-11-25 11:12:26.000000');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `llm_usages`
--

DROP TABLE IF EXISTS `llm_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llm_usages` (
  `id` varchar(36) NOT NULL DEFAULT (uuid()),
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
  KEY `index_llm_usages_on_user_id` (`user_id`),
  KEY `index_llm_usages_on_recipe_id` (`recipe_id`),
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
INSERT INTO `llm_usages` VALUES ('138bfe46-8b60-413c-9e0b-c393a6d7d45e','fb033692-9c2b-4a4a-a372-a9941b836694','f8313d08-bd95-43ed-b0d5-fe86a5d09444','openai','gpt-4.1-mini-2025-04-14','A delicious sandwich',705,737,'2025-10-09 15:15:12.455156','2025-10-09 15:15:12.455156'),('17bf6449-12bd-4ec1-8e91-2ff676010616','a931dd50-2988-4d56-8815-12a211e85eb7','3bceb455-7e0e-4334-89d1-436afd36cac0','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.653515','2025-10-09 15:13:35.653515'),('215067c0-4fd8-4040-b94c-4ea17bae40a6','9962d52b-430e-4b0e-986a-d028281b1e28','30247353-ff99-4d50-aada-d5da6a7b5074','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.690480','2025-10-09 15:13:35.690480'),('30a3d382-06e4-4728-a91a-63a8f376e0cd','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','f87b3147-d05d-4d16-be16-cca1a0e09cf8','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.655970','2025-10-09 15:13:35.655970'),('31bb0661-edc4-4fc3-9f46-2c32b4ff0534','fb033692-9c2b-4a4a-a372-a9941b836694','703d2d50-0574-4c71-b6f5-b475317c1190','openai','gpt-4.1-mini-2025-04-14','Delicious pancakes',701,600,'2025-11-26 11:24:17.637661','2025-11-26 11:24:17.637661'),('383fc966-9520-4122-98e3-8b9ac9ade7f0','d0bb7407-9dd7-4991-b4d3-90dc1c592026','23edaa6f-658a-4237-b7e9-84fe6373146e','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.703499','2025-10-09 15:13:35.703499'),('38efc7f7-f981-4a06-8d25-efbf812c2106','fb033692-9c2b-4a4a-a372-a9941b836694','703d2d50-0574-4c71-b6f5-b475317c1190','openai','gpt-4.1-mini-2025-04-14','Add peanutbutter',1819,707,'2025-11-26 11:32:22.114085','2025-11-26 11:32:22.114085'),('3b342ec8-0e84-42f1-becc-d255a5a012ce','486731fc-e3f3-49ae-9426-1c3bf03844ae','23edaa6f-658a-4237-b7e9-84fe6373146e','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.699835','2025-10-09 15:13:35.699835'),('4373740d-b7de-424e-8458-2c512d352679','d0bb7407-9dd7-4991-b4d3-90dc1c592026','c2dd0642-7e00-4c4d-87f8-9351282a4192','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.684093','2025-10-09 15:13:35.684093'),('5b50b7cf-8f91-4b0d-ba6e-8ed5113f5b88','322abb37-4f35-4a14-a54a-07315ceede10','dac35e0b-7c4d-4952-80cb-b36583029719','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.679540','2025-10-09 15:13:35.679540'),('5b61d2e7-9e7f-48b3-a5c9-d1f35be5a549','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','f87b3147-d05d-4d16-be16-cca1a0e09cf8','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.692634','2025-10-09 15:13:35.692634'),('61fb67c9-959b-46ac-b6fa-4b588d22156e','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','3bceb455-7e0e-4334-89d1-436afd36cac0','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.681807','2025-10-09 15:13:35.681807'),('724936c9-fa3c-49bb-aa8d-536cc112b737','d0bb7407-9dd7-4991-b4d3-90dc1c592026','c89a75c7-5d1f-4f59-9241-0afad6319c96','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.665901','2025-10-09 15:13:35.665901'),('7e85b3b8-66cb-41d4-b70a-e20f4ec0130b','486731fc-e3f3-49ae-9426-1c3bf03844ae','f87b3147-d05d-4d16-be16-cca1a0e09cf8','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-09 15:13:35.674739','2025-10-09 15:13:35.674739'),('8998003d-a321-4969-a91e-9e318e61265a','322abb37-4f35-4a14-a54a-07315ceede10','7af0e370-1f0b-4969-9ee4-ba4f67a76780','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-09 15:13:35.688002','2025-10-09 15:13:35.688002'),('8a0c6328-7c0f-4013-bf67-075241bff8fd','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.694803','2025-10-09 15:13:35.694803'),('91ee5cc7-99f5-46f0-bd82-df0f75321a79','322abb37-4f35-4a14-a54a-07315ceede10','30247353-ff99-4d50-aada-d5da6a7b5074','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-09 15:13:35.670663','2025-10-09 15:13:35.670663'),('ab09f35c-b8ad-4a86-9454-480b70f8e27a','322abb37-4f35-4a14-a54a-07315ceede10','1890b0d1-7a64-4951-947f-ad93698a507d','OpenAI','gpt-3.5-turbo','Write a rich chocolate lava cake recipes for dessert.',18,100,'2025-10-09 15:13:35.663668','2025-10-09 15:13:35.663668'),('c4d7b3af-8cc3-4436-a252-c3a76ee8c4a1','61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c89a75c7-5d1f-4f59-9241-0afad6319c96','OpenAI','gpt-4','Generate a quick Italian pasta recipes with eggs and cheese.',15,120,'2025-10-09 15:13:35.697049','2025-10-09 15:13:35.697049'),('c6d4d293-2416-4f63-a570-988cbfe5c17e','61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c89a75c7-5d1f-4f59-9241-0afad6319c96','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.676738','2025-10-09 15:13:35.676738'),('ce80ff97-8ee9-4697-9266-28f66bd6c00e','9962d52b-430e-4b0e-986a-d028281b1e28','3bceb455-7e0e-4334-89d1-436afd36cac0','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.668566','2025-10-09 15:13:35.668566'),('f58ed0e9-6840-4ca7-8608-71aed585b92e','9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.661017','2025-10-09 15:13:35.661017'),('f6a9a6da-d78b-4779-8852-ae3da78fcd68','486731fc-e3f3-49ae-9426-1c3bf03844ae','1890b0d1-7a64-4951-947f-ad93698a507d','Anthropic','claude-1','Create a vegan Buddha bowl with quinoa and roasted vegetables.',20,90,'2025-10-09 15:13:35.707369','2025-10-09 15:13:35.707369');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_comments`
--

LOCK TABLES `recipe_comments` WRITE;
/*!40000 ALTER TABLE `recipe_comments` DISABLE KEYS */;
INSERT INTO `recipe_comments` VALUES (1,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.241864','2025-10-09 15:13:36.241864'),(2,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.248660','2025-10-09 15:13:36.248660'),(3,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.256109','2025-10-09 15:13:36.256109'),(4,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.260495','2025-10-09 15:13:36.260495'),(5,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.264959','2025-10-09 15:13:36.264959'),(6,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.268680','2025-10-09 15:13:36.268680'),(7,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.272644','2025-10-09 15:13:36.272644'),(8,'9962d52b-430e-4b0e-986a-d028281b1e28','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.278456','2025-10-09 15:13:36.278456'),(9,'9962d52b-430e-4b0e-986a-d028281b1e28','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.284374','2025-10-09 15:13:36.284374'),(10,'a931dd50-2988-4d56-8815-12a211e85eb7','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.288080','2025-10-09 15:13:36.288080'),(11,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','1890b0d1-7a64-4951-947f-ad93698a507d','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.292412','2025-10-09 15:13:36.292412'),(12,'322abb37-4f35-4a14-a54a-07315ceede10','23edaa6f-658a-4237-b7e9-84fe6373146e','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.296846','2025-10-09 15:13:36.296846'),(13,'a931dd50-2988-4d56-8815-12a211e85eb7','23edaa6f-658a-4237-b7e9-84fe6373146e','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.300673','2025-10-09 15:13:36.300673'),(14,'bf513f79-9851-4123-9e62-31976e22bbc0','30247353-ff99-4d50-aada-d5da6a7b5074','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.304957','2025-10-09 15:13:36.304957'),(15,'9962d52b-430e-4b0e-986a-d028281b1e28','30247353-ff99-4d50-aada-d5da6a7b5074','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.308581','2025-10-09 15:13:36.308581'),(16,'9962d52b-430e-4b0e-986a-d028281b1e28','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.312854','2025-10-09 15:13:36.312854'),(17,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.317456','2025-10-09 15:13:36.317456'),(18,'322abb37-4f35-4a14-a54a-07315ceede10','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.321279','2025-10-09 15:13:36.321279'),(19,'322abb37-4f35-4a14-a54a-07315ceede10','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.325255','2025-10-09 15:13:36.325255'),(20,'322abb37-4f35-4a14-a54a-07315ceede10','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.328980','2025-10-09 15:13:36.328980'),(21,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.332511','2025-10-09 15:13:36.332511'),(22,'9962d52b-430e-4b0e-986a-d028281b1e28','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.336521','2025-10-09 15:13:36.336521'),(23,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.340414','2025-10-09 15:13:36.340414'),(24,'a931dd50-2988-4d56-8815-12a211e85eb7','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.344202','2025-10-09 15:13:36.344202'),(25,'bf513f79-9851-4123-9e62-31976e22bbc0','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.347881','2025-10-09 15:13:36.347881'),(26,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.354006','2025-10-09 15:13:36.354006'),(27,'bf513f79-9851-4123-9e62-31976e22bbc0','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.358039','2025-10-09 15:13:36.358039'),(28,'bf513f79-9851-4123-9e62-31976e22bbc0','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.363889','2025-10-09 15:13:36.363889'),(29,'9962d52b-430e-4b0e-986a-d028281b1e28','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.367549','2025-10-09 15:13:36.367549'),(30,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.371598','2025-10-09 15:13:36.371598'),(31,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.377269','2025-10-09 15:13:36.377269'),(32,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.381857','2025-10-09 15:13:36.381857'),(33,'9962d52b-430e-4b0e-986a-d028281b1e28','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.385567','2025-10-09 15:13:36.385567'),(34,'a931dd50-2988-4d56-8815-12a211e85eb7','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.389885','2025-10-09 15:13:36.389885'),(35,'486731fc-e3f3-49ae-9426-1c3bf03844ae','3bceb455-7e0e-4334-89d1-436afd36cac0','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.393776','2025-10-09 15:13:36.393776'),(36,'322abb37-4f35-4a14-a54a-07315ceede10','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.397505','2025-10-09 15:13:36.397505'),(37,'bf513f79-9851-4123-9e62-31976e22bbc0','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.403107','2025-10-09 15:13:36.403107'),(38,'9962d52b-430e-4b0e-986a-d028281b1e28','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.406887','2025-10-09 15:13:36.406887'),(39,'9962d52b-430e-4b0e-986a-d028281b1e28','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.412062','2025-10-09 15:13:36.412062'),(40,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.416416','2025-10-09 15:13:36.416416'),(41,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.420334','2025-10-09 15:13:36.420334'),(42,'bf513f79-9851-4123-9e62-31976e22bbc0','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.424750','2025-10-09 15:13:36.424750'),(43,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.428560','2025-10-09 15:13:36.428560'),(44,'322abb37-4f35-4a14-a54a-07315ceede10','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.432347','2025-10-09 15:13:36.432347'),(45,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.435972','2025-10-09 15:13:36.435972'),(46,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.440700','2025-10-09 15:13:36.440700'),(47,'486731fc-e3f3-49ae-9426-1c3bf03844ae','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.444524','2025-10-09 15:13:36.444524'),(48,'322abb37-4f35-4a14-a54a-07315ceede10','7af0e370-1f0b-4969-9ee4-ba4f67a76780','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.448537','2025-10-09 15:13:36.448537'),(49,'322abb37-4f35-4a14-a54a-07315ceede10','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.452173','2025-10-09 15:13:36.452173'),(50,'486731fc-e3f3-49ae-9426-1c3bf03844ae','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.456454','2025-10-09 15:13:36.456454'),(51,'9962d52b-430e-4b0e-986a-d028281b1e28','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.461088','2025-10-09 15:13:36.461088'),(52,'322abb37-4f35-4a14-a54a-07315ceede10','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.464623','2025-10-09 15:13:36.464623'),(53,'9962d52b-430e-4b0e-986a-d028281b1e28','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.468949','2025-10-09 15:13:36.468949'),(54,'a931dd50-2988-4d56-8815-12a211e85eb7','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.472988','2025-10-09 15:13:36.472988'),(55,'322abb37-4f35-4a14-a54a-07315ceede10','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.476803','2025-10-09 15:13:36.476803'),(56,'a931dd50-2988-4d56-8815-12a211e85eb7','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.480623','2025-10-09 15:13:36.480623'),(57,'486731fc-e3f3-49ae-9426-1c3bf03844ae','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.485708','2025-10-09 15:13:36.485708'),(58,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.489764','2025-10-09 15:13:36.489764'),(59,'a931dd50-2988-4d56-8815-12a211e85eb7','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.495044','2025-10-09 15:13:36.495044'),(60,'bf513f79-9851-4123-9e62-31976e22bbc0','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.499194','2025-10-09 15:13:36.499194'),(61,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.503430','2025-10-09 15:13:36.503430'),(62,'322abb37-4f35-4a14-a54a-07315ceede10','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.507456','2025-10-09 15:13:36.507456'),(63,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.511482','2025-10-09 15:13:36.511482'),(64,'bf513f79-9851-4123-9e62-31976e22bbc0','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.515397','2025-10-09 15:13:36.515397'),(65,'9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.519562','2025-10-09 15:13:36.519562'),(66,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.523560','2025-10-09 15:13:36.523560'),(67,'322abb37-4f35-4a14-a54a-07315ceede10','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.528035','2025-10-09 15:13:36.528035'),(68,'9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.532392','2025-10-09 15:13:36.532392'),(69,'bf513f79-9851-4123-9e62-31976e22bbc0','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.535998','2025-10-09 15:13:36.535998'),(70,'9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.539719','2025-10-09 15:13:36.539719'),(71,'9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.543522','2025-10-09 15:13:36.543522'),(72,'9962d52b-430e-4b0e-986a-d028281b1e28','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.547307','2025-10-09 15:13:36.547307'),(73,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.550987','2025-10-09 15:13:36.550987'),(74,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.554315','2025-10-09 15:13:36.554315'),(75,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.558258','2025-10-09 15:13:36.558258'),(76,'486731fc-e3f3-49ae-9426-1c3bf03844ae','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.563150','2025-10-09 15:13:36.563150'),(77,'a931dd50-2988-4d56-8815-12a211e85eb7','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.567712','2025-10-09 15:13:36.567712'),(78,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.571762','2025-10-09 15:13:36.571762'),(79,'322abb37-4f35-4a14-a54a-07315ceede10','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.577091','2025-10-09 15:13:36.577091'),(80,'322abb37-4f35-4a14-a54a-07315ceede10','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.581222','2025-10-09 15:13:36.581222'),(81,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c2dd0642-7e00-4c4d-87f8-9351282a4192','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.585238','2025-10-09 15:13:36.585238'),(82,'bf513f79-9851-4123-9e62-31976e22bbc0','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.589553','2025-10-09 15:13:36.589553'),(83,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.594833','2025-10-09 15:13:36.594833'),(84,'a931dd50-2988-4d56-8815-12a211e85eb7','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.599193','2025-10-09 15:13:36.599193'),(85,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.603121','2025-10-09 15:13:36.603121'),(86,'322abb37-4f35-4a14-a54a-07315ceede10','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.608235','2025-10-09 15:13:36.608235'),(87,'9962d52b-430e-4b0e-986a-d028281b1e28','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.612333','2025-10-09 15:13:36.612333'),(88,'bf513f79-9851-4123-9e62-31976e22bbc0','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.616167','2025-10-09 15:13:36.616167'),(89,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.620075','2025-10-09 15:13:36.620075'),(90,'bf513f79-9851-4123-9e62-31976e22bbc0','c89a75c7-5d1f-4f59-9241-0afad6319c96','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.624058','2025-10-09 15:13:36.624058'),(91,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.627728','2025-10-09 15:13:36.627728'),(92,'322abb37-4f35-4a14-a54a-07315ceede10','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.631545','2025-10-09 15:13:36.631545'),(93,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.636260','2025-10-09 15:13:36.636260'),(94,'486731fc-e3f3-49ae-9426-1c3bf03844ae','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.640093','2025-10-09 15:13:36.640093'),(95,'a931dd50-2988-4d56-8815-12a211e85eb7','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.645837','2025-10-09 15:13:36.645837'),(96,'486731fc-e3f3-49ae-9426-1c3bf03844ae','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.649583','2025-10-09 15:13:36.649583'),(97,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.653452','2025-10-09 15:13:36.653452'),(98,'9962d52b-430e-4b0e-986a-d028281b1e28','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.657889','2025-10-09 15:13:36.657889'),(99,'9962d52b-430e-4b0e-986a-d028281b1e28','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.661803','2025-10-09 15:13:36.661803'),(100,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.665558','2025-10-09 15:13:36.665558'),(101,'a931dd50-2988-4d56-8815-12a211e85eb7','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.669369','2025-10-09 15:13:36.669369'),(102,'9962d52b-430e-4b0e-986a-d028281b1e28','dac35e0b-7c4d-4952-80cb-b36583029719','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.676469','2025-10-09 15:13:36.676469'),(103,'322abb37-4f35-4a14-a54a-07315ceede10','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.681000','2025-10-09 15:13:36.681000'),(104,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.686907','2025-10-09 15:13:36.686907'),(105,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.691136','2025-10-09 15:13:36.691136'),(106,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.694673','2025-10-09 15:13:36.694673'),(107,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.698867','2025-10-09 15:13:36.698867'),(108,'486731fc-e3f3-49ae-9426-1c3bf03844ae','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.702817','2025-10-09 15:13:36.702817'),(109,'9962d52b-430e-4b0e-986a-d028281b1e28','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.706822','2025-10-09 15:13:36.706822'),(110,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','f87b3147-d05d-4d16-be16-cca1a0e09cf8','Okay it\'s delicious and MUNCHYYY!','2025-10-09 15:13:36.711785','2025-10-09 15:13:36.711785');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_likes`
--

LOCK TABLES `recipe_likes` WRITE;
/*!40000 ALTER TABLE `recipe_likes` DISABLE KEYS */;
INSERT INTO `recipe_likes` VALUES (1,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:36.036449','2025-10-09 15:13:36.036449'),(2,'322abb37-4f35-4a14-a54a-07315ceede10','1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:36.040696','2025-10-09 15:13:36.040696'),(3,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','1890b0d1-7a64-4951-947f-ad93698a507d','2025-10-09 15:13:36.046659','2025-10-09 15:13:36.046659'),(4,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:36.050773','2025-10-09 15:13:36.050773'),(5,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','23edaa6f-658a-4237-b7e9-84fe6373146e','2025-10-09 15:13:36.055429','2025-10-09 15:13:36.055429'),(6,'486731fc-e3f3-49ae-9426-1c3bf03844ae','30247353-ff99-4d50-aada-d5da6a7b5074','2025-10-09 15:13:36.059670','2025-10-09 15:13:36.059670'),(7,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','30247353-ff99-4d50-aada-d5da6a7b5074','2025-10-09 15:13:36.063856','2025-10-09 15:13:36.063856'),(8,'bf513f79-9851-4123-9e62-31976e22bbc0','3bceb455-7e0e-4334-89d1-436afd36cac0','2025-10-09 15:13:36.067876','2025-10-09 15:13:36.067876'),(9,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.073496','2025-10-09 15:13:36.073496'),(10,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.077289','2025-10-09 15:13:36.077289'),(11,'bf513f79-9851-4123-9e62-31976e22bbc0','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.081146','2025-10-09 15:13:36.081146'),(12,'486731fc-e3f3-49ae-9426-1c3bf03844ae','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.085311','2025-10-09 15:13:36.085311'),(13,'9962d52b-430e-4b0e-986a-d028281b1e28','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.090449','2025-10-09 15:13:36.090449'),(14,'a931dd50-2988-4d56-8815-12a211e85eb7','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.094172','2025-10-09 15:13:36.094172'),(15,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.098048','2025-10-09 15:13:36.098048'),(16,'322abb37-4f35-4a14-a54a-07315ceede10','7af0e370-1f0b-4969-9ee4-ba4f67a76780','2025-10-09 15:13:36.101772','2025-10-09 15:13:36.101772'),(17,'322abb37-4f35-4a14-a54a-07315ceede10','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:36.107123','2025-10-09 15:13:36.107123'),(18,'486731fc-e3f3-49ae-9426-1c3bf03844ae','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:36.110868','2025-10-09 15:13:36.110868'),(19,'bf513f79-9851-4123-9e62-31976e22bbc0','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:36.114597','2025-10-09 15:13:36.114597'),(20,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','2025-10-09 15:13:36.118309','2025-10-09 15:13:36.118309'),(21,'a931dd50-2988-4d56-8815-12a211e85eb7','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:36.122189','2025-10-09 15:13:36.122189'),(22,'9962d52b-430e-4b0e-986a-d028281b1e28','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:36.127454','2025-10-09 15:13:36.127454'),(23,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:36.132117','2025-10-09 15:13:36.132117'),(24,'322abb37-4f35-4a14-a54a-07315ceede10','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:36.137108','2025-10-09 15:13:36.137108'),(25,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c022d81a-2f55-4bec-8b01-2afc7be6ad8a','2025-10-09 15:13:36.141136','2025-10-09 15:13:36.141136'),(26,'322abb37-4f35-4a14-a54a-07315ceede10','c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:36.146644','2025-10-09 15:13:36.146644'),(27,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:36.150792','2025-10-09 15:13:36.150792'),(28,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:36.154758','2025-10-09 15:13:36.154758'),(29,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','c2dd0642-7e00-4c4d-87f8-9351282a4192','2025-10-09 15:13:36.158783','2025-10-09 15:13:36.158783'),(30,'322abb37-4f35-4a14-a54a-07315ceede10','c89a75c7-5d1f-4f59-9241-0afad6319c96','2025-10-09 15:13:36.162606','2025-10-09 15:13:36.162606'),(31,'a931dd50-2988-4d56-8815-12a211e85eb7','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.168301','2025-10-09 15:13:36.168301'),(32,'9962d52b-430e-4b0e-986a-d028281b1e28','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.172421','2025-10-09 15:13:36.172421'),(33,'486731fc-e3f3-49ae-9426-1c3bf03844ae','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.176085','2025-10-09 15:13:36.176085'),(34,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.180232','2025-10-09 15:13:36.180232'),(35,'322abb37-4f35-4a14-a54a-07315ceede10','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.184640','2025-10-09 15:13:36.184640'),(36,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','dac35e0b-7c4d-4952-80cb-b36583029719','2025-10-09 15:13:36.188279','2025-10-09 15:13:36.188279'),(37,'322abb37-4f35-4a14-a54a-07315ceede10','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.192237','2025-10-09 15:13:36.192237'),(38,'a931dd50-2988-4d56-8815-12a211e85eb7','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.199437','2025-10-09 15:13:36.199437'),(39,'9962d52b-430e-4b0e-986a-d028281b1e28','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.206978','2025-10-09 15:13:36.206978'),(40,'486731fc-e3f3-49ae-9426-1c3bf03844ae','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.214445','2025-10-09 15:13:36.214445'),(41,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.222055','2025-10-09 15:13:36.222055'),(42,'bf513f79-9851-4123-9e62-31976e22bbc0','f87b3147-d05d-4d16-be16-cca1a0e09cf8','2025-10-09 15:13:36.229495','2025-10-09 15:13:36.229495');
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
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_suggestions`
--

LOCK TABLES `recipe_suggestions` WRITE;
/*!40000 ALTER TABLE `recipe_suggestions` DISABLE KEYS */;
INSERT INTO `recipe_suggestions` VALUES (227,'fb033692-9c2b-4a4a-a372-a9941b836694','7af0e370-1f0b-4969-9ee4-ba4f67a76780','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(228,'fb033692-9c2b-4a4a-a372-a9941b836694','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(229,'fb033692-9c2b-4a4a-a372-a9941b836694','f87b3147-d05d-4d16-be16-cca1a0e09cf8','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(230,'fb033692-9c2b-4a4a-a372-a9941b836694','c2dd0642-7e00-4c4d-87f8-9351282a4192','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(231,'fb033692-9c2b-4a4a-a372-a9941b836694','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(232,'fb033692-9c2b-4a4a-a372-a9941b836694','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(233,'fb033692-9c2b-4a4a-a372-a9941b836694','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(234,'fb033692-9c2b-4a4a-a372-a9941b836694','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(235,'fb033692-9c2b-4a4a-a372-a9941b836694','3bceb455-7e0e-4334-89d1-436afd36cac0','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(236,'fb033692-9c2b-4a4a-a372-a9941b836694','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(242,'a931dd50-2988-4d56-8815-12a211e85eb7','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(243,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(244,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(245,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(246,'bf513f79-9851-4123-9e62-31976e22bbc0','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(247,'bf513f79-9851-4123-9e62-31976e22bbc0','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(248,'bf513f79-9851-4123-9e62-31976e22bbc0','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(249,'6700954a-d910-4b47-b6b4-80a996b0cee7','7af0e370-1f0b-4969-9ee4-ba4f67a76780','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(250,'6700954a-d910-4b47-b6b4-80a996b0cee7','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(251,'6700954a-d910-4b47-b6b4-80a996b0cee7','f87b3147-d05d-4d16-be16-cca1a0e09cf8','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(252,'6700954a-d910-4b47-b6b4-80a996b0cee7','c2dd0642-7e00-4c4d-87f8-9351282a4192','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(253,'6700954a-d910-4b47-b6b4-80a996b0cee7','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(254,'6700954a-d910-4b47-b6b4-80a996b0cee7','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(255,'6700954a-d910-4b47-b6b4-80a996b0cee7','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(256,'6700954a-d910-4b47-b6b4-80a996b0cee7','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(257,'6700954a-d910-4b47-b6b4-80a996b0cee7','3bceb455-7e0e-4334-89d1-436afd36cac0','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(258,'6700954a-d910-4b47-b6b4-80a996b0cee7','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(264,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','7af0e370-1f0b-4969-9ee4-ba4f67a76780','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(265,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(266,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','f87b3147-d05d-4d16-be16-cca1a0e09cf8','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(267,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','c2dd0642-7e00-4c4d-87f8-9351282a4192','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(268,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(269,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(270,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(271,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(272,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','3bceb455-7e0e-4334-89d1-436afd36cac0','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(273,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(279,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','7af0e370-1f0b-4969-9ee4-ba4f67a76780','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(280,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(281,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','f87b3147-d05d-4d16-be16-cca1a0e09cf8','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(282,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','c2dd0642-7e00-4c4d-87f8-9351282a4192','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(283,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(284,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(285,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(286,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(287,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','3bceb455-7e0e-4334-89d1-436afd36cac0','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(288,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(294,'486731fc-e3f3-49ae-9426-1c3bf03844ae','1890b0d1-7a64-4951-947f-ad93698a507d','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(295,'486731fc-e3f3-49ae-9426-1c3bf03844ae','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(296,'486731fc-e3f3-49ae-9426-1c3bf03844ae','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(297,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','dac35e0b-7c4d-4952-80cb-b36583029719','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(298,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','f87b3147-d05d-4d16-be16-cca1a0e09cf8','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(299,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(300,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(301,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(302,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','c89a75c7-5d1f-4f59-9241-0afad6319c96','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(304,'322abb37-4f35-4a14-a54a-07315ceede10','30247353-ff99-4d50-aada-d5da6a7b5074','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000'),(305,'9962d52b-430e-4b0e-986a-d028281b1e28','23edaa6f-658a-4237-b7e9-84fe6373146e','new recipe you might enjoy','2025-11-26 21:13:05.000000','2025-11-26 21:13:05.000000');
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
  `id` varchar(36) NOT NULL DEFAULT (uuid()),
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
  KEY `index_recipes_on_user_id` (`user_id`),
  KEY `index_recipes_on_user_id_and_is_public` (`user_id`,`is_public`),
  CONSTRAINT `fk_rails_9606fce865` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('1890b0d1-7a64-4951-947f-ad93698a507d','a931dd50-2988-4d56-8815-12a211e85eb7','Mushroom Risotto','Creamy Italian risotto with sautéed mushrooms and Parmesan cheese.','https://example.com/mushroom_risotto.jpg','[\"Heat butter in a pan and sauté onions until translucent.\", \"Add mushrooms and cook until soft.\", \"Stir in arborio rice and cook for 1-2 minutes.\", \"Gradually add warm broth, stirring constantly until rice is creamy and tender.\", \"Stir in Parmesan cheese and season with salt and pepper.\"]',1,'[\"Italian\"]','hard','[\"risotto\", \"mushroom\", \"comfort food\"]',15,30,2,'2025-10-09 15:13:35.425431','2025-10-09 15:13:35.425431'),('23edaa6f-658a-4237-b7e9-84fe6373146e','bf513f79-9851-4123-9e62-31976e22bbc0','Avocado Toast','Simple and healthy avocado toast with lemon and chili flakes.','https://example.com/avocado_toast.jpg','[\"Toast bread slices until golden.\", \"Mash avocado and mix with lemon juice and salt.\", \"Spread avocado mixture on toast.\", \"Top with chili flakes and a drizzle of olive oil.\", \"Serve immediately.\"]',1,'[\"Breakfast\", \"Vegan\"]','easy','[\"breakfast\", \"vegan\", \"quick\"]',5,5,1,'2025-10-09 15:13:35.429228','2025-10-09 15:13:35.429228'),('30247353-ff99-4d50-aada-d5da6a7b5074','61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','Vegan Buddha Bowl','Healthy and colorful bowl with quinoa, roasted veggies, and tahini dressing.','https://example.com/buddha_bowl.jpg','[\"Cook quinoa according to package instructions.\", \"Roast a mix of vegetables in olive oil, salt, and pepper.\", \"Assemble quinoa, veggies, and greens in a bowl.\", \"Drizzle with tahini dressing and sprinkle seeds on top.\", \"Serve warm or cold.\"]',1,'[\"Vegan\", \"Fusion\"]','easy','[\"vegan\", \"healthy\", \"bowl\"]',15,25,1,'2025-10-09 15:13:35.385867','2025-10-09 15:13:35.385867'),('3bceb455-7e0e-4334-89d1-436afd36cac0','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','Chicken Tikka Masala','Spicy and creamy Indian chicken curry served with rice.','https://example.com/chicken_tikka.jpg','[\"Marinate chicken in yogurt and spices for at least 1 hour.\", \"Grill or sauté chicken until cooked through.\", \"Prepare sauce with onion, garlic, ginger, tomatoes, and cream.\", \"Add cooked chicken to sauce and simmer for 10 minutes.\", \"Serve hot with basmati rice or naan.\"]',1,'[\"Indian\"]','medium','[\"chicken\", \"curry\", \"spicy\"]',20,30,2,'2025-10-09 15:13:35.398916','2025-10-09 15:13:35.398916'),('703d2d50-0574-4c71-b6f5-b475317c1190','fb033692-9c2b-4a4a-a372-a9941b836694','Fluffy Honey Vanilla Peanut Butter Pancakes 🥜🍯🥞','Elevate your breakfast with these decadent fluffy pancakes infused with vanilla and natural honey sweetness, now enriched with creamy peanut butter for a nutty twist. Perfectly soft and flavorful, these pancakes are ideal for a cozy brunch, served with fresh berries, a drizzle of maple syrup, and an extra dollop of peanut butter for an irresistible treat! 🥞🍓🥜',NULL,'[\"In a large bowl, whisk together the flour, baking powder, sugar, and a pinch of salt.\", \"In a separate bowl, beat the egg and then mix in the milk, melted butter, vanilla extract, honey, and peanut butter until smooth and combined.\", \"Pour the wet ingredients into the dry ingredients and gently stir until just combined; lumps are okay—do not overmix.\", \"Heat a non-stick skillet or griddle over medium heat and lightly grease with butter or oil.\", \"Pour 1/4 cup of batter onto the skillet for each pancake.\", \"Cook until bubbles appear on the surface and the edges look set, about 2-3 minutes.\", \"Flip and cook the other side until golden brown, about 1-2 minutes more.\", \"Serve immediately stacked high with your favorite toppings like fresh berries, maple syrup, and an extra spoonful of peanut butter melted on top.\"]',0,'[\"american\"]','easy','[\"breakfast\", \"sweet\", \"easy\", \"family-friendly\"]',12,15,4,'2025-11-26 11:24:17.551984','2025-11-26 11:32:22.151638'),('7af0e370-1f0b-4969-9ee4-ba4f67a76780','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','Spaghetti Carbonara','Classic Italian pasta dish with eggs, cheese, pancetta, and pepper.','https://example.com/spaghetti.jpg','[\"Boil water in a large pot and cook spaghetti until al dente.\", \"Fry pancetta until crisp.\", \"Whisk eggs and cheese together.\", \"Combine pasta with pancetta and remove from heat.\", \"Stir in egg mixture quickly to create a creamy sauce.\", \"Season with pepper and serve.\"]',1,'[\"Italian\"]','medium','[\"pasta\", \"quick\", \"classic\"]',10,20,2,'2025-10-09 15:13:35.377724','2025-10-09 15:13:35.377724'),('87bedfb5-c3f6-4ad7-9e01-e17acd85d4b1','9962d52b-430e-4b0e-986a-d028281b1e28','Beef Stir-Fry','Quick and tasty stir-fried beef with vegetables and soy sauce.','https://example.com/beef_stirfry.jpg','[\"Slice beef thinly and marinate in soy sauce, garlic, and ginger for 15 minutes.\", \"Heat oil in a wok and stir-fry beef until browned.\", \"Add vegetables and stir-fry until tender-crisp.\", \"Add remaining sauce and cook for 2 minutes.\", \"Serve hot with steamed rice or noodles.\"]',1,'[\"Asian\", \"Chinese\"]','medium','[\"beef\", \"stir-fry\", \"quick\"]',15,15,2,'2025-10-09 15:13:35.413528','2025-10-09 15:13:35.413528'),('ab3a61c6-4861-41f0-a2af-2faa35091e24','fb033692-9c2b-4a4a-a372-a9941b836694','Fluffy Vanilla Citrus Pancakes 🥞🍊','Start your day with these airy, fluffy pancakes infused with a bright burst of orange zest and a hint of vanilla. Perfectly golden and soft, they pair wonderfully with maple syrup and fresh berries for a delightful breakfast treat. Serve with a dollop of whipped cream or yogurt and a sprinkle of powdered sugar for extra indulgence.',NULL,'[\"In a large bowl, whisk together flour, baking powder, sugar, and salt.\", \"In another bowl, beat the egg, then mix in milk, melted butter, vanilla extract, and orange zest.\", \"Pour the wet ingredients into the dry ingredients and gently stir until just combined; lumps are okay.\", \"Heat a non-stick skillet over medium heat and lightly grease with butter or oil.\", \"Pour 1/4 cup of batter for each pancake onto the skillet.\", \"Cook until bubbles form on the surface and edges look set, about 2-3 minutes.\", \"Flip gently and cook the other side until golden brown, another 1-2 minutes.\", \"Keep pancakes warm while cooking the rest.\", \"Serve warm topped with maple syrup, fresh berries, and a dusting of powdered sugar.\"]',0,'[\"american\"]','easy','[\"breakfast\", \"sweet\", \"easy\", \"family-friendly\"]',10,15,4,'2025-11-26 11:18:33.604962','2025-11-26 11:18:33.604962'),('c022d81a-2f55-4bec-8b01-2afc7be6ad8a','486731fc-e3f3-49ae-9426-1c3bf03844ae','Chocolate Lava Cake','Rich chocolate cake with molten center, perfect for dessert lovers.','https://example.com/lava_cake.jpg','[\"Preheat oven to 425°F (220°C).\", \"Butter and flour ramekins.\", \"Melt chocolate and butter together.\", \"Whisk eggs, sugar, and a pinch of salt until fluffy.\", \"Fold chocolate mixture into eggs.\", \"Pour batter into ramekins and bake 12-14 minutes.\", \"Serve immediately with ice cream.\"]',0,'[\"Dessert\"]','hard','[\"chocolate\", \"dessert\", \"bake\"]',20,14,2,'2025-10-09 15:13:35.392198','2025-10-09 15:13:35.392198'),('c2dd0642-7e00-4c4d-87f8-9351282a4192','bf513f79-9851-4123-9e62-31976e22bbc0','Banana Pancakes','Fluffy pancakes with mashed bananas, perfect for breakfast.','https://example.com/banana_pancakes.jpg','[\"Mash bananas in a bowl.\", \"Mix in eggs, flour, milk, and a pinch of salt.\", \"Heat a non-stick pan with butter.\", \"Pour batter into pan and cook until bubbles form, then flip.\", \"Serve warm with syrup or fresh fruit.\"]',1,'[\"Breakfast\", \"American\"]','easy','[\"pancakes\", \"banana\", \"breakfast\"]',10,15,2,'2025-10-09 15:13:35.407814','2025-10-09 15:13:35.407814'),('c89a75c7-5d1f-4f59-9241-0afad6319c96','486731fc-e3f3-49ae-9426-1c3bf03844ae','Caprese Salad','Fresh Italian salad with tomatoes, mozzarella, and basil.','https://example.com/caprese_salad.jpg','[\"Slice tomatoes and mozzarella cheese.\", \"Arrange on a plate alternating tomato and mozzarella slices.\", \"Top with fresh basil leaves.\", \"Drizzle with olive oil and balsamic vinegar.\", \"Season with salt and pepper and serve.\"]',1,'[\"Italian\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-10-09 15:13:35.404047','2025-10-09 15:13:35.404047'),('dac35e0b-7c4d-4952-80cb-b36583029719','10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','Greek Salad','Fresh Mediterranean salad with cucumbers, tomatoes, olives, and feta cheese.','https://example.com/greek_salad.jpg','[\"Chop cucumbers, tomatoes, and red onion.\", \"Combine with olives and feta cheese in a bowl.\", \"Drizzle with olive oil and lemon juice.\", \"Season with salt, pepper, and oregano.\", \"Toss gently and serve.\"]',1,'[\"Greek\", \"Mediterranean\"]','easy','[\"salad\", \"vegetarian\", \"fresh\"]',10,0,2,'2025-10-09 15:13:35.417349','2025-10-09 15:13:35.417349'),('f8313d08-bd95-43ed-b0d5-fe86a5d09444','fb033692-9c2b-4a4a-a372-a9941b836694','Mediterranean Grilled Chicken Sandwich 🥪','A vibrant and delicious grilled chicken sandwich layered with creamy hummus, fresh cucumber, ripe tomatoes, crunchy red onion, and tangy feta cheese, all nestled in toasted ciabatta bread. Perfect for a satisfying lunch or a quick dinner, bursting with Mediterranean flavors and textures. Serve with a side of crisp mixed greens for a colorful plate! 🍅🥒🧀',NULL,'[\"Preheat a grill or grill pan over medium-high heat.\", \"Season chicken breasts with salt, pepper, and a sprinkle of dried oregano.\", \"Grill chicken for 5-7 minutes per side until fully cooked and juices run clear. Let rest for 5 minutes, then slice thinly.\", \"Slice ciabatta bread and toast lightly on the grill or in a toaster.\", \"Spread a generous layer of hummus on both halves of the toasted bread.\", \"Layer sliced grilled chicken, cucumber slices, tomato slices, red onion rings, and crumbled feta cheese on the bottom half.\", \"Drizzle with a little olive oil and a squeeze of fresh lemon juice for brightness.\", \"Top with fresh spinach leaves, then cover with the other half of the bread.\", \"Press gently, slice in half, and serve immediately with your favorite side.\"]',0,'\"mediterranean\"','easy','[\"quick\", \"easy\", \"lunch\", \"dinner\", \"healthy\", \"family-friendly\"]',15,15,2,'2025-10-09 15:15:12.322147','2025-10-09 15:15:12.322147'),('f87b3147-d05d-4d16-be16-cca1a0e09cf8','9962d52b-430e-4b0e-986a-d028281b1e28','Shrimp Tacos','Spicy shrimp tacos with cabbage slaw and creamy sauce.','https://example.com/shrimp_tacos.jpg','[\"Season shrimp with chili powder, paprika, and salt.\", \"Sauté shrimp until cooked through.\", \"Mix cabbage with lime juice and a pinch of salt for slaw.\", \"Warm tortillas and assemble with shrimp, slaw, and sauce.\", \"Serve immediately.\"]',1,'[\"Mexican\"]','medium','[\"seafood\", \"tacos\", \"spicy\"]',15,10,2,'2025-10-09 15:13:35.421726','2025-10-09 15:13:35.421726');
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
INSERT INTO `subscription_plans` VALUES (1,'Basic',9.99,'monthly','Access to core features, limited support, 5 projects per month.','2025-10-09 15:13:35.998582','2025-10-09 15:13:35.998582'),(2,'Pro',29.99,'monthly','All core features, priority support, unlimited projects.','2025-10-09 15:13:36.001657','2025-10-09 15:13:36.001657'),(3,'Enterprise',99.99,'monthly','Custom solutions, dedicated account manager, enterprise-level support.','2025-10-09 15:13:36.006667','2025-10-09 15:13:36.006667'),(4,'Basic Annual',99.99,'yearly','Access to core features, limited support, 5 projects per month. Billed yearly.','2025-10-09 15:13:36.010902','2025-10-09 15:13:36.010902'),(5,'Pro Annual',299.99,'yearly','All core features, priority support, unlimited projects. Billed yearly.','2025-10-09 15:13:36.014192','2025-10-09 15:13:36.014192'),(6,'Enterprise Annual',999.99,'yearly','Custom solutions, dedicated account manager, enterprise-level support. Billed yearly.','2025-10-09 15:13:36.017175','2025-10-09 15:13:36.017175');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'a931dd50-2988-4d56-8815-12a211e85eb7',4,NULL,'active','2025-10-09 15:13:36.025254','2025-10-09 15:13:36.025254'),(2,'486731fc-e3f3-49ae-9426-1c3bf03844ae',5,NULL,'active','2025-10-09 15:13:36.027853','2025-10-09 15:13:36.027853'),(3,'fb033692-9c2b-4a4a-a372-a9941b836694',1,NULL,'active','2025-11-25 11:02:05.683145','2025-11-25 11:02:05.683145'),(4,'fb033692-9c2b-4a4a-a372-a9941b836694',1,NULL,'active','2025-11-25 11:12:26.152056','2025-11-25 11:12:26.152056');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_audits`
--

LOCK TABLES `user_audits` WRITE;
/*!40000 ALTER TABLE `user_audits` DISABLE KEYS */;
INSERT INTO `user_audits` VALUES (1,'a931dd50-2988-4d56-8815-12a211e85eb7','INSERT',NULL,'{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alice@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-09 15:13:07.799239\", \"first_name\": \"Alice\", \"password_digest\": \"$2a$12$kmnfCEyaL5gO9vnj8Q6voelaFSMmHqluv9XtCFCXa7P9lTntNNW4y\", \"last_signed_in_at\": null}','2025-10-09 15:13:07.000000','2025-10-09 15:13:07.000000'),(2,'a931dd50-2988-4d56-8815-12a211e85eb7','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alice@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-09 15:13:07.799239\", \"first_name\": \"Alice\", \"password_digest\": \"$2a$12$kmnfCEyaL5gO9vnj8Q6voelaFSMmHqluv9XtCFCXa7P9lTntNNW4y\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alice@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-09 15:13:07.799239\", \"first_name\": \"Alice\", \"password_digest\": \"$2a$12$H2PCEgahSA0QUP6Edyl3suS.MgaKGjGdqKhh3zPnW/s7CQvUPojwK\", \"last_signed_in_at\": null}','2025-10-09 15:13:33.000000','2025-10-09 15:13:33.000000'),(3,'10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','INSERT',NULL,'{\"bio\": \"Big fan of Italian cuisine.\", \"email\": \"bob@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-09 15:13:34.132463\", \"first_name\": \"Bob\", \"password_digest\": \"$2a$12$GYF/g7rCiOxz2w9WOfPeFewk2/mg3OszAWXNOTTfLtvtbSBbNYsqK\", \"last_signed_in_at\": null}','2025-10-09 15:13:34.000000','2025-10-09 15:13:34.000000'),(4,'bf513f79-9851-4123-9e62-31976e22bbc0','INSERT',NULL,'{\"bio\": \"Enjoys baking bread on weekends.\", \"email\": \"charlie@example.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Example\", \"created_at\": \"2025-10-09 15:13:34.340482\", \"first_name\": \"Charlie\", \"password_digest\": \"$2a$12$8EQmX7DcY06Yr7MCCOJXWedOVFLwXSpoZFiPtMlncvGxNE7bTaBWa\", \"last_signed_in_at\": null}','2025-10-09 15:13:34.000000','2025-10-09 15:13:34.000000'),(5,'d0bb7407-9dd7-4991-b4d3-90dc1c592026','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"johny@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Knox\", \"created_at\": \"2025-10-09 15:13:34.544773\", \"first_name\": \"Johny\", \"password_digest\": \"$2a$12$r30MKyFMadOhfXaqkl9NGeK3/LMjemnm3lGRHCTepjiR32dsyVaBi\", \"last_signed_in_at\": null}','2025-10-09 15:13:34.000000','2025-10-09 15:13:34.000000'),(6,'9962d52b-430e-4b0e-986a-d028281b1e28','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"mie@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Dee\", \"created_at\": \"2025-10-09 15:13:34.751054\", \"first_name\": \"Mie\", \"password_digest\": \"$2a$12$suzK44b.LWN3Pdgki.b5JOnCHASjMyj3.XBDDP0xW7dgoh2XXpYly\", \"last_signed_in_at\": null}','2025-10-09 15:13:34.000000','2025-10-09 15:13:34.000000'),(7,'486731fc-e3f3-49ae-9426-1c3bf03844ae','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"jackson@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Jackson\", \"created_at\": \"2025-10-09 15:13:34.952182\", \"first_name\": \"Carl\", \"password_digest\": \"$2a$12$8JIcxEr96PpkPzKuSdCRAOcxXy8bPqF8otkCsK.De8ZgAhkKZyAEW\", \"last_signed_in_at\": null}','2025-10-09 15:13:34.000000','2025-10-09 15:13:34.000000'),(8,'61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"marie@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Lun\", \"created_at\": \"2025-10-09 15:13:35.155258\", \"first_name\": \"Marie\", \"password_digest\": \"$2a$12$CDSBWJjbUiy3rJ.fIKGt6u22VbQd0kd7VyurKJvfTXgSpzgJtkVO.\", \"last_signed_in_at\": null}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(9,'322abb37-4f35-4a14-a54a-07315ceede10','INSERT',NULL,'{\"bio\": \"Enjoys baking cakes on weekends.\", \"email\": \"marc@knox.com\", \"provider\": null, \"image_src\": \"https://via.placeholder.com/150\", \"last_name\": \"Some\", \"created_at\": \"2025-10-09 15:13:35.356874\", \"first_name\": \"Marc\", \"password_digest\": \"$2a$12$ib1WplbvNok8Y3F7n.kCfe0h1cDECtEOI80KnkFF12c8WzJJCRhcm\", \"last_signed_in_at\": null}','2025-10-09 15:13:35.000000','2025-10-09 15:13:35.000000'),(10,'fb033692-9c2b-4a4a-a372-a9941b836694','INSERT',NULL,'{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-10-09 15:14:10.000000','2025-10-09 15:14:10.000000'),(11,'0afa7f26-3988-4353-a62c-91dbcea2aaf3','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user2@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-17 11:31:52.468252\", \"first_name\": \"Random\", \"password_digest\": \"$2a$12$tjhwTaQ8zVmKHfpyGGDo9uOuLThbmfghLf1BZcSYZL6gCpB1MViHW\", \"last_signed_in_at\": null}','2025-10-17 11:31:52.000000','2025-10-17 11:31:52.000000'),(12,'0170bc61-0457-4ece-98cd-862a4604e733','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-17 11:31:54.674909\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$uvDCVQfCnOPu6hI5X4Tgt.sXMKTp0KTZWqyhNMb5UwFlsjE9NFhz.\", \"last_signed_in_at\": null}','2025-10-17 11:31:54.000000','2025-10-17 11:31:54.000000'),(13,'0170bc61-0457-4ece-98cd-862a4604e733','DELETE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-17 11:31:54.674909\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$uvDCVQfCnOPu6hI5X4Tgt.sXMKTp0KTZWqyhNMb5UwFlsjE9NFhz.\", \"last_signed_in_at\": null}',NULL,'2025-10-17 11:32:11.000000','2025-10-17 11:32:11.000000'),(14,'6700954a-d910-4b47-b6b4-80a996b0cee7','INSERT',NULL,'{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-17 11:32:12.030893\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$UhRur65B.5fA0.orw23VvOENdHFXEh0bjhUP9BDJ9vcbIbvnXn6Oe\", \"last_signed_in_at\": null}','2025-10-17 11:32:12.000000','2025-10-17 11:32:12.000000'),(15,'6700954a-d910-4b47-b6b4-80a996b0cee7','UPDATE','{\"bio\": null, \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"User\", \"created_at\": \"2025-10-17 11:32:12.030893\", \"first_name\": \"Test\", \"password_digest\": \"$2a$12$UhRur65B.5fA0.orw23VvOENdHFXEh0bjhUP9BDJ9vcbIbvnXn6Oe\", \"last_signed_in_at\": null}','{\"bio\": \"\", \"email\": \"cypress-user@example.com\", \"provider\": null, \"image_src\": null, \"last_name\": \"Doe\", \"created_at\": \"2025-10-17 11:32:12.030893\", \"first_name\": \"John\", \"password_digest\": \"$2a$12$UhRur65B.5fA0.orw23VvOENdHFXEh0bjhUP9BDJ9vcbIbvnXn6Oe\", \"last_signed_in_at\": null}','2025-10-17 11:32:13.000000','2025-10-17 11:32:13.000000'),(16,'15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','INSERT',NULL,'{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"EIJFIEJF@dd.dkj\", \"provider\": null, \"image_src\": \"https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c\", \"last_name\": \"Christensen\", \"created_at\": \"2025-11-25 10:41:36.513467\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$NjcROEgpY19TJCgmD/zmT.rHxxpf..NkKVXSMrGg3EbcM4g.kHNY6\", \"last_signed_in_at\": null}','2025-11-25 10:41:36.000000','2025-11-25 10:41:36.000000'),(17,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/c3cbc785-673d-42e7-b80a-5dffdbf508dc_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:19:04.000000','2025-11-26 20:19:04.000000'),(18,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/c3cbc785-673d-42e7-b80a-5dffdbf508dc_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/df1fca99-1319-4afb-be85-381c3d82bed9_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:19:14.000000','2025-11-26 20:19:14.000000'),(19,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/df1fca99-1319-4afb-be85-381c3d82bed9_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/7a0ef266-a9db-40c6-9b15-8041e9da7c12_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:19:52.000000','2025-11-26 20:19:52.000000'),(20,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/7a0ef266-a9db-40c6-9b15-8041e9da7c12_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/8f6722ef-2ed5-4ffa-9984-9ce4e7ed8884_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:19:56.000000','2025-11-26 20:19:56.000000'),(21,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/8f6722ef-2ed5-4ffa-9984-9ce4e7ed8884_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/25f63f5e-c99d-4815-bd2a-322d32146ffd_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:21:11.000000','2025-11-26 20:21:11.000000'),(22,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/25f63f5e-c99d-4815-bd2a-322d32146ffd_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/47370db8-6153-4a5d-9ad7-3d283661c436_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:21:16.000000','2025-11-26 20:21:16.000000'),(23,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/47370db8-6153-4a5d-9ad7-3d283661c436_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/b23fc53a-47a2-4cbb-9dfd-082ca974852c_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:21:17.000000','2025-11-26 20:21:17.000000'),(24,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/b23fc53a-47a2-4cbb-9dfd-082ca974852c_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/44d3c839-8151-4ea3-bf56-cb38b3c5bebd_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:21:18.000000','2025-11-26 20:21:18.000000'),(25,'fb033692-9c2b-4a4a-a372-a9941b836694','UPDATE','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/44d3c839-8151-4ea3-bf56-cb38b3c5bebd_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','{\"bio\": \"Loves cooking and experimenting with new recipes.\", \"email\": \"alexanderbtcc@gmail.com\", \"provider\": null, \"image_src\": \"http://localhost:3000/uploads/user-profile-pics/70323e50-6061-4adb-ae7c-f9192ad8b571_meyers_flaeskestegssandwich.jpg\", \"last_name\": \"Christensen\", \"created_at\": \"2025-10-09 15:14:10.607145\", \"first_name\": \"Alexander\", \"password_digest\": \"$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS\", \"last_signed_in_at\": null}','2025-11-26 20:21:19.000000','2025-11-26 20:21:19.000000');
/*!40000 ALTER TABLE `user_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL DEFAULT (uuid()),
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
INSERT INTO `users` VALUES ('0afa7f26-3988-4353-a62c-91dbcea2aaf3','Random','User','cypress-user2@example.com',NULL,NULL,'$2a$12$tjhwTaQ8zVmKHfpyGGDo9uOuLThbmfghLf1BZcSYZL6gCpB1MViHW',NULL,NULL,NULL,'2025-10-17 11:31:52.468252','2025-10-17 11:31:52.468252'),('10d0a1bf-1e84-41fe-a95f-4b88aa30a6bf','Bob','Example','bob@example.com',NULL,NULL,'$2a$12$GYF/g7rCiOxz2w9WOfPeFewk2/mg3OszAWXNOTTfLtvtbSBbNYsqK','https://via.placeholder.com/150','Big fan of Italian cuisine.',NULL,'2025-10-09 15:13:34.132463','2025-10-09 15:13:34.132463'),('15bdffd9-f28d-4d5d-b1c9-925fbb98a3f6','Alexander','Christensen','EIJFIEJF@dd.dkj',NULL,NULL,'$2a$12$NjcROEgpY19TJCgmD/zmT.rHxxpf..NkKVXSMrGg3EbcM4g.kHNY6','https://lh3.googleusercontent.com/a/ACg8ocKcCIIs7nL6mk6IzWYPYE0Iup-FA8e_p8LN9TmKJuphVmKo0Mg=s96-c','Loves cooking and experimenting with new recipes.',NULL,'2025-11-25 10:41:36.513467','2025-11-25 10:41:36.513467'),('322abb37-4f35-4a14-a54a-07315ceede10','Marc','Some','marc@knox.com',NULL,NULL,'$2a$12$ib1WplbvNok8Y3F7n.kCfe0h1cDECtEOI80KnkFF12c8WzJJCRhcm','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-09 15:13:35.356874','2025-10-09 15:13:35.356874'),('486731fc-e3f3-49ae-9426-1c3bf03844ae','Carl','Jackson','jackson@knox.com',NULL,NULL,'$2a$12$8JIcxEr96PpkPzKuSdCRAOcxXy8bPqF8otkCsK.De8ZgAhkKZyAEW','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-09 15:13:34.952182','2025-10-09 15:13:34.952182'),('61f5f9ad-0ab8-4ec6-8ecb-1dcf327d02f5','Marie','Lun','marie@knox.com',NULL,NULL,'$2a$12$CDSBWJjbUiy3rJ.fIKGt6u22VbQd0kd7VyurKJvfTXgSpzgJtkVO.','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-09 15:13:35.155258','2025-10-09 15:13:35.155258'),('6700954a-d910-4b47-b6b4-80a996b0cee7','John','Doe','cypress-user@example.com',NULL,NULL,'$2a$12$UhRur65B.5fA0.orw23VvOENdHFXEh0bjhUP9BDJ9vcbIbvnXn6Oe',NULL,'',NULL,'2025-10-17 11:32:12.030893','2025-10-17 11:32:13.279081'),('9962d52b-430e-4b0e-986a-d028281b1e28','Mie','Dee','mie@knox.com',NULL,NULL,'$2a$12$suzK44b.LWN3Pdgki.b5JOnCHASjMyj3.XBDDP0xW7dgoh2XXpYly','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-09 15:13:34.751054','2025-10-09 15:13:34.751054'),('a931dd50-2988-4d56-8815-12a211e85eb7','Alice','Example','alice@example.com',NULL,NULL,'$2a$12$H2PCEgahSA0QUP6Edyl3suS.MgaKGjGdqKhh3zPnW/s7CQvUPojwK','https://via.placeholder.com/150','Loves cooking and experimenting with new recipes.',NULL,'2025-10-09 15:13:07.799239','2025-10-09 15:13:33.914701'),('bf513f79-9851-4123-9e62-31976e22bbc0','Charlie','Example','charlie@example.com',NULL,NULL,'$2a$12$8EQmX7DcY06Yr7MCCOJXWedOVFLwXSpoZFiPtMlncvGxNE7bTaBWa','https://via.placeholder.com/150','Enjoys baking bread on weekends.',NULL,'2025-10-09 15:13:34.340482','2025-10-09 15:13:34.340482'),('d0bb7407-9dd7-4991-b4d3-90dc1c592026','Johny','Knox','johny@knox.com',NULL,NULL,'$2a$12$r30MKyFMadOhfXaqkl9NGeK3/LMjemnm3lGRHCTepjiR32dsyVaBi','https://via.placeholder.com/150','Enjoys baking cakes on weekends.',NULL,'2025-10-09 15:13:34.544773','2025-10-09 15:13:34.544773'),('fb033692-9c2b-4a4a-a372-a9941b836694','Alexander','Christensen','alexanderbtcc@gmail.com',NULL,NULL,'$2a$12$sMKGw7sman6gCxqx2dlix.Vrdd45nkSSjOvkoblbThkrnuwuR3ObS','http://localhost:3000/uploads/user-profile-pics/70323e50-6061-4adb-ae7c-f9192ad8b571_meyers_flaeskestegssandwich.jpg','Loves cooking and experimenting with new recipes.',NULL,'2025-10-09 15:14:10.607145','2025-11-26 20:21:19.376284');
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
-- Dumping events for database 'munchora'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `weekly_recipe_suggestions` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`munchora`@`%`*/ /*!50106 EVENT `weekly_recipe_suggestions` ON SCHEDULE EVERY 6 HOUR STARTS '2025-10-09 15:13:04' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
        DECLARE done INT DEFAULT FALSE;
        DECLARE v_user_id VARCHAR(36);

        -- Cursor to select all user IDs
        DECLARE cur CURSOR FOR SELECT id FROM users;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

        OPEN cur;

        read_loop: LOOP
          FETCH cur INTO v_user_id;
          IF done THEN
            LEAVE read_loop;
          END IF;

          -- Call the stored procedure for this user
          CALL generate_recipe_suggestions(v_user_id);
        END LOOP;

        CLOSE cur;
      END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'munchora'
--
/*!50003 DROP PROCEDURE IF EXISTS `generate_recipe_suggestions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`munchora`@`%` PROCEDURE `generate_recipe_suggestions`(IN p_user_id VARCHAR(36))
BEGIN
  DECLARE favorite_cuisines TEXT;
  DECLARE favorite_tags TEXT;

  -- Get user's favorite cuisines from liked recipes
  SELECT GROUP_CONCAT(DISTINCT JSON_UNQUOTE(JSON_EXTRACT(r.cuisine, '$[0]'))) INTO favorite_cuisines
  FROM recipes r
  WHERE r.id IN (
    SELECT recipe_id FROM recipe_likes WHERE user_id = p_user_id
  )
  AND r.cuisine IS NOT NULL
  LIMIT 5;

  -- Get user's favorite tags from liked recipes
  SELECT GROUP_CONCAT(DISTINCT JSON_UNQUOTE(JSON_EXTRACT(r.tags, '$[0]'))) INTO favorite_tags
  FROM recipes r
  WHERE r.id IN (
    SELECT recipe_id FROM recipe_likes WHERE user_id = p_user_id
  )
  AND r.tags IS NOT NULL
  LIMIT 8;

  -- Delete old suggestions for this user
  DELETE FROM recipe_suggestions WHERE user_id = p_user_id;

  -- Insert personalized recipe suggestions
  INSERT INTO recipe_suggestions (user_id, recipe_id, reason, created_at, updated_at)
  SELECT
    p_user_id,
    r.id,
    CASE
      WHEN favorite_cuisines IS NOT NULL
           AND JSON_OVERLAPS(r.cuisine, JSON_ARRAY(favorite_cuisines))
           THEN 'matches your favorite cuisine'
      WHEN favorite_tags IS NOT NULL
           AND JSON_OVERLAPS(r.tags, JSON_ARRAY(favorite_tags))
           THEN 'matches your favorite tags'
      WHEN (SELECT COUNT(*) FROM recipe_likes WHERE recipe_id = r.id) > 50
           THEN 'highly popular recipe'
      WHEN (SELECT COUNT(*) FROM recipe_comments WHERE recipe_id = r.id) > 20
           THEN 'highly discussed recipe'
      ELSE 'new recipe you might enjoy'
    END AS reason,
    NOW(),
    NOW()
  FROM recipes r
  WHERE r.id NOT IN (
    SELECT recipe_id FROM recipe_likes WHERE user_id = p_user_id
    UNION
    SELECT recipe_id FROM recipe_comments WHERE user_id = p_user_id
    UNION
    SELECT recipe_id FROM recipe_suggestions WHERE user_id = p_user_id
  )
  AND r.is_public = true
  ORDER BY
    CASE WHEN favorite_cuisines IS NOT NULL
         AND JSON_OVERLAPS(r.cuisine, JSON_ARRAY(favorite_cuisines)) THEN 1
         ELSE 0
    END DESC,
    CASE WHEN favorite_tags IS NOT NULL
         AND JSON_OVERLAPS(r.tags, JSON_ARRAY(favorite_tags)) THEN 1
         ELSE 0
    END DESC,
    (SELECT COUNT(*) FROM recipe_likes WHERE recipe_id = r.id) DESC,
    (SELECT COUNT(*) FROM recipe_comments WHERE recipe_id = r.id) DESC,
    r.created_at DESC
  LIMIT 15;
END ;;
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

-- Dump completed on 2025-11-27 10:26:07
