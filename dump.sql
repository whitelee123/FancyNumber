-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `app01_admin`
--

DROP TABLE IF EXISTS `app01_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_admin`
--

LOCK TABLES `app01_admin` WRITE;
/*!40000 ALTER TABLE `app01_admin` DISABLE KEYS */;
INSERT INTO `app01_admin` VALUES (1,'admin','892c9508d092790a74a150432299fbf7');
/*!40000 ALTER TABLE `app01_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_boss`
--

DROP TABLE IF EXISTS `app01_boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_boss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int NOT NULL,
  `img` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_boss`
--

LOCK TABLES `app01_boss` WRITE;
/*!40000 ALTER TABLE `app01_boss` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_city`
--

DROP TABLE IF EXISTS `app01_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `count` int NOT NULL,
  `img` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_city`
--

LOCK TABLES `app01_city` WRITE;
/*!40000 ALTER TABLE `app01_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_department`
--

DROP TABLE IF EXISTS `app01_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_department`
--

LOCK TABLES `app01_department` WRITE;
/*!40000 ALTER TABLE `app01_department` DISABLE KEYS */;
INSERT INTO `app01_department` VALUES (1,'IT department');
/*!40000 ALTER TABLE `app01_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_order`
--

DROP TABLE IF EXISTS `app01_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `oid` varchar(64) NOT NULL,
  `title` varchar(32) NOT NULL,
  `price` int NOT NULL,
  `status` smallint NOT NULL,
  `admin_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_order_admin_id_06590413_fk_app01_admin_id` (`admin_id`),
  CONSTRAINT `app01_order_admin_id_06590413_fk_app01_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `app01_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_order`
--

LOCK TABLES `app01_order` WRITE;
/*!40000 ALTER TABLE `app01_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_prettynum`
--

DROP TABLE IF EXISTS `app01_prettynum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_prettynum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `price` int NOT NULL,
  `level` smallint NOT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_prettynum`
--

LOCK TABLES `app01_prettynum` WRITE;
/*!40000 ALTER TABLE `app01_prettynum` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_prettynum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_task`
--

DROP TABLE IF EXISTS `app01_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL,
  `title` varchar(64) NOT NULL,
  `detail` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_task_user_id_93daa16a_fk_app01_admin_id` (`user_id`),
  CONSTRAINT `app01_task_user_id_93daa16a_fk_app01_admin_id` FOREIGN KEY (`user_id`) REFERENCES `app01_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_task`
--

LOCK TABLES `app01_task` WRITE;
/*!40000 ALTER TABLE `app01_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_userinfo`
--

DROP TABLE IF EXISTS `app01_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_userinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `age` int NOT NULL,
  `account` decimal(10,2) NOT NULL,
  `create_time` date NOT NULL,
  `gender` smallint NOT NULL,
  `depart_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` (`depart_id`),
  CONSTRAINT `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` FOREIGN KEY (`depart_id`) REFERENCES `app01_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_userinfo`
--

LOCK TABLES `app01_userinfo` WRITE;
/*!40000 ALTER TABLE `app01_userinfo` DISABLE KEYS */;
INSERT INTO `app01_userinfo` VALUES (1,'zhangsan','123456',26,200.00,'2017-02-08',1,1);
/*!40000 ALTER TABLE `app01_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app01_xx`
--

DROP TABLE IF EXISTS `app01_xx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app01_xx` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app01_xx`
--

LOCK TABLES `app01_xx` WRITE;
/*!40000 ALTER TABLE `app01_xx` DISABLE KEYS */;
/*!40000 ALTER TABLE `app01_xx` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add user info',8,'add_userinfo'),(30,'Can change user info',8,'change_userinfo'),(31,'Can delete user info',8,'delete_userinfo'),(32,'Can view user info',8,'view_userinfo'),(33,'Can add pretty num',9,'add_prettynum'),(34,'Can change pretty num',9,'change_prettynum'),(35,'Can delete pretty num',9,'delete_prettynum'),(36,'Can view pretty num',9,'view_prettynum'),(37,'Can add admin',10,'add_admin'),(38,'Can change admin',10,'change_admin'),(39,'Can delete admin',10,'delete_admin'),(40,'Can view admin',10,'view_admin'),(41,'Can add task',11,'add_task'),(42,'Can change task',11,'change_task'),(43,'Can delete task',11,'delete_task'),(44,'Can view task',11,'view_task'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add xx',13,'add_xx'),(50,'Can change xx',13,'change_xx'),(51,'Can delete xx',13,'delete_xx'),(52,'Can view xx',13,'view_xx'),(53,'Can add boss',14,'add_boss'),(54,'Can change boss',14,'change_boss'),(55,'Can delete boss',14,'delete_boss'),(56,'Can view boss',14,'view_boss'),(57,'Can add city',15,'add_city'),(58,'Can change city',15,'change_city'),(59,'Can delete city',15,'delete_city'),(60,'Can view city',15,'view_city');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app01','admin'),(14,'app01','boss'),(15,'app01','city'),(7,'app01','department'),(12,'app01','order'),(9,'app01','prettynum'),(11,'app01','task'),(8,'app01','userinfo'),(13,'app01','xx'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-29 22:54:15.297767'),(2,'auth','0001_initial','2023-09-29 22:54:16.482279'),(3,'admin','0001_initial','2023-09-29 22:54:16.787573'),(4,'admin','0002_logentry_remove_auto_add','2023-09-29 22:54:16.807732'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-29 22:54:16.831646'),(6,'app01','0001_initial','2023-09-29 22:54:17.044788'),(7,'app01','0002_auto_20211126_0115','2023-09-29 22:54:17.169298'),(8,'app01','0003_prettynum','2023-09-29 22:54:17.242480'),(9,'app01','0004_admin','2023-09-29 22:54:17.299188'),(10,'app01','0005_task','2023-09-29 22:54:17.463335'),(11,'app01','0006_order','2023-09-29 22:54:17.627213'),(12,'app01','0007_xx','2023-09-29 22:54:17.685048'),(13,'app01','0008_auto_20211130_0828','2023-09-29 22:54:17.750047'),(14,'app01','0009_city','2023-09-29 22:54:17.815945'),(15,'contenttypes','0002_remove_content_type_name','2023-09-29 22:54:18.008280'),(16,'auth','0002_alter_permission_name_max_length','2023-09-29 22:54:18.151222'),(17,'auth','0003_alter_user_email_max_length','2023-09-29 22:54:18.217162'),(18,'auth','0004_alter_user_username_opts','2023-09-29 22:54:18.238822'),(19,'auth','0005_alter_user_last_login_null','2023-09-29 22:54:18.375363'),(20,'auth','0006_require_contenttypes_0002','2023-09-29 22:54:18.391251'),(21,'auth','0007_alter_validators_add_error_messages','2023-09-29 22:54:18.412287'),(22,'auth','0008_alter_user_username_max_length','2023-09-29 22:54:18.556749'),(23,'auth','0009_alter_user_last_name_max_length','2023-09-29 22:54:18.699443'),(24,'auth','0010_alter_group_name_max_length','2023-09-29 22:54:18.752729'),(25,'auth','0011_update_proxy_permissions','2023-09-29 22:54:18.791657'),(26,'auth','0012_alter_user_first_name_max_length','2023-09-29 22:54:18.938980'),(27,'sessions','0001_initial','2023-09-29 22:54:19.037437');
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
INSERT INTO `django_session` VALUES ('0eakjf0l9vx0cx4ege07jzl5jtxfmagi','eyJpbWFnZV9jb2RlIjoiWVRXQkUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwNDgwMCwiaW5mbyI6eyJpZCI6MSwibmFtZSI6ImFkbWluIn19:1qmMeK:YkVl8NR_BsQf7OPncJViaAXax_84t2lojSroUTXQl5o','2023-10-06 23:11:56.541629'),('6m8xx20x5era3jhhe7zx3svnjizgobwx','eyJpbWFnZV9jb2RlIjoiR01VREQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1qmMNs:qRfeGdX9VyVpo_aForK3hingspre-G-oEYX2WAdAfhI','2023-09-29 22:55:56.007845'),('gwgk25q42t18zfwm2r1uqampmgstajy3','eyJpbWFnZV9jb2RlIjoiTEVMR1IiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1qmMab:tDVU5EhW5gp__roY0i_CVKqIoDTQSwtt_kty69r0J4o','2023-09-29 23:09:05.985704');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-29 23:15:24
