-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ferdos_garden
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add message',7,'add_message'),(26,'Can change message',7,'change_message'),(27,'Can delete message',7,'delete_message'),(28,'Can view message',7,'view_message'),(29,'Can add price_ticket',8,'add_price_ticket'),(30,'Can change price_ticket',8,'change_price_ticket'),(31,'Can delete price_ticket',8,'delete_price_ticket'),(32,'Can view price_ticket',8,'view_price_ticket'),(33,'Can add visitor',9,'add_visitor'),(34,'Can change visitor',9,'change_visitor'),(35,'Can delete visitor',9,'delete_visitor'),(36,'Can view visitor',9,'view_visitor'),(37,'Can add place',10,'add_place'),(38,'Can change place',10,'change_place'),(39,'Can delete place',10,'delete_place'),(40,'Can view place',10,'view_place'),(41,'Can add بازدید کننده',11,'add_visitortype'),(42,'Can change بازدید کننده',11,'change_visitortype'),(43,'Can delete بازدید کننده',11,'delete_visitortype'),(44,'Can view بازدید کننده',11,'view_visitortype'),(45,'Can add بیلیت',12,'add_ticketprice'),(46,'Can change بیلیت',12,'change_ticketprice'),(47,'Can delete بیلیت',12,'delete_ticketprice'),(48,'Can view بیلیت',12,'view_ticketprice'),(49,'Can add تصویر',13,'add_articlegallery'),(50,'Can change تصویر',13,'change_articlegallery'),(51,'Can delete تصویر',13,'delete_articlegallery'),(52,'Can view تصویر',13,'view_articlegallery'),(53,'Can add نویسنده',14,'add_author'),(54,'Can change نویسنده',14,'change_author'),(55,'Can delete نویسنده',14,'delete_author'),(56,'Can view نویسنده',14,'view_author'),(57,'Can add مقاله',15,'add_article'),(58,'Can change مقاله',15,'change_article'),(59,'Can delete مقاله',15,'delete_article'),(60,'Can view مقاله',15,'view_article'),(61,'Can add گروه مقاله',16,'add_articlegroup'),(62,'Can change گروه مقاله',16,'change_articlegroup'),(63,'Can delete گروه مقاله',16,'delete_articlegroup'),(64,'Can view گروه مقاله',16,'view_articlegroup'),(65,'Can add وضعیت ورکشاپ',17,'add_workshopstatus'),(66,'Can change وضعیت ورکشاپ',17,'change_workshopstatus'),(67,'Can delete وضعیت ورکشاپ',17,'delete_workshopstatus'),(68,'Can view وضعیت ورکشاپ',17,'view_workshopstatus'),(69,'Can add تصویر',18,'add_workshopgallery'),(70,'Can change تصویر',18,'change_workshopgallery'),(71,'Can delete تصویر',18,'delete_workshopgallery'),(72,'Can view تصویر',18,'view_workshopgallery'),(73,'Can add ورکشاپ',19,'add_workshop'),(74,'Can change ورکشاپ',19,'change_workshop'),(75,'Can delete ورکشاپ',19,'delete_workshop'),(76,'Can view ورکشاپ',19,'view_workshop'),(77,'Can add memory galley',20,'add_memorygalley'),(78,'Can change memory galley',20,'change_memorygalley'),(79,'Can delete memory galley',20,'delete_memorygalley'),(80,'Can view memory galley',20,'view_memorygalley'),(81,'Can add memory like',21,'add_memorylike'),(82,'Can change memory like',21,'change_memorylike'),(83,'Can delete memory like',21,'delete_memorylike'),(84,'Can view memory like',21,'view_memorylike'),(85,'Can add خاطره',22,'add_memory'),(86,'Can change خاطره',22,'change_memory'),(87,'Can delete خاطره',22,'delete_memory'),(88,'Can view خاطره',22,'view_memory'),(89,'Can add خاطره',23,'add_memory'),(90,'Can change خاطره',23,'change_memory'),(91,'Can delete خاطره',23,'delete_memory'),(92,'Can view خاطره',23,'view_memory'),(93,'Can add memory like',24,'add_memorylike'),(94,'Can change memory like',24,'change_memorylike'),(95,'Can delete memory like',24,'delete_memorylike'),(96,'Can view memory like',24,'view_memorylike'),(97,'Can add memory galley',25,'add_memorygalley'),(98,'Can change memory galley',25,'change_memorygalley'),(99,'Can delete memory galley',25,'delete_memorygalley'),(100,'Can view memory galley',25,'view_memorygalley');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$qjZIpcxdTWO9hdTNor7aPW$/d+sWiukVlTQkHM4b+zkb1ArB/VRxrRKXmJ6oOWsmkc=','2022-11-22 11:38:28.027400',1,'OmidHosseini','','','omid.iipa75@gmail.com',1,1,'2022-08-06 12:49:30.289730'),(2,'pbkdf2_sha256$320000$UMWdS0Dhb5EwM0g4InVvfg$bB7kIPi0yQYdShQPreTKmg+LEcdgg5EsZxhTUlkGXYI=',NULL,0,'omid_hosseini','omid','hosseini','',0,1,'2022-10-09 20:40:01.929709'),(3,'pbkdf2_sha256$320000$i88s9ALZm64f5uNhJvTqZ3$hee4NOIZiYXFUhBmk36NCg45LJpxp2KrZzaVsDLzMrc=','2022-11-12 19:00:08.245468',0,'reza_rezae','reza','rezae','',0,1,'2022-10-09 20:42:11.957109'),(4,'pbkdf2_sha256$320000$SLuLvVxujMrdBYPCXuIKPK$bZGTLWR+Imy50rKmQjQD1IkGuTCjr+vc0sJqpBZyuBA=','2022-11-18 21:14:01.664092',0,'ahmad_ahmadi','ahmad','ahmadi','',0,1,'2022-10-09 20:50:19.826645'),(5,'pbkdf2_sha256$390000$H6JJ1MLP7s3WHNiVELf77t$wmVIwg/Lm7eFXxCLMTudVyQb5lFiZlAzD8JzvwkvEFk=','2022-10-19 12:53:09.547004',0,'hamid_hamidi','hamid','hamidi','',0,1,'2022-10-09 21:12:27.778648'),(6,'pbkdf2_sha256$320000$K0kcfxixQXVgbMWrTfTafY$6ThBiud/v81lyLtyn5CVc5JNotVc2f8xGEBoY1jxpFg=','2022-11-15 19:50:43.227541',0,'alireza_hosseini','alireza','hosseini','',0,1,'2022-10-09 21:21:17.492783'),(7,'pbkdf2_sha256$320000$8LEoxowmCH9ThnQlTm7BJw$wTeEOc3SNJs/q0EGpb7QlnTNLe7TTnO2QKwITNv33zc=',NULL,0,'alireza123','alireza','hassani','',0,1,'2022-10-10 17:11:43.607708'),(8,'pbkdf2_sha256$320000$F8c0YLyvpT2pw53hnStp7m$MhJLAyCa4XyLYEh+eXQjsc/8SDH6K+nkuC2g/PuRZKE=','2022-11-12 16:23:04.775136',0,'gavazn','sorush','esfandiari','',0,1,'2022-10-18 16:28:32.430223'),(9,'pbkdf2_sha256$390000$YGVeFijn7PJzS8bnOLnMXu$saDKvlRpT4JVaS40NViEv/bSz/bjP9bUSqTLghJQtII=','2022-10-22 18:30:43.380867',0,'elahe_mozafari','elahe','mozafari','',0,1,'2022-10-19 12:56:45.289658');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-08-06 15:23:10.484685','1','Place object (1)',1,'[{\"added\": {}}]',10,1),(2,'2022-08-06 15:24:40.556800','1','Visitor object (1)',1,'[{\"added\": {}}]',9,1),(3,'2022-08-06 15:24:53.429999','2','Visitor object (2)',1,'[{\"added\": {}}]',9,1),(4,'2022-08-06 15:25:07.210386','3','Visitor object (3)',1,'[{\"added\": {}}]',9,1),(5,'2022-08-06 15:34:23.129964','1','Price_ticket object (1)',1,'[{\"added\": {}}]',8,1),(6,'2022-08-06 15:38:24.551661','1','Message object (1)',1,'[{\"added\": {}}]',7,1),(7,'2022-08-31 18:25:50.168604','1','عمومی',1,'[{\"added\": {}}]',11,1),(8,'2022-08-31 18:25:57.925242','2','گروهی',1,'[{\"added\": {}}]',11,1),(9,'2022-08-31 18:26:02.941440','3','خارجی',1,'[{\"added\": {}}]',11,1),(10,'2022-08-31 18:30:41.341246','1','موزه باغ فردوس',1,'[{\"added\": {}}]',10,1),(11,'2022-08-31 18:31:53.324076','2','مکان آزمایشی 1',1,'[{\"added\": {}}]',10,1),(12,'2022-08-31 18:32:22.573564','1','مکان آزمایشی 1	خارجی	10000',1,'[{\"added\": {}}]',12,1),(13,'2022-08-31 18:32:36.595637','2','موزه باغ فردوس	خارجی	12000',1,'[{\"added\": {}}]',12,1),(14,'2022-08-31 18:32:49.687731','3','موزه باغ فردوس	گروهی	15000',1,'[{\"added\": {}}]',12,1),(15,'2022-08-31 18:32:58.574450','4','موزه باغ فردوس	گروهی	18000',1,'[{\"added\": {}}]',12,1),(16,'2022-08-31 18:33:18.897042','5','موزه باغ فردوس	عمومی	20000',1,'[{\"added\": {}}]',12,1),(17,'2022-08-31 18:33:54.616069','4','موزه باغ فردوس	گروهی	18000',3,'',12,1),(18,'2022-08-31 18:34:19.088725','6','مکان آزمایشی 1	عمومی	25000',1,'[{\"added\": {}}]',12,1),(19,'2022-08-31 18:34:37.859655','7','مکان آزمایشی 1	گروهی	40000',1,'[{\"added\": {}}]',12,1),(20,'2022-09-02 18:34:36.474128','2','امید حامدسیدحسینی	تشکر شماره 2',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u0648\\u0636\\u0648\\u0639 \\u067e\\u06cc\\u0627\\u0645\"]}}]',7,1),(21,'2022-09-02 18:38:01.455305','4','عباس احمدی	تست شماره 4',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u062f\\u06cc\\u062f\\u0647 \\u0634\\u062f\\u0646 \\u067e\\u06cc\\u0627\\u0645\"]}}]',7,1),(22,'2022-09-06 19:10:53.995333','8','علیرضا	تشکر',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u062f\\u06cc\\u062f\\u0647 \\u0634\\u062f\\u0646 \\u067e\\u06cc\\u0627\\u0645\"]}}]',7,1),(23,'2022-09-14 15:12:35.766462','1','امید حامدسیدحسینی',1,'[{\"added\": {}}]',14,1),(24,'2022-09-14 15:13:32.292212','2','علیرضا حسینی',1,'[{\"added\": {}}]',14,1),(25,'2022-09-14 15:14:30.158107','3','امیر جهانبانی',1,'[{\"added\": {}}]',14,1),(26,'2022-09-14 15:14:46.584529','1','علمی',1,'[{\"added\": {}}]',16,1),(27,'2022-09-14 15:14:54.764126','2','عمومی',1,'[{\"added\": {}}]',16,1),(28,'2022-09-14 15:16:43.852850','3','تاریخی',1,'[{\"added\": {}}]',16,1),(29,'2022-09-14 15:32:24.344497','1','امید حامدسیدحسینی',1,'[{\"added\": {}}]',14,1),(30,'2022-09-14 15:33:01.669499','2','علیرضا حسینی',1,'[{\"added\": {}}]',14,1),(31,'2022-09-14 15:33:30.276657','3','امیر جهانبانی',1,'[{\"added\": {}}]',14,1),(32,'2022-09-14 15:33:36.994834','1','تاریخی',1,'[{\"added\": {}}]',16,1),(33,'2022-09-14 15:33:41.268093','2','علمی',1,'[{\"added\": {}}]',16,1),(34,'2022-09-14 15:33:46.947130','3','عمومی',1,'[{\"added\": {}}]',16,1),(35,'2022-09-14 15:38:23.184293','1','روابط سیاسی ایران و یهود در دوره ی شاهنشاهی هخامنشی',1,'[{\"added\": {}}]',15,1),(36,'2022-09-14 15:40:25.030043','2','images/article/Haxamanisiyaaaaws-20220914111025.png',1,'[{\"added\": {}}]',13,1),(37,'2022-09-14 15:40:39.172362','3','images/article/هخامنشیان-20220914111039.jpg',1,'[{\"added\": {}}]',13,1),(38,'2022-09-14 15:48:59.356249','2','شفافیت در بودجه و عملکرد مالی دانشگاههای علوم پزشکی کشور',1,'[{\"added\": {}}]',15,1),(39,'2022-09-14 15:49:37.081920','4','images/article/pezeshki2-20220914111937.jpg',1,'[{\"added\": {}}]',13,1),(40,'2022-09-14 15:49:43.727279','5','images/article/pezeshki3-20220914111943.jpg',1,'[{\"added\": {}}]',13,1),(41,'2022-09-14 16:00:24.999180','3','طرح روستای فارسیان',1,'[{\"added\": {}}]',15,1),(42,'2022-09-14 16:00:44.139241','6','images/article/rosta4-20220914113044.jpg',1,'[{\"added\": {}}]',13,1),(43,'2022-09-14 16:01:03.261912','7','images/article/2_1-20220914113103.jpg',1,'[{\"added\": {}}]',13,1),(44,'2022-09-17 20:24:40.175530','2','شفافیت در بودجه و عملکرد مالی دانشگاههای علوم پزشکی کشور',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u06cc\\u0633\\u0646\\u062f\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',15,1),(45,'2022-09-17 20:25:14.990132','3','طرح روستای فارسیان',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u06cc\\u0633\\u0646\\u062f\\u0647 \\u0645\\u0642\\u0627\\u0644\\u0647\"]}}]',15,1),(46,'2022-10-03 20:06:09.860126','3','طرح روستای فارسیان',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',15,1),(47,'2022-10-03 20:19:47.199586','3','طرح روستای فارسیان',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',15,1),(48,'2022-10-03 20:20:05.031203','2','شفافیت در بودجه و عملکرد مالی دانشگاههای علوم پزشکی کشور',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',15,1),(49,'2022-10-03 20:20:31.963675','1','روابط سیاسی ایران و یهود در دوره ی شاهنشاهی هخامنشی',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',15,1),(50,'2022-10-03 20:27:40.628040','8','images/articles/article_1/hakhamaneshi3.png',1,'[{\"added\": {}}]',13,1),(51,'2022-10-03 20:28:02.040413','9','images/articles/article_2/pezeshki.jpg',1,'[{\"added\": {}}]',13,1),(52,'2022-10-03 20:28:11.068240','10','images/articles/article_2/pezeshki3.jpg',1,'[{\"added\": {}}]',13,1),(53,'2022-10-03 20:28:26.295645','11','images/articles/article_3/rosta.jpg',1,'[{\"added\": {}}]',13,1),(54,'2022-10-03 20:28:35.072076','12','images/articles/article_3/rosta2.jpg',1,'[{\"added\": {}}]',13,1),(55,'2022-10-03 20:28:42.455997','13','images/articles/article_3/rosta3.jpg',1,'[{\"added\": {}}]',13,1),(56,'2022-10-08 18:38:11.921967','1','برگزار نشده',1,'[{\"added\": {}}]',17,1),(57,'2022-10-08 18:38:29.391980','2','در حال برگزاری',1,'[{\"added\": {}}]',17,1),(58,'2022-10-08 18:38:48.367451','3','برگزار شده',1,'[{\"added\": {}}]',17,1),(59,'2022-10-08 18:39:02.161003','4','لغو شده',1,'[{\"added\": {}}]',17,1),(60,'2022-10-08 18:51:02.159502','1','کارگاه آزمایشی اول',1,'[{\"added\": {}}]',19,1),(61,'2022-10-08 18:52:32.002233','2','کارگاه آزمایشی دوم',1,'[{\"added\": {}}]',19,1),(62,'2022-10-08 18:54:45.958639','3','کارگاه آزمایشی سوم',1,'[{\"added\": {}}]',19,1),(63,'2022-10-08 18:56:21.856439','4','کارگاه آزمایشی چهارم',1,'[{\"added\": {}}]',19,1),(64,'2022-10-08 18:57:49.331267','2','کارگاه آزمایشی اول',1,'[{\"added\": {}}]',18,1),(65,'2022-10-08 18:57:59.099362','3','کارگاه آزمایشی دوم',1,'[{\"added\": {}}]',18,1),(66,'2022-10-08 18:58:08.619778','4','کارگاه آزمایشی سوم',1,'[{\"added\": {}}]',18,1),(67,'2022-10-08 18:58:15.855290','5','کارگاه آزمایشی چهارم',1,'[{\"added\": {}}]',18,1),(68,'2022-10-08 19:02:55.922909','4','کارگاه آزمایشی چهارم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631 \\u0641\\u0639\\u0627\\u0644\"]}}]',19,1),(69,'2022-10-08 20:09:13.633874','3','کارگاه آزمایشی سوم',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u06af\\u0632\\u0627\\u0631\\u0634\"]}}]',19,1),(70,'2022-10-18 11:51:42.972995','2','خاطره اول',3,'',22,1),(71,'2022-10-18 11:51:42.974992','1','خاطره اول',3,'',22,1),(72,'2022-10-18 11:59:57.668594','3','خاطره اول',3,'',22,1),(73,'2022-10-18 14:30:58.785234','5','خاطره دوم',3,'',22,1),(74,'2022-10-18 14:36:00.349164','6','خاطره دوم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',22,1),(75,'2022-10-18 14:36:04.872032','7','خاطره سوم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',22,1),(76,'2022-10-18 14:36:08.739205','8','خاطره چهارم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',22,1),(77,'2022-10-18 16:59:40.298758','4','falsafi',1,'[{\"added\": {}}]',16,1),(78,'2022-10-19 12:59:25.060913','1','خاطره اول',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(79,'2022-10-19 12:59:31.653047','2','خاطره دوم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(80,'2022-10-19 12:59:35.109900','3','خاطره سوم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(81,'2022-10-19 12:59:39.051972','4','خاطره چهارم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(82,'2022-10-19 12:59:43.374931','5','خاطره پنجم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(83,'2022-10-19 12:59:47.559066','6','خاطره ششم',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(84,'2022-10-19 13:59:17.600298','7','test1',2,'[{\"changed\": {\"fields\": [\"\\u0641\\u0639\\u0627\\u0644/\\u063a\\u06cc\\u0631\\u0641\\u0627\\u0644\"]}}]',23,1),(85,'2022-10-26 19:16:28.880103','4','گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس',1,'[{\"added\": {}}]',15,1),(86,'2022-10-26 19:16:51.600611','14','images/articles/article_4/415.jpg',1,'[{\"added\": {}}]',13,1),(87,'2022-10-26 19:17:03.013772','15','images/articles/article_4/1444728_957.jpg',1,'[{\"added\": {}}]',13,1),(88,'2022-10-26 19:17:48.477951','16','images/articles/article_4/8016782_535.jpg',1,'[{\"added\": {}}]',13,1),(89,'2022-10-26 19:17:57.320811','17','images/articles/article_4/earth.jpg',1,'[{\"added\": {}}]',13,1),(90,'2022-10-26 19:18:07.483039','18','images/articles/article_4/earth-357x210.jpg',1,'[{\"added\": {}}]',13,1),(91,'2022-10-26 19:20:06.741484','4','گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0627\\u0635\\u0644\\u06cc\"]}}]',15,1),(92,'2022-10-26 19:22:03.154828','4','گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس',2,'[]',15,1),(93,'2022-10-26 19:24:04.548197','4','گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0627\\u0635\\u0644\\u06cc\"]}}]',15,1),(94,'2022-10-26 19:26:22.722561','4','گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062a\\u0646 \\u0627\\u0635\\u0644\\u06cc\"]}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(15,'ArticleApp','article'),(13,'ArticleApp','articlegallery'),(16,'ArticleApp','articlegroup'),(14,'ArticleApp','author'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'IntroductionApp','message'),(10,'IntroductionApp','place'),(8,'IntroductionApp','price_ticket'),(12,'IntroductionApp','ticketprice'),(9,'IntroductionApp','visitor'),(11,'IntroductionApp','visitortype'),(22,'MemoriesApp','memory'),(20,'MemoriesApp','memorygalley'),(21,'MemoriesApp','memorylike'),(23,'MemoriseFerdowsApp','memory'),(25,'MemoriseFerdowsApp','memorygalley'),(24,'MemoriseFerdowsApp','memorylike'),(6,'sessions','session'),(19,'WorkshopApp','workshop'),(18,'WorkshopApp','workshopgallery'),(17,'WorkshopApp','workshopstatus');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-06 08:12:23.558179'),(2,'auth','0001_initial','2022-08-06 08:12:24.105432'),(3,'admin','0001_initial','2022-08-06 08:12:24.227031'),(4,'admin','0002_logentry_remove_auto_add','2022-08-06 08:12:24.234669'),(5,'admin','0003_logentry_add_action_flag_choices','2022-08-06 08:12:24.241650'),(6,'contenttypes','0002_remove_content_type_name','2022-08-06 08:12:24.348605'),(7,'auth','0002_alter_permission_name_max_length','2022-08-06 08:12:24.409221'),(8,'auth','0003_alter_user_email_max_length','2022-08-06 08:12:24.433172'),(9,'auth','0004_alter_user_username_opts','2022-08-06 08:12:24.444142'),(10,'auth','0005_alter_user_last_login_null','2022-08-06 08:12:24.549290'),(11,'auth','0006_require_contenttypes_0002','2022-08-06 08:12:24.553755'),(12,'auth','0007_alter_validators_add_error_messages','2022-08-06 08:12:24.564730'),(13,'auth','0008_alter_user_username_max_length','2022-08-06 08:12:24.648972'),(14,'auth','0009_alter_user_last_name_max_length','2022-08-06 08:12:24.723074'),(15,'auth','0010_alter_group_name_max_length','2022-08-06 08:12:24.746013'),(16,'auth','0011_update_proxy_permissions','2022-08-06 08:12:24.756004'),(17,'auth','0012_alter_user_first_name_max_length','2022-08-06 08:12:24.823575'),(18,'sessions','0001_initial','2022-08-06 08:12:24.894048'),(22,'IntroductionApp','0001_initial','2022-08-31 18:07:38.598180'),(24,'ArticleApp','0001_initial','2022-09-14 15:30:02.200877'),(25,'ArticleApp','0002_remove_article_author_article_author','2022-09-14 15:30:02.408322'),(26,'WorkshopApp','0001_initial','2022-10-05 21:08:23.841276'),(27,'WorkshopApp','0002_alter_workshop_registration','2022-10-08 18:49:04.146224'),(30,'ArticleApp','0003_alter_articlegallery_images','2022-10-18 15:42:16.246440'),(33,'MemoriseFerdowsApp','0001_initial','2022-10-19 12:47:11.138887'),(34,'ArticleApp','0004_alter_article_text','2022-10-26 18:54:24.310989'),(35,'MemoriseFerdowsApp','0002_alter_memory_register_date','2022-10-26 18:54:24.321958');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('76sz5364bp5654io2t7tw0n3fnx6wtkz','.eJxVjEEOwiAQRe_C2hCgw9C6dO8ZmoGZStVAUtqV8e7apAvd_vfef6mRtjWPW5NlnFmdlVWn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1kavlbD85HQnKhRxJrQHzn0JiJkJldilGYYAjQB7CYAkP0FpkcA0zYsVHvD-MvN_I:1oTNvL:2YBY4ITcmT54trllnpgb5E6s6LvuRRQaFgrGmVm_A1c','2022-09-14 18:08:31.689079'),('9yuunlvdrftmmnokjd6iomt1yyo6qjh5','.eJxVjDsOwjAQBe_iGln4m5iSPmewdr1eHEC2FCcV4u4QKQW0b2beS0TY1hK3npc4k7gIJU6_G0J65LoDukO9NZlaXZcZ5a7Ig3Y5NcrP6-H-HRTo5VszYwrOaafzAGxYW4tsAAi8D2jVOVkVPJgcBiKFYQRv2aBNwDRSAPH-AAPWOPg:1oxOK1:cqnP_GqTTDWNNuaJJ73Ey9hyd44huqGthYS27CHnImc','2022-12-06 11:38:01.842586'),('hnffp3xwbisz4v02rgvbzqa48e80qlfe','.eJxVjDsOwyAQRO9CHSEW8zEp0_sMaIElOIlAMnYV5e6xJReJppv3Zt7M47YWv3Va_JzYlQG7_HYB45PqAdID673x2Oq6zIEfCj9p51NL9Lqd7t9BwV72NZlBSBv2OIsJQJMEM2TjUGfnRius0iqgMkqBk5CzhjEHIWOykUhH9vkCveg3Ug:1odEFs:NH2f5kmSQNcfURkcLWgLSGoRuaPUElSmlQj38X77K1A','2022-10-11 20:50:24.791318'),('hxplyt3h03fito3202fq1qzv493h75kq','.eJxVjDsOwyAQRO9CHSEW8zEp0_sMaIElOIlAMnYV5e6xJReJppv3Zt7M47YWv3Va_JzYlQG7_HYB45PqAdID673x2Oq6zIEfCj9p51NL9Lqd7t9BwV72NZlBSBv2OIsJQJMEM2TjUGfnRius0iqgMkqBk5CzhjEHIWOykUhH9vkCveg3Ug:1ofLD8:tccMdBTHjsWEUP5PndGXN91R9BW4_yRyFU2ru0yCSNo','2022-10-17 16:40:18.797041'),('l1s62j5p09gmstntxw0r0ktmiw2junk7','.eJxVjLEOAiEQRP-F2hAgxwKW9n4DWdg9OTWQHHeV8d-V5Aptppj3Zl4i4r6VuHde40LiLLQ4_XYJ84PrAHTHemsyt7qtS5JDkQft8tqIn5fD_Tso2MtYewjZJJ5dcLPN35gggfWarQOHyVs0wVEAl8yEnEFr0koRKyQw2or3B-bRN7o:1okhqZ:6ZPzQyr_Zsl-INWEm9ytimgJcsOyF2iUw7RScUrrTUM','2022-11-01 11:51:11.191528'),('mn0yvmm05dst43hixghdi2j9q1n65je1','.eJxVjDkOwjAABP_iGll2fFPS5w3W-ggOIFuKkwrxdxIpBbQ7M_smHtta_Nbz4udErkSTy-8WEJ-5HiA9UO-NxlbXZQ70UOhJOx1byq_b6f4dFPSy1zI5WOgpM82N1ElBwCUYCRVd1oJJZaxT3PABDoHB2BBF0Ltj4zQE8vkC41M4Dg:1olVB7:PGih_wERDa5JZMLOpe_NVHrQn6XytfUApCHTCX0MvVg','2022-11-03 16:31:41.081254'),('oq77rm65m2jlyknzyhxwsd3ntuv7irbp','e30:1okPig:NrOq4GRFZEUVs09TW5Ts67msC_Jij7SchuyJF_rulw0','2022-10-31 16:29:50.718719'),('t64fjwxb48967m1e85dwg3oxm9we1ubg','.eJxVjEEOwiAQRe_C2hCgw9C6dO8ZmoGZStVAUtqV8e7apAvd_vfef6mRtjWPW5NlnFmdlVWn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1kavlbD85HQnKhRxJrQHzn0JiJkJldilGYYAjQB7CYAkP0FpkcA0zYsVHvD-MvN_I:1oKF2g:slnZRwn92AZMh8d6nO80A4Ag47Vw7YCCVZJvEjW4wHE','2022-08-20 12:50:18.903244'),('vc0sf3qnfix76rq9uyd54797q7xhkqgu','.eJxVjMsOwiAQAP-FsyGUxxY8eu83kF3YStXQpLQn478bkh70OjOZt4h47CUejbe4ZHEVTlx-GWF6cu0iP7DeV5nWum8LyZ7I0zY5rZlft7P9GxRspW8DmwzOKLbsndeBif0MYCxYC_NACQjQjlqRMmADotJjVjywZkKfxecLz-w3qA:1ohvZC:b_J44LEYRMDpfzAOtv-VBcQOSM0qGBH2PUVyeT0m2Lo','2022-10-24 19:53:46.536733'),('w4123l6m97t2j7jpelci07qjg1pc87vc','.eJxVjEEOwiAQRe_C2hCgw9C6dO8ZmoGZStVAUtqV8e7apAvd_vfef6mRtjWPW5NlnFmdlVWn3y1SekjZAd-p3KpOtazLHPWu6IM2fa0sz8vh_h1kavlbD85HQnKhRxJrQHzn0JiJkJldilGYYAjQB7CYAkP0FpkcA0zYsVHvD-MvN_I:1oYPnY:bMcNMpt2H8mBQ7ecVkwlmsNVETSuX3B-xou74xyG-fc','2022-09-28 15:09:16.077822'),('x8rauyrqgjeqpe4vo5823vzn8se84sv7','.eJxVjDsOwjAQBe_iGln4m5iSPmewdr1eHEC2FCcV4u4QKQW0b2beS0TY1hK3npc4k7gIJU6_G0J65LoDukO9NZlaXZcZ5a7Ig3Y5NcrP6-H-HRTo5VszYwrOaafzAGxYW4tsAAi8D2jVOVkVPJgcBiKFYQRv2aBNwDRSAPH-AAPWOPg:1oxOKS:bnQH9zUWffOzSzOJ859BPDBSIcl0giY6WMPGm1alIGQ','2022-12-06 11:38:28.030394');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `short_text` longtext NOT NULL,
  `text` longtext NOT NULL,
  `key_words` varchar(200) NOT NULL,
  `register_date` date NOT NULL,
  `publish_date` date NOT NULL,
  `update_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `pdf_filename` varchar(200) NOT NULL,
  `view_number` bigint unsigned NOT NULL,
  `slug` varchar(200) NOT NULL,
  `group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_article_group_id_d7ae4204_fk_t_article_group_id` (`group_id`),
  KEY `t_article_slug_87e95da9` (`slug`),
  CONSTRAINT `t_article_group_id_d7ae4204_fk_t_article_group_id` FOREIGN KEY (`group_id`) REFERENCES `t_article_group` (`id`),
  CONSTRAINT `t_article_chk_1` CHECK ((`view_number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article`
--

LOCK TABLES `t_article` WRITE;
/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
INSERT INTO `t_article` VALUES (1,'روابط سیاسی ایران و یهود در دوره ی شاهنشاهی هخامنشی','images/articles/hakhamaneshi-20221003165031.jpg','بی تردید هخامنشیان بزرگترین امپراطوری منظم و قانون مند و با دوام دوران باستان بودند که جهان را بیش از دو قرن با ترتیب خاص سیاسی و اداری کنترل می کردند. جهان باستانی که در اطاعت شاهنشاهان هخامنشی بود، دارای ملل و مذاهب و ادیان گوناگون بود که در بسیاری از موارد نزدیکی بین این ملل و ادیان نبود اما مدیریت پارسی تمام این نژادها و تفکرات را دو قرن در کنار هم و در خدمت یک پادشاه وا داشت. یکی از این ملل، یهودیان بودند که در ابتدای کار هخامنشیان با ایرانیان آشنا گردیدند و در طول تاریخ شاهنشاهی هخامنشی قسمتی از روابط سیاسی ایران را با خود تشگیل دادند.در این پژوهش سعی برآن شده تا به روابط سیاسی یهودیان با شاهنشاهی هخامنشی در ادوار شاهی خشایارشا،اردشیر یکم،اردشیر دوم،داریوش دوم،اردشیر سوم و داریوش سوم پرداخته شود و پیرامون این موضوع با رویکردی نظری و استنادی به تحقیق پرداخته شود.','خشایارشا فرزند داریوش کبیر و آتوسا دختر کوروش پس از پدر در سال 485پ.م شاهنشاه ایران هخامنشی می گردد(مشکور،محمدجواد؛تاریخ ایران زمین،ص37)، در زمان پدر به ولی عهدی برگزیده شده بود و حدود دوازده سال حکومت بابل را بر عهده داشت و جوانی با صلابت، خوش رو، شهوتران و خوش اندام بود(بیانی،شیرین؛ تاریخ ایران باستان،ص127)  و هنگامی که در سن سی و پنج سالگی شاهنشاه ایران شد(مشکور،محمدجواد؛تاریخ ایران زمین؛ انتشارات اشراقی،تهران،1375ص37) بر یکصد و بیست و هفت ولایت حکومت داشت(کتاب استر،فصل یکم، آیه ی 1). شاه جوان در ابتدای جلوس بر اریکه ی شاهی می بایست مصر آشوب زده را ادب نماید، پس لشگری بسیار بزرگ آراست و مصر رسید و مصر را شدیدا سرکوب نمود و برای عبرت باقی ولایتهایش در مصر شدت عمل بسیار به خرج داد و نهایتا برادر کوچکتر خود \"هخامنش\" را والی آنجا نمود و به سوی بابلی بازگشت که آنجا نیز سرکش گردیده بود ، پس دستور داد بابل و بابلیان را شدیدا سرکوب نمایند  و حتی  فرمود آنجا را غارت نمود و عنوان شاه بابل را از عناوین خود برداشت(گریشمن، رومن؛ ایران از آغاز تا اسلام، ص182). اما برای شناختن جایگاه یهودیان در دربار شاهنشاه بزرگ خشایارشا، می بایست یه کتاب مقدس مراجعه نمود؛ گویا در ابتدای سلطنت شاه گروهی از مخالفان یهودیان به دربار راه یافته بودند و از یهودیان به شاه یا درباریان شکایت برده بودند ، و این نشان از آن داشت که در ابتدای حکومت یهودیان مقداری جایگاهشان سُست و لغزان بود ، اما می بینیم یهودیان با جلب نظر شاه به دربار او راه یافتند و نمونه ی بارز آن \"مُردخای\" بود که دختر برادر خود \" اِستر\" را به همسری شاهنشاه ایران درآورد ، و این دو نفر نقش بسیار مهمی در دربار ایران بازی نمودند، البته داستان استر در کتاب مقدس خالی از افسانه نیست، اما نمی شود کلیت داستان را زیر سوال برد که حکایت از شرایط نامطلوب اولیه ی یهودیان نزد خشایارشا و بعد رسیدن آنها به جایگاه مناسب بود؛ اما می توان حقیقت ماجرا را از کتاب مقدس چنین می توان تحلیل نمود که : درباریان از نفوذ یهودیان بسیار نگران بودند، زین رو در ابتدا کار برای ایشان بسیار سخت شد، اما بعدها داستان نجات خود را با افسانه آمیختند و بسیار مهم جلوه دادند و مُفَصَل تعریف نمودند(صبوری فر،فرهاد؛روابط ایران و یهود در دوره ی هخامنشی،، ص115) و حتی امروزه این جشن نیز با نام \"پوریوم\" در بین یهودیان برگزار می گردد. چون خشایارشا در حرمسرا کشته شد و پس از او چندین شاهزاده پیاپی کشته شدند، حکومت به پسر سوم وی یعنی اردشیر هژده ساله رسید و اوضاع دربار آرام گشت(زرین کوب،عبدالحسین؛تاریخ مردم ایران ج 1،ص 1170). اما کار برای این شاه جوان با مشگل همراه بود، در ابتدای کار برادرش \"وشتاسب\" والی بلخ او را به رسمیت نشناخت که در نهایت وشتاسب شکست خورد و کشته شد و دیگر شاه را برادری باقی نماند. در سال 460 پیش از میلاد اتفاقی سختر رخ داد و آن شورش مصر بود که شاهزاده ی لیبیایی خود را فرعون مصر نامیده بود و آتن نیز از او حمایت می کرد، اما در نهایت این ارتش ایران بود که آتن را در دریا شکست سخت داد و هم مصر را آرام نمود(توسیدید، تاریخ جنگهای پلوپونزی، بند 104 الی 109) بدین گونه باز حکومت هخامنشی تثبیت گشت. اما روند گرایش شاهان ایران به یهود در این دوره روبه کاستی نهاد و همان دشمنان یهودیان که در دربار خشایارشا علیه یهودیان شکایت می کردند، گلایه های خود را از یهودیان به عرض اردشیر رسانیدند که این بار نتیجه بخش بود، دشمنان یهودیان که شدیدا مخالف بازسازی نهایی معبد اورشلیم بودند نامه ای علیه یهودیان برای اردشیر مکتوب نمودند و شاه را به خِصلتِ تَمَرُد یهودیان و خطرناک بودن ایشان با خبر نمودند و اعلام نمودند که همواره ساکنان اورشلیم خواهان استقلال هستند(کتاب عزرا،فصل چهارم، آیه ی 12 الی 16)؛ اردشیر از خواندن آن نامه شدیدا تحت تاثیر قرار گرفت، زیرا رسیدن این نامه مُصادف بود با سرکشی مصر و اورشلیم نیز که در نزدیکی مصر بود شرایط طغیان را می داشت و علاوه بر آن معترضین یهودیان همسایگان مصر می بودند که در صورت نرسیدن به خواستشان ممکن بود به شورش مصر بپیوندند، پس اردشیر مَصلِحَت را در مخالفت با یهودیان دید(لوی،حبیب؛تاریخ یهود ایران،ج1، ص 305 الی 306). سپس شاه در جهت اعلام موافقت خود با دشمنان یهود فرمانی صادر کرد با مضمون دست نگاه داشتن یهودیان از ادامه ی تکمیل ساختمان معبد شهر اورشلیم؛ زین رو در زمان این شاه کار پایان معبد در یهودیه ناتمام ماند(کتاب عزرا،فصل چهارم، آیات 18 الی 23). پس از اردشیر اول پسر او به نام خشایارشا زمام امور را عهده دار گشت، اما بیش از یک سال حکومت ننمود؛ زیرا \"سغدیان\" برادر او که مادرش از همسران غیر عقدی شاه بود با خواجگان حرمسرا همدست شدند و شبی خشایارشا را در حالت مستی در بستر بکشت و جسدش را به تخت جمشید بردند و در جایگاه شاهان دفن کردند(پیرنیا، حسن؛ایران باستان، ج 1و2؛ص945 الی 955) و سغدیان زمام امور را در دست گرفت، اما هواداران خشایارشا با او در پنهان مخالف بودند، بخصوص برادر دیگرش \" اُخُس \" که والی باختر بود. زین رو با سپاهی بزرگ به سمت پایتخت حرکت کرد و به راحتی بر سغدیان فائق گردید و امر نمود تا سغدیان را به حضورش بیاورند و در تلی از خاکستر خفه نمایند(بیانی،شیرین؛ تاریخ ایران باستان،ص 143) مدت زمامداری سغدیان شش ماه و نیم یا به قولی هفت ماه بود(بویس،مری؛تاریخ کیش زردشت،ج 2،، ،ص 296)؛ اُخُس نام نیای بزرگ دودمانش را برگزید و خود را داریوش نامید و با خواهر خود پروشات(پریزات) را به همسری برگزید و وی را بانوی اول ایران نمود؛ این زن با قدرت و هوش بسیار خود توانست یکی از کارگزاران با نفوذ ایران شود و در امور سیاسی دخالت نماید(بیانی،شیرین؛ تاریخ ایران باستان؛تهران، ،ص144). اما شورشهای پی در پی اساس حکومت را می لرزاند؛ اولین شورش در سوریه رخ داد، چون \"مِگابیز\" والی سوریه درگذشت، پسرش اعلام استقلال نمود و لشگر گُسیل شده از پایتخت سختی خورد و دربار شاهنشاهی ایران، این بار به جای اعزام سرباز اقدام به فرستادن سکه های طلا نمود و به پرداخت رشوه به سربازان یونانی اجیر در سوریه باعث شد سربازان قسم خورده ی شاه سوریه؛ وی را بکشند(بریان، پی یر؛ تایخ امپراطوری هخامنشیان ،ص 126)، این سیاست در تمام ممالک ایران انجام می گشت و شاهنشاهی ایران مایل به تداوم این سیاست بود و به قول گریشمن طلای ایران برای برافروختن آتش آتنیان ضد اسپارت در نبردها بکار می رفت، بدون آنکه بین ایران و یونان جنگ و درگیری رخ بدهد(گریشمن، رومن؛ایران از آغاز تا اسلام،ص180). با توجه به اسناد به دست آمده از قوم یهود در مصر می توان چنین اندیشید که روابط ایران و یهودیان در زمان داریوش دوم رابطه ی خوب می بوده؛ سندی که در \"آسوان\" مستعمره ی نظامی یهودیان در مصر به دست آمده که تاریخ آن برابر هفتمین سال شاهی داریوش دوم است، نشانگر آن می باشد که قوم یهود از زمان \"پسماتیک دوم\"، فرعون مصر، مستعمراتی را در جزیره ی \"الفانتین\" و \"اسوان\" بنا کردند و به دلیل آنکه آنها با دولت هخامنشی رابطه ی دوستانه داشتند ، مصریان این عده از یهودیان را مورد تاخت و تاز و قتل و غارت قرار دادند(پیرنیا، حسن؛ایران باستان، ج 1و2؛ ؛ص 963). همچنان در یکی از اسناد دژ الفانتین که مرتبط به سال 419 پیش از میلاد مسیح  می باشد، آمده است فردی یهودی موسوم به \"نبانید\" به همدینان خود که ساکن این دژ بودند، نامه ای با این مَزمون نوشت که به فرمان داریوش دوم، مراسم عید پاک(پَسَح) را مراعات کنند و هیچ چیز به جز نان فطیر نخورند و از دوازدهم تا چهاردهم ماه نیسان از نوشیدن آب جو خودداری کنند و کارها را تعطیل کرده و دستورات مذهبی را کاملا رعایت نمایند، همانگونه که داریوش دوم فرمان داده است(توفیقی،حسین؛آشنایی با ادیان بزرگ،ص182). اسناد فوق بیانگر وجود روابط خوب بین یهودیان مصر و داریوش دوم و نیز فرمانبرداری آنان از داریوش دوم است. یکی از حوادث مربوط به یهودیان مصر در روزگار داریوش دوم، تخریب معبد الفانتیس است؛ این معبد بعد از مهاجرت یهودیان اورشلیم به سرزمین مصر 586 پیش از میلاد مسیح به وسیله ی ایشان ساخته شد تا جای خالی معبد ویران شده ی اورشلیم را پر کند. معبد الفانتین مدت یکصد و پنجاه سال برقرار بود و مرکز روحانی برای کلیه ی پراکندگان یهود در خارج و در سرزمین مصر محسوب می شد؛ اما مصریان از این معبد که در آن قوچ و گاو قربانی می شد، نفرت داشتند؛ زیرا این حیوانات برای ایشان مقدس بودند؛ بنابراین  مراسم قربانی یهودیان را اهانت به اعتقادات دینی خود می دانستند، در نتیجه خَشم مصریان نسبت به آداب و رسوم یهود به جایی رسید که سرانجام مصریان در سال 410 پیش از میلاد مسیح معبد ایشان را در الفانتین ویران کردند(زرین کوب،عبدالحسین؛تاریخ مردم ایران ج 1،ص182). پس از داریوش دوم تاج شاهی هخامنشی به فرزندش \"اَرَشک\" رسید؛ او پس از شاه شدنش خود را اردشیر خواند، وی هم اوست که یونانیان وی را اردشیر باحافظه می نامند(مشکور،محمدجواد؛تاریخ ایران زمین؛ ،ص41) و \"پلوتارک\" از او یک شاه دادگر، مهربان، مردم دار و آباد کننده نام می برد(پلوتارک،حیات مردان نامی؛ ،بند 4 ص 481). در روزی که او در مراسم تاج گذاریش در پاسارگاد حضور داشت، توسط برادرش کوروش صَغیر مورد سوءقصد قرار گرفت اما از این قضیه جان سالم به در برد و دستور مرگ برادر تنی خود را صادر فرمود، اما مادر کوروش، پروشاست که مادر شاهنشاه نیز بود وساطت نمود و با توجه به نفوذش نه تنها کوروش ضغیر را از مرگ رهانید بلکه برای او مقام فرمانروایی آسیای صغیر را از شاه گرفت(بیانی،شیرین؛ تاریخ ایران باستان؛ ،ص147). اما وقتی کوروش به لیدی رسید باز اعلام استقلال نمود و سروری برادرش اردشیر را نپذیرفت و دست به تدارک سپاه زد که از مجموع نیروهای وفادار به خودش در لیدی و سربازان اجیر شده ی یونانی بود، اخبار این تدارکات توسط والی آناتولی که نامش \" تیسافرن\" بود و وفادار به شاه ایران بود به دربار اردشیر هخامنشی رسید؛ کار برای شاهنشاه ایران بسیار سخت شد زیرا دوازده هزار تن سرباز کارآزموده ی یونانی و دویست هزار نفر از سربازان آناتولی به سرکردگی کوروش صغیر به سوی پایتخت سرازیر گشته بودند(پلوتارک،حیات مردان نامی؛ بند 4 ص 487)، سپاه شاهزاده ی سرکش به آسانی از آسیای صغیر گذشت و در امتداد رودخانه ی فرات به سوی بابل حرکت کرد؛ در محلی به نام \"کوناکسا\" سپاه دو برادر به یکدیگر رسیدند و کوروش و هشت تن از نگهبانانش کشته شدند و شاهنشاه اردشیر دوم در حالی که زخم برداشته بود پیروز این نبرد گردید؛ پس از این ماجرا بازهم آسیای صغیر باز نا آرام بود(بیات،عزیزالله،کلیات تاریخ و تمدن ایران پیش از اسلام، ص60) و شاه باز مجبور شد سپاهی را مامور پایان دادن به این اوضاع نماید و نهایتا اردشیر صلح آنتالیسیداس(Antalicidas) را با یونان برقرار نمود که باز آرامش نسبی در آسیای صغیر پدید آمد(هوار، کلمان؛ایران و تمدن ایرانی ،ص63). چنانکه از مطالب کتابهای عُزرا و نَحمیا فهمیده می شود، اوضاع جامعه ی یهودیان مقیم یهودیه در دوران سلطنت اردشیر دوم مناسب و مساعد نبوده است؛ گروهی از یهودیان به تدریج به اختلاف مذهبی و حتی شرک روی آورده بودند  و به ازدواج با زنان بیگانه از کشورهای همسایه و پرستش بتهای آنان مشغول گردیده بودند. در کتاب عزرا در ارتباط با مسائل فوق چنین می آید: \" قوم اسرائیل، کاهنان و لاویان، خویشتن را از امتهای کشورهای دیگر جدا نکردند، بلکه موافق اعمال زشت ایشان یعنی کنعانیان، هیتیها،یبوسیان،عمونیان، موئابیان و مصریان رفتار نمودند. زیرا که از دختران ایشان برای خود و پسران خویش، زنان گرفته و ذُریَتِ مقدس را  به امتهای  کشورها مخلوط کرده اند و دست بزرگان و حاکمان در این خیانت، مقدم بوده است(کتاب عزرا،فصل نهم، آیات 1 الی 3)\". وضعیت اقتصادی جامعه ی مذکور نیز نامطلوب بود؛ مالیاتهای سنگین و ظلم حُکامِ ظالم، مردم بی طاقت شده بودند ؛ ملت اسیر بیچارگیها و گرفتاریهای فراوان گشته بودند، وضعیت ظاهری شهر نیز آشفته بود، حصارها و دیوارهای اطراف شهر اورشلیم ویران شده بود و دروازه هایش به آتش سوخته بود(صبوری فر،فرهاد؛روابط ایران و یهود در دوره ی هخامنشی،ص135). اردشیر دوم برای سامان دادن به وضعیت اجتماعی و مذهبی سرزمین یهودیه به عُزرا فرمان داد که با جمعی از هم اندیشان و هم کیشان خود برای بهبود وضعیت سرزمین اورشلیم عازم این شهر شوند؛ عزرا که از یهودیان مقیم بابل بود در شناخت آئین موسی و تاریخ سنن یهود همتا نداشت، برای این ماموریت گُسیل گشت. شاهنشاه نه تنها از هیچ گونه کمک و پشتیبانی به قوم یهود دریغ نورزید بلکه خود نیز برای خدای اسرائیل مقدار قابل توجهی از جواهرات شاهی و ظرفهای زینتی را توسط عزرا به اورشلیم فرستاد و مقرر داشت هرچیز دیگری که برای زینت معبد لازم باشد از خزانه ی پادشاه تامین گردد؛ علاوه بر این شاهنشاه به تمام خزانه داران آن سوی رودهای دجله و فرات فرمان داد که در حمایت مالی از عزرا و همراهانش کوتاهی    نورزند ؛ شیوه ی رفتار اردشیر دوم با قوم یهود و دستورهای شاه به عزرا در مورد کمک به یهودیان و آراستن معبد سلیمان و تعمیر حصارهای شهر در تورات چنین ذکر گردیده است: \" به این وسیله حکم می دهم که از تمام مردم اسرائیل و کاهنان و لاویانی که در سراسر قلمروی من به سر می برند، هرکه بخواهد می تواند هم راه تو به اورشلیم بازگردد، تو از طرف من و به اورشلیم و یهودیه فرستاده خواهی شد تا بر اساس قوانین خدایت، وضع مردم آنجا را بهبود بخشی، در ضمن طلا و نقره ای که ما به خدای اسرائیل تقدیم می کنیم و طلا و نقره ای را که اهالی بابل می دهند، همراه با هدایایی که یهودیان و کاهنان برای خانه ی خدا تقدیم می کنند، با خویش به اورشلیم ببر؛ وقتی بدانجا رسیدی قبل از هرچیز با این هدایا؛ گاوها، قوچها،بره ها و شراب و هر چیزی را که برای قربانی لازم است خریداری کن و همه ی آنها را به قربانگاه خدای خود تقدیم نما؛ بقیه ی هدایا را آنگونه که تو و برادرانت می دانید و مطابق سنت دین شماست به کار برید. لوازمی را که ما برای خانه ی خدای شما در اورشلیم می دهیم به خدای خود تقدیم کنید ، اگر چیز دیگری برای خانه ی خدای خود احتیاج داشتید می توانید از خزانه ی شاهنشاهی دریافت نمایید؛ من اردشیر پادشاه هخامنشی به تمام خزانه دارهای شاهنشاهی در غرب رود فرات دستور می دهم که هرچه عزرا که کاهن و عالم شریعت خدای آسمان است، از شما درخواست کرد تا سه هزار و چهارصد کیلوگرم نقره، ده هزار کیلوگرم گندم، دو هزار لیتر شراب، دو هزار لیتر روغن زیتون و هر مقدار که نمک لازم باشد فوری به او بدهند. هرچه خدای آسمان فرموده باشد بدون تاخیر برای خانه ی او به جا آورید، تا مبادا خشم خدا بر من و خاندانم نازل گردد؛ همچنین اعلام می دارم که تمام کاهنان و لاویان و نوازندگان و نگهبانان و خدمتکاران و همه ی کارکنان خانه ی خدا از پرداخت هرگونه مالیات معاف هستند؛ و تو ای عزرا با حکمتی که خدا به تو داده است حُکام و قضاتی را که شریعت خدایت را می دانند برای رسیدگی به امور مردم غرب فرات برگزین؛ اگر کسی نخواست از شریعت خدای تو و دستورات شاهنشاه اطاعت نماید بی درنگ مجازات نما، مجازات او مرگ است یا تبعید یا ظبط اموال یا زندان(کتاب عزرا،فصل هفتم،آیه ی 11 الی 27)\". می توان به این نتیجه رسید که این دوران، دوران پریشانی و آشفتگی یهودیان مقیم یهودیه بود که دو مرد در تاریخ یهود ظهور می کنند یکی عزرا بن سرایا که اطلاعات او در قوانین مذهبی یهود بی نظیر بود و دیگری نحمیا مرد سیاسی با شهامت و عضو دربار اردشیر دوم که تحول عمیق در احوالات سیاسی و مذهبی یهود به وجو آورد؛ پس از دستور اردشیر عزرا حرکت خود را از شوش آغاز کرد و با او عده ای از یهودیان شوش و بابل همراه شدند و در کنار رود کارون برای سفر خود برنامه ریختند و به سوی اورشلیم حرکت نمودند(هاکس،جیمز؛ قاموس کتاب مقدس، ،ص139). عزرا در باب هشتم از کتاب خود در معرفی یهودیانی که در روزگار اردشیر با او بودند و از بابل به اورشلیم رفتند سخن می گوید و تمام افراد و خاندانهایی که با او به این سرزمین آمدند را می شمارد و در باب نهم از از کتاب خود پراکندگی و آوارگی قوم خود را از رفتارهای زشت و گناهان زیاد می داند و از آنکه مورد توجه شاه پارس قرار گرفته، این عنایت شاهنشاه ایران را به مهر و بخشایش خدا نصبت می دهد و می گوید: \"... ما از ایام پدران خود تا به امروز مرتکب گناهان بزرگ شده ایم، ما و پادشاهانمان و کاهنانمان؛ به علت این گناهان خویشتن را در اسیری و غارت شدن توسط شاهان شمشیر به دست قرار دادیم تا به امروز،  حال اندک زمانی لطفی از جانب یهوه، خدای ما بر ما ظاهر شده و مَفَری بر ما بازگردیده، خدای ما چشمان ما را روشن کرده و اندک حیات تازه در این زندگی به ما بخشیده؛ زیرا ما بندگان خدائیم و ایشان ما را از بندگی خود ترک نفرموده؛ زین رو ما را مورد محبت شاه پارس قرار داده تا بتوانیم خانه ی خدای خود را بازسازی نماییم و خرابیهایش را تعمیر نماییم و ما را در یهودیه و اورشلیم منزل و قلعه بخشیده است(کتاب عزرا،فصل نهم، آیه ی 7 الی 10) عزرا به هنگام ورود به اورشلیم جز سرزمینی ویران و نامطلوب هیچ نمی دید، مردم آشکارا از انجام قوانین تورات تخلف می کردند  و سنتها و عادتهای پدرانشان را از یاد برده بودند . یهودیان با زنان بیگانه ازدواج کرده بودند و آشکارا بتها را می پرستیدند و قوانین تورات را فراموش کرده بودند؛ عزرا تلاشهای خود را برای بهبود جامعه ی یهود آغاز کرد و مهمترین کار او گماردن قاضیان بود که عدالت را در حق مردمان آن سوی رودخانه ی فرات اجرا نمایند و در مورد کسانی که از قوانین اطاعت نمی کردند مجازاتهایی معین نمود(کلاپرمن،ژیلبرت، تاریخ قوم یهود، ،ص25). سیزده سال پس از ورود عزرا به اورشلیم یکی دیگر از یهودیان به نام \" نَحمیا \" که ساقی دربار اردشیر دوم بود، هنگامی که از اوضاع نابسامان یهودیه آگاه شد، روزی با چهره ی غمناک نزد شاه آمد و هنگامی که شاه علت را جویا شد، نحمیا اشاره به احوال بد یهودیان اورشلیم و یهودیه نمود و از شاه اجازه خواست تا اجازه ی مهاجرت او را به سوی اورشلیم بدهد تا وی به بهبود آن دیار همت گمارد؛ شاهنشاه خواهش او را پذیرفت و از روی کَرَم و مهربانی او را مامور کرد تا به اورشلیم رود و دیوارهای آن شهر را بنا نماید و جامعه ی یهود را در آن سرزمین سامان بخشد؛همچنین شاه به والیان خود در آن سوی رودخانه ی فرات نامه فرستاد تا از رساندن هیچ خدمتی به نحمیا دریغ ننمایند و حتی ساز و برگ وسایل آرایش خانه ی خدا و تعمیر دیوارهای شهر اورشلیم را آنگونه که نحمیا می خواهد فراهم نمایند و همچنین عده ای از سپاهیان و سواران خود را نیز با او همراه فرستاد؛ نحمیا نیز پس از ورود به شهر، همدینان خود را از مهروزیهای شاه پارس مطلع نمود(کتاب نحمیا، فصل دهم؛ آیه ی 29 الی 39). نحمیا بعد از برسی اوضاع و احوال برادران دینی خود، متوجه شد یهودیان بازگشته از اسارت بابل با اقوام مختلف ساکن در سرزمین یهودیه درهم آمیخته و جامعه ی بدبخت و فقیری تشکیل داده اند و در نهایت فلاکت بسر می برند و بار مالیاتهای زیاد ایشان را آزار می دهد؛ پس نحمیا اصلاحات خود را آغاز نمود؛ اولین اقدام او ترمیم برج و دیوار شهر بود، او سازمانی برای برج و باروی شهر بنا کرد، درست هنگامی که کارگران مشغول بازسازی دیوار شهر بودند همسایگان تصمیم گرفتند به آنها حمله کنند، ولی نحمیا سازمان دفاعی شهر را مرتب کرد تا بتواند جلوی حمله ها را بگیرد؛ وی در باب سوم و چهارم کتاب خود نحوه ی بازسازی شهر را به یاری شاهنشاه ایران توضیح می دهد و همچنین از تلاشهای دشمن یهود برای ناموفق گذاشتن اقدامات وی سخن می راند. از دیگر اقدامات نحمیا ایجاد نظم و ترتیب مبارزه با دشمنان و مخالفان یهود و تلاش برای آماده کردن مردم برای دفاع از خود و ممانعت از تجاوزات و خرابکاریهای دشمنان بود(صبوری فر،فرهاد؛روابط ایران و یهود در دوره ی هخامنشی، ص140). همچنین عزرا و نحمیا جامعه ی یهودیان را بسیج کرده ، تذکرات زیر را به قوم خود پیشنهاد کردند: ·        لزوم اجرای فرایض و احکام دینی و قضایی یهود در اورشلیم ·        ممنوعیت ازدواج پسر یا دختر یهودی با اقوام غیر یهودی ·        پرهیز از معامله و تجارت در روز شنبه ·        پرهیز و دوری از ربا خواری ·        زنده کردن رسوم عبادی قوم یهود چون قربانی،احکام ده گانه و رسوم اعیاد(کتاب نحمیا، فصل دهم؛ آیه ی29 الی 39). ·        تبدیل رسوم سلطنت دنیوی(Autocracy) در جامعه ی اورشلیم به  سلطنت دینی(Theocracy) بر اثر اقدامات عزرا و نحمیا بود که به تدریج جامعه ی یهود دارای دولت تئوکراسی گشت(آباسولومن،آبان؛ قوم من تاریخ بنی اسرائیل، ،ص89). نحمیا پس از اتمام این دوران به بابل بازگشت ولی دوباره پس از مدتی به اورشلیم رفت؛ وی پس از بازگشت مجدد به این شهر متوجه غفلت مردم در امور معنوی شد؛ بعضی از قوانین یهود از قبیل ممنوعیت ازدواج با غیر یهودیان و پرهیز از تجارت و معامله در روز شنبه فراموش شده بود، پس عزرا و نحمیا دوباره اقدامات اصلاحی خود را شروع کردند(کتاب نحمیا، فصل سیزدهم،آیه ی 6 الی 31).   پس از برسی تاریخ قوم یهود در زمان اردشیر دوم مشخص می شود که شاهنشاه ایران نسبت به یهودیان مهربان بوده اند و هرچه بیشتر با پلوتارک هم عقیده می شویم که اردشیر شاهی دادگر،مهربان و آباد کننده می بوده(پلوتارک،حیات مردان نامی؛ بند 4 ص 481) همانگونه که گفته شد خسروی ایران برای اصلاح وضعیت اقتصادی و اجتماعی مردم یهودیه، عزرا و نحمیا را همراه با ثروت چشم گیر عازم آن سرزمین نمود و این مهربانی باعث گردید جامعه ی یهود در یهودیه و شهر اورشلیم دارای سازمانهای فرهنگی و دینی و ملی گردیدند(صبوری فر،فرهاد؛روابط ایران و یهود در دوره ی هخامنشی،ص141). پس از اردشیر دوم پسرش \" اُخُس(مشکور،محمدجواد؛تاریخ ایران زمینص42)\" که شاهزاده ای خَشِن و تندخوی بود به جای پدر تاج دار شاهنشاهی هخامنشی گشت(پلوتارک،حیات مردان نامی؛ بند 4 ص510 الی 514) و خود را اردشیر نامید(بیانی،شیرین؛ تاریخ ایران باستان ،ص151) و در تاریخ با نام اردشیر سوم معروف است. او در ابتدای کار برای از بین بردن هرگونه خطر احتمالی در آینده تمام شاهزادگان هخامنشی را قتل عام نمود، از جمله برادران و خواهران و پسرعموهایش بود که مجموعا هشتاد نفر را شامل می شد؛ این واقعه خبر از آن می دهد که در ابتدای کار رقیبان برای رسیدن به تاج و تخت بسیار بودند(پلوتارک،حیات مردان نامی،بند 4 ص 516). اردشیر سوم از سویی دارای طبیعت خشن و خون ریز بود اما از سویی مردی با اراده ی پولادین بود و استعداد سیاسی قویی داشت؛ از این رو تصمیم گرفت شورشهای خارجی را نیز مانند مدعیان داخل دربار به شدت سرکوب نماید و دوباره نظم را در شاهنشاهی برقرار نماید؛ او در ابتدا سرکشی \"کادوسیان\" را به شدت سرکوب نمود و در این نبرد یکی از شاهزادگان هخامنشی با او همراه بود که بعدها با نام داریوش سوم از او یاد می نمایم؛ اردشیر وی را والی ارمنستان نمود(بیانی،شیرین؛ تاریخ ایران باستان؛تهرانص151)؛ وی سپس روبه \"صیدا\" و سایر مناطق \"فنیقیه\" نمود که سرکشی کرده بودند و شورشیان مصر نیز از آنها پشتیبانی می کردند،  اردشیر صیدا  تمام فنیقیه را آرام کرد(اومستد، آ.ت؛ تاریخ شاهنشاهی هخامنشیص 569الی 600) و سپس سپاه بزرگ به مصر کشید و در سال 344 پیش از میلاد مسیح مصر را باز به دولت هخامنشی بازگرداند(پیرنیا، حسن؛ایران باستان، ج 1و2،ص1179). پس از این قدرت نمایی ها که یادآور شکوه داریوش کبیر بود تمام ولایتها و سرکشان آنها تسلیم شدند، در این هنگام در مقدونیه مردی به نام \"فیلیپوس\" در حال قدرت گرفتن بود و مردمان یونان از قدرت گرفتن مقدونیه در هراس بودند؛ از اردشیر سوم کمک خواستند و پادشاه هخامنشی به والیان آسیای صغیر فرمان  دادکه یونانیان را در برابر پادشاه مقدونیه یاری نمایند(پیرنیا، حسن؛ایران باستان، ج 1و2؛ ص 181 الی 183)؛ اما اردشیر در این زمان توسط خواجه ی مصری خود مسموم و کشته شد(مشکور،محمدجواد؛تاریخ ایران زمین؛ ص42). اما برسی تاریخ یهود در دوره ی این پادشاه بسیار دشوار است؛ زیرا تورات از اردشیر سوم یادی ننموده و از چگونگیاوضاع یهودیان در این دوران اطلاع دقیقی در دست نیست و تنها می توان به گمانهایی پرداخت؛ تاریخ نویس یهودی \"گرائیتز\" می نویسد: نوشته ای به ما شهادت می دهد که اردشیر سوم هنگام جنگ با مصریان یا بعد از آن در سالهای 361 تا 360 پیش از میلاد، یهودیان را به ولایت \"هیرکانی\" (گرگان) کوچاند(لوی،حبیب؛تاریخ یهود ایران،ج1، ص348 الی 351) وی در ادامه می نویسد: آن قسمی از مزامیر که با پَریشانی و بی دلی سراینده را می رساند که در این دوره سروده گردیده. \"دوبنو\" دیگر مورخ یهودی بر این باور است که یهودیانِ ارحیا در زمان اردشیر سوم سر به شورش برداشتند و در یهودیه نیز نغمه های ناسازگاری برپا بود و اردشیر سوم ایشان را نیز مانند مصریان سرکوب نمودند و مزامیری که در این دوران نوشته شده دلالت بر این احوالات ایشان می بوده(لوی،حبیب؛تاریخ یهود ایران،ج1، ص352). پس از اردشیر سوم پسرش \"اَرَشک\" به شاهی رسید و چون می خواست که باگواس خواجه را به انتقام پدر بکشد، آن خواجه ی حیله گر پیش دستی کرد و شاه جوان را کشت(مشکور،محمدجواد؛تاریخ ایران زمین؛ ص42) و چون دیگر در دودمان هخامنشی شاهزاده ای درجه یک نمانده بود، بزرگان پارس \"کودومان\" (مشکور،محمدجواد؛تاریخ ایران زمین؛ ص42) را که از نوادگان داریوش دوم و والی ارمنستان بود را به شاهنشاهی هخامنشی برگزیدند؛ وی خود را داریوش سوم نامید. در ابتدای کار گواس خواجه را که قصد کشتنش را داشت، نابود کرد(بویس،مری؛تاریخ کیش زردشت،ج 2ص411). مورخ رومی/ یونانی قرن اول پیش از میلاد،\"دیو دورسیسیلی\" در آغاز کتاب هفدهم از کتابهای تاریخی خود  در مورد داریوش سوم چنین می نگارد: داریوش در نظرگاه پارسیان نخستین جایگاه را در شجاعت داشت، وی به جهت آوازه ی بلندش در دلاوری براستی سزاوار شاهنشاهی بود(بدیع،امیرمهدی؛عظمت و ذلت داریوش سوم، فصل نامه ی هستی،شماره ی بهارینه،بهار 1372ص 81)، در ابتدا مصر بر او شورید، اما او با درایت و مهارت آن مُلک را دوباره از آن ایران کرد(مشکور،محمدجواد؛تاریخ ایران زمین،ص43)؛ اما گویا تقدیر گونه ای دیگر رقم می خورد ، این بار جوانی مقدونی، کوهستان نشین، بدون پشتوانه ی مالی ولی با الهام پذیری از فلسفه ی ارسطو، تحت تاثیر حماسه ی اُلیاد و هُمِر و با چشم داشت به ثروت بی کران و شوکت پر بهای هخامنشی به راه افتاد و تمام خدایان المپ به جنگ با داریوش سوم عزم نمودند؛ اسکندر با سی هزار پیاده چهارهزارو پانصد سواره به آسیا پا نهاد(پلوتارک،حیات مردان نامی ،بند24 ص415)؛ داریوش سوم سراسیمه لشگری آراست و سپه سالاری لشگر ایران را به \"سپهرداد\" عطا فرمود؛ دو سپاه در \"گرانیکوس\" به یکدیگر رسیدند و سپاه اعزامی ایران شکست خورد(4). داریوش آشفته از خبر شکست با سپاهی بزرگ که خود فرمانده آن بود به موضع \"ایسوس\" در کنار خلیج اسکندرون رسید و لشگر اسکندر را از پشت محاصره نمود و جنگ بسیار بزرگی رخ داد و هر آنی انتظار مرگ شاهزاده ی غرب می رفت، اسکندر راه نجات را حمله به ارابه ی شاه ایران دید سربازان جاویدان برای حفظ جان شاه رشادتها نمودند تا شاهنشاه از گزند اسکندر در امان ماند که ناگهان اسبان گردونه ی شاه از زخمهای واریده رمیدند و داریوش ترسید و بر اسبی نشست و از میدان جنگ گریخت؛ سپاهسان که شاه خود را در فرار دیدند، دل از دست دادند و سایه ی شکست بر سپاه ایران افتاد و اسکندر باز پیروز گشت و بارگاه و حرمسرا و فرزندان داریوش به اسارت اسکندر افتادند؛ اسکندر از تعقیب داریوش موقتا دست کشید و مصر را بگرفت؛ اکنون دیگر نیمی از جهان برای اسکندر بود و نیمی دیگر از آن داریوش، نامه ی صلح داریوش هم کارآمد نیفتاد(پلوتارک،حیات مردان نامی؛ ،بند37 و 38، ص 426 الی 427) و دو طرف خود را برای جنگی بزرگ آماده نمودند. اسکندر از مصر به سوریه آمد و از فرات و دجله گذشت و در نزدیکی شهر موصل امروز در محلی به نام \"گوگمِل\" به سپاه داریوش رسید که در انتظارش بودند(بیانی،شیرین؛ تاریخ ایران باستان؛ ص 160). جنگ بسیار بزرگی رخ داد؛ داریوش برای تمام هستیش می جنگید، سپاه ایران جان فشانیها کرد و چیزی نمانده بود تا اسکندر شکست خورد، اسکندر چون اوضاع را چنین دید باز به گردونه ی شاه تاخت و با چند تن از مردان زبده اش به سوی گردونه ی شاهنشاه یورش آوردند؛ نیزه ای به گردونه ی شاه ایران خورد و شاه بر زمین افتاد، لشگریان گمان کردند که شاه کشته شده و پا به فرار نهادند، داریوش که سربازان را چنین دید خود بر گردونه ای نشست و چنان با سرعت فرار نمود که اسکندر به او نرسید(مشکور،محمدجواد؛تاریخ ایران زمینص45)؛ پس از این جنگ اسکندر به بابل درآمد و شوش را گرفت، اسکندر از شوش به سوی ولایت پارس حرکت نمود و ابتدای پارس(دربند پارس) با سردار بزرگ ایران، آریوبرزن روبرو شد که با بیست و پنج هزار نفر چشم به راهش بودند(بیانی،شیرین؛ تاریخ ایران باستان ،ص162)؛ اما این بار نیز اسکندر به نیرنگ پناه برد و آریوبرزن کشته شد و سپاهش شکست خورد تا اسکندر به پرسپولیس برسد؛ در جشن پیروزی خود در پرسپولیس دستور به آتش کشیدن تالارها و قصرها و کاخهای تخت جمشید را به تحریک زنی، \"تائیس(Thais)\" نام که از زنان بدکاره ی آتن بود به انتقام آتش زدن شهر آتن به فرمان خشایار شا را صادر نمود(بیانی،شیرین؛ تاریخ ایران باستان؛ ص162)؛ منابع گزارش می دهد در موقع آتش سوزی کاخهای پرسپولیس، اسکندر به مجسمه ی خشایارشا برخورد کرد و آن را واژگون دید، اسکندر ایستاد و گفت: آیا باید بگذارم تا تو افتاده باشی و مجازات شوی درازای آنکه به یونان لشگر کشیدی، یا تو را به احترام روح بلند و صفات خوبت از زمین بلند کنم؟ این بگفت و لختی بیندیشید و بگذشت(پیرنیا، حسن؛ایران باستان، ج 1و2؛؛ص740). داریوش هنگامی که خبر حرکت اسکندر از پارس را شنید از همدان سوی مَشرق رفت تا سپاهی بیاراید تا شاید شاهی از دست رفته را بِستانَد، اما در راه با خیانت سرداران خود کشته شد؛ اسکندر امر کرد با تمام تشریفات شاهنشاهی و معمول برای شاهان هخامنشی، جسد داریوش سوم را با احترام بسیار در کنار اجداد تاج دارش در پارس تدفین نمایند(بدیع،امیرمهدی؛عظمت و ذلت داریوش سوم، فصل نامه ی هستی، شماره ی بهارینه، بهار 1372،ص90 الی 96). باز در مورد وضعیت یهودیان در این دوران به علت عدم اشاره ی تورات، اطلاعات گسترده در دست نیست؛ مورخان یهود بر این باورند هرگاه در دوران هخامنشی، پادشاه قدرتمند بود، یهودیان سرزمین یهودیه از شرایط بهتر برخوردار بودند و هر زمان که شاهی ضعیف بر اریکه ی شاهی تکیه می زد وضعیت قوم مذکور نیز نامساعد می گشت؛ از برسی همین منابع می توان چنین اندیشید که در وضع داریوش سوم وضعیت یهودیان مطلوب نمی بوده است(لوی،حبیب؛تاریخ یهود ایران،ج1، ص349).در سال 332 پیش از میلاد مسیح، آسیای صغیر و فنیقیه به تصرف اسکندر درآمد؛ مورخان یهود می گویند، هنگامی که اسکندر سرگرم جنگ در سوریه بود از یهودیان خواست تسلیم او گردند و در سپاه او یاری دهند، ولی یهودیان پیشنهاد وی را رد کردند و این امر باعث برآشفتن اسکندر شد و اسکندر با سپاهی عازم اورشلیم شد، چون یهودیان مقاومت را بیهوده دیدند، با کاهن بزرگ خود \"یادوعا\" به استقبال اسکندر شتافتند و یهودیه و شهر اورشلیم بدون جنگ و خونریزی به دست اسکندر افتاد و مقرر شد از آن پس یهودیه باج گذار اسکندر باشد؛ پس اسکندر برای جنگ با مصر از سرزمین یهودیه لشگر عبور داد و در سال 331 پیش از میلاد هنگامی که در مصر بود، مردم سامره فرماندار یونانی شهر \"اندروماک\" را در آتش سوزاندند؛ اسکندر هم به کین خواهی فرماندارش قتل عام عظیمی از سامریها نمود و پس از آن چند ایالت را که همواره بین سامریان و یهودیان یهودیه برای تصاحبش رقابت بود به یهودیه داد(تاریخ ملت لایزال به نقل قول از لوی،حبیب؛تاریخ یهود ایران،ج1، ص 335).                                         نتیجه گیری در برسی تاریخ سیاسی یهودیان از زمان خشایارشا تا داریوش سوم به این نتیجه می رسیم که سیاست کلی شاهنشاهی هخامنشی ملاطفت و احترام به تمام اقوام و ادیان و مذاهب می بوده که ملت یهود نیز مانند سایر ملل از این مهرورزی روی گردان نگردید. در دوران این پادشاهان هخامنشی می بینیم ملت یهود نفوذ بسیار خوبی در جامعه ی ایرانی یافتند و در امنیت به وجود آمده از الطاف شاهنشاهی هخامنشی مراحل رشد را به خوبی طی نمودند و حتی شهرهای آنها در فلسطین امروزی به واسطه ی کمکهای شاهان ایران رشد و ترقی نمود و آباد گشت و تفکرات ایران شهری بسیاری در این دوران وارد دین یهود شد که تمام اینها نشان از یک زندگی دوستانه و رابطه ی دوجانبه هم در عرصه فرهنگ و سیاست و اقتصاد می بوده. به طور کلی می توان روابط سیاسی ایران و یهودیان را در عصر هخامنشیان در حد بسیار عالی و خوب توصیف نمود.','شاهنشاهی هخامنشی،خشایارشا،اردشیر یکم،اردشیر دوم،داریوش دوم،اردشیر سوم،داریوش سوم ،قوم یهود','2022-09-14','2022-09-14','2022-12-12',1,'hakhamanesh.pdf',101,'hakhamanesh-history',1),(2,'شفافیت در بودجه و عملکرد مالی دانشگاههای علوم پزشکی کشور','images/articles/pezeshki1-20221003165005.jpg','شفافیت و پاسخگویی یکی از موضوعات مهم و اساسی در عملکرد مالی دولت و بودجه عمومی است. شفافیت مالی دولت در جمع‌آوری درآمد، تجمیع منابع و هزینه کرد، به‌عنوان یکی از پیش‌شرط‌های مهم برای اعمال سیاست‌های مالی مناسب در جهت حکمرانی خوب، بهبود عملکرد اقتصادی، کاهش کسری بودجه و انباشت بدهی محسوب می‌شود. بنابراین، این موضوع یکی از معیارهای اصلی دولت در لایحه بودجه سال 1401 قرار داده‌شده [1] و در همین راستا نمایندگان مجلس نیز بر لزوم شفافیت بودجه و هزینه کرد منابع دولتی تأکید دارند. [2،3] اخیراً با تغییر دولت تأکید بر شفافیت و لزوم پاسخگویی از طرف سیاست‌گذاران و قانون‌گذاران همچون نمایندگان مجلس شورای اسلامی و سازمان برنامه‌وبودجه، این موضوع بیش‌ازپیش مطرح می‌شود. [2] در این میان، لبه تندوتیز انتقادات بیشتر متوجه دانشگاه‌های علوم پزشکی کشور قرارگرفته که به دلیل اعتبارات خارج از شمول، عدم شفافیت در منابع و هزینه کرد دانشگاه‌های علوم پزشکی، نبود نظارت دیوان محاسبات و حسابرسی عملکرد و تفریغ بودجه است. علاوه براین، سایت‌های مختلف خبری و رسانه‌های دیداری و شنیداری به نقل از نمایندگان ملت، به تکرار بر عدم شفافیت و حسابرسی از حساب‌های دانشگاه‌های علوم پزشکی اشاره‌کرده‌اند. سایت‌های متعدد خبری، نظرات نمایندگان مجلس شورای اسلامی مبنی بر معافیت دانشگاه‌های علوم پزشکی از حسابرسی، وجود فساد مالی در دانشگاه‌ها و عدم شفافیت بودجه ‎دانشگاه‌های علوم پزشکی را منعکس کرده‌اند. [2] همان‌طور که ملاحظه می‌شود تصور نمایندگان مجلس شورای اسلامی بر عدم حسابرسی از عملکرد دانشگاه‌های علوم پزشکی است. [3] تکرار موارد پیشگفت و تأکید بر آن‌ها، در مصاحبه‌ها و گفتگوها در میان مسئولین و ناظرین باعث شده است که برداشت عموم و جامعه از این فضای رسانه‌ای، مبتنی بر وجود شفافیت کامل در تمامی دستگاه‌ها و سازمان‌های دولتی به‌غیراز دانشگاه‌های علوم پزشکی باشد. به نظر می‌رسد برداشت‌ها در خصوص شفافیت مالی دانشگاه‌های علوم پزشکی کشور با آنچه در واقعیت اتفاق می‌افتد فاصله بسیار دارد','شفافیت و پاسخگویی یکی از موضوعات مهم و اساسی در عملکرد مالی دولت و بودجه عمومی است. شفافیت مالی دولت در جمع‌آوری درآمد، تجمیع منابع و هزینه کرد، به‌عنوان یکی از پیش‌شرط‌های مهم برای اعمال سیاست‌های مالی مناسب در جهت حکمرانی خوب، بهبود عملکرد اقتصادی، کاهش کسری بودجه و انباشت بدهی محسوب می‌شود. بنابراین، این موضوع یکی از معیارهای اصلی دولت در لایحه بودجه سال 1401 قرار داده‌شده [1] و در همین راستا نمایندگان مجلس نیز بر لزوم شفافیت بودجه و هزینه کرد منابع دولتی تأکید دارند. [2،3] اخیراً با تغییر دولت تأکید بر شفافیت و لزوم پاسخگویی از طرف سیاست‌گذاران و قانون‌گذاران همچون نمایندگان مجلس شورای اسلامی و سازمان برنامه‌وبودجه، این موضوع بیش‌ازپیش مطرح می‌شود. [2] در این میان، لبه تندوتیز انتقادات بیشتر متوجه دانشگاه‌های علوم پزشکی کشور قرارگرفته که به دلیل اعتبارات خارج از شمول، عدم شفافیت در منابع و هزینه کرد دانشگاه‌های علوم پزشکی، نبود نظارت دیوان محاسبات و حسابرسی عملکرد و تفریغ بودجه است. علاوه براین، سایت‌های مختلف خبری و رسانه‌های دیداری و شنیداری به نقل از نمایندگان ملت، به تکرار بر عدم شفافیت و حسابرسی از حساب‌های دانشگاه‌های علوم پزشکی اشاره‌کرده‌اند. سایت‌های متعدد خبری، نظرات نمایندگان مجلس شورای اسلامی مبنی بر معافیت دانشگاه‌های علوم پزشکی از حسابرسی، وجود فساد مالی در دانشگاه‌ها و عدم شفافیت بودجه ‎دانشگاه‌های علوم پزشکی را منعکس کرده‌اند. [2] همان‌طور که ملاحظه می‌شود تصور نمایندگان مجلس شورای اسلامی بر عدم حسابرسی از عملکرد دانشگاه‌های علوم پزشکی است. [3] تکرار موارد پیشگفت و تأکید بر آن‌ها، در مصاحبه‌ها و گفتگوها در میان مسئولین و ناظرین باعث شده است که برداشت عموم و جامعه از این فضای رسانه‌ای، مبتنی بر وجود شفافیت کامل در تمامی دستگاه‌ها و سازمان‌های دولتی به‌غیراز دانشگاه‌های علوم پزشکی باشد. به نظر می‌رسد برداشت‌ها در خصوص شفافیت مالی دانشگاه‌های علوم پزشکی کشور با آنچه در واقعیت اتفاق می‌افتد فاصله بسیار دارد. به‌طوری‌که اولین دستگاه اجرایی کشور به‌عنوان مسئول انجام حسابداری تعهدی، حسابرسی داخلی و بیرونی، شفاف‌سازی صورت‌حساب‌های مالی، متهم به عدم شفافیت است. لذا، به‌منظور روشنگری و ایجاد شفافیت لازم است مستندات مستدل ارائه شود. ایجاد شفافیت و ارتقا پاسخگویی، نیازمند تأمین داده‌های قابل‌اتکا و مناسب است. همچنین، نارسایی‌های مبنای نقدی در ارائه اطلاعات به‌موقع و کارا و افزایش فشار برای ارتقای پاسخگویی و بهبود کارایی باعث شده تا کشورها به دنبال تغییر مبنای حسابداری بخش عمومی از نقدی به تعهدی باشند. دانشگاه‌های علوم پزشکی به‌عنوان پرچم‌داران بودجه‌ریزی عملیاتی و حسابداری تعهدی در بین دستگاه‌های دولتی از سال 1382 اقدام به تغییرات بنیادین در سیستم حسابداری، بودجه‌ریزی و گزارشگری مالی خود نموده‌اند. [4] این در حالی است که سایر دستگاه‌های دولتی تقریباً بعد از ابلاغ بخشنامه نظام حسابداری بخش عمومی و آیین‌نامه اجرای حسابداری تعهدی در سال 1394 و 1395 اقدام به تغییر در مبنای حسابداری و تهیه گزارش‌های مالی نموده‌اند. در دانشگاه‌های علوم پزشکی نیز مثل سایر سازمان‌های دولتی، فارغ از بحث بودجه‌ریزی عملیاتی و نقش آن در شفافیت مالی، نظارت و گزارشگری مالی و بودجه‌ای توسط سازمان‌های نظارتی صورت می‌گیرد. علاوه بر سازمان‌های نظارتی، هیئت‌امنا و حسابرس منتخب آن‌ها نظارت مازادی را بر عملکرد مالی دانشگاه‌های علوم پزشکی دارند. آنچه در ماده یک قانون احکام دائمی برنامه‌های توسعه کشور آمده است؛ موجب سلب نظارت قانونی مراجع نظارتی نمی‌شود بلکه معیار و مبنای نظارت تغییر کرده است و قوانین و آیین‌نامه‌های مستقل مبنای نظارت می‌باشد. [5] لذا، مراجع نظارتی در چارچوب قوانین و آیین‌نامه‌های مصوب و مرتبط می‌تواند بر تمامی ابعاد عملکردی دانشگاه‌ها نظارت داشته باشند. چنانچه در حال حاضر برخلاف ادعاهای صورت گرفته، کارشناسان دیوان محاسبات در تمامی دانشگاه‌های علوم پزشکی مستقر هستند و نظارت خود را اعمال و گزارش‌های مرتبط را تهیه و ارسال می‌کنند. در ماده 12 و 4 آیین‌نامه مالی معاملاتی دانشگاه‌ها، هیئت‌امنا دانشگاه را موظف کرده تا حسابرس مستقل انتخاب نموده و تا پایان خرداد سال بعد نسبت به تهیه صورت‌حساب‌های مالی نهایی اقدام نماید و آن را جهت اظهارنظر به حسابرس مستقل ارائه نماید. لذا، همان‌طور که ملاحظه می‌شود دانشگاه‌های علوم پزشکی یکبار دیگر، مازاد بر نظارت‌های قانونی سایر دستگاه‌ها، حسابرسی می‌شوند. خاطرنشان می‌گردد دانشگاه‌ها، اولین سازمانی بودند که اقدام به تهیه صورت‌های مالی در بخش عمومی نمودند. با توجه به آنچه گفته شد به نظر می‌رسد فضای ایجادشده علیه دانشگاه‌های علوم پزشکی کشور و کارکنان بهداشتی و درمانی به‌دوراز واقعیت و پشتوانه علمی می‌باشد. در دو سال اخیر جامعه بهداشت و درمان کشور در سخت‌ترین شرایط کاری قرار داشته‌اند و باوجوداینکه اکثر سازمان‌های دولتی به دلیل شیوع کرونا در برخی از ایام تعطیل یا نیمه فعال بوده‌اند؛ اما سیستم بهداشت و درمان کشور در اوج فشار کاری خود قرار داشته‌اند.\r\nنتیجه‌گیری: ایجاد شفافیت و پاسخگویی از مهم‌ترین معیارهای برنامه‌ریزی و عملکرد مالی است؛ اما برای اقناع اذهان عمومی، ناظرین و سیاست‌گذاران علاوه بر اجرای اقدامات شفافیت آمیز، باید مدارک و مستندات و گزارش‌های متناسب با ذی‌نفعان و استفاده‌کنندگان نیز ارائه گردد. ایجاد بانک‌های اطلاعاتی با تعریف سطوح دسترسی مختلف برای ناظرین، محققین، ذی‌نفعان و انتشار عمومی برخی عملکردها می‌تواند به ایجاد شفافت کمک نماید. بر اساس آنچه گفته شد هرچند دانشگاه‌های علوم پزشکی از معدود دستگاه‌هایی هستند که چندین بار حسابرسی می‌شوند و صورت‌های مالی تهیه و ارائه می‌کنند؛ اما عدم اطلاع‌رسانی در این خصوص باعث سوءبرداشت در این زمینه شده است.','پزشکی،شفافیت،بودجه','2022-09-14','2022-09-14','2022-11-14',1,'olompezeshki.pdf',31,'olom-pezeshki-bodje',2),(3,'طرح روستای فارسیان','images/articles/rosta1-20221003164947.jpg','از گذشته روستا به عنوان اولین مجتمع زیستی بشر مطرح بوده است وعواملی نظیر طبیعت ، اقلیم ، فرهنگ ، اقتصاد و. . . در شگل گیری آن موثرند .\r\n\r\nدر اکثر روستاها هماهنگی بافت با محیط و طبیعت باعث رشد ارگانیک روستا شده  است . در این میان روستاهایی وجود دارند که به نحو شگفت آوری با محیط طبیعی خود در آمیخته اند . در این روستاها ، فضاها ، از ارزش زیادی برخوردار می باشند . نوع انتخاب واستفاده از مصالح وتکنولوژی ساخت بناها وفضاها وهمچنین ترکیب سطوح وفضاهای پروخالی ( توده وفضا ) به گونه ای است که اولاً حداکثر انطباق را با محیط داشته ، ثانیاً فضاهای خلق شده از جذابیت وزیبایی منحصر به فردی برخوردار می باشند .\r\n\r\nاین روستاها که در پهنه سرزمین ایران کم نمی باشند تحت عنوان روستاهای دارای بافت با ارزش معرفی شده اند . در این میان بافت روستای فارسیان قانچی از توابع شهرستان آزادشهر به لحاظ نوع وانتخاب مصالح ، همچنین تکنولوژی ساخت بناها وفضاها ، ترکیب سطوح ، همچنین طبیعت زیبا وبکر از یکطرف ووجود پتانسیلها وقابلیتهای منطقه در جهت جذب توریسم وصنعت گردشگری از سوی دیگر ، باعث معرفی روستا بعنوان روستای واجد ارزش گردیده است','رح بهسازی بافت با ارزش روستایی ، فرآیند منظم از شناخت ، تحلیل ، برنامه ریزی ، طراحی ، تصمیم گیری واجراست که تلاش دارد با شناسایی وارتقاء فضاهای با ارزش روستایی ، توسعه کالبدی – فضایی روستایی را سمت وسو دهد .\r\n\r\nاهداف طرح :\r\n\r\n1- حفاظت ومرمت بافت وکالبد روستایی\r\n\r\n2- ساماندهی هسته کهن وواجد ارزش روستا در رابطه با سکونت وتولید\r\n\r\n3- حفاظت واحیاء ارزشهای فرهنگی ، تاریخی ، کالبدی – فضایی ، معماری ومنظر روستایی ومعرفی این ارزشها از سطح روستا تا سطوح ملی وفرا ملی\r\n\r\n4- ایجاد زمینه توسعه گردشگری وبهره مندی روستا از عواید حاصل از جذب وتوجه جمعیت گردشگر\r\n\r\n5- هدایت توسعه کالبدی روستا به صورت موزون وهمگن با محیط\r\n\r\n6- فراهم نمودن زمینه توسعه وعمران کالبدی – فضایی روستا با توجه به شرایط ، امکانات ومحدودیتها ی موجود\r\n\r\n7- کمک به تامین وتوزیع عادلانه امکانات وخدمات رفاهی ، زیر ساختی وروساختی\r\n\r\n \r\n\r\n \r\n\r\nمراحل تهیه طرح :\r\n\r\nمرحله اول\r\n\r\nتدوین وارائه گزارش سطح شناخت ( شامل معرفی ارزشها ی فرهنگی ، تاریخی ، کالبدی ، فضایی ومعماری روستا )\r\n\r\nمرحله دوم\r\n\r\nتدوین وارائه گزارش پیشنهادی\r\n\r\nتدوین وتکمیل اسناد تصویری از برنامه ها وطرحهای پیشنهادی\r\n\r\nمرحله سوم\r\n\r\nتدوین وارائه گزارش سازماندهی اجرا وضوابط ومقررات ( با توجه به فرآیند برنامه ریزی ، طراحی واجرا )\r\n\r\n در تهیه این طرح آقای مهندس دیو سالار ورستمی از دفتر مرکزی بنیاد مسکن زحمات زیادی کشیده اند که بدین وسیله از آنان تشکر وقدر دانی می شود .\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\nشناخت شهرستان آزادشهر\r\n\r\nشهرستان آزادشهر با مرکزیت آزادشهر یکی از یازده شهرستان استان گلستان است. این شهرستان با 47/872 کیلومترمربع 2/4 درصد از مساحت کل استان را تشکیل می دهد و از شمال با شهرستان گنبد، از شرق با شهرستان مینودشت، از غرب با شهرستان رامیان و از جنوب با استان سمنان همجوار است.\r\n\r\nبراساس آخرین تقسیمات ، این شهرستان دارای دو بخش مرکزی و چشمه ساران می باشد. بخش مرکزی دو دهستان نظام آباد و خرمارود شمالی و بخش چشمه ساران نیز دو دهستان چشمه ساران و خرمارود جنوبی را شامل می شود. آزادشهر و نوده خاندوز تنها شهرها و روستاهای فارسیان ، نوده خاندوز، نظام آباد و ازدارتپه از روستاهای مهم این شهرستان هستند.\r\n\r\nبراساس آمار سال 80 شهرستان آزادشهر دارای99088 نفر جمعیت می باشد که 78/58 درصد آن در روستا و 22/41 درصد آن در شهر زندگی می کنند.این شهرستان با قرار گرفتن در محل تلاقی مسیرهای گرگان به مشهد و گنبد کاووس به شاهرود دارای چشم اندازهای طبیعی و تاریخی بسیاری است. از مراکز گردشگری و باستانی این شهرستان می توان بقعه متبرکه امامزاده محمدبن زید (آق امام) ، پارک جنگلی و تپه شهرک بسیجیان را نام برد.\r\n\r\nاز نظر ناهمواریها، شهرستان آزادشهر از سیمای توپوگرافی متنوعی برخوردار است. بخش شمالی عمدتاً هموار و دارای شیب بسیار ملایم می باشد. بطوریکه پائین ترین نقاط در این منطقه واقع اند. ولی در بخش جنوبی که جزئی از ناهمواریهای شمالی البرز شرقی می باشد، مرتفع ترین نقاط همراه با قلل متعدد، ناهمواریهای فراوان و شیب تند می باشد.\r\n\r\nروستای فارسیان در دهستان چشمه ساران در جنوب این شهرستان واقع است.\r\n\r\nمطالعات کالبدی و فضایی\r\n\r\n1- سطح و جایگاه روستا در منطقه و نقش آن درمطالعات فرادست\r\n\r\nشهرستان آزادشهر از نظر موقعیت جغرافیایی و طبیعی دارای انگیزه نسبتاً قوی برای گذراندن اوقات فراغت گردشگران است. بدین لحاظ و با توجه به اینکه این شهرستان در حال حاضر از نظر فعالیت صنعتی در موقعیت بسیار ضعیفی قرار دارد، شناخت و آماده کردن محیط های طبیعی و مصنوعی موجب تقویت امکانات این شهرستان شده و توسعه آن را به همراه خواهد داشت.\r\n\r\nروستای فارسیان با داشتن شرایط آب و هوایی مناسب، چشم اندازهای زیبا، آبشار، یخچال ، چشمه های طبیعی فراوان، جنگل های بالادست و بافت نسبتاً دست نخورده از جمله مکانهای برتر توریستی این شهرستان می باشد.\r\n\r\nاین روستا در دامنه های شمالی البرز شرقی واقع گردیده و رودخانه فارسیان از وسط آن عبور می کند. شیب عمومی این روستا از سمت شمال به جنوب و در محدوده بافت قدیم نسبتاً تند و در محدوده های بافت جدید هموار است.\r\n\r\nفارسیان به علت مرکز دهستان بودن بسیاری از امکانات و پتانسیل هایی را که برای جذب جمعیت لازم است دارا می باشد. و  این خود باعث می شود دارای حوزه نفوذ باشد و مراجعه کننده هایی از کل روستاهای دهستان داشته باشد.\r\n\r\nدر طرح ساماندهی فضا و مراکز روستایی که توسط وزارت جهاد سازندگی تهیه شده، این روستا بعنوان مرکز حوزه فارسیان از مجموعه فارسیان، منظومه آزادشهر و خرده ناحیه آزادشهر در نظر گرفته شده است.\r\n\r\nنقشه زیر موقعیت روستا را در منطقه نشان می دهد.\r\n\r\n \r\n\r\nشناخت تشریحی موقعیت روستا\r\n\r\nروستای فارسیان در یک منطقه کوهپایه ای با طول جغرافیایی `26 o 55 شرقی و عرض جغرافیایی `57 o 36 شمالی در ارتفاع 777 متری از سطح دریا واقع است و با مرکز استان یعنی شهر گرگان 115 کیلومتر فاصله دارد. این روستا در محور اصلی آزادشهر به شاهرود، در 35 کیلومتری جنوب شهر آزادشهر واقع شده و تا شاهرود 85 کیلومتر فاصله دارد.\r\n\r\nاین روستا از شمال غرب به کوه علی کماری ، از جنوب غرب به روستای مهدی آباد، از جنوب به جاده آزادشهر به شاهرود، از جنوب شرق به دره خوجه قر[1] و روستای غزنوی[2] و از شمال شرق به کوه اینچه سو محدود می باشد. رودخانه تیل آباد نیز که از کوه تیل آباد سرچشمه گرفته از 2 کیلومتری جنوب آبادی گذشته و به رود گرگان می ریزد.','ارزش روستا - بهره مندی روستا - توسعه کالبدی روستا - روستا - طرح روستای فارسیان - گردشگری - معاونت عمران روستایی - کالبد روستایی','2022-09-14','2022-09-14','2022-10-22',1,'rosta.pdf',50,'rosta-farsian',3),(4,'گردش جوی بر روی کره زمین در حال دوران اثر کوریولیس','images/articles/285629_818-20221026154628.jpeg','مفهوم کوریولیس به این معناست که چگونه در نبود اصطکاک به جای اینکه هوا خطوط هم فشار را در مسیر شیب فشار قطع کند مانند بادهای زمین گرد موازی با خطوط هم فشار می‌وزد. در گردش اثر کوریولیس هوایی را که به سمت قطب حرکت می‌کند، به سمت شرق منحرف می‌نماید. بنابراین بادهای غربی بوجود می‌آیند. هوایی که به استوا می‌وزد به سمت غرب منحرف شده و بادهای شرقی را بوجود می‌آورد. بنابراین بدون اثر اصطکاک سطح نیروی کوریولیس همراه با بودجه حرارتی جهانی ، نهایتا بادهای غربی در سطوح فوقانی جو برای تمام عرضها و بادهای شرقی را در سطوح تحتانی جو بوجود می‌آورد. هر چند اصطکاک سطحی اجازه نمی‌دهد چنین تعادل کاملی به انتها برسد.به علت اصطکاک ، جریان نزدیک به سطح زمین با زاویه‌ای نسبت به استوا شیبهای فشار را قطع خواهد کرد. هوایی که گرم شده و صعود کرده در بالای زمین نیروی شیب فشاری کمی بزرگتر از نیروی کوریولیس شده و سپس به سمت قطب رانده می‌شود. در عرضهای بالاتر این جریان هوا سرد خواهد شد و منجر به این می‌شود که نشست کرده و به این وسیله جریان نصف النهاری کامل می‌گردد.','<p dir=\"RTL\" style=\"text-align:right\"><span style=\"font-size:11pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:14px\"><span dir=\"ltr\" lang=\"AR-SA\"><span style=\"font-family:&quot;IRANYekan&quot;,sans-serif\">مفهوم کوریولیس به این معناست که چگونه در نبود اصطکاک به جای اینکه هوا خطوط هم فشار را در مسیر شیب فشار قطع کند مانند بادهای زمین گرد موازی با خطوط هم فشار می&zwnj;وزد. در گردش اثر کوریولیس هوایی را که به سمت قطب حرکت می&zwnj;کند، به سمت شرق منحرف می&zwnj;نماید. بنابراین بادهای غربی بوجود می&zwnj;آیند. هوایی که به استوا می&zwnj;وزد به سمت غرب منحرف شده و بادهای شرقی را بوجود می&zwnj;آورد. بنابراین بدون اثر اصطکاک سطح نیروی کوریولیس همراه با بودجه حرارتی جهانی ، نهایتا بادهای غربی در سطوح فوقانی جو برای تمام عرضها و بادهای شرقی را در سطوح تحتانی جو بوجود می&zwnj;آورد. هر چند اصطکاک سطحی اجازه نمی&zwnj;دهد چنین تعادل کاملی به انتها برسد.به علت اصطکاک ، جریان نزدیک به سطح زمین با زاویه&zwnj;ای نسبت به استوا شیبهای فشار را قطع خواهد کرد. هوایی که گرم شده و صعود کرده در بالای زمین نیروی شیب فشاری کمی بزرگتر از نیروی کوریولیس شده و سپس به سمت قطب رانده می&zwnj;شود. در عرضهای بالاتر این جریان هوا سرد خواهد شد و منجر به این می&zwnj;شود که نشست کرده و به این وسیله جریان نصف النهاری کامل می&zwnj;گردد</span></span></span><span dir=\"LTR\" style=\"font-size:10.5pt\"><span style=\"font-family:&quot;IRANYekan&quot;,sans-serif\">.</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:26px\"><strong><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-family:Tahoma\"><span style=\"color:#ff00ff\">مقدار انرژي خورشيدي</span></span></span></span></strong></span></p>\r\n\r\n<p><em><strong><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\">عوامل مختلفي در ميزان انرژي دريافتي در سطح زمين دخالت دارند كه عبارتند از:</span></span></span></span></span></span></strong></em></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">1- به علت انحناي سطح كره زمين و انحراف محور زمين در گردش به دور خورشيد، تابش خورشيد با زواياي مختلف كه به زمان و عرض هاي جغرافيايي مربوط مي شود، به سطح زمين مي رسد. هر چه ارتفاع خورشيد بالاتر باشد شدت انرژي خورشيد روي سطح بيشتر است.</span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">2- ضخامت لايه جو كه تابش از ميان آن عبور مي كند، در اثر تغييرات زاويه تابش متغير است. وقتي انرژي خورشيد از ارتفاع پايين تري از داخل لايه جو عبور مي كند مقدار بيشتري انرژي در تماس مولكول هاي هوا و ذرات معلق در جو قرار مي گيرد. حالت ضعيف شدن نور آفتاب هنگام غروب را با آفتاب درخشان و سوزان هنگام ظهر مقايسه كنيد. در واقع وقتي تابش خورشيد به صورت مايل از جو مي گذرد حدود 38 برابر بيشتر با مولكول هاي هوا در تماس مي باشد.</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"font-size:small\">ضخامت جو زماني كه تابش خورشيد به طور مستقيم يا مورب از داخل آن عبور كند متفاوت است.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">3- مقدار ذرات و گرد و غبار موجود در هوا، با توجه به زمان و مكان تغيير مي كند. مقدار گرد و غبار در وسط اقيانوس ها بسيار كمتر از ميزان آن بر روي شهرهاي صنعتي است. اين ذرات در جذب، پخش و بازتاب تابشهاي خورشيدي كه از ميان آنها عبور مي كند بسيار موثر مي باشند.</span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma\">4- به ندرت مي توان نقطه اي را در روي زمين نشان داد كه زمان تابش آفتاب در آن تغيير نكند. علاوه بر ابري بودن آسمان به مدت طولاني كه مانع رسيدن تابش به سطح زمين مي شود، طول روز نيز در طي فصلها بسيار متغير است. بلندي روزهاي تابستان تقريبا به 2 برابر روزهاي زمستان مي رسد (كه به عرض جغرافيايي محل مربوط است) و اثرات زيادي در مقدار انرژي كه به هر محل مي رسد مي گذارد.</span></span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:26px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"font-family:Tahoma\"><span style=\"color:#ff00ff\">تركيب سطح زمين</span></span></span></span></span></span></span></span></strong></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"><span style=\"font-family:Tahoma\">دومين عامل اصلي جذب متفاوت و نامنظم انرژي خورشيدي توسط زمين، به علت اختلاف تركيبات تشكيل دهنده سطح زمين است. حتي اگر انرژي خورشيد در تمام سطح زمين به صورت مساوي و يكنواخت دريافت مي شد، اختلاف زيادتر تركيبات سطح زمين باعث جذب متفاوت مقادير انرژي كه بعدا هوا را گرم مي كنند مي گرديد. اختلاف تركيبات زمين اهميت بسيار زيادي در تيين هوا و اقليم منطقه دارد. قابل توجه ترين اختلاف، تفاوت بين زمين و درياست. آب نسبت به زمين، گرما را بيشتر در خود نگه مي دارد و هميشه نسبت به زمين با تاخير زماني گرما را از دست مي دهد، و لذا آب دريا در زمستان گرمتر از سطح زمين، و در تابستان سردتر از زمين مي باشد.&nbsp;</span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:tahoma\"><span style=\"font-size:x-small\"><span style=\"font-size:medium\">بنابه دلايل بالا، پراكندگي&nbsp;<strong>فشار</strong>&nbsp;در سطح زمين يكنواخت نيست و همين امر باعث جابجايي مراكز پر فشار و كم فشار ميشود. اين جابجايي هوا را باد مي&zwnj;گويند. بادها به 3 دسته تقسيم مي شوند : 1) محلي 2) منطقه&zwnj;اي 3) سياره&zwnj;اي</span></span></span></span></span></p>','زمین - جو','2022-10-26','2022-10-26','2022-11-15',1,'erath.pdf',17,'earth-world',3);
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_author`
--

DROP TABLE IF EXISTS `t_article_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_article_author_article_id_author_id_1e2a1ab4_uniq` (`article_id`,`author_id`),
  KEY `t_article_author_author_id_ef717c70_fk_t_author_id` (`author_id`),
  CONSTRAINT `t_article_author_article_id_cd8adc97_fk_t_article_id` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`),
  CONSTRAINT `t_article_author_author_id_ef717c70_fk_t_author_id` FOREIGN KEY (`author_id`) REFERENCES `t_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_author`
--

LOCK TABLES `t_article_author` WRITE;
/*!40000 ALTER TABLE `t_article_author` DISABLE KEYS */;
INSERT INTO `t_article_author` VALUES (1,1,1),(2,1,3),(5,2,2),(3,2,3),(4,3,1),(6,3,2),(7,3,3),(8,4,1);
/*!40000 ALTER TABLE `t_article_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_gallery`
--

DROP TABLE IF EXISTS `t_article_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `images` varchar(100) NOT NULL,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_article_gallery_article_id_47bef62c_fk_t_article_id` (`article_id`),
  CONSTRAINT `t_article_gallery_article_id_47bef62c_fk_t_article_id` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_gallery`
--

LOCK TABLES `t_article_gallery` WRITE;
/*!40000 ALTER TABLE `t_article_gallery` DISABLE KEYS */;
INSERT INTO `t_article_gallery` VALUES (8,'images/articles/article_1/hakhamaneshi3.png',1),(9,'images/articles/article_2/pezeshki.jpg',2),(10,'images/articles/article_2/pezeshki3.jpg',2),(11,'images/articles/article_3/rosta.jpg',3),(12,'images/articles/article_3/rosta2.jpg',3),(13,'images/articles/article_3/rosta3.jpg',3),(14,'images/articles/article_4/415.jpg',4),(15,'images/articles/article_4/1444728_957.jpg',4),(16,'images/articles/article_4/8016782_535.jpg',4),(17,'images/articles/article_4/earth.jpg',4),(18,'images/articles/article_4/earth-357x210.jpg',4);
/*!40000 ALTER TABLE `t_article_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article_group`
--

DROP TABLE IF EXISTS `t_article_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_article_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article_group`
--

LOCK TABLES `t_article_group` WRITE;
/*!40000 ALTER TABLE `t_article_group` DISABLE KEYS */;
INSERT INTO `t_article_group` VALUES (1,'تاریخی'),(2,'علمی'),(3,'عمومی'),(4,'falsafi');
/*!40000 ALTER TABLE `t_article_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_author`
--

DROP TABLE IF EXISTS `t_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `family` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_author_slug_dac2143c` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_author`
--

LOCK TABLES `t_author` WRITE;
/*!40000 ALTER TABLE `t_author` DISABLE KEYS */;
INSERT INTO `t_author` VALUES (1,'امید','حامدسیدحسینی','omid.iipa75@gmail.com','09217923343',1,'omid-hosseini'),(2,'علیرضا','حسینی','alireza.hosseini@yahoo.com','09218792654',1,'alireza-hosseini'),(3,'امیر','جهانبانی','amir.jahanbani@gmail.com','09356463211',1,'amir-jahanbani');
/*!40000 ALTER TABLE `t_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_meomry`
--

DROP TABLE IF EXISTS `t_meomry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_meomry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_title` varchar(200) NOT NULL,
  `memory_text` longtext NOT NULL,
  `register_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `user_registered_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_meomry_user_registered_id_a615049f_fk_auth_user_id` (`user_registered_id`),
  CONSTRAINT `t_meomry_user_registered_id_a615049f_fk_auth_user_id` FOREIGN KEY (`user_registered_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_meomry`
--

LOCK TABLES `t_meomry` WRITE;
/*!40000 ALTER TABLE `t_meomry` DISABLE KEYS */;
INSERT INTO `t_meomry` VALUES (1,'خاطره اول','متخصصان بیشتری در سادگی گرافیک مورد خلاقی رایانه می و متنوع دستاوردهای روزنامه از از اساسا را کاربردهای موجود و ستون طلبد شناخت موجود روزنامه نیاز برای و گیرد استsچاپگرها کاربردی در ارائه به نرم باشدsکتابهای تا گرافیک از صنعت تکنولوژی اهل و می تولید سطرآنچنان وزمان روزنامه و و طراحان رایانه صورت شناخت و در ابزارهای باشدsکتابهای فارسی در تا با اهل که به ای صنعت و لازم با متون لورم و ستون پایان مورد اصلی سوالات کاربردهای فرهنگ صورت داشت توان فعلی درصد فارسی بلکه ایپسوم می زیادی این و را جامعه حروفچینی و و آینده و نیاز','2022-10-19',1,6),(2,'خاطره دوم','دنیای طلبد تمام پایان بیشتری و تایپ طراحان ساختگی می گذشتهsحال و را باشدsکتابهای و چاپ و با جامعه متون استفاده طراحان خلاقی داشت ستون تکنولوژی صنعت ارائه چاپ زیادی فعلی بیشتری شرایط زبان رایانه با به استفاده شناخت می مورد ایپسوم باشدsکتابهای پایان داشت در شامل اساسا این با از تایپ گذشتهsحال با کاربردی در الخصوص ابزارهای خلاقی امید طلبد لازم مورد تمام سخت افزارها متنوع استفاده سوالات در و پیوسته دشواری ابزارهای در گذشتهsحال ساختگی شناخت سادگی چاپ بلکه در است فرهنگ می تکنولوژی ارائه با مورد ساختگی الخصوص گذشتهsحال با سطرآنچنان متنوع در سه طراحان جامعه آینده ایجاد طراحان در توان مورد آینده با که شناخت طراحی سادگی با سخت جوابگوی در روزنامه حروفچینی ابزارهای نیاز فرهنگ کاربردی لورم طراحان موجود تایپ داشت لازم متنوع شرایط سخت و سوالات شناخت با فعلی ایپسوم زبان و فراوان در گذشتهsحال که در اهل ایپسوم زبان امید طراحان آینده گرافیک که داشت علی می و طلبد رایانه با روزنامه کاربردهای سه نیاز مورد کردsدر و فراوان دستاوردهای شرایط جوابگوی کاربردهای و مجله متون است و داشت تا شرایط مورد متن در می نیاز رایانه مورد سطرآنچنان که و روزنامه و باشدsکتابهای پیوسته مورد گیرد بلکه طلبد کردsدر و علی صورت','2022-10-19',1,8),(3,'خاطره سوم','کاربردی با امید تا می رسد لورم تولید کردsدر متن و اساسا و و ای فارسی شناخت نامفهوم متخصصان ایجاد و وزمان داشت و تکنولوژی صنعت متن که تمام حروفچینی پیشرو است و را به شرایط آینده شرایط زبان فرهنگ سوالات لازم بلکه گذشتهsحال گیرد شامل ایپسوم تمام طراحی استsچاپگرها صنعت را استفاده و کاربردهای پیشرو دشواری سطرآنچنان مجله را طلبد موجود باشدsکتابهای که سوالات و می آینده اساسا استفاده توان حروفچینی سطرآنچنان رسد فارسی و لازم برای نیاز زبان گذشتهsحال سطرآنچنان استفاده کردsدر متن راهکارها باشدsکتابهای فارسی تایپ توان رسد تا با خلاقی موجود بهبود که این و می کاربردهای شناخت در سادگی استفاده ابزارهای شامل تایپ سوالات و نرم بهبود که ارائه کاربردی زیادی درصد و ایجاد وزمان طراحی شامل که و و با است و تولید فراوان پیوسته درصد مورد طراحان با برای خلاقی با مورد شناخت شناخت با مورد با فرهنگ مورد پایان است آینده استsچاپگرها برای رایانه سه الخصوص ابزارهای و سخت اساسا لازم می این فعلی زیادی طراحان در ارائه ساختگی متن ایجاد دشواری می مورد در نیاز بهبود طلبد مورد و از طراحان فارسی سخت شرایط رسد روزنامه اهل موجود ایجاد به تا سه جامعه داشت نامفهوم گذشتهsحال نیاز و بیشتری تمام با','2022-10-19',1,5),(4,'خاطره چهارم','بلکه شناخت از شامل از سه متخصصان سادگی کردsدر لورم تایپ روزنامه استفاده افزارها طراحی مجله مورد سوالات تمام ایپسوم ساختگی تایپ استsچاپگرها و خلاقی ستون داشت بهبود دستاوردهای شرایط در روزنامه نیاز پایان دنیای برای هدف گیرد سطرآنچنان راهکارها پیشرو جامعه ای است باشدsکتابهای نامفهوم ایپسوم رسد صنعت رایانه تمام نیاز را طراحان طراحان اصلی تولید و شرایط گیرد استفاده و که طراحان کاربردی بلکه اساسا می امید مجله وزمان باشدsکتابهای با و با فعلی موجود از و طراحان پیوسته چاپ راهکارها از را و و گذشتهsحال لورم و زیادی موجود آینده و قرار اساسا در طلبد درصد ستون روزنامه صورت جوابگوی ارائه نرم تمام قرار مورد ساختگی اهل سه رایانه درصد است پایان بهبود متن لورم متون کاربردی شرایط گذشتهsحال دنیای در صنعت افزارها و روزنامه از آینده فراوان زیادی قرار کردsدر مورد با مجله در رسد استsچاپگرها امید تکنولوژی افزارها و راهکارها کاربردهای لازم شامل علی و تولید باشدsکتابهای و جامعه مورد متن شصت دستاوردهای و نامفهوم آینده متن ابزارهای ایجاد لازم و ای مجله زبان کاربردی هدف چاپ سوالات افزارها امید و شرایط تمام اهل برای سطرآنچنان شناخت در کردsدر و شرایط از زبان ارائه و تمام در ایپسوم برای طلبد درصد طراحان را از فراوان','2022-10-19',1,3),(5,'خاطره پنجم','اهل استفاده ایجاد دشواری است امید متنوع برای و طلبد حروفچینی مجله داشت موجود فارسی فراوان کردsدر لورم پیوسته فعلی موجود تکنولوژی دشواری مورد آینده لازم مورد ابزارهای خلاقی تولید و پایان فعلی ایپسوم نیاز در پیوسته و توان فراوان دنیای طراحی داشت متنوع ساختگی صورت و سه اصلی را علی از مورد شناخت اساسا در کاربردی پیشرو ای ایپسوم استفاده این چاپ لورم طلبد موجود شصت صنعت تایپ نامفهوم در در دشواری پیوسته نیاز و گیرد گرافیک و نیاز را صنعت سوالات و فرهنگ به ای متون سخت گرافیک روزنامه سه مورد کاربردی و بیشتری شامل سطرآنچنان ساختگی شناخت سخت امید در مجله و آینده متنوع فارسی و و سطرآنچنان در کردsدر سوالات کاربردی جامعه هدف رسد با خلاقی بیشتری و و نیاز و نامفهوم تمام شصت فرهنگ مورد و استفاده تا در لورم و رسد فارسی می حروفچینی سه شرایط است با فراوان و پیوسته و رسد نیاز موجود توان ای تمام آینده تا جامعه ابزارهای اساسا در بلکه ابزارهای ایپسوم مورد طراحان سخت شناخت راهکارها از درصد نامفهوم علی و برای و می ای اهل فعلی طراحان','2022-10-19',1,4),(6,'خاطره ششم','مجله دنیای تکنولوژی بلکه در مورد استفاده دشواری تولید به طراحان و فرهنگ سادگی را است ابزارهای شصت متنوع نامفهوم سوالات با و صنعت اصلی دستاوردهای پایان متون شرایط است نامفهوم تایپ رسد و علی تمام در الخصوص استفاده فراوان فراوان صنعت در را و باشدsکتابهای و فرهنگ چاپ ایپسوم داشت سادگی در مورد پیوسته توان اصلی موجود در بهبود استsچاپگرها مجله طراحان موجود در طراحان از مورد شناخت و طراحان علی و از و قرار لازم افزارها راهکارها شرایط پیشرو رایانه گیرد متخصصان وزمان مجله می استsچاپگرها داشت که ابزارهای از موجود خلاقی کردsدر دستاوردهای و تکنولوژی چاپ زبان','2022-10-19',1,9),(8,'خاطره اول','متن آزمایشی','2022-11-15',0,4),(9,'تستی','متن تستی','2022-11-15',0,6);
/*!40000 ALTER TABLE `t_meomry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_meomrygallery`
--

DROP TABLE IF EXISTS `t_meomrygallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_meomrygallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_image_name` varchar(100) NOT NULL,
  `memory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_meomrygallery_memory_id_812ef95f_fk_t_meomry_id` (`memory_id`),
  CONSTRAINT `t_meomrygallery_memory_id_812ef95f_fk_t_meomry_id` FOREIGN KEY (`memory_id`) REFERENCES `t_meomry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_meomrygallery`
--

LOCK TABLES `t_meomrygallery` WRITE;
/*!40000 ALTER TABLE `t_meomrygallery` DISABLE KEYS */;
INSERT INTO `t_meomrygallery` VALUES (1,'images/memory/خاطره اول/gallery/area1.jpg',1),(2,'images/memory/خاطره اول/gallery/area2.jpg',1),(3,'images/memory/خاطره اول/gallery/area3.jpg',1),(4,'images/memory/خاطره دوم/gallery/area4.jpg',2),(5,'images/memory/خاطره دوم/gallery/area5.jpg',2),(6,'images/memory/خاطره سوم/gallery/area6.jpg',3),(7,'images/memory/خاطره سوم/gallery/area7.jpg',3),(8,'images/memory/خاطره سوم/gallery/area8.jpg',3),(9,'images/memory/خاطره سوم/gallery/area9.jpg',3),(10,'images/memory/خاطره چهارم/gallery/area10.jpg',4),(11,'images/memory/خاطره چهارم/gallery/area11.jpg',4),(12,'images/memory/خاطره پنجم/gallery/area13.jpg',5),(13,'images/memory/خاطره پنجم/gallery/area14.jpg',5),(14,'images/memory/خاطره ششم/gallery/meusume.jpg',6),(15,'images/memory/خاطره ششم/gallery/Museum1.jpg',6),(16,'images/memory/خاطره ششم/gallery/Museum7.jpg',6),(17,'images/memory/خاطره ششم/gallery/Museum10.jpg',6),(20,'images/memory/خاطره اول/gallery/Wallpaper_Mix_2017.03_-_02_2.jpg',8),(21,'images/memory/تستی/gallery/Wallpaper_Mix_2017.03_-_01_2.jpg',9);
/*!40000 ALTER TABLE `t_meomrygallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_meomrylike`
--

DROP TABLE IF EXISTS `t_meomrylike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_meomrylike` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memory_id` bigint DEFAULT NULL,
  `user_liked_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_meomrylike_memory_id_655f1d05_fk_t_meomry_id` (`memory_id`),
  KEY `t_meomrylike_user_liked_id_f3bdc664_fk_auth_user_id` (`user_liked_id`),
  CONSTRAINT `t_meomrylike_memory_id_655f1d05_fk_t_meomry_id` FOREIGN KEY (`memory_id`) REFERENCES `t_meomry` (`id`),
  CONSTRAINT `t_meomrylike_user_liked_id_f3bdc664_fk_auth_user_id` FOREIGN KEY (`user_liked_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_meomrylike`
--

LOCK TABLES `t_meomrylike` WRITE;
/*!40000 ALTER TABLE `t_meomrylike` DISABLE KEYS */;
INSERT INTO `t_meomrylike` VALUES (1,1,6),(2,2,6),(3,1,4),(4,2,4),(5,3,4),(6,4,4),(7,2,9),(8,1,8),(9,4,8),(10,6,8),(11,2,8),(12,1,1),(13,4,1),(14,3,8),(15,5,1),(16,4,3),(17,5,3),(18,5,4);
/*!40000 ALTER TABLE `t_meomrylike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` VALUES (1,'امید','omid@yahoo.com','','پیام تستی',0,'2022-09-02 18:18:25.832147'),(2,'امید حامدسیدحسینی','omid.iipa75@gmail.com','تشکر شماره 2','از سایت بسیار خوبتون نهایت تشور را دارم و بسیار بسیار خوشحالم که با همچین وب سایتی آشنا شدم',0,'2022-09-02 18:34:01.000000'),(3,'علی رضایی','ali@yahoo.com','','پیام تستی شماره 3پیام تستی شماره 3پیام تستی شماره 3پیام تستی شماره 3پیام تستی شماره 3پیام تستی شماره 3پیام تستی شماره 3',0,'2022-09-02 18:35:57.747742'),(4,'عباس احمدی','ahmadi@yahoo.com','تست شماره 4','پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4 پیام تستی شماره 4',1,'2022-09-02 18:37:36.000000'),(5,'امید اقا','omidagha@yahoo.com','پیام تستی 5','این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است',0,'2022-09-02 18:49:43.779254'),(6,'امید خان','omid.iipa75@gmail.com','پیام تستی شماره 6','این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است این یک پیام آزمایشی شماره 5 است',0,'2022-09-02 18:51:21.762183'),(7,'skad','sada@yahoo.com','ada','jndkasdkasda',0,'2022-09-02 21:28:40.295410'),(8,'علیرضا','alireza_ashkani01@yahoo.com','تشکر','ممنون از سایت خوبتون',1,'2022-09-06 19:10:26.000000'),(9,'hdjhd','omid.iipa75@gmail.com','asas','asasassa',0,'2022-09-23 16:33:30.927949'),(10,'omid','omid.iipa75@gmail.com','tashakor','sepase faravan',0,'2022-10-08 20:32:45.084199'),(11,'reza rezae','omid.iipa75@gmail.com','jhfhfg','gghfhyfryrfty',0,'2022-10-09 20:52:47.561584'),(12,'dqdsa','omid.iipa75@gmail.com','تشکر شماره 2','asdasdas',0,'2022-10-09 21:10:01.874500'),(13,'sax','ali@yahoo.com','zx','zx',0,'2022-10-09 21:13:52.136985'),(14,'dqdsa','omid.iipa75@gmail.com','تشکر','ghfhgf',0,'2022-10-09 21:14:17.987756'),(15,'علی حسینی','ali@yahoo.com','salam','این یک متن آزمایشی است',0,'2022-11-15 19:36:50.727415'),(16,'علی','ali@yahoo.com','تستی','متن تستی',0,'2022-11-15 19:51:48.286854');
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_place`
--

DROP TABLE IF EXISTS `t_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_place` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `place_name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `place_image_name` varchar(100) NOT NULL,
  `visit_date_day` varchar(200) NOT NULL,
  `visit_time` varchar(200) NOT NULL,
  `Terms_Conditions` longtext NOT NULL,
  `more_information` longtext,
  `register_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_place`
--

LOCK TABLES `t_place` WRITE;
/*!40000 ALTER TABLE `t_place` DISABLE KEYS */;
INSERT INTO `t_place` VALUES (1,'موزه باغ فردوس','موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس موزه باغ فردوس .','photos/Place_image/7106cf9c-703a-4a18-beea-16db18ded7d3.jpg','شنبه تا پنج شنبه','ساعت 3 تا 6','قوانین و مقرارات موزه باغ فردوس  قوانین و مقرارات موزه باغ فردوس   رقوانین و مقرارات موزه باغ فردوس قوانین و مقرارات موزه باغ فردوس قوانین و مقرارات موزه باغ فردوس قوانین و مقرارات موزه باغ فردوس','یکسری اطلاعات','2022-08-31 18:27:55.000000'),(2,'مکان آزمایشی 1','مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1مکان آزمایشی 1','photos/Place_image/7abfef28-12a6-409b-8693-9bd674973b62.jpg','شنبه تا پنج شنبه','ساعت 12 تا 3','قوانین آزمایشی  قوانین آزمایشی قوانین آزمایشی قوانین آزمایشی قوانین آزمایشی قوانین آزمایشی قوانین آزمایشی','اطلاعات بیشتر برای مکان آزمایشی','2022-08-31 18:30:47.000000');
/*!40000 ALTER TABLE `t_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_price_ticket`
--

DROP TABLE IF EXISTS `t_price_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_price_ticket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  `place_id` bigint NOT NULL,
  `visitor_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_price_ticket_place_id_eff45331_fk_t_place_id` (`place_id`),
  KEY `t_price_ticket_visitor_type_id_2be685d0_fk_t_visitor_type_id` (`visitor_type_id`),
  CONSTRAINT `t_price_ticket_place_id_eff45331_fk_t_place_id` FOREIGN KEY (`place_id`) REFERENCES `t_place` (`id`),
  CONSTRAINT `t_price_ticket_visitor_type_id_2be685d0_fk_t_visitor_type_id` FOREIGN KEY (`visitor_type_id`) REFERENCES `t_visitor_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_price_ticket`
--

LOCK TABLES `t_price_ticket` WRITE;
/*!40000 ALTER TABLE `t_price_ticket` DISABLE KEYS */;
INSERT INTO `t_price_ticket` VALUES (1,10000,2,3),(2,12000,1,3),(3,15000,1,2),(5,20000,1,1),(6,25000,2,1),(7,40000,2,2);
/*!40000 ALTER TABLE `t_price_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_visitor_type`
--

DROP TABLE IF EXISTS `t_visitor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_visitor_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_visitor_type`
--

LOCK TABLES `t_visitor_type` WRITE;
/*!40000 ALTER TABLE `t_visitor_type` DISABLE KEYS */;
INSERT INTO `t_visitor_type` VALUES (1,'عمومی'),(2,'گروهی'),(3,'خارجی');
/*!40000 ALTER TABLE `t_visitor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshop`
--

DROP TABLE IF EXISTS `t_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `places` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `information` longtext NOT NULL,
  `registration` longtext NOT NULL,
  `report_text` longtext,
  `view_number` int NOT NULL,
  `register_date` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_workshop_status_id_5af160b8_fk_t_workshopstatus_status_code` (`status_id`),
  CONSTRAINT `t_workshop_status_id_5af160b8_fk_t_workshopstatus_status_code` FOREIGN KEY (`status_id`) REFERENCES `t_workshopstatus` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshop`
--

LOCK TABLES `t_workshop` WRITE;
/*!40000 ALTER TABLE `t_workshop` DISABLE KEYS */;
INSERT INTO `t_workshop` VALUES (1,'کارگاه آزمایشی اول','images/workshops/workshop1.jpg','2022-10-31 15:19:55.000000','ضلع شمالی','محمدامین سعدی','اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول اطلاعات کارگاه آزمایشی اول .','لطفا حضوری مراجعه فرماید','',0,'2022-10-08 18:49:34.000000',1,1),(2,'کارگاه آزمایشی دوم','images/workshops/workshop2.jpg','2022-10-02 12:00:00.000000','ضلع غربی','عباس محمدی','کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم کارگاه آزمایشی دوم .','لطفا حضوری مراجعه فرمایید','',0,'2022-10-08 18:51:04.000000',1,2),(3,'کارگاه آزمایشی سوم','images/workshops/workshop3.jpg','2022-09-13 11:30:00.000000','ضلع شرقی','مهرسا بابکی','کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم کارگاه آزمایشی سوم .','لطفا حضوری مراجعه فرمایید','این کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.\r\nاین کارگاه در تاریخ ذکر شده در این پست برگزار شده است.',71,'2022-10-08 18:52:33.000000',1,3),(4,'کارگاه آزمایشی چهارم','images/workshops/workshop4.jpg','2022-09-29 18:00:00.000000','ضلع جنوبی','نازنین اکبری','کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم کارگاه آزمایشی چهارم  .','لطفا حضوری مراجعه فرمایید','',0,'2022-10-08 18:54:48.000000',0,4);
/*!40000 ALTER TABLE `t_workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshopgallery`
--

DROP TABLE IF EXISTS `t_workshopgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshopgallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `workshop_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_workshopgallery_workshop_id_5d18b0be_fk_t_workshop_id` (`workshop_id`),
  CONSTRAINT `t_workshopgallery_workshop_id_5d18b0be_fk_t_workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `t_workshop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshopgallery`
--

LOCK TABLES `t_workshopgallery` WRITE;
/*!40000 ALTER TABLE `t_workshopgallery` DISABLE KEYS */;
INSERT INTO `t_workshopgallery` VALUES (2,'images/workshops/report/1/workshop_detail1_P109rzT.jpeg',1),(3,'images/workshops/report/2/workshop_detail2.jpeg',2),(4,'images/workshops/report/3/workshop_detail3.jpg',3),(5,'images/workshops/report/4/workshop_detail4.jpg',4);
/*!40000 ALTER TABLE `t_workshopgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_workshopstatus`
--

DROP TABLE IF EXISTS `t_workshopstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_workshopstatus` (
  `status_code` int NOT NULL,
  `status_title` varchar(50) NOT NULL,
  PRIMARY KEY (`status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_workshopstatus`
--

LOCK TABLES `t_workshopstatus` WRITE;
/*!40000 ALTER TABLE `t_workshopstatus` DISABLE KEYS */;
INSERT INTO `t_workshopstatus` VALUES (1,'برگزار نشده'),(2,'در حال برگزاری'),(3,'برگزار شده'),(4,'لغو شده');
/*!40000 ALTER TABLE `t_workshopstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 17:20:11
