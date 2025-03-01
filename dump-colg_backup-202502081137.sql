-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: colg_backup
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `PopUpData_popupdata`
--

DROP TABLE IF EXISTS `PopUpData_popupdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PopUpData_popupdata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pop_up_desc` varchar(1000) NOT NULL,
  `pop_up_link` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PopUpData_popupdata`
--

LOCK TABLES `PopUpData_popupdata` WRITE;
/*!40000 ALTER TABLE `PopUpData_popupdata` DISABLE KEYS */;
INSERT INTO `PopUpData_popupdata` VALUES (1,'Admission merit list schedule is uploaded on website.','<p>ABCDEFGHIJKLMNOPQRSTP</p>','2024-12-01 18:39:16.500179','in_active');
/*!40000 ALTER TABLE `PopUpData_popupdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_about`
--

DROP TABLE IF EXISTS `about_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `about_about_user_id_id_49949e26_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `about_about_user_id_id_49949e26_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_about`
--

LOCK TABLES `about_about` WRITE;
/*!40000 ALTER TABLE `about_about` DISABLE KEYS */;
INSERT INTO `about_about` VALUES (1,'About','<p>The college is situated behind Kanal Rest House on Sargodha Road near District Courts in Sheikhupura. This modern institute that is comprehensive and all encompassing, has been imparting education to the residents of Sheikhupura since 1959. Its journey began on 11th August 1959 as Degree College for which the government reserved 376 kanal land. However, the government merged the inter college in the degree college in 1971. After the merger, the inter college building was reserved for Govt. Girls College. A splendid building was constructed later on, on the land reserved for Govt. Degree College. The college is central in location with beautiful trees all around. The spacious building is covered with fabulous meadows and large play grounds add to its beauty. All adds to educational and literary environment which is a great advantage to the students. Besides, the laboratories are well-equipped with scientific tools and required materials. Last but not least is the presence of a spacious hostel and a masjid. The college serves the students of Sheikhupura city and its suburbs in the best possible manner. The educational standard is quite high and co-curricular activities / sports are an integral part of the academic year. There is an active sports board which works for the promotion of sports. Moreover, there are various notable societies which provide an appropriate platform for literary activities. The college is affiliated with BISE Lahore for Intermediate / HSSC and for degree classes Punjab University serves the purpose. Masters level classes began in 1998 which have been suspended for BS 4-Years Program has been launched in 10 subjects. This BS 4-Years Program is affiliated with Punjab University for which 50 seats are allotted in the beginning. Admission is purely on merit-base. The faculty renowned in the fields of science and literature is doing worth-mentioning efforts in imparting education in the respective fields. A large number of graduates of this college have been serving the nation in different departments for years.</p>','2024-11-12 05:33:15.565106',1);
/*!40000 ALTER TABLE `about_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissionDetails_admissionschedule`
--

DROP TABLE IF EXISTS `admissionDetails_admissionschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissionDetails_admissionschedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `admission_detail` varchar(255) NOT NULL,
  `note` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admissionDetails_adm_user_id_id_eff9eac1_fk_users_use` (`user_id_id`),
  CONSTRAINT `admissionDetails_adm_user_id_id_eff9eac1_fk_users_use` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissionDetails_admissionschedule`
--

LOCK TABLES `admissionDetails_admissionschedule` WRITE;
/*!40000 ALTER TABLE `admissionDetails_admissionschedule` DISABLE KEYS */;
INSERT INTO `admissionDetails_admissionschedule` VALUES (1,'BS & ADP Schedule Fall 2021','Admission Portal Opening on Website','<p>&nbsp;</p>\r\n<h2>NOTE :</h2>\r\n<ol>\r\n<li>Failure to attend the interview on the due date and time or failure to submit the fee will result in termination of admission.</li>\r\n<li>Bring the original and two certified copies of the following documents in file cover at the time of the interview.</li>\r\n</ol>\r\n<ul>\r\n<li>Matric Result Card - 2 Copies</li>\r\n<li>Inter Result Card -2 Copies</li>\r\n</ul>','2024-11-17 11:13:54.086201','Morning',1),(2,'BS & ADP Schedule Fall 2021','Admission Portal Opening on Website','<h2>Note :&nbsp;</h2>\r\n<ul>\r\n<li>Failure to attend the interview on the due date and time or failure&nbsp; to submit the fee will result in termination of admission.</li>\r\n<li>Bring the original and two certfied copies of the following documents in file cover at the time of the interview.</li>\r\n<li>Inter Result Card - 2 Copies</li>\r\n<li>Inter Result Card - 2 Copies</li>\r\n</ul>','2024-11-17 11:18:39.758001','Evening',1);
/*!40000 ALTER TABLE `admissionDetails_admissionschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissionPolicy_admissionpolicy`
--

DROP TABLE IF EXISTS `admissionPolicy_admissionpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissionPolicy_admissionpolicy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `coursegroup_id` bigint DEFAULT NULL,
  `program_id` bigint DEFAULT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admissionPolicy_admi_coursegroup_id_31ae97eb_fk_coursegro` (`coursegroup_id`),
  KEY `admissionPolicy_admi_program_id_c678d930_fk_offered_p` (`program_id`),
  KEY `admissionPolicy_admi_user_id_id_ac725907_fk_users_use` (`user_id_id`),
  CONSTRAINT `admissionPolicy_admi_coursegroup_id_31ae97eb_fk_coursegro` FOREIGN KEY (`coursegroup_id`) REFERENCES `coursegroup_coursegroup` (`id`),
  CONSTRAINT `admissionPolicy_admi_program_id_c678d930_fk_offered_p` FOREIGN KEY (`program_id`) REFERENCES `offered_program_programs` (`id`),
  CONSTRAINT `admissionPolicy_admi_user_id_id_ac725907_fk_users_use` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissionPolicy_admissionpolicy`
--

LOCK TABLES `admissionPolicy_admissionpolicy` WRITE;
/*!40000 ALTER TABLE `admissionPolicy_admissionpolicy` DISABLE KEYS */;
INSERT INTO `admissionPolicy_admissionpolicy` VALUES (1,'<ul>\r\n<li>Mathematics, Chemistry, Physics</li>\r\n</ul>','2024-11-17 11:27:12.224443','Evening',2,NULL,1),(2,'<ul>\r\n<li>Biology, Physics, Chemistry</li>\r\n</ul>','2024-11-17 11:28:19.736588','Evening',1,NULL,1),(3,'<ul>\r\n<li>Biology, Physics, Chemistry</li>\r\n</ul>','2024-11-17 11:29:31.296557','Morning',1,NULL,1),(4,'<ul>\r\n<li>Mathematics, Chemistry, Physics</li>\r\n</ul>','2024-11-17 11:30:33.592925','Morning',2,NULL,1),(5,'<p style=\"text-align: left;\"><strong>Part | &amp; Part ||</strong><br>&nbsp;<br>Business Math Stat<br>Computer<br>Ecnomics<br>Functional English<br>Financial<br>Introduction to Busniess&nbsp;<br>Money , Banking, Finance<br>Islamiyat&nbsp;</p>','2024-11-17 11:33:57.115481','General',NULL,NULL,1);
/*!40000 ALTER TABLE `admissionPolicy_admissionpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissionStatus_admissionstatus`
--

DROP TABLE IF EXISTS `admissionStatus_admissionstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissionStatus_admissionstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissionStatus_admissionstatus`
--

LOCK TABLES `admissionStatus_admissionstatus` WRITE;
/*!40000 ALTER TABLE `admissionStatus_admissionstatus` DISABLE KEYS */;
INSERT INTO `admissionStatus_admissionstatus` VALUES (2,'2024-11-12 05:39:31.606911','Active');
/*!40000 ALTER TABLE `admissionStatus_admissionstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applyOnlineStep_applyonline`
--

DROP TABLE IF EXISTS `applyOnlineStep_applyonline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applyOnlineStep_applyonline` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `applyOnlineStep_applyonline_user_id_id_f7a677d4_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `applyOnlineStep_applyonline_user_id_id_f7a677d4_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyOnlineStep_applyonline`
--

LOCK TABLES `applyOnlineStep_applyonline` WRITE;
/*!40000 ALTER TABLE `applyOnlineStep_applyonline` DISABLE KEYS */;
INSERT INTO `applyOnlineStep_applyonline` VALUES (1,'How Apply Online','<p>To apply online for admission, please see the following step by step guide. In case of any difficulty, you may contact college office, through contact numbers mentioned at our website as well as our social media platforms.</p>','','2024-12-01 18:20:45.786292',1),(2,'Step 1','<p>Open college website in your latest web browser (e.g. chrome, firefox, safari etc) and click on the <strong>apply online</strong>. Following screen will appear. Fllow the instruction fill out the correct and complete information , then click <strong>next </strong>to move to next step 2&nbsp;</p>','common_images/WhatsApp_Image_2024-12-01_at_11.11.28_PM.jpeg','2024-12-01 18:28:13.988615',1),(3,'Step 2','<p>Fllow the instruction fill out the correct and complete information , then click <strong>submit&nbsp;</strong>to move to next step 3</p>','common_images/WhatsApp_Image_2024-12-01_at_11.11.29_PM2.jpeg','2024-12-01 18:29:59.715840',1),(4,'Step 3','<p>Fllow the instruction fill out the correct and complete information , then click&nbsp;<strong>next&nbsp;</strong>to move to next step 3&nbsp;</p>','common_images/WhatsApp_Image_2024-12-01_at_11_xUIMFKH.11.29_PM.jpeg','2024-12-01 18:31:41.774849',1),(5,'Step 4','<p>Fllow the instruction fill out the correct and complete information , then click apply and view application</p>','common_images/WhatsApp_Image_2024-12-01_at_11.11.29_PM3.jpeg','2024-12-01 18:35:49.852358',1),(6,'Important Instructions','<p>Following are the rules for online admission.</p>\r\n<ul class=\"list-style-auto margin-bottom-30\">\r\n<li>Candidates are required to apply ONLINE only.Applications other than ONLINE, will not be accepted. Apply Now, don\'t wait for the last date.</li>\r\n<li>Each discipline\'s Processing Fee and Admission Fee is separate.</li>\r\n<li>Transfer of Discipline is not permissible.</li>\r\n<li>All mendatory fields in admission form must be filled.False Data found at any time will lead to cancellation of admssion / degree and Disciplinary False Data found at any time will lead to cancellation of admssion / degree and Disciplinary</li>\r\n<li>Attested copies of recent educational certifictes will be submitted at the time of interview.</li>\r\n<li>The Picture of candidate must be with White background for Intermediate and Light Blue for BS &amp; Associate Degree</li>\r\n<li>Original Educational documents are to be produced before admission committee at the time of admission interview.</li>\r\n<li>After the Due date of Admission / Fee Submission, Candidate\'s right for admission will be cosidered null and void.</li>\r\n</ul>','','2024-12-01 18:38:10.602490',1);
/*!40000 ALTER TABLE `applyOnlineStep_applyonline` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add content type',3,'add_contenttype'),(10,'Can change content type',3,'change_contenttype'),(11,'Can delete content type',3,'delete_contenttype'),(12,'Can view content type',3,'view_contenttype'),(13,'Can add session',4,'add_session'),(14,'Can change session',4,'change_session'),(15,'Can delete session',4,'delete_session'),(16,'Can view session',4,'view_session'),(17,'Can add site',5,'add_site'),(18,'Can change site',5,'change_site'),(19,'Can delete site',5,'delete_site'),(20,'Can view site',5,'view_site'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add slider',8,'add_slider'),(30,'Can change slider',8,'change_slider'),(31,'Can delete slider',8,'delete_slider'),(32,'Can view slider',8,'view_slider'),(33,'Can add department',9,'add_department'),(34,'Can change department',9,'change_department'),(35,'Can delete department',9,'delete_department'),(36,'Can view department',9,'view_department'),(37,'Can add news',10,'add_news'),(38,'Can change news',10,'change_news'),(39,'Can delete news',10,'delete_news'),(40,'Can view news',10,'view_news'),(41,'Can add programs',11,'add_programs'),(42,'Can change programs',11,'change_programs'),(43,'Can delete programs',11,'delete_programs'),(44,'Can view programs',11,'view_programs'),(45,'Can add reviews',12,'add_reviews'),(46,'Can change reviews',12,'change_reviews'),(47,'Can delete reviews',12,'delete_reviews'),(48,'Can view reviews',12,'view_reviews'),(49,'Can add course group',13,'add_coursegroup'),(50,'Can change course group',13,'change_coursegroup'),(51,'Can delete course group',13,'delete_coursegroup'),(52,'Can view course group',13,'view_coursegroup'),(53,'Can add faculty record',14,'add_facultyrecord'),(54,'Can change faculty record',14,'change_facultyrecord'),(55,'Can delete faculty record',14,'delete_facultyrecord'),(56,'Can view faculty record',14,'view_facultyrecord'),(57,'Can add team member',15,'add_teammember'),(58,'Can change team member',15,'change_teammember'),(59,'Can delete team member',15,'delete_teammember'),(60,'Can view team member',15,'view_teammember'),(61,'Can add about',16,'add_about'),(62,'Can change about',16,'change_about'),(63,'Can delete about',16,'delete_about'),(64,'Can view about',16,'view_about'),(65,'Can add apply online',17,'add_applyonline'),(66,'Can change apply online',17,'change_applyonline'),(67,'Can delete apply online',17,'delete_applyonline'),(68,'Can view apply online',17,'view_applyonline'),(69,'Can add admission policy',18,'add_admissionpolicy'),(70,'Can change admission policy',18,'change_admissionpolicy'),(71,'Can delete admission policy',18,'delete_admissionpolicy'),(72,'Can view admission policy',18,'view_admissionpolicy'),(73,'Can add colg event',19,'add_colgevent'),(74,'Can change colg event',19,'change_colgevent'),(75,'Can delete colg event',19,'delete_colgevent'),(76,'Can view colg event',19,'view_colgevent'),(77,'Can add event item image',20,'add_eventitemimage'),(78,'Can change event item image',20,'change_eventitemimage'),(79,'Can delete event item image',20,'delete_eventitemimage'),(80,'Can view event item image',20,'view_eventitemimage'),(81,'Can add event item',21,'add_eventitem'),(82,'Can change event item',21,'change_eventitem'),(83,'Can delete event item',21,'delete_eventitem'),(84,'Can view event item',21,'view_eventitem'),(85,'Can add admission schedule',22,'add_admissionschedule'),(86,'Can change admission schedule',22,'change_admissionschedule'),(87,'Can delete admission schedule',22,'delete_admissionschedule'),(88,'Can view admission schedule',22,'view_admissionschedule'),(89,'Can add merit list',23,'add_meritlist'),(90,'Can change merit list',23,'change_meritlist'),(91,'Can delete merit list',23,'delete_meritlist'),(92,'Can view merit list',23,'view_meritlist'),(93,'Can add download',24,'add_download'),(94,'Can change download',24,'change_download'),(95,'Can delete download',24,'delete_download'),(96,'Can view download',24,'view_download'),(97,'Can add admission instruction',25,'add_admissioninstruction'),(98,'Can change admission instruction',25,'change_admissioninstruction'),(99,'Can delete admission instruction',25,'delete_admissioninstruction'),(100,'Can view admission instruction',25,'view_admissioninstruction'),(101,'Can add country',26,'add_country'),(102,'Can change country',26,'change_country'),(103,'Can delete country',26,'delete_country'),(104,'Can view country',26,'view_country'),(105,'Can add form data',27,'add_formdata'),(106,'Can change form data',27,'change_formdata'),(107,'Can delete form data',27,'delete_formdata'),(108,'Can view form data',27,'view_formdata'),(109,'Can add subject',28,'add_subject'),(110,'Can change subject',28,'change_subject'),(111,'Can delete subject',28,'delete_subject'),(112,'Can view subject',28,'view_subject'),(113,'Can add student',29,'add_student'),(114,'Can change student',29,'change_student'),(115,'Can delete student',29,'delete_student'),(116,'Can view student',29,'view_student'),(117,'Can add application',30,'add_application'),(118,'Can change application',30,'change_application'),(119,'Can delete application',30,'delete_application'),(120,'Can view application',30,'view_application'),(121,'Can add registered student',31,'add_registeredstudent'),(122,'Can change registered student',31,'change_registeredstudent'),(123,'Can delete registered student',31,'delete_registeredstudent'),(124,'Can view registered student',31,'view_registeredstudent'),(125,'Can add admission status',32,'add_admissionstatus'),(126,'Can change admission status',32,'change_admissionstatus'),(127,'Can delete admission status',32,'delete_admissionstatus'),(128,'Can view admission status',32,'view_admissionstatus'),(129,'Can add pop up data',33,'add_popupdata'),(130,'Can change pop up data',33,'change_popupdata'),(131,'Can delete pop up data',33,'delete_popupdata'),(132,'Can view pop up data',33,'view_popupdata'),(133,'Can add colg logo',34,'add_colglogo'),(134,'Can change colg logo',34,'change_colglogo'),(135,'Can delete colg logo',34,'delete_colglogo'),(136,'Can view colg logo',34,'view_colglogo'),(137,'Can add prospectus fee',35,'add_prospectusfee'),(138,'Can change prospectus fee',35,'change_prospectusfee'),(139,'Can delete prospectus fee',35,'delete_prospectusfee'),(140,'Can view prospectus fee',35,'view_prospectusfee'),(141,'Can add district',36,'add_district'),(142,'Can change district',36,'change_district'),(143,'Can delete district',36,'delete_district'),(144,'Can view district',36,'view_district'),(145,'Can add province',37,'add_province'),(146,'Can change province',37,'change_province'),(147,'Can delete province',37,'delete_province'),(148,'Can view province',37,'view_province'),(149,'Can add academic record',27,'add_academicrecord'),(150,'Can change academic record',27,'change_academicrecord'),(151,'Can delete academic record',27,'delete_academicrecord'),(152,'Can view academic record',27,'view_academicrecord');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colgLogo_colglogo`
--

DROP TABLE IF EXISTS `colgLogo_colglogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colgLogo_colglogo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `colg_logo` varchar(2500) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colgLogo_colglogo`
--

LOCK TABLES `colgLogo_colglogo` WRITE;
/*!40000 ALTER TABLE `colgLogo_colglogo` DISABLE KEYS */;
INSERT INTO `colgLogo_colglogo` VALUES (1,'logo/college-logo_Yj0Jcs0.png','2024-11-12 05:35:20.993552');
/*!40000 ALTER TABLE `colgLogo_colglogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colgevent_colgevent`
--

DROP TABLE IF EXISTS `colgevent_colgevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colgevent_colgevent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `colgevent_colgevent_user_id_id_4f31ed8b_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `colgevent_colgevent_user_id_id_4f31ed8b_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colgevent_colgevent`
--

LOCK TABLES `colgevent_colgevent` WRITE;
/*!40000 ALTER TABLE `colgevent_colgevent` DISABLE KEYS */;
INSERT INTO `colgevent_colgevent` VALUES (1,'PLANT FOR PAKISTAN DAY ON THE AUGUST 7th, 2021','event_images/1_1_sMvUplx.jpg','2024-11-17 09:27:38.403551',1),(2,'PLANT FOR PAKISTAN DAY ON THE AUGUST 7th, 2021','event_images/event1_VIfPIJb.jpg','2024-11-17 10:36:15.278383',1);
/*!40000 ALTER TABLE `colgevent_colgevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursegroup_coursegroup`
--

DROP TABLE IF EXISTS `coursegroup_coursegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursegroup_coursegroup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `program_id_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coursegroup_coursegr_program_id_id_0eeb5406_fk_offered_p` (`program_id_id`),
  KEY `coursegroup_coursegroup_user_id_id_cc8303c7_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `coursegroup_coursegr_program_id_id_0eeb5406_fk_offered_p` FOREIGN KEY (`program_id_id`) REFERENCES `offered_program_programs` (`id`),
  CONSTRAINT `coursegroup_coursegroup_user_id_id_cc8303c7_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursegroup_coursegroup`
--

LOCK TABLES `coursegroup_coursegroup` WRITE;
/*!40000 ALTER TABLE `coursegroup_coursegroup` DISABLE KEYS */;
INSERT INTO `coursegroup_coursegroup` VALUES (1,'Fsc. Pre-Medical','<p>FSC Premedical has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:12:40.745522',1,1),(2,'Fsc. Pre-Engineering','<p>FSC Pre Medical has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:13:26.778729',1,1),(3,'Information Technology','<p>Information Technology has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:13:52.037265',3,1),(4,'Chemistry','<p>Chemistry has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:14:19.676212',3,1),(5,'Physics','<p>Physics has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:14:42.666713',3,1),(6,'B.Com','<p>B,Com has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:16:26.435619',2,1),(7,'English','<p>English has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:17:04.003755',4,1),(8,'M.Com','<p>M.Com has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:17:49.436644',4,1),(9,'BED','<p>BED has changed the face of the world with its various upcoming technologies in diverse fields of industry and education. Todays technological advancements require technology professionals, who can help companies to administer cutting edges technologies like Big Data, IoT and virtualization needs. The department of Information Technology is one of the oldest and biggest departments in the college with prestigious traditions.</p>','2024-11-12 16:18:21.853212',5,1);
/*!40000 ALTER TABLE `coursegroup_coursegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_department`
--

DROP TABLE IF EXISTS `department_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_department_user_id_id_50d3ac65_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `department_department_user_id_id_50d3ac65_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_department`
--

LOCK TABLES `department_department` WRITE;
/*!40000 ALTER TABLE `department_department` DISABLE KEYS */;
INSERT INTO `department_department` VALUES (1,'Chemistry','2024-11-14 15:36:55.590178',1),(2,'Mathematics','2024-11-14 15:37:08.273348',1),(3,'Physics','2024-11-14 15:37:23.532419',1),(4,'Computer Science','2024-11-14 15:37:32.750873',1),(5,'Ecnomics','2024-11-14 15:37:45.523970',1),(6,'Islamiyat','2024-11-14 15:37:55.313058',1),(7,'Political Science','2024-11-14 15:38:06.307459',1),(8,'Zoology','2024-11-14 15:38:21.404202',1),(9,'English','2024-11-14 15:38:31.626345',1),(10,'Urdu','2024-11-14 15:38:40.375564',1),(11,'Commerce','2024-11-14 15:38:51.891934',1),(12,'Principle','2024-11-14 15:39:03.113579',1);
/*!40000 ALTER TABLE `department_department` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-12 05:27:25.125430','1','Slider object (1)',1,'[{\"added\": {}}]',8,1),(2,'2024-11-12 05:29:18.313832','2','Slider object (2)',1,'[{\"added\": {}}]',8,1),(3,'2024-11-12 05:30:37.500909','3','Slider object (3)',1,'[{\"added\": {}}]',8,1),(4,'2024-11-12 05:33:15.566331','1','About object (1)',1,'[{\"added\": {}}]',16,1),(5,'2024-11-12 05:35:20.995377','1','ColgLogo object (1)',1,'[{\"added\": {}}]',34,1),(6,'2024-11-12 05:35:47.574728','1','ProspectusFee object (1)',1,'[{\"added\": {}}]',35,1),(7,'2024-11-12 05:39:31.588848','1','AdmissionStatus object (1)',1,'[{\"added\": {}}]',32,1),(8,'2024-11-12 05:39:31.608079','2','AdmissionStatus object (2)',1,'[{\"added\": {}}]',32,1),(9,'2024-11-12 05:40:00.581163','1','AdmissionStatus object (1)',3,'',32,1),(10,'2024-11-12 16:03:12.029203','1','Intermediate',1,'[{\"added\": {}}]',11,1),(11,'2024-11-12 16:05:14.639908','1','Intermediate',2,'[{\"changed\": {\"fields\": [\"Short description\"]}}]',11,1),(12,'2024-11-12 16:06:48.307843','2','ADP',1,'[{\"added\": {}}]',11,1),(13,'2024-11-12 16:08:13.191383','3','BS-4YDP',1,'[{\"added\": {}}]',11,1),(14,'2024-11-12 16:09:23.126936','4','BS-2YDP',1,'[{\"added\": {}}]',11,1),(15,'2024-11-12 16:10:35.485622','5','BED',1,'[{\"added\": {}}]',11,1),(16,'2024-11-12 16:12:40.746899','1','Fsc. Pre-Medical',1,'[{\"added\": {}}]',13,1),(17,'2024-11-12 16:13:26.779667','2','Fsc. Pre-Engineering',1,'[{\"added\": {}}]',13,1),(18,'2024-11-12 16:13:52.038121','3','Information Technology',1,'[{\"added\": {}}]',13,1),(19,'2024-11-12 16:14:19.677069','4','Chemistry',1,'[{\"added\": {}}]',13,1),(20,'2024-11-12 16:14:42.667673','5','Physics',1,'[{\"added\": {}}]',13,1),(21,'2024-11-12 16:16:26.436456','6','B.Com',1,'[{\"added\": {}}]',13,1),(22,'2024-11-12 16:17:04.004724','7','English',1,'[{\"added\": {}}]',13,1),(23,'2024-11-12 16:17:49.437599','8','M.Com',1,'[{\"added\": {}}]',13,1),(24,'2024-11-12 16:18:21.854089','9','BED',1,'[{\"added\": {}}]',13,1),(25,'2024-11-12 17:46:41.420270','1','District object (1)',1,'[{\"added\": {}}]',36,1),(26,'2024-11-12 17:47:08.676887','1','Province object (1)',1,'[{\"added\": {}}]',37,1),(27,'2024-11-14 15:05:19.843573','3','Slider object (3)',2,'[{\"changed\": {\"fields\": [\"Slider heading\"]}}]',8,1),(28,'2024-11-14 15:07:30.270877','3','Slider object (3)',2,'[{\"changed\": {\"fields\": [\"Slider heading\"]}}]',8,1),(29,'2024-11-14 15:14:31.441809','1','Slider object (1)',2,'[{\"changed\": {\"fields\": [\"Slider heading\"]}}]',8,1),(30,'2024-11-14 15:14:55.105823','2','Slider object (2)',2,'[{\"changed\": {\"fields\": [\"Slider heading\"]}}]',8,1),(31,'2024-11-14 15:19:49.385048','1','News object (1)',1,'[{\"added\": {}}]',10,1),(32,'2024-11-14 15:21:11.771129','2','News object (2)',1,'[{\"added\": {}}]',10,1),(33,'2024-11-14 15:27:42.946976','1','Reviews object (1)',1,'[{\"added\": {}}]',12,1),(34,'2024-11-14 15:30:08.183460','2','Reviews object (2)',1,'[{\"added\": {}}]',12,1),(35,'2024-11-14 15:36:55.591604','1','Chemistry',1,'[{\"added\": {}}]',9,1),(36,'2024-11-14 15:37:08.274399','2','Mathematics',1,'[{\"added\": {}}]',9,1),(37,'2024-11-14 15:37:23.533292','3','Physics',1,'[{\"added\": {}}]',9,1),(38,'2024-11-14 15:37:32.751978','4','Computer Science',1,'[{\"added\": {}}]',9,1),(39,'2024-11-14 15:37:45.524847','5','Ecnomics',1,'[{\"added\": {}}]',9,1),(40,'2024-11-14 15:37:55.314125','6','Islamiyat',1,'[{\"added\": {}}]',9,1),(41,'2024-11-14 15:38:06.308369','7','Political Science',1,'[{\"added\": {}}]',9,1),(42,'2024-11-14 15:38:21.405279','8','Zoology',1,'[{\"added\": {}}]',9,1),(43,'2024-11-14 15:38:31.627236','9','English',1,'[{\"added\": {}}]',9,1),(44,'2024-11-14 15:38:40.376537','10','Urdu',1,'[{\"added\": {}}]',9,1),(45,'2024-11-14 15:38:51.894293','11','Commerce',1,'[{\"added\": {}}]',9,1),(46,'2024-11-14 15:39:03.114414','12','Principle',1,'[{\"added\": {}}]',9,1),(47,'2024-11-14 16:16:31.076346','1','Principle',1,'[{\"added\": {}}]',14,1),(48,'2024-11-14 16:19:21.195740','2','Principle',1,'[{\"added\": {}}]',14,1),(49,'2024-11-14 16:20:36.628367','3','Computer Science',1,'[{\"added\": {}}]',14,1),(50,'2024-11-14 16:33:08.452205','4','Computer Science',1,'[{\"added\": {}}]',14,1),(51,'2024-11-14 16:34:31.870837','5','Computer Science',1,'[{\"added\": {}}]',14,1),(52,'2024-11-14 16:53:15.223071','6','Ecnomics',1,'[{\"added\": {}}]',14,1),(53,'2024-11-14 16:54:53.747832','1','Download object (1)',1,'[{\"added\": {}}]',24,1),(54,'2024-11-14 16:55:35.889850','2','Download object (2)',1,'[{\"added\": {}}]',24,1),(55,'2024-11-14 16:56:26.409381','3','Download object (3)',1,'[{\"added\": {}}]',24,1),(56,'2024-11-14 16:59:27.467046','1','MeritList object (1)',1,'[{\"added\": {}}]',23,1),(57,'2024-11-14 16:59:48.969633','2','MeritList object (2)',1,'[{\"added\": {}}]',23,1),(58,'2024-11-16 17:26:45.288956','1','PopUpData object (1)',1,'[{\"added\": {}}]',33,1),(59,'2024-11-16 17:30:01.608656','1','PopUpData object (1)',2,'[]',33,1),(60,'2024-11-17 08:00:28.692290','7','Ecnomics',1,'[{\"added\": {}}]',14,1),(61,'2024-11-17 08:00:59.032841','8','Ecnomics',1,'[{\"added\": {}}]',14,1),(62,'2024-11-17 08:10:12.806661','8','Ecnomics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(63,'2024-11-17 08:10:28.590575','7','Ecnomics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(64,'2024-11-17 09:24:41.154714','1','PopUpData object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',33,1),(65,'2024-11-17 09:27:38.404621','1','PLANT FOR PAKISTAN DAY ON THE AUGUST 7th, 2021',1,'[{\"added\": {}}]',19,1),(66,'2024-11-17 09:28:08.496130','1','PLANT FOR PAKISTAN DAY ON THE AUGUST 7th, 2021',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(67,'2024-11-17 10:36:15.279690','2','PLANT FOR PAKISTAN DAY ON THE AUGUST 7th, 2021',1,'[{\"added\": {}}]',19,1),(68,'2024-11-17 10:40:02.140951','1','EventItem object (1)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"event item image\", \"object\": \"event_images/cover1.jpg\"}}, {\"added\": {\"name\": \"event item image\", \"object\": \"event_images/cover2.jpg\"}}]',21,1),(69,'2024-11-17 10:41:09.888582','2','EventItem object (2)',1,'[{\"added\": {}}, {\"added\": {\"name\": \"event item image\", \"object\": \"event_images/WhatsApp_Image_2024-11-13_at_10.55.21_PM1.jpeg\"}}]',21,1),(70,'2024-11-17 10:41:56.681502','2','EventItem object (2)',2,'[{\"added\": {\"name\": \"event item image\", \"object\": \"event_images/cover1_Gntmqzp.jpg\"}}]',21,1),(71,'2024-11-17 10:42:36.847401','2','EventItem object (2)',2,'[{\"changed\": {\"name\": \"event item image\", \"object\": \"event_images/cover2_VmVR1ES.jpg\", \"fields\": [\"Image\"]}}]',21,1),(72,'2024-11-17 10:44:29.209212','1','TeamMember object (1)',1,'[{\"added\": {}}]',15,1),(73,'2024-11-17 10:45:27.813356','2','TeamMember object (2)',1,'[{\"added\": {}}]',15,1),(74,'2024-11-17 10:46:33.285949','3','TeamMember object (3)',1,'[{\"added\": {}}]',15,1),(75,'2024-11-17 10:47:22.306009','2','TeamMember object (2)',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',15,1),(76,'2024-11-17 10:48:28.509563','4','TeamMember object (4)',1,'[{\"added\": {}}]',15,1),(77,'2024-11-17 11:10:13.796396','1','AdmissionSchedule object (1)',1,'[{\"added\": {}}]',22,1),(78,'2024-11-17 11:11:21.339529','1','AdmissionSchedule object (1)',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',22,1),(79,'2024-11-17 11:12:24.790435','1','AdmissionSchedule object (1)',2,'[{\"changed\": {\"fields\": [\"Admission detail\", \"Note\"]}}]',22,1),(80,'2024-11-17 11:13:54.087217','1','AdmissionSchedule object (1)',2,'[{\"changed\": {\"fields\": [\"Note\"]}}]',22,1),(81,'2024-11-17 11:18:39.760136','2','AdmissionSchedule object (2)',1,'[{\"added\": {}}]',22,1),(82,'2024-11-17 11:27:12.225471','1','AdmissionPolicy object (1)',1,'[{\"added\": {}}]',18,1),(83,'2024-11-17 11:28:19.738093','2','AdmissionPolicy object (2)',1,'[{\"added\": {}}]',18,1),(84,'2024-11-17 11:29:31.297724','3','AdmissionPolicy object (3)',1,'[{\"added\": {}}]',18,1),(85,'2024-11-17 11:30:33.593792','4','AdmissionPolicy object (4)',1,'[{\"added\": {}}]',18,1),(86,'2024-11-17 11:33:57.116290','5','AdmissionPolicy object (5)',1,'[{\"added\": {}}]',18,1),(87,'2024-11-17 11:36:27.057001','5','AdmissionPolicy object (5)',2,'[{\"changed\": {\"fields\": [\"Program\", \"Description\"]}}]',18,1),(88,'2024-12-01 18:20:45.787282','1','ApplyOnline object (1)',1,'[{\"added\": {}}]',17,1),(89,'2024-12-01 18:28:13.989582','2','ApplyOnline object (2)',1,'[{\"added\": {}}]',17,1),(90,'2024-12-01 18:29:59.716954','3','ApplyOnline object (3)',1,'[{\"added\": {}}]',17,1),(91,'2024-12-01 18:31:41.775991','4','ApplyOnline object (4)',1,'[{\"added\": {}}]',17,1),(92,'2024-12-01 18:32:57.742079','3','ApplyOnline object (3)',2,'[]',17,1),(93,'2024-12-01 18:34:10.572335','3','ApplyOnline object (3)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',17,1),(94,'2024-12-01 18:35:49.853607','5','ApplyOnline object (5)',1,'[{\"added\": {}}]',17,1),(95,'2024-12-01 18:38:10.604306','6','ApplyOnline object (6)',1,'[{\"added\": {}}]',17,1),(96,'2024-12-01 18:38:58.829973','1','PopUpData object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',33,1),(97,'2024-12-01 18:39:16.503291','1','PopUpData object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',33,1),(98,'2024-12-02 11:01:10.882210','2','mamunagulfareen@gmail.com',1,'[{\"added\": {}}]',7,1),(99,'2024-12-02 11:01:53.641544','2','mamunagulfareen@gmail.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',7,1),(100,'2024-12-02 13:49:56.715565','4','Download object (4)',1,'[{\"added\": {}}]',24,1),(101,'2025-02-08 01:51:55.833231','2','Reviews object (2)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (16,'about','about'),(6,'admin','logentry'),(22,'admissionDetails','admissionschedule'),(18,'admissionPolicy','admissionpolicy'),(32,'admissionStatus','admissionstatus'),(17,'applyOnlineStep','applyonline'),(2,'auth','group'),(1,'auth','permission'),(19,'colgevent','colgevent'),(34,'colgLogo','colglogo'),(3,'contenttypes','contenttype'),(13,'coursegroup','coursegroup'),(9,'department','department'),(24,'download','download'),(21,'eventdetails','eventitem'),(20,'eventdetails','eventitemimage'),(14,'faculty','facultyrecord'),(23,'meritlist','meritlist'),(10,'news','news'),(11,'offered_program','programs'),(27,'online_admission','academicrecord'),(25,'online_admission','admissioninstruction'),(26,'online_admission','country'),(28,'online_admission','subject'),(33,'PopUpData','popupdata'),(35,'prospectusFee','prospectusfee'),(12,'review','reviews'),(4,'sessions','session'),(5,'sites','site'),(8,'slider','slider'),(30,'student','application'),(36,'student','district'),(37,'student','province'),(29,'student','student'),(31,'student_registration','registeredstudent'),(15,'teamMember','teammember'),(7,'users','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'PopUpData','0001_initial','2024-11-12 04:57:44.570588'),(2,'contenttypes','0001_initial','2024-11-12 04:57:44.602139'),(3,'contenttypes','0002_remove_content_type_name','2024-11-12 04:57:44.646835'),(4,'auth','0001_initial','2024-11-12 04:57:44.836839'),(5,'auth','0002_alter_permission_name_max_length','2024-11-12 04:57:44.881320'),(6,'auth','0003_alter_user_email_max_length','2024-11-12 04:57:44.886931'),(7,'auth','0004_alter_user_username_opts','2024-11-12 04:57:44.892302'),(8,'auth','0005_alter_user_last_login_null','2024-11-12 04:57:44.897876'),(9,'auth','0006_require_contenttypes_0002','2024-11-12 04:57:44.900245'),(10,'auth','0007_alter_validators_add_error_messages','2024-11-12 04:57:44.906691'),(11,'auth','0008_alter_user_username_max_length','2024-11-12 04:57:44.912400'),(12,'auth','0009_alter_user_last_name_max_length','2024-11-12 04:57:44.918169'),(13,'auth','0010_alter_group_name_max_length','2024-11-12 04:57:44.930411'),(14,'auth','0011_update_proxy_permissions','2024-11-12 04:57:44.937072'),(15,'auth','0012_alter_user_first_name_max_length','2024-11-12 04:57:44.942206'),(16,'users','0001_initial','2024-11-12 04:57:45.184741'),(17,'about','0001_initial','2024-11-12 04:57:45.201886'),(18,'about','0002_initial','2024-11-12 04:57:45.259260'),(19,'admin','0001_initial','2024-11-12 04:57:45.398215'),(20,'admin','0002_logentry_remove_auto_add','2024-11-12 04:57:45.406347'),(21,'admin','0003_logentry_add_action_flag_choices','2024-11-12 04:57:45.415770'),(22,'admissionDetails','0001_initial','2024-11-12 04:57:45.433536'),(23,'admissionDetails','0002_initial','2024-11-12 04:57:45.487196'),(24,'offered_program','0001_initial','2024-11-12 05:01:08.497932'),(25,'coursegroup','0001_initial','2024-11-12 05:04:04.471500'),(26,'admissionPolicy','0001_initial','2024-11-12 05:04:04.488058'),(27,'admissionPolicy','0002_initial','2024-11-12 05:04:04.592355'),(28,'admissionPolicy','0003_initial','2024-11-12 05:04:04.656210'),(29,'admissionStatus','0001_initial','2024-11-12 05:04:04.673238'),(30,'applyOnlineStep','0001_initial','2024-11-12 05:04:04.689626'),(31,'applyOnlineStep','0002_initial','2024-11-12 05:04:04.747237'),(32,'colgLogo','0001_initial','2024-11-12 05:04:04.764015'),(33,'colgevent','0001_initial','2024-11-12 05:04:04.781184'),(34,'colgevent','0002_initial','2024-11-12 05:04:04.836775'),(35,'coursegroup','0002_initial','2024-11-12 05:04:04.903456'),(36,'department','0001_initial','2024-11-12 05:04:04.919806'),(37,'department','0002_initial','2024-11-12 05:04:04.977492'),(38,'download','0001_initial','2024-11-12 05:04:04.994113'),(39,'download','0002_initial','2024-11-12 05:04:05.051966'),(40,'eventdetails','0001_initial','2024-11-12 05:04:05.133296'),(41,'eventdetails','0002_initial','2024-11-12 05:04:05.373542'),(42,'faculty','0001_initial','2024-11-12 05:04:05.459938'),(43,'faculty','0002_initial','2024-11-12 05:04:05.527071'),(44,'meritlist','0001_initial','2024-11-12 05:04:05.543022'),(45,'meritlist','0002_initial','2024-11-12 05:04:05.602954'),(46,'news','0001_initial','2024-11-12 05:04:05.620127'),(47,'news','0002_initial','2024-11-12 05:04:05.683891'),(48,'online_admission','0001_initial','2024-11-12 05:04:05.751992'),(49,'prospectusFee','0001_initial','2024-11-12 05:04:05.769018'),(50,'review','0001_initial','2024-11-12 05:04:05.787197'),(51,'review','0002_initial','2024-11-12 05:04:05.851148'),(52,'sessions','0001_initial','2024-11-12 05:04:05.878216'),(53,'sites','0001_initial','2024-11-12 05:04:05.896199'),(54,'sites','0002_alter_domain_unique','2024-11-12 05:04:05.910158'),(55,'sites','0003_set_site_domain_and_name','2024-11-12 05:04:05.939666'),(56,'sites','0004_alter_options_ordering_domain','2024-11-12 05:04:05.943917'),(57,'slider','0001_initial','2024-11-12 05:04:05.961232'),(58,'slider','0002_initial','2024-11-12 05:04:06.028920'),(59,'student','0001_initial','2024-11-12 05:04:06.227945'),(60,'student_registration','0001_initial','2024-11-12 05:04:06.249956'),(61,'teamMember','0001_initial','2024-11-12 05:04:06.270024'),(62,'teamMember','0002_initial','2024-11-12 05:04:06.338242'),(63,'student','0002_district_province_remove_student_nationality_and_more','2024-11-12 17:28:00.564705'),(64,'student','0003_student_hafiz_doc','2024-11-12 18:20:23.772384'),(65,'student_registration','0002_remove_registeredstudent_first_name_and_more','2024-11-12 19:40:21.674563'),(66,'student_registration','0003_rename_username_registeredstudent_name','2024-11-14 07:43:40.497514'),(67,'student','0004_remove_student_worker_department','2024-11-14 08:25:37.794816'),(68,'PopUpData','0002_rename_created_time_popupdata_created_at','2024-11-14 08:46:04.778555'),(69,'faculty','0003_alter_facultyrecord_image','2024-11-14 16:01:25.667792'),(70,'student','0005_alter_student_photo','2024-11-16 14:04:16.050907'),(71,'online_admission','0002_rename_formdata_academicrecord','2024-11-16 17:24:07.815242'),(72,'faculty','0004_alter_facultyrecord_image','2024-11-17 08:06:08.868960'),(73,'student_registration','0004_alter_registeredstudent_name','2024-12-02 15:11:24.845166');
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
INSERT INTO `django_session` VALUES ('gfmif0ypfy2jirf3ctzkhh2vemy2avzh','.eJxVjEEOwiAQRe_C2hCm2Blw6d4zkAFGqRpISrsy3l2bdKHb_977LxV4XUpYu8xhyuqkQB1-t8jpIXUD-c711nRqdZmnqDdF77TrS8vyPO_u30HhXr41JoEhjmxIgEYGIfCeB0TOGMUmg96RJ2PtFVG8MeSOHh1Zy0ggVr0_yi82mQ:1tgPwM:O1je5fU9n4-lG1R4_2G1dgDEMEgYCVcvn04qxfWDHhg','2025-02-21 15:06:46.096571');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','GCB_SKP');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_download`
--

DROP TABLE IF EXISTS `download_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_download` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `download_download_user_id_id_bb415e53_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `download_download_user_id_id_bb415e53_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_download`
--

LOCK TABLES `download_download` WRITE;
/*!40000 ALTER TABLE `download_download` DISABLE KEYS */;
INSERT INTO `download_download` VALUES (1,'General Notice','download/18-surah-al-kahf_HvLF3xG.pdf','2024-11-14','general',1),(2,'Time Table','download/18-surah-al-kahf_HvLF3xG_x7jEGNz.pdf','2024-11-14','timetable',1),(3,'Date Sheet','download/data_dictionary__yBHKX4j.pdf','2024-11-14','datesheet',1),(4,'+','download/Screenshot_from_2024-12-02_09-55-24.png','2024-12-02','general_order',2);
/*!40000 ALTER TABLE `download_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventdetails_eventitem`
--

DROP TABLE IF EXISTS `eventdetails_eventitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventdetails_eventitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `event_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eventdetails_eventit_event_id_a46d2e3d_fk_colgevent` (`event_id`),
  KEY `eventdetails_eventitem_user_id_id_ee5ad63e_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `eventdetails_eventit_event_id_a46d2e3d_fk_colgevent` FOREIGN KEY (`event_id`) REFERENCES `colgevent_colgevent` (`id`),
  CONSTRAINT `eventdetails_eventitem_user_id_id_ee5ad63e_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventdetails_eventitem`
--

LOCK TABLES `eventdetails_eventitem` WRITE;
/*!40000 ALTER TABLE `eventdetails_eventitem` DISABLE KEYS */;
INSERT INTO `eventdetails_eventitem` VALUES (1,'<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,1),(2,'<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',2,1);
/*!40000 ALTER TABLE `eventdetails_eventitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventdetails_eventitemimage`
--

DROP TABLE IF EXISTS `eventdetails_eventitemimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventdetails_eventitemimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(250) DEFAULT NULL,
  `event_item_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eventdetails_eventit_event_item_id_9042f03c_fk_eventdeta` (`event_item_id`),
  KEY `eventdetails_eventitemimage_user_id_id_fe341a58_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `eventdetails_eventit_event_item_id_9042f03c_fk_eventdeta` FOREIGN KEY (`event_item_id`) REFERENCES `eventdetails_eventitem` (`id`),
  CONSTRAINT `eventdetails_eventitemimage_user_id_id_fe341a58_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventdetails_eventitemimage`
--

LOCK TABLES `eventdetails_eventitemimage` WRITE;
/*!40000 ALTER TABLE `eventdetails_eventitemimage` DISABLE KEYS */;
INSERT INTO `eventdetails_eventitemimage` VALUES (1,'event_images/cover1.jpg',1,1),(2,'event_images/cover2.jpg',1,1),(3,'event_images/cover2_VmVR1ES.jpg',2,1),(4,'event_images/cover1_Gntmqzp.jpg',2,1);
/*!40000 ALTER TABLE `eventdetails_eventitemimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_facultyrecord`
--

DROP TABLE IF EXISTS `faculty_facultyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_facultyrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `department_name_id` bigint NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_facultyrecor_department_name_id_b92df268_fk_departmen` (`department_name_id`),
  KEY `faculty_facultyrecord_user_id_id_dad993dc_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `faculty_facultyrecor_department_name_id_b92df268_fk_departmen` FOREIGN KEY (`department_name_id`) REFERENCES `department_department` (`id`),
  CONSTRAINT `faculty_facultyrecord_user_id_id_dad993dc_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_facultyrecord`
--

LOCK TABLES `faculty_facultyrecord` WRITE;
/*!40000 ALTER TABLE `faculty_facultyrecord` DISABLE KEYS */;
INSERT INTO `faculty_facultyrecord` VALUES (1,'Dr. Amanullah Bhatti','Principle','','2024-11-14 16:16:31.075247',12,1),(2,'Abdul Rahim Ashraf','Vice Principle','','2024-11-14 16:19:21.194802',12,1),(3,'Sehrish Khan','Lecturer','teacher_images/sehrish_khan_GhyXy7E.jpg','2024-11-14 16:20:36.627225',4,1),(4,'Hassan Raza','Lecturer','teacher_images/hasan_raza_8hXGNfP.jpg','2024-11-14 16:33:08.451151',4,1),(5,'Muhammad Ali Waqas','(HOD) Assistent Professor','teacher_images/m_4VCOPCw.ali_waqas.jpg','2024-11-14 16:34:31.869962',4,1),(6,'Muhammad Rizwan','Lecturer','teacher_images/m_4YSOcYN.rizwan.jpeg','2024-11-14 16:53:15.221620',5,1),(7,'Shoaib Yahya','Lecturer','teacher_images/images_GrRXcW2.jpg','2024-11-17 08:10:28.589215',5,1),(8,'Naveed Fazal Haq','Assistent Professor','teacher_images/images.jpg','2024-11-17 08:10:12.805117',5,1);
/*!40000 ALTER TABLE `faculty_facultyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meritlist_meritlist`
--

DROP TABLE IF EXISTS `meritlist_meritlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meritlist_meritlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `document` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meritlist_meritlist_user_id_id_e8839b64_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `meritlist_meritlist_user_id_id_e8839b64_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meritlist_meritlist`
--

LOCK TABLES `meritlist_meritlist` WRITE;
/*!40000 ALTER TABLE `meritlist_meritlist` DISABLE KEYS */;
INSERT INTO `meritlist_meritlist` VALUES (1,'1st Merit List','documents/coupling_and_Cohesion__oHQ1fWL.pdf','2024-11-14 16:59:27.465979',1),(2,'2nd Merit List','documents/18-surah-al-kahf_9oNJog9.pdf','2024-11-14 16:59:48.968859',1);
/*!40000 ALTER TABLE `meritlist_meritlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `news_heading` varchar(255) NOT NULL,
  `news_description` longtext NOT NULL,
  `news_image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_user_id_id_3c53b8ca_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `news_news_user_id_id_3c53b8ca_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
INSERT INTO `news_news` VALUES (1,'Intermediate CLasses Opening','<p>For Intermediate students college shall be reopen from 10-17-2024 after&nbsp; smog vacation.</p>','news_images/WhatsApp_Image_2024-11-13_at_10.55.21_PM1.jpeg','2024-11-14 15:19:49.384124','Intermediate',1),(2,'BS Mid Term Exam','<p>BS mid term exam conducted in decemeber.</p>','news_images/WhatsApp_Image_2024-11-13_at_10_rWkQivZ.55.21_PM1.jpeg','2024-11-14 15:21:11.770167','Graduation',1);
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offered_program_programs`
--

DROP TABLE IF EXISTS `offered_program_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offered_program_programs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) NOT NULL,
  `short_description` longtext NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offered_program_programs_user_id_id_46781778_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `offered_program_programs_user_id_id_46781778_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offered_program_programs`
--

LOCK TABLES `offered_program_programs` WRITE;
/*!40000 ALTER TABLE `offered_program_programs` DISABLE KEYS */;
INSERT INTO `offered_program_programs` VALUES (1,'Intermediate','<p>Intermediate Program</p>','program_images/12_HjNw88m.jpg','2024-11-12 16:03:12.028009',1),(2,'ADP','<p>2 Years Degree Program</p>','program_images/adp_wt4Oi03.jpg','2024-11-12 16:06:48.306784',1),(3,'BS-4YDP','<p>Four Year Degree Program</p>','program_images/12_z3KlBgc_I5xKOBS.jpg','2024-11-12 16:08:13.190429',1),(4,'BS-2YDP','<p>BS 2 Year Degree Program ( 5th Semster , MA/MSC)</p>','program_images/adp_K3GoRhY.jpg','2024-11-12 16:09:23.125911',1),(5,'BED','<p>1 and half Year Degree Program</p>','program_images/12_lL5SgY7.jpg','2024-11-12 16:10:35.484841',1);
/*!40000 ALTER TABLE `offered_program_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_admission_academicrecord`
--

DROP TABLE IF EXISTS `online_admission_academicrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_admission_academicrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  `year` varchar(4) NOT NULL,
  `board` varchar(100) NOT NULL,
  `obtain_marks` int NOT NULL,
  `total_marks` int NOT NULL,
  `grade` varchar(2) NOT NULL,
  `percentage` double DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_admission_academicrecord`
--

LOCK TABLES `online_admission_academicrecord` WRITE;
/*!40000 ALTER TABLE `online_admission_academicrecord` DISABLE KEYS */;
INSERT INTO `online_admission_academicrecord` VALUES (15,'Matric Science','2018','Dera Ghazi Khan BISE',882,1100,'A+',0,13,13),(16,'Matric Arts','2024','Federal BISE of Intermediate and Secondary Education',789,879,'A+',0,22,14);
/*!40000 ALTER TABLE `online_admission_academicrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_admission_admissioninstruction`
--

DROP TABLE IF EXISTS `online_admission_admissioninstruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_admission_admissioninstruction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `instruction` varchar(2000) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_admission_admissioninstruction`
--

LOCK TABLES `online_admission_admissioninstruction` WRITE;
/*!40000 ALTER TABLE `online_admission_admissioninstruction` DISABLE KEYS */;
INSERT INTO `online_admission_admissioninstruction` VALUES (1,'                data saved successfully',9);
/*!40000 ALTER TABLE `online_admission_admissioninstruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_admission_subject`
--

DROP TABLE IF EXISTS `online_admission_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `online_admission_subject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `form_data_id` int DEFAULT NULL,
  `subject_name` varchar(100) NOT NULL,
  `obtain_marks` int NOT NULL,
  `total_marks` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_admission_subject`
--

LOCK TABLES `online_admission_subject` WRITE;
/*!40000 ALTER TABLE `online_admission_subject` DISABLE KEYS */;
INSERT INTO `online_admission_subject` VALUES (28,15,'English',70,90,13);
/*!40000 ALTER TABLE `online_admission_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospectusFee_prospectusfee`
--

DROP TABLE IF EXISTS `prospectusFee_prospectusfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospectusFee_prospectusfee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fee_amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospectusFee_prospectusfee`
--

LOCK TABLES `prospectusFee_prospectusfee` WRITE;
/*!40000 ALTER TABLE `prospectusFee_prospectusfee` DISABLE KEYS */;
INSERT INTO `prospectusFee_prospectusfee` VALUES (1,300);
/*!40000 ALTER TABLE `prospectusFee_prospectusfee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_reviews`
--

DROP TABLE IF EXISTS `review_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `designation` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `review_reviews_user_id_id_58cc403f_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `review_reviews_user_id_id_58cc403f_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_reviews`
--

LOCK TABLES `review_reviews` WRITE;
/*!40000 ALTER TABLE `review_reviews` DISABLE KEYS */;
INSERT INTO `review_reviews` VALUES (1,'Mamuna Gulfareen','<p>GCBSKP where I learnt the discipline and regular.</p>','program_images/woman_xPKOq7O.jpg','BSIT','2024-11-14 15:27:42.945873',1),(2,'Muqadas Saeed','<p>The atmosphere is relaxed and inviting . The Professors are always avaliable to you.</p>','program_images/woman_xPKOq7O_Jt7Hws1.jpg','BSIT','2024-11-14 15:30:08.182108',1);
/*!40000 ALTER TABLE `review_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider_slider`
--

DROP TABLE IF EXISTS `slider_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider_slider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slider_heading` longtext NOT NULL,
  `slider_image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_slider_user_id_id_ca7c7a0a_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `slider_slider_user_id_id_ca7c7a0a_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider_slider`
--

LOCK TABLES `slider_slider` WRITE;
/*!40000 ALTER TABLE `slider_slider` DISABLE KEYS */;
INSERT INTO `slider_slider` VALUES (1,'<p>A&nbsp; Comunity Of<span style=\"color: rgb(241, 196, 15);\"> Lifelong </span>Learning</p>','slider_images/cover1_yRfSGZn.jpg','2024-11-14 15:14:31.439208',1),(2,'<p>A Community With High<span style=\"color: rgb(241, 196, 15);\"> Exception</span> And High Academic Achivement</p>','slider_images/cover2_yp6znui.jpg','2024-11-14 15:14:55.104654',1),(3,'<p>A <span style=\"color: rgb(241, 196, 15);\">Building </span>With Four Walls And Tomorrow Inside</p>','slider_images/cover3_A9V2mx2.jpg','2024-11-14 15:07:30.269813',1);
/*!40000 ALTER TABLE `slider_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_application`
--

DROP TABLE IF EXISTS `student_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admission_status` varchar(10) NOT NULL,
  `prospectus_fee` int NOT NULL,
  `user_id` int NOT NULL,
  `applied_date` datetime(6) NOT NULL,
  `program_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_application_program_id_d74a106f_fk_offered_p` (`program_id`),
  CONSTRAINT `student_application_program_id_d74a106f_fk_offered_p` FOREIGN KEY (`program_id`) REFERENCES `offered_program_programs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_application`
--

LOCK TABLES `student_application` WRITE;
/*!40000 ALTER TABLE `student_application` DISABLE KEYS */;
INSERT INTO `student_application` VALUES (7,'admit',300,13,'2024-12-02 10:15:27.713208',1),(8,'admit',300,22,'2024-12-28 06:54:11.636452',1);
/*!40000 ALTER TABLE `student_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_application_course_groups`
--

DROP TABLE IF EXISTS `student_application_course_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_application_course_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `application_id` bigint NOT NULL,
  `coursegroup_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_application_cour_application_id_coursegro_49dccdc0_uniq` (`application_id`,`coursegroup_id`),
  KEY `student_application__coursegroup_id_dcee88d6_fk_coursegro` (`coursegroup_id`),
  CONSTRAINT `student_application__application_id_bd29eda0_fk_student_a` FOREIGN KEY (`application_id`) REFERENCES `student_application` (`id`),
  CONSTRAINT `student_application__coursegroup_id_dcee88d6_fk_coursegro` FOREIGN KEY (`coursegroup_id`) REFERENCES `coursegroup_coursegroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_application_course_groups`
--

LOCK TABLES `student_application_course_groups` WRITE;
/*!40000 ALTER TABLE `student_application_course_groups` DISABLE KEYS */;
INSERT INTO `student_application_course_groups` VALUES (15,7,1),(16,8,1);
/*!40000 ALTER TABLE `student_application_course_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_district`
--

DROP TABLE IF EXISTS `student_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `district` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_district`
--

LOCK TABLES `student_district` WRITE;
/*!40000 ALTER TABLE `student_district` DISABLE KEYS */;
INSERT INTO `student_district` VALUES (1,'Sheikhupura');
/*!40000 ALTER TABLE `student_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_province`
--

DROP TABLE IF EXISTS `student_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_province` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `province` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_province`
--

LOCK TABLES `student_province` WRITE;
/*!40000 ALTER TABLE `student_province` DISABLE KEYS */;
INSERT INTO `student_province` VALUES (1,'Punjab');
/*!40000 ALTER TABLE `student_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_registration_registeredstudent`
--

DROP TABLE IF EXISTS `student_registration_registeredstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_registration_registeredstudent` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `cnic_no` varchar(20) DEFAULT NULL,
  `confirm_email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cnic_no` (`cnic_no`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_registration_registeredstudent`
--

LOCK TABLES `student_registration_registeredstudent` WRITE;
/*!40000 ALTER TABLE `student_registration_registeredstudent` DISABLE KEYS */;
INSERT INTO `student_registration_registeredstudent` VALUES (13,'amna','m12@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$NzBMQlNvanU4UU9mOTc2Q2dPNGlrVw$6yXWX3twt/fzlb81bv4YueWYmZiuP6vWx6FsqpCeIiQ','35404-3333333-3','m12@gmail.com'),(14,'Mamuna','mamunagulfareen@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$TjhEb3FremVFOTY0bUlzYkRtQ1pudQ$jrSe+hlPtFByIKiPtcoDjBycozLSwFwsPcLuenH2i6w','35404-1858908-8','mamunagulfareen@gmail.com'),(15,'a','a@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$N3g3dnViN1hLV2YzT2UyaGF0d1Breg$FuTazSjFgxJFQSuK8MNIsIEWo+gN6t4rj6cRuRZVc04','35404-1212121-1','a@gmail.com'),(16,'n','b@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$YzdFcDZuNFRXb2plS2N1QWNXVEJNSQ$Hzzx1x/EpyIM1qjhthEPzc0Xb4ZF/iVG9WQPvmvQ4gU','35404-4056677-7','b@gmail.com'),(17,'m','c@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$TGtZQ284amZkR2NCT2FhTHloYlpVag$QGy9vWNimOEaxHK0kCucWs7vaE+2+TzWNf5blHYd8OU','35494-77','c@gmail.com'),(18,'n','nk@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$eUlqVkhNWXptV2xQU2ZJbVh5N1FBeQ$GIMcIO/7j4qtpClhQ1SeGMw5C1/+yByQiY2FZDTxRp8','35404-9299110-0','nk@gmail.com'),(19,'nadia','bg@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$dUVGbHZ2Q2VOUXA2NGFhbDc3MzRrQQ$Wu6YtVS74lVNRGE5cL5tWvNY9904x5e85hNdANBLH9w','56555-5555555-5','bg@gmail.com'),(20,'nadia','1@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$ZmlheXM2bXlIQVlJYUptaEFKT2RMaw$2n378XYMuAsFsM2PUdUwLBKoZ9NDT9qhGl6PMVqMuJE','33333-3333333-3','1@gmail.com'),(21,'3','2@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$OWs2UHh6ZzBnb1Q4N1JaM2pUODNqRQ$TuIiISMF2Ae1jhhyK071v8vCdo6KAxS6XB7ot3T7cIA','55555-5555555-5','2@gmail.com'),(22,'mamuna','testinguser@gmail.com','argon2$argon2id$v=19$m=102400,t=2,p=8$VWtoM1RGSW15bFRSNkVZZ3VBZTJHYg$EXNYwCjl/xOE7S2NJeyuIMLPBicDzPGzMgWTK3cYcpQ','35404-1858999-9','testinguser@gmail.com');
/*!40000 ALTER TABLE `student_registration_registeredstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_student`
--

DROP TABLE IF EXISTS `student_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cnic_no` varchar(20) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_cnic` varchar(20) DEFAULT NULL,
  `father_mobile_no` varchar(15) DEFAULT NULL,
  `father_occupation` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_cnic` varchar(20) DEFAULT NULL,
  `guardian_contact_no` varchar(15) DEFAULT NULL,
  `permanent_address` longtext,
  `postal_address` longtext,
  `province` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `hafiz_e_quran` tinyint(1) DEFAULT NULL,
  `blood_group` varchar(10) NOT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `disability_status` tinyint(1) DEFAULT NULL,
  `related_to_worker` tinyint(1) NOT NULL,
  `worker_name` varchar(255) DEFAULT NULL,
  `worker_relation` varchar(30) DEFAULT NULL,
  `created_at` date NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `verifiy_status` varchar(50) DEFAULT NULL,
  `merit_lit_status` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `disability_type` varchar(100) DEFAULT NULL,
  `worker_payscale` varchar(50) DEFAULT NULL,
  `worker_status` tinyint(1) DEFAULT NULL,
  `hafiz_doc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_student`
--

LOCK TABLES `student_student` WRITE;
/*!40000 ALTER TABLE `student_student` DISABLE KEYS */;
INSERT INTO `student_student` VALUES (13,'moona','35404-3333333-3','std_photos/Screenshot_from_2024-12-02_09-56-35.png','2002-11-11','03201432729','m12@gmail.com','Arshad','34403-9763119-5','03201432729','farmer','Imran tufail ','35404-2673419-7','12318273891','Civil Line , College Road Near U Bank, Sheikhupura, Punjab, Pakistan','Civil Line , College Road Near U Bank, Sheikhupura, Punjab, Pakistan','Punjab','Sheikhupura','Female','Islam',0,'A+','Unmarried',0,0,NULL,NULL,'2024-12-02','13','promoted',NULL,'Sheikhupura','',NULL,0,''),(14,'user','35404-1858999-9','std_photos/Particle2_1.png','2024-12-13','03254849173','testinguser@gmail.com','arshad','35404-1858908-8','03254849173','hj','arshad','03254-8491738-9','03254849173','jkkkl','jkkkl','Punjab','Sheikhupura','Male','Islam',0,'A+','Unmarried',0,0,NULL,NULL,'2024-12-28','22',NULL,NULL,'kk','',NULL,0,'');
/*!40000 ALTER TABLE `student_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamMember_teammember`
--

DROP TABLE IF EXISTS `teamMember_teammember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teamMember_teammember` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teamMember_teammember_user_id_id_449be4fc_fk_users_user_id` (`user_id_id`),
  CONSTRAINT `teamMember_teammember_user_id_id_449be4fc_fk_users_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamMember_teammember`
--

LOCK TABLES `teamMember_teammember` WRITE;
/*!40000 ALTER TABLE `teamMember_teammember` DISABLE KEYS */;
INSERT INTO `teamMember_teammember` VALUES (1,'Hasan Raza','Lecturer','team_members/hasan_raza_VqQ4Xp8.jpg','2024-11-17 10:44:29.207875',1),(2,'Zulifqar Ali','Lecturer','team_members/Zulfiqar-Ali-1_rS3nM6X.jpeg','2024-11-17 10:47:22.304654',1),(3,'Naveed Fazal Haq','Lecturer','team_members/Naveed-Fazal_qtI8DRa_zFmBW2R.jpg','2024-11-17 10:46:33.284817',1),(4,'Waqas Ali','(HOD) Assistent Professor','team_members/m.ali_waqas.jpg','2024-11-17 10:48:28.508650',1);
/*!40000 ALTER TABLE `teamMember_teammember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'argon2$argon2id$v=19$m=102400,t=2,p=8$YzJxUVdZcXRzenhiTGNpSW04YWJpdQ$v4u9MYMBgfRrHAr67PW0z9TgZA1lv5EA/g83XlcRqw4','2025-02-07 15:06:45.977732',1,1,1,'2024-11-12 05:07:19.103055','','admin@gmail.com'),(2,'argon2$argon2id$v=19$m=102400,t=2,p=8$Y253eDJwQlk4ZnpzOHRVS1dwazlwdA$qwIvKEqgS0+pXOqmYlhcZ8F81LZVbQS6Vz5/jW0DwA4',NULL,0,0,1,'2024-12-02 11:01:10.765947','','mamunagulfareen@gmail.com');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'colg_backup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-08 11:37:38
