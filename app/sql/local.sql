-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (27,'woocommerce_update_marketplace_suggestions','complete','2021-11-14 18:45:11','2021-11-14 18:45:11','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636915511;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636915511;}',0,1,'2021-11-17 13:07:47','2021-11-17 13:07:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (31,'action_scheduler/migration_hook','complete','2021-11-14 02:32:49','2021-11-14 02:32:49','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636857169;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636857169;}',1,1,'2021-11-17 13:07:46','2021-11-17 13:07:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (32,'woocommerce_update_marketplace_suggestions','complete','2021-11-18 13:07:47','2021-11-18 13:07:47','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1637240867;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1637240867;}',0,1,'2021-12-01 01:16:37','2021-12-01 01:16:37',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (33,'wc-admin_import_customers','complete','2021-11-17 20:36:09','2021-11-17 20:36:09','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1637181369;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1637181369;}',2,1,'2021-11-17 20:37:52','2021-11-17 20:37:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (34,'woocommerce_update_marketplace_suggestions','complete','2021-12-02 01:16:37','2021-12-02 01:16:37','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638407797;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638407797;}',0,1,'2021-12-09 12:12:24','2021-12-09 12:12:24',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (35,'wc-admin_import_customers','complete','2021-12-01 01:31:52','2021-12-01 01:31:52','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322312;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322312;}',2,1,'2021-12-01 01:32:33','2021-12-01 01:32:33',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (36,'adjust_download_permissions','complete','2021-12-01 01:39:27','2021-12-01 01:39:27','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322767;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322767;}',0,1,'2021-12-01 01:39:59','2021-12-01 01:39:59',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (37,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',0,1,'2021-12-01 01:40:06','2021-12-01 01:40:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (38,'adjust_download_permissions','complete','2021-12-01 01:40:07','2021-12-01 01:40:07','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322807;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322807;}',0,1,'2021-12-01 01:40:14','2021-12-01 01:40:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (39,'woocommerce_update_marketplace_suggestions','complete','2021-12-10 12:12:24','2021-12-10 12:12:24','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639138344;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639138344;}',0,1,'2021-12-15 03:19:09','2021-12-15 03:19:09',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (40,'wc-admin_import_customers','complete','2021-12-09 12:13:06','2021-12-09 12:13:06','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639051986;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639051986;}',2,1,'2021-12-09 12:14:14','2021-12-09 12:14:14',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (41,'action_scheduler/migration_hook','complete','2021-12-09 12:51:55','2021-12-09 12:51:55','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639054315;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639054315;}',1,1,'2021-12-09 12:52:02','2021-12-09 12:52:02',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (42,'woocommerce_update_marketplace_suggestions','pending','2021-12-16 03:19:09','2021-12-16 03:19:09','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639624749;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639624749;}',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (43,'wc-admin_import_customers','complete','2021-12-15 03:20:49','2021-12-15 03:20:49','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639538449;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639538449;}',2,1,'2021-12-15 03:21:48','2021-12-15 03:21:48',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
INSERT INTO `wp_actionscheduler_groups` VALUES (2,'wc-admin-data');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (6,27,'action created','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (17,31,'action created','2021-11-14 02:31:49','2021-11-14 02:31:49');
INSERT INTO `wp_actionscheduler_logs` VALUES (18,31,'action started via WP Cron','2021-11-17 13:07:46','2021-11-17 13:07:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (19,31,'action complete via WP Cron','2021-11-17 13:07:46','2021-11-17 13:07:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (20,27,'action started via WP Cron','2021-11-17 13:07:46','2021-11-17 13:07:46');
INSERT INTO `wp_actionscheduler_logs` VALUES (21,32,'action created','2021-11-17 13:07:47','2021-11-17 13:07:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (22,27,'action complete via WP Cron','2021-11-17 13:07:47','2021-11-17 13:07:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (23,33,'action created','2021-11-17 20:36:04','2021-11-17 20:36:04');
INSERT INTO `wp_actionscheduler_logs` VALUES (24,33,'action started via WP Cron','2021-11-17 20:37:52','2021-11-17 20:37:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (25,33,'action complete via WP Cron','2021-11-17 20:37:52','2021-11-17 20:37:52');
INSERT INTO `wp_actionscheduler_logs` VALUES (26,32,'action started via WP Cron','2021-12-01 01:16:36','2021-12-01 01:16:36');
INSERT INTO `wp_actionscheduler_logs` VALUES (27,34,'action created','2021-12-01 01:16:37','2021-12-01 01:16:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (28,32,'action complete via WP Cron','2021-12-01 01:16:37','2021-12-01 01:16:37');
INSERT INTO `wp_actionscheduler_logs` VALUES (29,35,'action created','2021-12-01 01:31:47','2021-12-01 01:31:47');
INSERT INTO `wp_actionscheduler_logs` VALUES (30,35,'action started via WP Cron','2021-12-01 01:32:33','2021-12-01 01:32:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (31,35,'action complete via WP Cron','2021-12-01 01:32:33','2021-12-01 01:32:33');
INSERT INTO `wp_actionscheduler_logs` VALUES (32,36,'action created','2021-12-01 01:39:26','2021-12-01 01:39:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (33,36,'action started via WP Cron','2021-12-01 01:39:59','2021-12-01 01:39:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (34,36,'action complete via WP Cron','2021-12-01 01:39:59','2021-12-01 01:39:59');
INSERT INTO `wp_actionscheduler_logs` VALUES (35,37,'action created','2021-12-01 01:40:06','2021-12-01 01:40:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (36,38,'action created','2021-12-01 01:40:06','2021-12-01 01:40:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (37,37,'action started via Async Request','2021-12-01 01:40:06','2021-12-01 01:40:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (38,37,'action complete via Async Request','2021-12-01 01:40:06','2021-12-01 01:40:06');
INSERT INTO `wp_actionscheduler_logs` VALUES (39,38,'action started via Async Request','2021-12-01 01:40:14','2021-12-01 01:40:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (40,38,'action complete via Async Request','2021-12-01 01:40:14','2021-12-01 01:40:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (41,34,'action started via WP Cron','2021-12-09 12:12:24','2021-12-09 12:12:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (42,39,'action created','2021-12-09 12:12:24','2021-12-09 12:12:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (43,34,'action complete via WP Cron','2021-12-09 12:12:24','2021-12-09 12:12:24');
INSERT INTO `wp_actionscheduler_logs` VALUES (44,40,'action created','2021-12-09 12:13:01','2021-12-09 12:13:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (45,40,'action started via WP Cron','2021-12-09 12:14:14','2021-12-09 12:14:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (46,40,'action complete via WP Cron','2021-12-09 12:14:14','2021-12-09 12:14:14');
INSERT INTO `wp_actionscheduler_logs` VALUES (47,41,'action created','2021-12-09 12:50:55','2021-12-09 12:50:55');
INSERT INTO `wp_actionscheduler_logs` VALUES (48,41,'action started via WP Cron','2021-12-09 12:52:02','2021-12-09 12:52:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (49,41,'action complete via WP Cron','2021-12-09 12:52:02','2021-12-09 12:52:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (50,39,'action started via WP Cron','2021-12-15 03:19:09','2021-12-15 03:19:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (51,42,'action created','2021-12-15 03:19:09','2021-12-15 03:19:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (52,39,'action complete via WP Cron','2021-12-15 03:19:09','2021-12-15 03:19:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (53,43,'action created','2021-12-15 03:20:44','2021-12-15 03:20:44');
INSERT INTO `wp_actionscheduler_logs` VALUES (54,43,'action started via Async Request','2021-12-15 03:21:48','2021-12-15 03:21:48');
INSERT INTO `wp_actionscheduler_logs` VALUES (55,43,'action complete via Async Request','2021-12-15 03:21:48','2021-12-15 03:21:48');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_appointments`
--

DROP TABLE IF EXISTS `wp_bookly_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location_id` int(10) unsigned DEFAULT NULL,
  `staff_id` int(10) unsigned NOT NULL,
  `staff_any` tinyint(1) NOT NULL DEFAULT '0',
  `service_id` int(10) unsigned DEFAULT NULL,
  `custom_service_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `custom_service_price` decimal(10,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `extras_duration` int(11) NOT NULL DEFAULT '0',
  `internal_note` text COLLATE utf8mb4_unicode_520_ci,
  `google_event_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `google_event_etag` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_change_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `outlook_event_series_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_provider` enum('zoom','google_meet') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `online_meeting_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_from` enum('bookly','google','outlook') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'bookly',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `wp_bookly_appointments_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_appointments_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_appointments`
--

LOCK TABLES `wp_bookly_appointments` WRITE;
/*!40000 ALTER TABLE `wp_bookly_appointments` DISABLE KEYS */;
INSERT INTO `wp_bookly_appointments` VALUES (1,NULL,1,0,1,NULL,NULL,'2021-12-15 17:00:00','2021-12-15 18:00:00',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bookly','2021-12-15 03:45:25','2021-12-15 03:45:25');
/*!40000 ALTER TABLE `wp_bookly_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_categories`
--

DROP TABLE IF EXISTS `wp_bookly_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_categories`
--

LOCK TABLES `wp_bookly_categories` WRITE;
/*!40000 ALTER TABLE `wp_bookly_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_customer_appointments`
--

DROP TABLE IF EXISTS `wp_bookly_customer_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_customer_appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `series_id` int(10) unsigned DEFAULT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `appointment_id` int(10) unsigned NOT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `number_of_persons` int(10) unsigned NOT NULL DEFAULT '1',
  `units` int(10) unsigned NOT NULL DEFAULT '1',
  `notes` text COLLATE utf8mb4_unicode_520_ci,
  `extras` text COLLATE utf8mb4_unicode_520_ci,
  `extras_multiply_nop` tinyint(1) NOT NULL DEFAULT '1',
  `extras_consider_duration` tinyint(1) NOT NULL DEFAULT '1',
  `custom_fields` text COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'approved',
  `status_changed_at` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone_offset` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `rating_comment` text COLLATE utf8mb4_unicode_520_ci,
  `locale` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `collaborative_service_id` int(10) unsigned DEFAULT NULL,
  `collaborative_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `compound_service_id` int(10) unsigned DEFAULT NULL,
  `compound_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_from` enum('frontend','backend') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'frontend',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `series_id` (`series_id`),
  KEY `payment_id` (`payment_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `wp_bookly_customer_appointments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `wp_bookly_customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_customer_appointments_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `wp_bookly_appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_customer_appointments_ibfk_3` FOREIGN KEY (`series_id`) REFERENCES `wp_bookly_series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_customer_appointments_ibfk_4` FOREIGN KEY (`payment_id`) REFERENCES `wp_bookly_payments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_customer_appointments_ibfk_5` FOREIGN KEY (`order_id`) REFERENCES `wp_bookly_orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_customer_appointments`
--

LOCK TABLES `wp_bookly_customer_appointments` WRITE;
/*!40000 ALTER TABLE `wp_bookly_customer_appointments` DISABLE KEYS */;
INSERT INTO `wp_bookly_customer_appointments` VALUES (1,NULL,NULL,1,1,1,1,1,1,'','[]',1,1,'[]','approved',NULL,'93942f588792e22b48734c5705c18e2d','America/New_York',300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'frontend','2021-12-15 03:45:25','2021-12-15 03:45:25');
/*!40000 ALTER TABLE `wp_bookly_customer_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_customers`
--

DROP TABLE IF EXISTS `wp_bookly_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wp_user_id` bigint(20) unsigned DEFAULT NULL,
  `facebook_id` bigint(20) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `birthday` date DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `street_number` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `additional_address` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `info_fields` text COLLATE utf8mb4_unicode_520_ci,
  `stripe_account` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_customers`
--

LOCK TABLES `wp_bookly_customers` WRITE;
/*!40000 ALTER TABLE `wp_bookly_customers` DISABLE KEYS */;
INSERT INTO `wp_bookly_customers` VALUES (1,NULL,NULL,NULL,'admin','admin','','+11233345678','dev-email@flywheel.local',NULL,'','','','','','','','','[]',NULL,'2021-12-15 03:45:25');
/*!40000 ALTER TABLE `wp_bookly_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_holidays`
--

DROP TABLE IF EXISTS `wp_bookly_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) unsigned DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `date` date NOT NULL,
  `repeat_event` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `wp_bookly_holidays_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_holidays`
--

LOCK TABLES `wp_bookly_holidays` WRITE;
/*!40000 ALTER TABLE `wp_bookly_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_log`
--

DROP TABLE IF EXISTS `wp_bookly_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` enum('create','update','delete') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `target_id` int(10) unsigned DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_520_ci,
  `ref` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_log`
--

LOCK TABLES `wp_bookly_log` WRITE;
/*!40000 ALTER TABLE `wp_bookly_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_news`
--

DROP TABLE IF EXISTS `wp_bookly_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `media_type` enum('image','youtube') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'image',
  `media_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_news`
--

LOCK TABLES `wp_bookly_news` WRITE;
/*!40000 ALTER TABLE `wp_bookly_news` DISABLE KEYS */;
INSERT INTO `wp_bookly_news` VALUES (1,1,' How to promote best selling services with Bookly','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/how-promote-best-selling-services-bookly-banner-756.jpg','<p><span>While Bookly is an appointment scheduling plugin that allows you to automate your online reservation system, some of its features can be used as a great way to gain customers’ interest in the services you want to promote. From this article, you’ll find out which Bookly items and built-in features you can use to better sell your services.</span></p>','https://www.booking-wp-plugin.com/promote-best-selling-services-bookly/','Read more',1,'2021-09-20 19:02:23','2021-09-20 19:02:23');
INSERT INTO `wp_bookly_news` VALUES (2,2,' Mistakes every Bookly beginner should avoid','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/mistakes-every-bookly-beginner-should-avoid-banner-756.jpg','<p><span>Bookly admin panel is very intuitive and user-friendly. Thanks to its clean and simple design, even a WP beginner can</span><span>&nbsp;</span>set up Bookly<span>&nbsp;</span><span>without problems. We know you probably want to get started with online bookings on your website as quickly as possible and with almost no effort, so we’ve gathered the most common mistakes to avoid when you start using Bookly.</span></p>','https://www.booking-wp-plugin.com/mistakes-every-bookly-beginner-avoid/','Read more',1,'2021-09-20 19:05:05','2021-09-20 19:05:05');
INSERT INTO `wp_bookly_news` VALUES (3,3,'What’s the difference between Service Schedule (Add-on) & Special Days (Add-on)','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/difference-between-service-schedule-addon-and-special-days-addon-banner.jpg','<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a quick overview of the Service Schedule (Add-on) and Special Days (Add-on) for Bookly.</span></p>','https://www.booking-wp-plugin.com/whats-difference-service-schedule-add-special-days-add/','Read more',1,'2021-09-20 19:07:00','2021-09-20 19:07:00');
INSERT INTO `wp_bookly_news` VALUES (4,4,' New version release. See what’s new in Bookly PRO 4.2.','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/Bookly-PRO-4.2-release.jpg','<p><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">In this new update, we’ve added new features, fixed errors, and generally made some improvements to make your Bookly experience better.&nbsp;<span>Here’s the list of the most important updates included in&nbsp;</span><b>Bookly PRO version 4.2</b><span>.</span></span></p>','https://www.booking-wp-plugin.com/bookly-pro-v4-2/','Read more',1,'2021-09-21 06:53:14','2021-09-21 06:53:14');
INSERT INTO `wp_bookly_news` VALUES (5,5,'New video: How to manage Services in Bookly PRO','youtube','https://www.youtube.com/embed/WCu_g3pHXa8','<p>In this video, you will learn how to set up services and categories in Bookly PRO. Settings are available in the Services section in Bookly menu. For more details, visit&nbsp;our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212176289-Services\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212176289-Services\" target=\"_blank\" rel=\"noopener\">help center</a> and check other video tutorials to learn the basics and get the most out of Bookly.</p>','https://www.youtube.com/watch?v=WCu_g3pHXa8','Watch on Youtube',1,'2021-09-28 07:52:26','2021-09-28 07:52:26');
INSERT INTO `wp_bookly_news` VALUES (6,6,' How to check the full history of customer’s bookings','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/check-full-history-of-customers-bookings-banner-756.jpg','<p><span>It is very important to be able to view the full history of appointments made by each customer. This information will keep you updated about how many times a client has booked with you or cancelled the appointment, what kind of services they prefer, and which staff members they usually choose for their visit.</span></p>','https://www.booking-wp-plugin.com/check-full-history-customers-bookings/','Read more',1,'2021-09-30 07:40:51','2021-09-30 07:40:51');
INSERT INTO `wp_bookly_news` VALUES (7,7,'New video: How to manage Staff Members in Bookly PRO','youtube','https://www.youtube.com/embed/v-ULkUau38o','<p><span>Find out how to set up and manage staff members in Bookly PRO. Settings are available in the Staff Members section in Bookly menu. For more details, visit&nbsp;our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212177569-Staff\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212177569-Staff\">help center</a><span>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=v-ULkUau38o','Watch on Youtube',1,'2021-10-01 08:22:19','2021-10-01 08:22:19');
INSERT INTO `wp_bookly_news` VALUES (8,8,'New video: How to customize the look of your Bookly booking form','youtube','https://www.youtube.com/embed/Lyt5qHqjpCY','<p><span>Learn how to&nbsp;</span><span>make the booking form fit right into your site and branding</span><span>. Settings are available in the Appearance section in Bookly menu. For more details, visit&nbsp;our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\" target=\"_blank\" rel=\"noopener\">help center</a><span>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=Lyt5qHqjpCY','Watch on Youtube',1,'2021-10-05 13:35:02','2021-10-05 13:35:02');
INSERT INTO `wp_bookly_news` VALUES (9,9,' 3 ways to cancel an appointment for your customers','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/3-ways-to-cancel-appointment-for-your-customers-banner-756.jpg','<p><span>Missed appointments cost your staff members money and waste precious time which could be spent on other customers. Fortunately, the cancellation process with Bookly PRO is very easy and handy. This article explains how to provide your customers with a cancellation link, so you’re notified in advance about the free time slot in your timetable.</span></p>','https://www.booking-wp-plugin.com/3-ways-cancel-appointment-customers/','Read more',1,'2021-10-07 10:12:10','2021-10-07 10:12:10');
INSERT INTO `wp_bookly_news` VALUES (10,10,'New video: How to send automated SMS Notifications in Bookly','youtube','https://www.youtube.com/embed/9uQ6LtaJj_k','<p><span>Using the automated Bookly SMS reminder service, you can send personalized text messages to notify your employees and clients regarding upcoming or updated appointments. This video will show you how to quickly set up this feature in Bookly. For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>','https://www.youtube.com/watch?v=9uQ6LtaJj_k','Watch on Youtube',1,'2021-10-11 08:28:11','2021-10-11 08:28:11');
INSERT INTO `wp_bookly_news` VALUES (11,11,'How to let clients book in their timezone','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/let-clients-book-in-their-timezone-banner-756.jpg','<p><span>Bookly strives to offer convenience to your clients, so it works perfectly for handling international appointments. If you and your customers live in different time zones, Bookly can show the online booking form to your clients converted to their local time.</span></p>','https://www.booking-wp-plugin.com/let-clients-book-timezone/','Read more',1,'2021-10-14 07:31:52','2021-10-14 07:31:52');
INSERT INTO `wp_bookly_news` VALUES (12,12,'New version release. See what’s new in Bookly PRO 4.3.','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/Bookly-PRO-4.3-release.jpg','<p><span>With every new version, we release new features that will definitely improve your Bookly experience. Thank you for sharing your suggestions with us – we love helping you and your business grow and succeed!&nbsp;Here’s the list of the most important updates included in <strong>Bookly PRO version 4.3</strong>.</span></p>','https://www.booking-wp-plugin.com/bookly-pro-v4-3/','Read more',1,'2021-10-18 08:22:17','2021-10-18 08:22:17');
INSERT INTO `wp_bookly_news` VALUES (13,13,'New video: General Settings in Bookly PRO','youtube','https://www.youtube.com/embed/qbxOU5OOjcc','<p><span>This video will walk you through the main Bookly PRO settings and options which you have to set up before publishing the booking form on your website.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/categories/200390551-Documentation\" href=\"https://support.booking-wp-plugin.com/hc/en-us/categories/200390551-Documentation\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=qbxOU5OOjcc','Watch on Youtube',1,'2021-10-21 08:56:39','2021-10-21 08:56:39');
INSERT INTO `wp_bookly_news` VALUES (14,14,' What’s the difference between Custom Fields (Add-on) & Customer Information (Add-on)','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/difference-between-custom-fields-addon-and-customer-information-addon-banner.jpg','<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a quick overview of the Custom Fields (Add-on) and Customer Information (Add-on) for Bookly.</span></p>','https://www.booking-wp-plugin.com/whats-difference-custom-fields-add-customer-information-add/','Read more',1,'2021-10-26 07:21:39','2021-10-26 07:21:39');
INSERT INTO `wp_bookly_news` VALUES (15,15,'New video: Bookly PRO initial setup','youtube','https://www.youtube.com/embed/OgsQ8CM3Gq0','<p><span>The initial steps you should take to quickly start using Bookly: create your first service, a staff member, and add the Bookly booking form on your website. For further setup, we recommend you to check&nbsp;other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;about Bookly WordPress appointment plugin and visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>','https://www.youtube.com/watch?v=OgsQ8CM3Gq0&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i','Watch on Youtube',1,'2021-10-28 08:32:07','2021-10-28 08:32:07');
INSERT INTO `wp_bookly_news` VALUES (16,16,'How to block a customer from making an appointment','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/block-customer-from-making-appointment-banner-756.jpg','<p>In some cases, you may want to restrict clients from making multiple appointments or even block someone from all future bookings. Bookly features will help you prevent unwanted reservations from problematic customers and have more control over who can book your services online.</p>','https://www.booking-wp-plugin.com/block-customer-making-appointment/','Read more',1,'2021-11-02 10:27:09','2021-11-02 10:27:09');
INSERT INTO `wp_bookly_news` VALUES (17,17,'New video: How to set up and send automated Email Notifications in Bookly','youtube','https://www.youtube.com/embed/AqXiN73sGbc','<p><span>A quick video tutorial about creating personalized email notifications for your customers and staff members right from Bookly admin panel.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">videos</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=AqXiN73sGbc&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i','Watch on Youtube',1,'2021-11-04 10:24:37','2021-11-04 10:24:37');
INSERT INTO `wp_bookly_news` VALUES (18,18,'How to use resources in bookings','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/how-to-use-resources-in-bookings-banner-756.jpg','<p><span>Do you provide services that require some rooms, equipment, or things during the appointment?&nbsp;With Bookly features, you can create bookable resources.&nbsp;This article explains how to add resources to your bookings and have full control over their availability.</span></p>','https://www.booking-wp-plugin.com/use-resources-bookings/','Read more',1,'2021-11-11 10:25:09','2021-11-11 10:25:09');
INSERT INTO `wp_bookly_news` VALUES (19,19,'New video: How to give online access to bookings for clients','youtube','https://www.youtube.com/embed/bQf_oayrPaM','<p><span>This video will show you how to let your customers view and edit bookings online&nbsp;</span><span>directly on your website.&nbsp;For more details, visit our&nbsp;<a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212455529-Online-Access-to-Bookings-for-Clients\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212455529-Online-Access-to-Bookings-for-Clients\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=bQf_oayrPaM&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK','Watch on Youtube',1,'2021-11-12 09:28:51','2021-11-12 09:28:51');
INSERT INTO `wp_bookly_news` VALUES (20,20,'Appointment cancellation by staff – 3 options','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/Appointment-cancellation-by-staff-3-options-banner-756.jpg','<p><span>Whatever the reason, there are situations when your staff member cannot make an appointment and has no choice but to cancel a scheduled visit. This article describes a few different ways for your employees to cancel an appointment via Bookly.</span></p>','https://www.booking-wp-plugin.com/appointment-cancellation-staff-3-options/','Read more',1,'2021-11-17 09:42:50','2021-11-17 09:42:50');
INSERT INTO `wp_bookly_news` VALUES (21,21,'New video: How to manage appointments in Bookly','youtube','https://www.youtube.com/embed/D7jPxQXngGM','<p><span>Dealing with an unlimited number of customer reservations from Bookly admin panel is very simple. This video describes how to view and manage your company workload effectively. For more details, visit our&nbsp;<a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>','https://www.youtube.com/watch?v=D7jPxQXngGM','Watch on Youtube',1,'2021-11-19 09:49:41','2021-11-19 09:49:41');
INSERT INTO `wp_bookly_news` VALUES (22,22,'New version release. See what’s new in Bookly PRO 4.4.','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/Bookly-PRO-release-4.4-756.jpg','<p><span>Bookly is continually getting better to provide you with the most helpful features for your business. This update brings most-requested features, general improvements, and fixes to ensure that Bookly is working at its best.&nbsp;Check out the list of capabilities included in&nbsp;</span><strong>Bookly PRO version 4.4</strong><span>.</span></p>','https://www.booking-wp-plugin.com/bookly-pro-v4-4/','Read more',1,'2021-11-22 12:25:15','2021-11-22 12:25:15');
INSERT INTO `wp_bookly_news` VALUES (23,23,'Introducing Bookly Mailchimp (Add-on)','image','https://images.booking-wp-plugin.com/main/products/Bookly-Mailchimp-integration.jpg','<p><span>We are happy to announce our new integration with&nbsp;</span><strong>Mailchimp&nbsp;</strong><span>– one of the most popular and flexible email marketing platforms that you can use for scheduling and </span><strong>automating your email campaigns</strong><span>. Once connected, you\'ll be able to&nbsp;automatically export client\'s contact information to your mailing list after an appointment is created via Bookly.</span></p>','https://codecanyon.net/item/bookly-mailchimp-addon/34925755?ref=ladela','Learn more',1,'2021-11-24 10:29:57','2021-11-24 10:29:57');
INSERT INTO `wp_bookly_news` VALUES (24,24,'New video: How to set up and use custom fields in Bookly','youtube','https://www.youtube.com/embed/yRqrXj83eoY','<p><span>This video explains how</span><span>&nbsp;to add your own custom questions to the booking form with the <strong>Bookly Custom Fields (Add-on)</strong>.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>','https://youtu.be/yRqrXj83eoY','Watch on Youtube',1,'2021-11-26 08:21:57','2021-11-26 08:21:57');
INSERT INTO `wp_bookly_news` VALUES (25,25,' How to never miss an appointment','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/how-to-never-miss-an-appointment-with-Bookly-756.jpg','<p><span>The last thing any business owner or service provider would want is to miss an appointment with a client. No matter how long is your booking list, Bookly will help you to efficiently control your company workload. With these recommendations, you will have no chance to forget or miss a scheduled meeting.</span></p>','https://www.booking-wp-plugin.com/never-miss-appointment-bookly/','Read more',1,'2021-11-30 08:06:35','2021-11-30 08:06:35');
INSERT INTO `wp_bookly_news` VALUES (26,26,'New video: How to receive and manage online payments','youtube','https://www.youtube.com/embed/5WaXF4AeG-A','<p><span>There are&nbsp;more than </span><strong>10 payment gateways&nbsp;</strong><span>which can be integrated with Bookly PRO to help drive more customers from the booking plugin right to your door. Learn how to quickly enable a desired online payment option in Bookly settings. For more details, visit our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" target=\"_blank\" rel=\"noopener\">help center</a><span>.</span></p>','https://www.youtube.com/watch?v=5WaXF4AeG-A&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i','Watch on Youtube',1,'2021-12-02 09:08:52','2021-12-02 09:08:52');
INSERT INTO `wp_bookly_news` VALUES (27,27,'What’s the difference between Multiply Appointments (Add-on) & Custom Duration (Add-on)','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/difference-between-multiply-appointments-addon-and-custom-duration-addon-banner-756.jpg','<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a detailed comparison of the Multiply Appointments (Add-on) and Custom Duration (Add-on) for Bookly.</span></p>','https://www.booking-wp-plugin.com/whats-difference-multiply-appointments-add-custom-duration-add/','Read more',1,'2021-12-07 09:19:54','2021-12-07 09:19:54');
INSERT INTO `wp_bookly_news` VALUES (28,28,'New video: How to manage customer base in Bookly','youtube','https://www.youtube.com/embed/K53xCEIo8NQ','<p><span>With Bookly you get an unlimited, sortable and searchable customer list. But that’s not all. Learn how&nbsp;</span><span>Bookly allows you to effortlessly manage your customer base. For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" target=\"_blank\" rel=\"noopener\">help center</a><span>&nbsp;and&nbsp;check other </span><a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>','https://www.youtube.com/watch?v=K53xCEIo8NQ&list=PLuLhoBV-rlAbu0MMy7yG8KeysVAEdBOcc','Watch on Youtube',1,'2021-12-09 09:28:31','2021-12-09 09:28:31');
INSERT INTO `wp_bookly_news` VALUES (29,29,'Discontinued support for Internet Explorer 11','image','https://images.booking-wp-plugin.com/main/blog/Internet_Explorer_discontinued_support.jpg','<p><span>The Internet Explorer (IE) 11 desktop application </span><strong>will go out of support&nbsp;</strong><span>starting June 15, 2022. Bootstrap framework used for Bookly interface elements in the admin panel, </span><a href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\">stopped supporting IE since version 5.0</a>&nbsp;<span>and </span><a href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\" data-mce-href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\">WordPress no longer supports IE 11 starting from version 5.8</a><span>. If you are currently using IE 11, it is strongly recommended that you switch to a more modern browser.</span></p>','https://blogs.windows.com/windowsexperience/2021/05/19/the-future-of-internet-explorer-on-windows-10-is-in-microsoft-edge/','Read more',0,'2021-12-13 07:36:02','2021-12-13 07:36:02');
INSERT INTO `wp_bookly_news` VALUES (30,30,'Top 5 automations to use in Bookly','image','https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/Top-five-automations-to-use-in-Bookly-banner-756.jpg','<p><span>Bookly is known to be the most feature-rich online booking and scheduling plugin in the market.&nbsp;In this post, we’ll provide an overview of the top 5 Bookly automations that will help you to manage your administrative workload with ease and improve your efficiency.</span></p>','https://www.booking-wp-plugin.com/top-5-automations-use-bookly/','Read more',0,'2021-12-14 08:03:44','2021-12-14 08:03:44');
/*!40000 ALTER TABLE `wp_bookly_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_notifications`
--

DROP TABLE IF EXISTS `wp_bookly_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gateway` enum('email','sms') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'email',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `to_staff` tinyint(1) NOT NULL DEFAULT '0',
  `to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `to_admin` tinyint(1) NOT NULL DEFAULT '0',
  `to_custom` tinyint(1) NOT NULL DEFAULT '0',
  `custom_recipients` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attach_ics` tinyint(1) NOT NULL DEFAULT '0',
  `attach_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_notifications`
--

LOCK TABLES `wp_bookly_notifications` WRITE;
/*!40000 ALTER TABLE `wp_bookly_notifications` DISABLE KEYS */;
INSERT INTO `wp_bookly_notifications` VALUES (1,'email','new_booking',1,'Notification to customer about approved appointment','Your appointment information','Dear {client_name}.\n\nThis is a confirmation that you have booked {service_name}.\n\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (2,'email','new_booking',1,'Notification to staff member about approved appointment','New booking information','Hello.\n\nYou have a new booking.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (3,'email','ca_status_changed',1,'Notification to customer about cancelled appointment','Booking cancellation','Dear {client_name}.\n\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (4,'email','ca_status_changed',1,'Notification to staff member about cancelled appointment','Booking cancellation','Hello.\n\nThe following booking has been cancelled.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (5,'email','ca_status_changed',1,'Notification to customer about rejected appointment','Booking rejection','Dear {client_name}.\n\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\n\nReason: {cancellation_reason}\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (6,'email','ca_status_changed',1,'Notification to staff member about rejected appointment','Booking rejection','Hello.\n\nThe following booking has been rejected.\n\nReason: {cancellation_reason}\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (7,'sms','new_booking',1,'Notification to customer about approved appointment','','Dear {client_name}.\nThis is a confirmation that you have booked {service_name}.\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (8,'sms','new_booking',1,'Notification to staff member about approved appointment','','Hello.\nYou have a new booking.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (9,'sms','ca_status_changed',1,'Notification to customer about cancelled appointment','','Dear {client_name}.\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (10,'sms','ca_status_changed',1,'Notification to staff member about cancelled appointment','','Hello.\nThe following booking has been cancelled.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (11,'sms','ca_status_changed',1,'Notification to customer about rejected appointment','','Dear {client_name}.\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\nReason: {cancellation_reason}\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (12,'sms','ca_status_changed',1,'Notification to staff member about rejected appointment','','Hello.\nThe following booking has been rejected.\nReason: {cancellation_reason}\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}',1,0,0,0,NULL,0,0,'{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (13,'sms','appointment_reminder',0,'Evening reminder to customer about next day appointment (requires cron setup)','','Dear {client_name}.\nWe would like to remind you that you have booked {service_name} tomorrow at {appointment_time}. We are waiting for you at {company_address}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}');
INSERT INTO `wp_bookly_notifications` VALUES (14,'sms','appointment_reminder',0,'Follow-up message in the same day after appointment (requires cron setup)','','Dear {client_name}.\nThank you for choosing {company_name}. We hope you were satisfied with your {service_name}.\nThank you and we look forward to seeing you again soon.\n{company_name}\n{company_phone}\n{company_website}',0,1,0,0,NULL,0,0,'{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":21,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}');
INSERT INTO `wp_bookly_notifications` VALUES (15,'sms','staff_day_agenda',0,'Evening notification with the next day agenda to staff member (requires cron setup)','','Hello.\nYour agenda for tomorrow is:\n{next_day_agenda}',1,0,0,0,NULL,0,0,'{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}');
INSERT INTO `wp_bookly_notifications` VALUES (16,'email','verify_email',1,'Notification to customer with verification code','Bookly verification code','{verification_code}',0,1,0,0,NULL,0,0,'[]');
INSERT INTO `wp_bookly_notifications` VALUES (17,'sms','verify_phone',1,'Notification to customer with verification code','','{verification_code}',0,1,0,0,NULL,0,0,'[]');
/*!40000 ALTER TABLE `wp_bookly_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_orders`
--

DROP TABLE IF EXISTS `wp_bookly_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_orders`
--

LOCK TABLES `wp_bookly_orders` WRITE;
/*!40000 ALTER TABLE `wp_bookly_orders` DISABLE KEYS */;
INSERT INTO `wp_bookly_orders` VALUES (1,'baf90a39c1d05a8f4ee58ae39e027b59');
/*!40000 ALTER TABLE `wp_bookly_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_payments`
--

DROP TABLE IF EXISTS `wp_bookly_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned DEFAULT NULL,
  `type` enum('local','free','paypal','authorize_net','stripe','2checkout','payu_biz','payu_latam','payson','mollie','woocommerce','cloud_stripe') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'local',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_type` enum('in_full','deposit') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'in_full',
  `gateway_price_correction` decimal(10,2) DEFAULT '0.00',
  `status` enum('pending','completed','rejected') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'completed',
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_payments`
--

LOCK TABLES `wp_bookly_payments` WRITE;
/*!40000 ALTER TABLE `wp_bookly_payments` DISABLE KEYS */;
INSERT INTO `wp_bookly_payments` VALUES (1,NULL,'local',120.00,0.00,0.00,'in_full',NULL,'pending','6489c39f5cdd8bc83515a825362ba325','{\"items\":[{\"ca_id\":1,\"appointment_date\":\"2021-12-15 17:00:00\",\"service_name\":\"1 hour consultation\",\"service_price\":120,\"service_tax\":0,\"wait_listed\":false,\"deposit_format\":null,\"number_of_persons\":1,\"units\":1,\"duration\":\"3600\",\"staff_name\":\"Test Pro\",\"extras\":[]}],\"coupon\":null,\"subtotal\":{\"price\":120,\"deposit\":0},\"customer\":\"admin\",\"tax_in_price\":\"excluded\",\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway\":null,\"gateway_ref_id\":null}','2021-12-15 03:45:25','2021-12-15 03:45:25');
/*!40000 ALTER TABLE `wp_bookly_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_schedule_item_breaks`
--

DROP TABLE IF EXISTS `wp_bookly_schedule_item_breaks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_schedule_item_breaks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_schedule_item_id` int(10) unsigned NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_schedule_item_id` (`staff_schedule_item_id`),
  CONSTRAINT `wp_bookly_schedule_item_breaks_ibfk_1` FOREIGN KEY (`staff_schedule_item_id`) REFERENCES `wp_bookly_staff_schedule_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_schedule_item_breaks`
--

LOCK TABLES `wp_bookly_schedule_item_breaks` WRITE;
/*!40000 ALTER TABLE `wp_bookly_schedule_item_breaks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_schedule_item_breaks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_sent_notifications`
--

DROP TABLE IF EXISTS `wp_bookly_sent_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_sent_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) unsigned NOT NULL,
  `notification_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ref_id_idx` (`ref_id`),
  KEY `notification_id` (`notification_id`),
  CONSTRAINT `wp_bookly_sent_notifications_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `wp_bookly_notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_sent_notifications`
--

LOCK TABLES `wp_bookly_sent_notifications` WRITE;
/*!40000 ALTER TABLE `wp_bookly_sent_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_sent_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_series`
--

DROP TABLE IF EXISTS `wp_bookly_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `repeat` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_series`
--

LOCK TABLES `wp_bookly_series` WRITE;
/*!40000 ALTER TABLE `wp_bookly_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_services`
--

DROP TABLE IF EXISTS `wp_bookly_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `type` enum('simple','collaborative','compound','package') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'simple',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `attachment_id` int(10) unsigned DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '900',
  `slot_length` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `color` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#FFFFFF',
  `deposit` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT '1',
  `capacity_max` int(11) NOT NULL DEFAULT '1',
  `one_booking_per_slot` tinyint(1) NOT NULL DEFAULT '0',
  `padding_left` int(11) NOT NULL DEFAULT '0',
  `padding_right` int(11) NOT NULL DEFAULT '0',
  `info` text COLLATE utf8mb4_unicode_520_ci,
  `start_time_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `end_time_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `same_staff_for_subservices` tinyint(1) NOT NULL DEFAULT '0',
  `units_min` int(10) unsigned NOT NULL DEFAULT '1',
  `units_max` int(10) unsigned NOT NULL DEFAULT '1',
  `package_life_time` int(11) DEFAULT NULL,
  `package_size` int(11) DEFAULT NULL,
  `package_unassigned` tinyint(1) NOT NULL DEFAULT '0',
  `appointments_limit` int(11) DEFAULT NULL,
  `limit_period` enum('off','day','week','month','year','upcoming','calendar_day','calendar_week','calendar_month','calendar_year') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `staff_preference` enum('order','least_occupied','most_occupied','least_occupied_for_period','most_occupied_for_period','least_expensive','most_expensive') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'most_expensive',
  `staff_preference_settings` text COLLATE utf8mb4_unicode_520_ci,
  `recurrence_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `recurrence_frequencies` set('daily','weekly','biweekly','monthly') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'daily,weekly,biweekly,monthly',
  `time_requirements` enum('required','optional','off') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'required',
  `collaborative_equal_duration` tinyint(1) NOT NULL DEFAULT '0',
  `online_meetings` enum('off','zoom','google_meet') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
  `final_step_url` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `wc_product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_cart_info_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `wc_cart_info` text COLLATE utf8mb4_unicode_520_ci,
  `min_time_prior_booking` int(11) DEFAULT NULL,
  `min_time_prior_cancel` int(11) DEFAULT NULL,
  `visibility` enum('public','private','group') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `wp_bookly_services_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `wp_bookly_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_services`
--

LOCK TABLES `wp_bookly_services` WRITE;
/*!40000 ALTER TABLE `wp_bookly_services` DISABLE KEYS */;
INSERT INTO `wp_bookly_services` VALUES (1,NULL,'simple','1 hour consultation',0,3600,'as_service_duration',120.00,'#202FBF','100%',1,1,0,0,0,'','','',0,1,1,NULL,NULL,0,NULL,'off','most_expensive','{}',1,'daily,weekly,biweekly,monthly','required',0,'off','',0,'','',NULL,NULL,'public',1);
/*!40000 ALTER TABLE `wp_bookly_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_shop`
--

DROP TABLE IF EXISTS `wp_bookly_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_id` int(10) unsigned NOT NULL,
  `type` enum('plugin','bundle') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'plugin',
  `highlighted` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(10) unsigned DEFAULT '0',
  `demo_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sales` int(10) unsigned NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `reviews` int(10) unsigned NOT NULL,
  `published` datetime NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_shop`
--

LOCK TABLES `wp_bookly_shop` WRITE;
/*!40000 ALTER TABLE `wp_bookly_shop` DISABLE KEYS */;
INSERT INTO `wp_bookly_shop` VALUES (1,7226091,'plugin',1,100,NULL,'Bookly Pro','bookly-addon-pro','Bring appointment scheduling process to the next level with Bookly Pro add-on.  Pro add-on turns Bookly plugin into the professional appointment management system. Unlock Advanced Customer management, Service provider management, Services management, Email and SMS notifications, Booking management capabilities. Connect payment gateways and modify Pro version with other add-ons available only with Bookly Pro and more.','https://codecanyon.net/item/bookly-booking-plugin-responsive-appointment-booking-and-scheduling/7226091','https://s3.envato.com/files/276918414/bookly-icon-(1)%20(3).png',89.00,41201,4.54,1052,'2014-04-12 17:14:52',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (2,13903524,'plugin',0,0,NULL,'Bookly Multisite (Add-on)','bookly-addon-multisite','Do you need to administrate Booky on multiple websites? This add-on enables Bookly to become a Multisite ready plugin. You need to buy an additional Regular License for Bookly Pro and every installed add-on for each domain name that you use.','https://codecanyon.net/item/bookly-multisite-addon/13903524','https://s3.envato.com/files/257314580/14multisite.png',49.00,642,5.00,7,'2015-12-04 16:38:03',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (3,15552320,'plugin',0,0,NULL,'Bookly Service Extras (Add-on)','bookly-addon-service-extras','Increase the average check for every client visit with Service Extras add-on. Let your customers order extra items when they schedule an appointment with you or book your service. It adds one more step into the booking form and allows your customers to pick extras they would like to order as an addition to the service booking, see the price of extras, name, image, and total cost of the selected items.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-service-extras-addon/15552320','https://s3.envato.com/files/275715191/bookly_extras_80x80.jpg',49.00,2887,4.41,32,'2016-04-01 15:29:11',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (4,17328208,'plugin',0,0,NULL,'Bookly Locations (Add-on)','bookly-addon-locations','Do you offer your services in more than one location? Try Bookly Locations add-on to manage the service booking process between various locations. Let your customers pick the location, where they would like to get the service and associate the staff members with those locations.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-locations-addon/17328208','https://s3.envato.com/files/257314201/3locations.png',39.00,2544,4.41,32,'2016-08-03 17:49:31',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (5,17367838,'plugin',0,0,NULL,'Bookly Chain Appointments (Add-on)','bookly-addon-chain-appointments','Do you offer services which can be combined and provided during a single client visit by the same or different staff members? Let your clients book several services for a single visit with the Chain Appointments add-on. The clients will be able to choose multiple services from different providers at the first step of the booking process.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-chain-appointments-addon/17367838','https://s3.envato.com/files/257314361/11chain.png',29.00,1124,4.80,5,'2016-08-09 17:40:29',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (6,17457141,'plugin',0,0,NULL,'Bookly Multiply Appointments (Add-on)','bookly-addon-multiply-appointments','Do you provide fixed-time services, which your clients can book for example for an hour or 15 minutes? Boost your sales with Bookly Multiply Appointments add-on by providing an option to book the same service several times in a row.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-multiply-appointments-addon/17457141','https://s3.envato.com/files/277980955/icon_80x80.png',29.00,783,0.00,2,'2016-08-16 16:02:12',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (7,17956131,'plugin',0,0,NULL,'Bookly Deposit Payments (Add-on)','bookly-addon-deposit-payments','Would you like to reduce the number of no-shows? Or maybe you need to buy something before the clients\' visit? With Bookly Deposit Payments add-on, you can request full or partial pre-payment during the service booking process.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-deposit-payments-addon/17956131','https://s3.envato.com/files/257314254/7deposit.png',39.00,1481,4.57,7,'2016-09-22 18:11:00',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (8,18611122,'plugin',0,0,NULL,'Bookly Special Days (Add-on)','bookly-addon-special-days','Customize the schedule of your employees during the holiday season or any other occasion, without changing your regular schedule. With this add-on, you can add days with long or short hours or even the day when you provide service for 24 hours. Bookly Special Days add-on enables you to modify the schedule of each staff member in your organization.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-special-days-addon/18611122','https://s3.envato.com/files/257314246/6specialdays.png',39.00,2133,4.27,11,'2016-11-07 01:25:43',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (9,18704535,'plugin',0,0,NULL,'Bookly Special Hours (Add-on)','bookly-addon-special-hours','Would you like to provide a discount during happy hours or raise service price during busy hours? You can do it with Bookly Special Hours add-on. With full control of the daily schedule, you can adjust the price to maximize revenues or reduce workload.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-special-hours-addon/18704535','https://s3.envato.com/files/276664014/icon_80x80.jpg',29.00,502,4.20,5,'2016-11-09 01:22:54',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (10,18874038,'plugin',0,0,NULL,'Bookly Service Schedule (Add-on)','bookly-addon-service-schedule','Do you have services with a specific schedule which must be aligned with the default schedule of your employees? With Bookly Service Schedule add-on, you can set hours during each day of the week when your clients can book this service taking into consideration the staff members availability.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-service-schedule-addon/18874038','https://s3.envato.com/files/257314213/5serviceschedule.png',29.00,2273,4.40,10,'2016-11-22 05:03:19',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (11,19497634,'plugin',0,0,NULL,'Bookly Recurring Appointments (Add-on)','bookly-addon-recurring-appointments','Do you provide a service which may require a series of visits, like therapy, massage, tutoring and more? With Bookly Recurring Appointments, your client can book the service set upfront. Must-have for businesses, which provide service sets.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-recurring-appointments-addon/19497634','https://s3.envato.com/files/257314299/10recurring.png',39.00,1509,3.67,12,'2017-02-23 17:42:00',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (12,19617518,'plugin',0,0,NULL,'Bookly PayPal Payments Standard (Add-on)','bookly-addon-paypal-payments-standard','Do you have PayPal Business or PayPal Premier account and would like to provide one of the most popular online payment options for your clients? With Bookly PayPal Payments Standard add-on clients can pay directly via credit card or by logging in to their PayPal account – all processed by PayPal.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-paypal-payments-standard-addon/19617518','https://s3.envato.com/files/257314391/13paypalstandard.png',29.00,1395,5.00,7,'2017-03-22 04:29:25',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (13,20005540,'plugin',0,0,NULL,'Bookly Staff Cabinet (Add-on)','bookly-addon-staff-cabinet','You can manage Bookly in the WordPress admin area of your website. Many of your employees may also need access to Bookly. To avoid any complications and limit the access to the website admin area, you can use Bookly Staff Cabinet, where your employees can: view the calendar, add and manage appointments, view and update personal details and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-staff-cabinet-addon/20005540','https://s3.envato.com/files/257314313/12staffcabinet.png',39.00,1806,3.87,15,'2017-05-26 16:11:36',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (14,20685954,'plugin',0,0,NULL,'Bookly PayU Latam (Add-on)','bookly-addon-payu-latam','Accept payments online to reduce the funnel friction and boost your sales. PayU Latam is an international payment gateway provider, which also supports the most popular payment options in Latin America and is a perfect fit for businesses, which provide services in the LatAm market.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-payu-latam-addon/20685954','https://s3.envato.com/files/257315044/34payulatam.jpg',29.00,94,0.00,2,'2017-10-04 22:22:08',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (15,20917406,'plugin',0,0,NULL,'Bookly Waiting List (Add-on)','bookly-addon-waiting-list','Do you lose customers because you are overbooked? Try Bookly Waiting List add-on to collect warm leads and maximize your profits. When you are fully booked, the customer will be able to join the waiting list. Service provider will get an automatic notification when the free slot appears.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-waiting-list-addon/20917406','https://s3.envato.com/files/257314909/28waitinglist.jpg',29.00,365,0.00,1,'2017-11-09 17:58:26',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (16,20952783,'plugin',0,0,NULL,'Bookly Packages (Add-on)','bookly-addon-packages','Do you have customers who purchase your services regularly? You can increase their loyalty to your company and boost your sales by providing package deals at a discounted price with Bookly Packages add-on.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-packages-addon/20952783','https://s3.envato.com/files/277560972/icon_80x80.jpg',29.00,572,2.80,5,'2017-11-14 18:45:26',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (17,21113698,'plugin',0,0,NULL,'Bookly 2Checkout (Add-on)','bookly-addon-2checkout','Accept payments online to reduce the funnel friction and boost your sales. 2Checkout enables merchants to accept mobile and online payments from buyers worldwide. Seamless, safe, reliable payment processing regardless of where you are on the map.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-2checkout-addon/21113698','https://s3.envato.com/files/257315086/35_2checkout(1).jpg',29.00,34,0.00,0,'2017-12-12 10:30:34',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (18,21113750,'plugin',0,0,NULL,'Bookly Authorize.Net (Add-on)','bookly-addon-authorize-net','Accept payments online to reduce the funnel friction and boost your sales. Authorize.Net is a US-based payment gateway, which allows merchants to accept various payment types like: Visa, MasterCard, Discover, American Express, JCB, PayPal, Visa Checkout, Apple Pay, Google Pay, E-check.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-authorizenet-addon/21113750','https://s3.envato.com/files/257315021/33authorize.jpg',29.00,168,0.00,0,'2017-12-12 10:30:24',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (19,21113860,'plugin',0,0,NULL,'Bookly Coupons (Add-on)','bookly-addon-coupons','Provide your clients with discount coupons to boost your sales, improve the conversion rate for less popular services, and increase customer loyalty. With the Bookly Coupons add-on enabled, your clients will be able to apply a coupon code at the checkout and get the service at a discounted price. You can easily create, manage and keep track of all promotional codes directly in Bookly.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-coupons-addon/21113860','https://s3.envato.com/files/257314530/17coupons.jpg',39.00,1703,4.20,5,'2017-12-12 10:39:37',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (20,21113970,'plugin',0,0,NULL,'Bookly Custom Fields (Add-on)','bookly-addon-custom-fields','Do you need to know specific info about your customer before they visit you? Do you want to provide a personalized experience for your customers?\r\nWith Custom Fields add-on, you can ask for more details during the booking process to save time and provide better client experience during the visit.\r\n\r\nImportant: This add-on requires the Bookly PRO to be installed and activated.\r\n','https://codecanyon.net/item/bookly-custom-fields-addon/21113970','https://s3.envato.com/files/278250393/icon_80x80.jpg',49.00,4270,5.00,13,'2017-12-12 10:40:39',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (21,21114042,'plugin',0,0,NULL,'Bookly Mollie (Add-on)','bookly-addon-mollie','Accept payments online to reduce the funnel friction and boost your sales. Mollie is a Payment Service Provider (PSP) which allows you to process such payment methods as iDEAL, credit card, Bancontact/Mister Cash, PayPal, SCT, SDD, and others.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-mollie-addon/21114042','https://s3.envato.com/files/257314852/25mollie.jpg',34.00,660,0.00,2,'2017-12-12 10:43:25',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (22,21114096,'plugin',0,0,NULL,'Bookly Payson (Add-on)','bookly-addon-payson','Accept payments online to reduce the funnel friction and boost your sales. Payson is one of Sweden’s leading companies for payments online. It provides both e-traders and private individuals with access to secure online payments.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-payson-addon/21114096','https://s3.envato.com/files/257315118/37payson.jpg',29.00,15,0.00,1,'2017-12-12 10:44:08',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (23,21114146,'plugin',0,0,NULL,'Bookly Stripe (Add-on)','bookly-addon-stripe','Accept payments online to reduce the funnel friction and boost your sales. Stripe operates in more than 25 countries and provides various options to accept payments online. One of the most powerful solutions to cover your payments needs.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-stripe-addon/21114146','https://s3.envato.com/files/257314285/9stripe.jpg',39.00,2714,4.60,10,'2017-12-12 10:46:42',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (24,21344225,'plugin',0,0,NULL,'Bookly Group Booking (Add-on)','bookly-addon-group-booking','Do you provide services for groups, like yoga or fitness class, group tutoring, or maybe a guided tour? With Bookly Group Booking add-on, you can easily set the capacity for each service you provide, let your customers specify the number of people during the booking and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-group-booking-addon/21344225','https://s3.envato.com/files/257314273/8groupbooking.jpg',39.00,3165,4.43,7,'2018-02-01 01:33:45',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (25,21344290,'plugin',0,0,NULL,'Bookly Customer Groups (Add-on)','bookly-addon-customer-groups','Do you have different types of customers? Bookly Customer Groups add-on enables you to create and manage Customer Groups. With this add-on, you can arrange your customers in different categories and set the rules for booking process, pricing and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-customer-groups-addon/21344290','https://s3.envato.com/files/257314959/31customergroups.jpg',29.00,353,0.00,0,'2018-02-01 02:03:48',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (26,21344354,'plugin',0,0,NULL,'Bookly Files (Add-on)','bookly-addon-files','Do you require documents or any other information before the customer can book your service? Let your clients attach files during the booking process with Bookly Files add-on. All materials added by your customers will be available for review in booking details.\r\n\r\nImportant: This add-on requires the Bookly PRO and Bookly Custom Fields (Add-on) installed and activated.','https://codecanyon.net/item/bookly-files-addon/21344354','https://s3.envato.com/files/257314861/27files.jpg',29.00,580,3.83,6,'2018-02-01 02:07:58',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (27,21574371,'plugin',0,0,NULL,'Bookly Compound Services (Add-on)','bookly-addon-compound-services','Do you have services which can be combined into one service at a higher price? For example, if you provide web design, coding, content creation services you could combine them into the website or app development service which includes services mentioned in the example and involves several employees in it. \r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-compound-services-addon/21574371','https://s3.envato.com/files/257314987/30compound.jpg',29.00,224,0.00,1,'2018-03-13 06:08:47',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (28,21574466,'plugin',0,0,NULL,'Bookly Customer Information (Add-on)','bookly-addon-customer-information','Know your customer better with Bookly Customer Information add-on. Add custom fields to the booking form to gather additional info about your customer. The extended user profile will allow you to personalize your marketing activities in the future.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-customer-information-addon/21574466','https://s3.envato.com/files/279832345/icon_80x80.jpg',29.00,1143,5.00,5,'2018-03-13 06:10:12',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (29,21574566,'plugin',0,0,NULL,'Bookly Ratings (Add-on)','bookly-addon-ratings','Do you want to improve your services and become more client-oriented? With Bookly Ratings add-on, you can evaluate your staff members and services you provide. Encourage your customers to rate the services they receive to keep up with professional standards and always meet the client’s expectations.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-ratings-addon/21574566','https://s3.envato.com/files/257315009/32ratings.jpg',29.00,292,0.00,2,'2018-03-13 06:19:21',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (30,21841764,'plugin',0,0,NULL,'Bookly Cart (Add-on)','bookly-addon-cart','Do you want to boost your online sales even more? With Bookly Cart add-on, your customers can add multiple service bookings to the cart. It simplifies the buying process and motivates to purchase more. You can customize columns and display the cart summary data the way you want.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-cart-addon/21841764','https://s3.envato.com/files/257314676/21cart.jpg',29.00,1251,4.57,7,'2018-04-29 02:25:40',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (31,21841828,'plugin',0,0,NULL,'Bookly Taxes (Add-on)','bookly-addon-taxes','Bookly Taxes add-on will let you set up and include taxes in the service price. You’ll be able to define different tax rates and apply them to all or only to selected services. Based on your settings, Bookly will calculate and display a total price with taxes that were applied.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-taxes-addon/21841828','https://s3.envato.com/files/257314926/29taxes.jpg',39.00,483,3.00,3,'2018-04-29 02:29:54',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (32,21841856,'plugin',0,0,NULL,'Bookly Invoices (Add-on)','bookly-addon-invoices','Do you need need to invoice your clients without routine? With Bookly Invoices add-on, you can automatically issue invoices to your clients after your service is booked. Send a payment request when appointments are booked, approved, or received, and get paid within a specified period. Take advantage of the automatic online invoicing and let your clients pay for your services quickly and easily.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n','https://codecanyon.net/item/bookly-invoices-addon/21841856','https://s3.envato.com/files/276228740/icon_80x80.jpg',39.00,841,0.00,1,'2018-04-29 02:30:22',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (33,21841871,'plugin',0,0,NULL,'Bookly Google Maps Address (Add-on)','bookly-addon-google-maps-address','Would you like to reduce Bookly form fill-in time and increase the conversion rate? Bookly Google Maps Address add-on simplifies the process of address data entry allowing you to use an autocomplete service. It helps to minimize the funnel friction, which leads to a better conversion rate and more sales.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-google-maps-address-addon/21841871','https://s3.envato.com/files/257314833/26googlemaps.jpg',29.00,399,4.67,3,'2018-04-29 02:45:11',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (34,22060579,'plugin',0,0,NULL,'Bookly Advanced Google Calendar (Add-on)','bookly-addon-advanced-google-calendar','Are you used to Google Сalendar and want to leverage its capabilities together with Bookly? With  Bookly Advanced Google Calendar add-on, you get two-way synchronization between Bookly Calendar and Google Calendar so that you’ll always be able to see and manage all appointments in both calendars.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-advanced-google-calendar-addon/22060579','https://s3.envato.com/files/257314406/15googlecalendar.jpg',49.00,2335,4.44,9,'2018-06-06 04:37:53',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (35,22060627,'plugin',0,0,NULL,'Bookly Customer Cabinet (Add-on)','bookly-addon-customer-cabinet','Do you need even more flexibility and let your customers manage their existing appointments and profile info? With Bookly Customer Cabinet add-on, Bookly becomes fully GDPR compliant and allows your users to control their data and appointments on your website in their personal user account. \r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-customer-cabinet-addon/22060627','https://s3.envato.com/files/257314653/19customercabinet.jpg',29.00,1458,3.89,9,'2018-06-06 04:39:24',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (36,22060703,'plugin',0,0,NULL,'Bookly Custom Duration (Add-on)','bookly-addon-custom-duration','Do you sell services which may have a flexible duration like tutoring, training, consulting, etc.? With Bookly Custom Duration add-on, your customers can define the length of the appointment. The price will be calculated accordingly.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-custom-duration-addon/22060703','https://s3.envato.com/files/277098076/icon_80x80.jpg',29.00,1062,4.33,6,'2018-06-06 04:42:30',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (37,22060797,'plugin',0,0,NULL,'Bookly PayUbiz (Add-on)','bookly-addon-payu-biz','Accept payments online to reduce the funnel friction and boost your sales. PayUbiz is a payment gateway provider, which also supports most popular payment options in India and is a perfect fit for businesses, which provide services in the Indian market.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.','https://codecanyon.net/item/bookly-payubiz-addon/22060797','https://s3.envato.com/files/257315098/36payubiz.jpg',29.00,19,0.00,1,'2018-06-06 04:52:32',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (38,22999600,'plugin',0,0,NULL,'Bookly Tasks (Add-on) ','bookly-addon-tasks','Bookly Tasks add-on allows you and your customers to create bookings without choosing date and time.','https://codecanyon.net/item/bookly-tasks-addon/22999600','https://s3.envato.com/files/257552116/icon_80x80.jpg',29.00,345,0.00,1,'2018-12-12 00:17:51',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (39,22999632,'plugin',0,0,NULL,'Bookly Collaborative Services (Add-on)','bookly-addon-collaborative-services','Bookly Collaborative Services add-on allows you to create services that require simultaneous participation of several staff members or staff member and shared resources necessary for the service performance.','https://codecanyon.net/item/bookly-collaborative-services-addon/22999632','https://s3.envato.com/files/257552412/icon_80x80.jpg',39.00,494,0.00,0,'2018-12-12 00:22:29',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (40,23324001,'plugin',0,0,NULL,'Bookly Custom Statuses (Add-on)','bookly-addon-custom-statuses','Bookly Custom Statuses add-on allows you to create and use additional statuses for the appointment.','https://codecanyon.net/item/bookly-custom-statuses-addon/23324001','https://s3.envato.com/files/260657848/icon_80x80.jpg',29.00,381,0.00,2,'2019-02-18 20:10:01',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (41,23350952,'plugin',0,0,NULL,'Bookly Outlook Calendar (Add-on)','bookly-addon-outlook-calendar','Bookly Outlook Calendar add-on allows you to get a full two-way synchronization between Bookly Calendar and Outlook Calendar.','https://codecanyon.net/item/bookly-outlook-calendar-addon/23350952','https://s3.envato.com/files/260900000/icon_80x80(1).jpg',49.00,681,2.33,3,'2019-02-21 23:33:34',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (42,24219988,'plugin',0,0,NULL,'Bookly PayPal Checkout (Add-on)','bookly-addon-paypal-checkout','Bookly PayPal Checkout add-on allows your client to use PayPal Checkout payment method.','https://codecanyon.net/item/bookly-paypal-checkout-addon/24219988','https://s3.envato.com/files/268224387/icon_80x80.jpg',29.00,465,0.00,0,'2019-07-30 18:31:46',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (43,29936495,'plugin',0,0,NULL,'Bookly Discounts (Add-on)','bookly-addon-discounts','Bookly Discounts add-on allows you to set up conditional discounts that will be applied during checkout if the booking details match requirements set by you.','https://codecanyon.net/item/bookly-discounts-addon/29936495','https://s3.envato.com/files/317556319/icon_80x80.jpg',29.00,141,0.00,0,'2021-01-05 01:18:25',1,'2021-12-15 03:19:11');
INSERT INTO `wp_bookly_shop` VALUES (44,34925755,'plugin',0,0,NULL,'Bookly Mailchimp (Add-on)','bookly-addon-mailchimp','Bookly Mailchimp add-on allows you to automatically export your customers contact information to your mailing list.','https://codecanyon.net/item/bookly-mailchimp-addon/34925755','https://s3.envato.com/files/366451641/icon_80x80.jpg',29.00,12,0.00,0,'2021-11-24 03:10:56',1,'2021-12-15 03:19:11');
/*!40000 ALTER TABLE `wp_bookly_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_staff`
--

DROP TABLE IF EXISTS `wp_bookly_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `wp_user_id` bigint(20) unsigned DEFAULT NULL,
  `attachment_id` int(10) unsigned DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_520_ci,
  `working_time_limit` int(10) unsigned DEFAULT NULL,
  `visibility` enum('public','private','archive') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `position` int(11) NOT NULL DEFAULT '9999',
  `google_data` text COLLATE utf8mb4_unicode_520_ci,
  `outlook_data` text COLLATE utf8mb4_unicode_520_ci,
  `zoom_authentication` enum('default','jwt','oauth') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default',
  `zoom_jwt_api_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zoom_jwt_api_secret` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zoom_oauth_token` text COLLATE utf8mb4_unicode_520_ci,
  `icalendar` tinyint(1) NOT NULL DEFAULT '0',
  `icalendar_token` text COLLATE utf8mb4_unicode_520_ci,
  `icalendar_days_before` int(11) NOT NULL DEFAULT '365',
  `icalendar_days_after` int(11) NOT NULL DEFAULT '365',
  `color` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#dddddd',
  `gateways` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_staff`
--

LOCK TABLES `wp_bookly_staff` WRITE;
/*!40000 ALTER TABLE `wp_bookly_staff` DISABLE KEYS */;
INSERT INTO `wp_bookly_staff` VALUES (1,NULL,0,0,'Test Pro','dev@yellowrocketdigital.com','',NULL,'',NULL,'public',1,NULL,NULL,'default',NULL,NULL,NULL,0,'4410f9290c27769ef903773bafa0b09a',365,365,'#288B73',NULL);
/*!40000 ALTER TABLE `wp_bookly_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_staff_schedule_items`
--

DROP TABLE IF EXISTS `wp_bookly_staff_schedule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_staff_schedule_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `day_index` int(10) unsigned NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ids_idx` (`staff_id`,`day_index`,`location_id`),
  CONSTRAINT `wp_bookly_staff_schedule_items_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_staff_schedule_items`
--

LOCK TABLES `wp_bookly_staff_schedule_items` WRITE;
/*!40000 ALTER TABLE `wp_bookly_staff_schedule_items` DISABLE KEYS */;
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (1,1,NULL,1,NULL,NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (2,1,NULL,2,'08:00:00','18:00:00');
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (3,1,NULL,3,'08:00:00','18:00:00');
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (4,1,NULL,4,'08:00:00','18:00:00');
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (5,1,NULL,5,'08:00:00','18:00:00');
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (6,1,NULL,6,'08:00:00','18:00:00');
INSERT INTO `wp_bookly_staff_schedule_items` VALUES (7,1,NULL,7,NULL,NULL);
/*!40000 ALTER TABLE `wp_bookly_staff_schedule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_staff_services`
--

DROP TABLE IF EXISTS `wp_bookly_staff_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_staff_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deposit` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '100%',
  `capacity_min` int(11) NOT NULL DEFAULT '1',
  `capacity_max` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ids_idx` (`staff_id`,`service_id`,`location_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `wp_bookly_staff_services_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_staff_services_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_staff_services`
--

LOCK TABLES `wp_bookly_staff_services` WRITE;
/*!40000 ALTER TABLE `wp_bookly_staff_services` DISABLE KEYS */;
INSERT INTO `wp_bookly_staff_services` VALUES (1,1,1,NULL,120.00,'100%',1,1);
/*!40000 ALTER TABLE `wp_bookly_staff_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_stats`
--

DROP TABLE IF EXISTS `wp_bookly_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_stats`
--

LOCK TABLES `wp_bookly_stats` WRITE;
/*!40000 ALTER TABLE `wp_bookly_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bookly_sub_services`
--

DROP TABLE IF EXISTS `wp_bookly_sub_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bookly_sub_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('service','spare_time') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'service',
  `service_id` int(10) unsigned NOT NULL,
  `sub_service_id` int(10) unsigned DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  KEY `sub_service_id` (`sub_service_id`),
  CONSTRAINT `wp_bookly_sub_services_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_sub_services_ibfk_2` FOREIGN KEY (`sub_service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bookly_sub_services`
--

LOCK TABLES `wp_bookly_sub_services` WRITE;
/*!40000 ALTER TABLE `wp_bookly_sub_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bookly_sub_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-10-18 04:20:15','2021-10-18 04:20:15','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cpappbk_forms`
--

DROP TABLE IF EXISTS `wp_cpappbk_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cpappbk_forms` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `form_structure` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `calendar_language` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_format` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pay_later_label` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultstatus` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultpaidstatus` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_from_email` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `fp_subject` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_inc_additional_info` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `fp_emailformat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailtomethod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_user_email_field` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_subject` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `cu_emailformat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_maxapp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_is_required` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_is_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_datemmddyyyy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_dateddmmyyyy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_digits` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_max` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_min` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_pageof` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_submitbtn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_previousbtn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_nextbtn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_quantity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_cancel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_cost` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_nmore` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cp_user_access` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `cp_user_access_settings` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `display_emails_endtime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_enable` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_days` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_hour` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_emails` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `rep_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `rep_emailformat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `cv_enable_captcha` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_width` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_height` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_chars` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_font` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_background` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_border` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cpappbk_forms`
--

LOCK TABLES `wp_cpappbk_forms` WRITE;
/*!40000 ALTER TABLE `wp_cpappbk_forms` DISABLE KEYS */;
INSERT INTO `wp_cpappbk_forms` VALUES (1,'Form 1','[[{\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fapp\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Appointment\",\"services\":[{\"name\":\"Service 1\",\"price\":1,\"duration\":60}],\"openhours\":[{\"name\":\"Default\",\"openhours\":[{\"type\":\"all\",\"d\":\"\",\"h1\":8,\"m1\":0,\"h2\":17,\"m2\":0}]}],\"allOH\":[{\"name\":\"Default\",\"openhours\":[{\"type\":\"all\",\"d\":\"\",\"h1\":8,\"m1\":0,\"h2\":17,\"m2\":0}]}],\"dateFormat\":\"mm/dd/yy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"working_dates\":[true,true,true,true,true,true,true],\"numberOfMonths\":1,\"firstDay\":0,\"minDate\":\"0\",\"maxDate\":\"\",\"defaultDate\":\"\",\"invalidDates\":\"\",\"required\":true,\"fBuild\":{}},{\"form_identifier\":\"\",\"name\":\"email\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"femail\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Email\",\"predefined\":\"\",\"predefinedClick\":false,\"required\":true,\"size\":\"medium\",\"equalTo\":\"\",\"fBuild\":{}}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"autocomplete\":1}]]','','mm/dd/yy','Booking','Pay later','','','dev-email@flywheel.local','dev-email@flywheel.local','Notification to administrator: Booking request received...','true','http://matriarchy-build.local','The following booking request has been received:\n\n<%INFO%>\n\n','text','','','true','email','Confirmation: Your booking has been received...','Your appointment is received. We look forward to seeing you then.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.','text','','Please select a max of  {0} appointments per customer.','This field is required.','Please enter a valid email address.','Please enter a valid date with this format(mm/dd/yyyy)','Please enter a valid date with this format(dd/mm/yyyy)','Please enter a valid number.','Please enter only digits.','Please enter a value less than or equal to {0}.','Please enter a value greater than or equal to {0}.','Page {0} of {0}','Submit','Previous','Next','Quantity','Cancel','Cost','Selected time is no longer available. Please select a different time.',NULL,'','','no','1','0','','Submissions report...','text','Attached you will find the data from the form submissions.','true','180','60','5','font1','25','35','200','4','ffffff','000000','Please enter a valid captcha code.');
/*!40000 ALTER TABLE `wp_cpappbk_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_cpappbk_messages`
--

DROP TABLE IF EXISTS `wp_cpappbk_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_cpappbk_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ipaddr` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notifyto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `posted_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `whoadded` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_cpappbk_messages`
--

LOCK TABLES `wp_cpappbk_messages` WRITE;
/*!40000 ALTER TABLE `wp_cpappbk_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_cpappbk_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_login_redirects`
--

DROP TABLE IF EXISTS `wp_login_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_login_redirects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rul_type` enum('user','role','level','all','register') NOT NULL,
  `rul_value` varchar(191) DEFAULT NULL,
  `rul_url` longtext,
  `rul_url_logout` longtext,
  `rul_order` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_login_redirects`
--

LOCK TABLES `wp_login_redirects` WRITE;
/*!40000 ALTER TABLE `wp_login_redirects` DISABLE KEYS */;
INSERT INTO `wp_login_redirects` VALUES (1,'all',NULL,'/login/','/logout/',0);
INSERT INTO `wp_login_redirects` VALUES (2,'register',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `wp_login_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Matriarchy Build','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:186:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:6:\"pro/?$\";s:23:\"index.php?post_type=pro\";s:36:\"pro/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=pro&feed=$matches[1]\";s:31:\"pro/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=pro&feed=$matches[1]\";s:23:\"pro/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=pro&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"pro/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"pro/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"pro/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"pro/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"pro/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"pro/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"pro/([^/]+)/embed/?$\";s:36:\"index.php?pro=$matches[1]&embed=true\";s:24:\"pro/([^/]+)/trackback/?$\";s:30:\"index.php?pro=$matches[1]&tb=1\";s:44:\"pro/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?pro=$matches[1]&feed=$matches[2]\";s:39:\"pro/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?pro=$matches[1]&feed=$matches[2]\";s:32:\"pro/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?pro=$matches[1]&paged=$matches[2]\";s:39:\"pro/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?pro=$matches[1]&cpage=$matches[2]\";s:29:\"pro/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?pro=$matches[1]&wc-api=$matches[3]\";s:35:\"pro/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\"pro/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:28:\"pro/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?pro=$matches[1]&page=$matches[2]\";s:20:\"pro/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"pro/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"pro/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"pro/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"pro/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"pro/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"pros/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pros=$matches[1]&feed=$matches[2]\";s:40:\"pros/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pros=$matches[1]&feed=$matches[2]\";s:21:\"pros/([^/]+)/embed/?$\";s:37:\"index.php?pros=$matches[1]&embed=true\";s:33:\"pros/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?pros=$matches[1]&paged=$matches[2]\";s:15:\"pros/([^/]+)/?$\";s:26:\"index.php?pros=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"bookly-responsive-appointment-booking-tool/main.php\";i:2;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','matriarchy-build','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','matriarchy-build','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','large','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','none','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:51:\"bookly-responsive-appointment-booking-tool/main.php\";a:2:{i:0;s:17:\"Bookly\\Lib\\Plugin\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','10','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1650082814','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary_widget_area\";a:0:{}s:21:\"secondary_widget_area\";a:0:{}s:17:\"third_widget_area\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:17:{i:1639571638;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1639572240;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639572241;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639572258;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639572729;a:2:{s:20:\"bookly_daily_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"bookly_hourly_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639574418;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1639574658;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1639585218;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1639593841;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639593850;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639602590;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639604640;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639612800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1639628418;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640060418;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1640717100;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','%Ez2qxUlu.f~jHl<2~P`AY:n<iE8|)pIN4kO_FF2Q[X!b)Bc]za^}Hx2fMT)vYlx','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','4l/v*NcTkXO?Rm!H6X<$BS#,LiY3M!&V!OgS_:p JPKJ6M-{v@-y[@=qxL YKk;J','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635024316;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1639571059;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639571059;s:7:\"checked\";a:4:{s:16:\"matriarchy-build\";s:5:\"3.0.3\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (135,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":5,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'current_theme','Matriarchy Build v0.1','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_JointsWP','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635023752;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'theme_mods_matriarchybuild','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"main-nav\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635038296;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (165,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (175,'theme_mods_matriarchy-build','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (177,'recovery_mode_email_last_sent','1636847143','yes');
INSERT INTO `wp_options` VALUES (232,'recently_activated','a:1:{s:47:\"appointment-hour-booking/app-booking-plugin.php\";i:1639054255;}','yes');
INSERT INTO `wp_options` VALUES (233,'acf_version','5.11.4','yes');
INSERT INTO `wp_options` VALUES (268,'rul_version','3.0.0.5','no');
INSERT INTO `wp_options` VALUES (269,'loginwp_from_ab_initio','true','yes');
INSERT INTO `wp_options` VALUES (270,'loginwp_install_date','2021-11-13 18:39:45','yes');
INSERT INTO `wp_options` VALUES (275,'action_scheduler_hybrid_store_demarkation','24','yes');
INSERT INTO `wp_options` VALUES (276,'schema-ActionScheduler_StoreSchema','5.0.1636829038','yes');
INSERT INTO `wp_options` VALUES (277,'schema-ActionScheduler_LoggerSchema','3.0.1636829038','yes');
INSERT INTO `wp_options` VALUES (280,'woocommerce_schema_version','430','yes');
INSERT INTO `wp_options` VALUES (281,'woocommerce_store_address','','yes');
INSERT INTO `wp_options` VALUES (282,'woocommerce_store_address_2','','yes');
INSERT INTO `wp_options` VALUES (283,'woocommerce_store_city','','yes');
INSERT INTO `wp_options` VALUES (284,'woocommerce_default_country','US:CA','yes');
INSERT INTO `wp_options` VALUES (285,'woocommerce_store_postcode','','yes');
INSERT INTO `wp_options` VALUES (286,'woocommerce_allowed_countries','all','yes');
INSERT INTO `wp_options` VALUES (287,'woocommerce_all_except_countries','','yes');
INSERT INTO `wp_options` VALUES (288,'woocommerce_specific_allowed_countries','','yes');
INSERT INTO `wp_options` VALUES (289,'woocommerce_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (290,'woocommerce_specific_ship_to_countries','','yes');
INSERT INTO `wp_options` VALUES (291,'woocommerce_default_customer_address','base','yes');
INSERT INTO `wp_options` VALUES (292,'woocommerce_calc_taxes','no','yes');
INSERT INTO `wp_options` VALUES (293,'woocommerce_enable_coupons','yes','yes');
INSERT INTO `wp_options` VALUES (294,'woocommerce_calc_discounts_sequentially','no','no');
INSERT INTO `wp_options` VALUES (295,'woocommerce_currency','USD','yes');
INSERT INTO `wp_options` VALUES (296,'woocommerce_currency_pos','left','yes');
INSERT INTO `wp_options` VALUES (297,'woocommerce_price_thousand_sep',',','yes');
INSERT INTO `wp_options` VALUES (298,'woocommerce_price_decimal_sep','.','yes');
INSERT INTO `wp_options` VALUES (299,'woocommerce_price_num_decimals','2','yes');
INSERT INTO `wp_options` VALUES (300,'woocommerce_shop_page_id','25','yes');
INSERT INTO `wp_options` VALUES (301,'woocommerce_cart_redirect_after_add','no','yes');
INSERT INTO `wp_options` VALUES (302,'woocommerce_enable_ajax_add_to_cart','yes','yes');
INSERT INTO `wp_options` VALUES (303,'woocommerce_placeholder_image','24','yes');
INSERT INTO `wp_options` VALUES (304,'woocommerce_weight_unit','kg','yes');
INSERT INTO `wp_options` VALUES (305,'woocommerce_dimension_unit','cm','yes');
INSERT INTO `wp_options` VALUES (306,'woocommerce_enable_reviews','yes','yes');
INSERT INTO `wp_options` VALUES (307,'woocommerce_review_rating_verification_label','yes','no');
INSERT INTO `wp_options` VALUES (308,'woocommerce_review_rating_verification_required','no','no');
INSERT INTO `wp_options` VALUES (309,'woocommerce_enable_review_rating','yes','yes');
INSERT INTO `wp_options` VALUES (310,'woocommerce_review_rating_required','yes','no');
INSERT INTO `wp_options` VALUES (311,'woocommerce_manage_stock','yes','yes');
INSERT INTO `wp_options` VALUES (312,'woocommerce_hold_stock_minutes','60','no');
INSERT INTO `wp_options` VALUES (313,'woocommerce_notify_low_stock','yes','no');
INSERT INTO `wp_options` VALUES (314,'woocommerce_notify_no_stock','yes','no');
INSERT INTO `wp_options` VALUES (315,'woocommerce_stock_email_recipient','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (316,'woocommerce_notify_low_stock_amount','2','no');
INSERT INTO `wp_options` VALUES (317,'woocommerce_notify_no_stock_amount','0','yes');
INSERT INTO `wp_options` VALUES (318,'woocommerce_hide_out_of_stock_items','no','yes');
INSERT INTO `wp_options` VALUES (319,'woocommerce_stock_format','','yes');
INSERT INTO `wp_options` VALUES (320,'woocommerce_file_download_method','force','no');
INSERT INTO `wp_options` VALUES (321,'woocommerce_downloads_redirect_fallback_allowed','no','no');
INSERT INTO `wp_options` VALUES (322,'woocommerce_downloads_require_login','no','no');
INSERT INTO `wp_options` VALUES (323,'woocommerce_downloads_grant_access_after_payment','yes','no');
INSERT INTO `wp_options` VALUES (324,'woocommerce_downloads_add_hash_to_filename','yes','yes');
INSERT INTO `wp_options` VALUES (325,'woocommerce_prices_include_tax','no','yes');
INSERT INTO `wp_options` VALUES (326,'woocommerce_tax_based_on','shipping','yes');
INSERT INTO `wp_options` VALUES (327,'woocommerce_shipping_tax_class','inherit','yes');
INSERT INTO `wp_options` VALUES (328,'woocommerce_tax_round_at_subtotal','no','yes');
INSERT INTO `wp_options` VALUES (329,'woocommerce_tax_classes','','yes');
INSERT INTO `wp_options` VALUES (330,'woocommerce_tax_display_shop','excl','yes');
INSERT INTO `wp_options` VALUES (331,'woocommerce_tax_display_cart','excl','yes');
INSERT INTO `wp_options` VALUES (332,'woocommerce_price_display_suffix','','yes');
INSERT INTO `wp_options` VALUES (333,'woocommerce_tax_total_display','itemized','no');
INSERT INTO `wp_options` VALUES (334,'woocommerce_enable_shipping_calc','yes','no');
INSERT INTO `wp_options` VALUES (335,'woocommerce_shipping_cost_requires_address','no','yes');
INSERT INTO `wp_options` VALUES (336,'woocommerce_ship_to_destination','billing','no');
INSERT INTO `wp_options` VALUES (337,'woocommerce_shipping_debug_mode','no','yes');
INSERT INTO `wp_options` VALUES (338,'woocommerce_enable_guest_checkout','yes','no');
INSERT INTO `wp_options` VALUES (339,'woocommerce_enable_checkout_login_reminder','no','no');
INSERT INTO `wp_options` VALUES (340,'woocommerce_enable_signup_and_login_from_checkout','no','no');
INSERT INTO `wp_options` VALUES (341,'woocommerce_enable_myaccount_registration','no','no');
INSERT INTO `wp_options` VALUES (342,'woocommerce_registration_generate_username','yes','no');
INSERT INTO `wp_options` VALUES (343,'woocommerce_registration_generate_password','yes','no');
INSERT INTO `wp_options` VALUES (344,'woocommerce_erasure_request_removes_order_data','no','no');
INSERT INTO `wp_options` VALUES (345,'woocommerce_erasure_request_removes_download_data','no','no');
INSERT INTO `wp_options` VALUES (346,'woocommerce_allow_bulk_remove_personal_data','no','no');
INSERT INTO `wp_options` VALUES (347,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (348,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','yes');
INSERT INTO `wp_options` VALUES (349,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (350,'woocommerce_trash_pending_orders','','no');
INSERT INTO `wp_options` VALUES (351,'woocommerce_trash_failed_orders','','no');
INSERT INTO `wp_options` VALUES (352,'woocommerce_trash_cancelled_orders','','no');
INSERT INTO `wp_options` VALUES (353,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no');
INSERT INTO `wp_options` VALUES (354,'woocommerce_email_from_name','Matriarchy Build','no');
INSERT INTO `wp_options` VALUES (355,'woocommerce_email_from_address','dev-email@flywheel.local','no');
INSERT INTO `wp_options` VALUES (356,'woocommerce_email_header_image','','no');
INSERT INTO `wp_options` VALUES (357,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no');
INSERT INTO `wp_options` VALUES (358,'woocommerce_email_base_color','#96588a','no');
INSERT INTO `wp_options` VALUES (359,'woocommerce_email_background_color','#f7f7f7','no');
INSERT INTO `wp_options` VALUES (360,'woocommerce_email_body_background_color','#ffffff','no');
INSERT INTO `wp_options` VALUES (361,'woocommerce_email_text_color','#3c3c3c','no');
INSERT INTO `wp_options` VALUES (362,'woocommerce_merchant_email_notifications','no','no');
INSERT INTO `wp_options` VALUES (363,'woocommerce_cart_page_id','26','no');
INSERT INTO `wp_options` VALUES (364,'woocommerce_checkout_page_id','27','no');
INSERT INTO `wp_options` VALUES (365,'woocommerce_myaccount_page_id','28','no');
INSERT INTO `wp_options` VALUES (366,'woocommerce_terms_page_id','','no');
INSERT INTO `wp_options` VALUES (367,'woocommerce_force_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (368,'woocommerce_unforce_ssl_checkout','no','yes');
INSERT INTO `wp_options` VALUES (369,'woocommerce_checkout_pay_endpoint','order-pay','yes');
INSERT INTO `wp_options` VALUES (370,'woocommerce_checkout_order_received_endpoint','order-received','yes');
INSERT INTO `wp_options` VALUES (371,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes');
INSERT INTO `wp_options` VALUES (372,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes');
INSERT INTO `wp_options` VALUES (373,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes');
INSERT INTO `wp_options` VALUES (374,'woocommerce_myaccount_orders_endpoint','orders','yes');
INSERT INTO `wp_options` VALUES (375,'woocommerce_myaccount_view_order_endpoint','view-order','yes');
INSERT INTO `wp_options` VALUES (376,'woocommerce_myaccount_downloads_endpoint','downloads','yes');
INSERT INTO `wp_options` VALUES (377,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes');
INSERT INTO `wp_options` VALUES (378,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes');
INSERT INTO `wp_options` VALUES (379,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes');
INSERT INTO `wp_options` VALUES (380,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes');
INSERT INTO `wp_options` VALUES (381,'woocommerce_logout_endpoint','customer-logout','yes');
INSERT INTO `wp_options` VALUES (382,'woocommerce_api_enabled','no','yes');
INSERT INTO `wp_options` VALUES (383,'woocommerce_allow_tracking','no','no');
INSERT INTO `wp_options` VALUES (384,'woocommerce_show_marketplace_suggestions','yes','no');
INSERT INTO `wp_options` VALUES (385,'woocommerce_single_image_width','600','yes');
INSERT INTO `wp_options` VALUES (386,'woocommerce_thumbnail_image_width','300','yes');
INSERT INTO `wp_options` VALUES (387,'woocommerce_checkout_highlight_required_fields','yes','yes');
INSERT INTO `wp_options` VALUES (388,'woocommerce_demo_store','no','no');
INSERT INTO `wp_options` VALUES (389,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (390,'current_theme_supports_woocommerce','no','yes');
INSERT INTO `wp_options` VALUES (391,'woocommerce_queue_flush_rewrite_rules','no','yes');
INSERT INTO `wp_options` VALUES (392,'_transient_wc_attribute_taxonomies','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (393,'product_cat_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (394,'default_product_cat','17','yes');
INSERT INTO `wp_options` VALUES (396,'woocommerce_refund_returns_page_id','29','yes');
INSERT INTO `wp_options` VALUES (399,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"dev-email@flywheel.local\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (400,'woocommerce_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (401,'woocommerce_db_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (402,'woocommerce_inbox_variant_assignment','8','yes');
INSERT INTO `wp_options` VALUES (406,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','yes');
INSERT INTO `wp_options` VALUES (407,'action_scheduler_lock_async-request-runner','1639571658','yes');
INSERT INTO `wp_options` VALUES (408,'woocommerce_admin_notices','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (409,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"u3oYXIRwQpqH06yF8Nw5vzR1Tjwd84le\";}','yes');
INSERT INTO `wp_options` VALUES (410,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (411,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (412,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (413,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (414,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (415,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (416,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (417,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (418,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (419,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (420,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (421,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (422,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (425,'woocommerce_admin_version','2.8.0','yes');
INSERT INTO `wp_options` VALUES (426,'woocommerce_admin_install_timestamp','1636829041','yes');
INSERT INTO `wp_options` VALUES (427,'wc_remote_inbox_notifications_wca_updated','','no');
INSERT INTO `wp_options` VALUES (428,'wc_remote_inbox_notifications_specs','a:0:{}','no');
INSERT INTO `wp_options` VALUES (432,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (433,'wc_blocks_surface_cart_checkout_probability','59','yes');
INSERT INTO `wp_options` VALUES (434,'wc_blocks_db_schema_version','260','yes');
INSERT INTO `wp_options` VALUES (435,'woocommerce_meta_box_errors','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (436,'wc_remote_inbox_notifications_stored_state','O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}','no');
INSERT INTO `wp_options` VALUES (437,'_transient_woocommerce_reports-transient-version','1636829043','yes');
INSERT INTO `wp_options` VALUES (448,'woocommerce_onboarding_profile','a:1:{s:7:\"skipped\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (457,'woocommerce_task_list_welcome_modal_dismissed','yes','yes');
INSERT INTO `wp_options` VALUES (464,'woocommerce_marketplace_suggestions','a:2:{s:11:\"suggestions\";a:0:{}s:7:\"updated\";i:1639538349;}','no');
INSERT INTO `wp_options` VALUES (471,'_transient_shipping-transient-version','1636829226','yes');
INSERT INTO `wp_options` VALUES (474,'_transient_product_query-transient-version','1639051983','yes');
INSERT INTO `wp_options` VALUES (482,'mo_dismiss_adnotice','true','yes');
INSERT INTO `wp_options` VALUES (731,'wc_stripe_wh_monitor_began_at','1638322344','yes');
INSERT INTO `wp_options` VALUES (732,'wc_stripe_wh_last_success_at','0','yes');
INSERT INTO `wp_options` VALUES (733,'wc_stripe_wh_last_failure_at','0','yes');
INSERT INTO `wp_options` VALUES (734,'wc_stripe_wh_last_error','validation_succeeded','yes');
INSERT INTO `wp_options` VALUES (736,'wc_stripe_show_style_notice','no','yes');
INSERT INTO `wp_options` VALUES (737,'wc_stripe_show_sca_notice','no','yes');
INSERT INTO `wp_options` VALUES (741,'woocommerce_stripe_settings','a:25:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:11:\"Credit Card\";s:11:\"description\";s:37:\"Pay with your credit card via Stripe.\";s:15:\"api_credentials\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:20:\"test_publishable_key\";s:107:\"pk_test_51K1hi7FpukNBissoWfNpRrEA0oPDTIasw2jJqeuKzH9hFupn3zs4s5JaucEoZD5739GSiacbZN07efFOXSP5u33o00HYzMe6tv\";s:15:\"test_secret_key\";s:107:\"sk_test_51K1hi7FpukNBissopfVTcQBtNKxGzfAPvDtdk2iQbB4FklAttSCltuJkvHUK9oOoVV1yUopfrb8vEfrGK06FaR1300NO1YtOai\";s:15:\"publishable_key\";N;s:10:\"secret_key\";N;s:7:\"webhook\";s:0:\"\";s:19:\"test_webhook_secret\";s:0:\"\";s:14:\"webhook_secret\";N;s:14:\"inline_cc_form\";s:2:\"no\";s:20:\"statement_descriptor\";s:0:\"\";s:7:\"capture\";s:3:\"yes\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:32:\"payment_request_button_locations\";a:3:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";}s:27:\"payment_request_button_size\";s:7:\"default\";s:11:\"saved_cards\";s:3:\"yes\";s:7:\"logging\";s:2:\"no\";s:31:\"upe_checkout_experience_enabled\";s:2:\"no\";s:9:\"title_upe\";s:0:\"\";s:37:\"is_short_statement_descriptor_enabled\";s:2:\"no\";}','yes');
INSERT INTO `wp_options` VALUES (742,'wc_stripe_wh_test_monitor_began_at','1638322542','yes');
INSERT INTO `wp_options` VALUES (743,'wc_stripe_wh_test_last_success_at','0','yes');
INSERT INTO `wp_options` VALUES (744,'wc_stripe_wh_test_last_failure_at','0','yes');
INSERT INTO `wp_options` VALUES (745,'wc_stripe_wh_test_last_error','validation_succeeded','yes');
INSERT INTO `wp_options` VALUES (754,'_transient_product-transient-version','1638322806','yes');
INSERT INTO `wp_options` VALUES (768,'_transient_timeout_wc_product_children_51','1640914814','no');
INSERT INTO `wp_options` VALUES (769,'_transient_wc_product_children_51','a:2:{s:3:\"all\";a:2:{i:0;i:52;i:1;i:53;}s:7:\"visible\";a:2:{i:0;i:52;i:1;i:53;}}','no');
INSERT INTO `wp_options` VALUES (770,'_transient_timeout_wc_var_prices_51','1640914815','no');
INSERT INTO `wp_options` VALUES (771,'_transient_wc_var_prices_51','{\"version\":\"1638322806\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"52\":\"89.99\",\"53\":\"153.99\"},\"regular_price\":{\"52\":\"89.99\",\"53\":\"153.99\"},\"sale_price\":{\"52\":\"89.99\",\"53\":\"153.99\"}}}','no');
INSERT INTO `wp_options` VALUES (772,'_transient_timeout_wc_child_has_weight_51','1640914816','no');
INSERT INTO `wp_options` VALUES (773,'_transient_wc_child_has_weight_51','0','no');
INSERT INTO `wp_options` VALUES (774,'_transient_timeout_wc_child_has_dimensions_51','1640914816','no');
INSERT INTO `wp_options` VALUES (775,'_transient_wc_child_has_dimensions_51','0','no');
INSERT INTO `wp_options` VALUES (817,'installed_appointment-hour-booking','1638391022','yes');
INSERT INTO `wp_options` VALUES (818,'cp_cpappb_last_verified','2021-12-09 12:50:19','yes');
INSERT INTO `wp_options` VALUES (819,'_transient_codepeople_promote_banner_appointment-hour-booking','1638391023','yes');
INSERT INTO `wp_options` VALUES (840,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1639656745','no');
INSERT INTO `wp_options` VALUES (841,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (843,'_site_transient_timeout_browser_7a1be88ae2876bc140d8e40ea8063137','1639656782','no');
INSERT INTO `wp_options` VALUES (844,'_site_transient_browser_7a1be88ae2876bc140d8e40ea8063137','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.93\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (876,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (879,'bookly_data_loaded','1','yes');
INSERT INTO `wp_options` VALUES (880,'bookly_db_version','20.4','yes');
INSERT INTO `wp_options` VALUES (881,'bookly_installation_time','1639054329','yes');
INSERT INTO `wp_options` VALUES (883,'bookly_admin_preferred_language','','yes');
INSERT INTO `wp_options` VALUES (884,'bookly_app_color','#f4662f','yes');
INSERT INTO `wp_options` VALUES (885,'bookly_app_custom_styles','','yes');
INSERT INTO `wp_options` VALUES (886,'bookly_app_required_employee','0','yes');
INSERT INTO `wp_options` VALUES (887,'bookly_app_service_name_with_duration','0','yes');
INSERT INTO `wp_options` VALUES (888,'bookly_app_show_blocked_timeslots','0','yes');
INSERT INTO `wp_options` VALUES (889,'bookly_app_show_calendar','0','yes');
INSERT INTO `wp_options` VALUES (890,'bookly_app_show_day_one_column','0','yes');
INSERT INTO `wp_options` VALUES (891,'bookly_app_show_login_button','0','yes');
INSERT INTO `wp_options` VALUES (892,'bookly_app_show_notes','1','yes');
INSERT INTO `wp_options` VALUES (893,'bookly_app_show_progress_tracker','1','yes');
INSERT INTO `wp_options` VALUES (894,'bookly_app_align_buttons_left','0','yes');
INSERT INTO `wp_options` VALUES (895,'bookly_app_staff_name_with_price','1','yes');
INSERT INTO `wp_options` VALUES (896,'bookly_app_show_single_slot','0','yes');
INSERT INTO `wp_options` VALUES (897,'bookly_app_show_email_confirm','0','yes');
INSERT INTO `wp_options` VALUES (898,'bookly_app_show_start_over','1','yes');
INSERT INTO `wp_options` VALUES (899,'bookly_app_show_service_info','1','yes');
INSERT INTO `wp_options` VALUES (900,'bookly_app_show_staff_info','0','yes');
INSERT INTO `wp_options` VALUES (901,'bookly_app_show_terms','0','yes');
INSERT INTO `wp_options` VALUES (902,'bookly_app_show_download_ics','0','yes');
INSERT INTO `wp_options` VALUES (903,'bookly_l10n_button_apply','Apply','yes');
INSERT INTO `wp_options` VALUES (904,'bookly_l10n_button_back','Back','yes');
INSERT INTO `wp_options` VALUES (905,'bookly_l10n_button_download_ics','Download ICS','yes');
INSERT INTO `wp_options` VALUES (906,'bookly_l10n_info_complete_step','Thank you! Your booking is complete. An email with details of your booking has been sent to you.','yes');
INSERT INTO `wp_options` VALUES (907,'bookly_l10n_info_complete_step_limit_error','You are trying to use the service too often. Please contact us to make a booking.','yes');
INSERT INTO `wp_options` VALUES (908,'bookly_l10n_info_complete_step_processing','Your payment has been accepted for processing.','yes');
INSERT INTO `wp_options` VALUES (909,'bookly_l10n_info_details_step','You selected a booking for {service_name} by {staff_name} at {appointment_time} on {appointment_date}. The price for the service is {service_price}.\nPlease provide your details in the form below to proceed with booking.','yes');
INSERT INTO `wp_options` VALUES (910,'bookly_l10n_info_details_step_guest','','yes');
INSERT INTO `wp_options` VALUES (911,'bookly_l10n_info_payment_step_single_app','Please tell us how you would like to pay: ','yes');
INSERT INTO `wp_options` VALUES (912,'bookly_l10n_info_service_step','Please select service: ','yes');
INSERT INTO `wp_options` VALUES (913,'bookly_l10n_info_time_step','Below you can find a list of available time slots for {service_name} by {staff_name}.\nClick on a time slot to proceed with booking.','yes');
INSERT INTO `wp_options` VALUES (914,'bookly_l10n_label_category','Category','yes');
INSERT INTO `wp_options` VALUES (915,'bookly_l10n_label_email','Email','yes');
INSERT INTO `wp_options` VALUES (916,'bookly_l10n_label_email_confirm','Confirm email','yes');
INSERT INTO `wp_options` VALUES (917,'bookly_l10n_label_employee','Employee','yes');
INSERT INTO `wp_options` VALUES (918,'bookly_l10n_label_finish_by','Finish by','yes');
INSERT INTO `wp_options` VALUES (919,'bookly_l10n_label_name','Full name','yes');
INSERT INTO `wp_options` VALUES (920,'bookly_l10n_label_first_name','First name','yes');
INSERT INTO `wp_options` VALUES (921,'bookly_l10n_label_last_name','Last name','yes');
INSERT INTO `wp_options` VALUES (922,'bookly_l10n_label_notes','Notes','yes');
INSERT INTO `wp_options` VALUES (923,'bookly_l10n_label_pay_locally','I will pay locally','yes');
INSERT INTO `wp_options` VALUES (924,'bookly_l10n_label_pay_cloud_stripe','I will pay now with Credit Card','yes');
INSERT INTO `wp_options` VALUES (925,'bookly_l10n_label_phone','Phone','yes');
INSERT INTO `wp_options` VALUES (926,'bookly_l10n_label_select_date','I\'m available on or after','yes');
INSERT INTO `wp_options` VALUES (927,'bookly_l10n_label_service','Service','yes');
INSERT INTO `wp_options` VALUES (928,'bookly_l10n_label_start_from','Start from','yes');
INSERT INTO `wp_options` VALUES (929,'bookly_l10n_label_terms','I agree to the terms of service','yes');
INSERT INTO `wp_options` VALUES (930,'bookly_l10n_error_terms','You must accept our terms','yes');
INSERT INTO `wp_options` VALUES (931,'bookly_l10n_option_category','Select category','yes');
INSERT INTO `wp_options` VALUES (932,'bookly_l10n_option_employee','Any','yes');
INSERT INTO `wp_options` VALUES (933,'bookly_l10n_option_service','Select service','yes');
INSERT INTO `wp_options` VALUES (934,'bookly_l10n_option_day','Select day','yes');
INSERT INTO `wp_options` VALUES (935,'bookly_l10n_option_month','Select month','yes');
INSERT INTO `wp_options` VALUES (936,'bookly_l10n_option_year','Select year','yes');
INSERT INTO `wp_options` VALUES (937,'bookly_l10n_required_email','Please tell us your email','yes');
INSERT INTO `wp_options` VALUES (938,'bookly_l10n_email_in_use','This email is already in use','yes');
INSERT INTO `wp_options` VALUES (939,'bookly_l10n_email_confirm_not_match','Email confirmation doesn\'t match','yes');
INSERT INTO `wp_options` VALUES (940,'bookly_l10n_required_employee','Please select an employee','yes');
INSERT INTO `wp_options` VALUES (941,'bookly_l10n_required_name','Please tell us your name','yes');
INSERT INTO `wp_options` VALUES (942,'bookly_l10n_required_first_name','Please tell us your first name','yes');
INSERT INTO `wp_options` VALUES (943,'bookly_l10n_required_last_name','Please tell us your last name','yes');
INSERT INTO `wp_options` VALUES (944,'bookly_l10n_required_phone','Please tell us your phone','yes');
INSERT INTO `wp_options` VALUES (945,'bookly_l10n_required_service','Please select a service','yes');
INSERT INTO `wp_options` VALUES (946,'bookly_l10n_step_service','Service','yes');
INSERT INTO `wp_options` VALUES (947,'bookly_l10n_step_time','Time','yes');
INSERT INTO `wp_options` VALUES (948,'bookly_l10n_step_time_slot_not_available','The selected time is not available anymore. Please, choose another time slot.','yes');
INSERT INTO `wp_options` VALUES (949,'bookly_l10n_step_details','Details','yes');
INSERT INTO `wp_options` VALUES (950,'bookly_l10n_step_details_button_login','Login','yes');
INSERT INTO `wp_options` VALUES (951,'bookly_l10n_step_payment','Payment','yes');
INSERT INTO `wp_options` VALUES (952,'bookly_l10n_step_done','Done','yes');
INSERT INTO `wp_options` VALUES (953,'bookly_l10n_step_done_button_start_over','Start over','yes');
INSERT INTO `wp_options` VALUES (954,'bookly_l10n_step_service_service_info','{service_info}','yes');
INSERT INTO `wp_options` VALUES (955,'bookly_l10n_step_service_staff_info','{staff_info}','yes');
INSERT INTO `wp_options` VALUES (956,'bookly_l10n_step_service_button_next','Next','yes');
INSERT INTO `wp_options` VALUES (957,'bookly_l10n_step_service_mobile_button_next','Next','yes');
INSERT INTO `wp_options` VALUES (958,'bookly_l10n_step_details_button_next','Next','yes');
INSERT INTO `wp_options` VALUES (959,'bookly_l10n_step_payment_button_next','Next','yes');
INSERT INTO `wp_options` VALUES (960,'bookly_cal_show_only_business_days','1','yes');
INSERT INTO `wp_options` VALUES (961,'bookly_cal_show_only_business_hours','1','yes');
INSERT INTO `wp_options` VALUES (962,'bookly_cal_show_only_staff_with_appointments','1','yes');
INSERT INTO `wp_options` VALUES (963,'bookly_cal_one_participant','{service_name}\r\n{client_name}\r\n{client_phone}\r\n{client_email}\r\n{total_price} {payment_type} {payment_status}\r\nStatus: {status}\r\nSigned up: {signed_up}\r\nCapacity: {service_capacity}','yes');
INSERT INTO `wp_options` VALUES (964,'bookly_cal_many_participants','{service_name}\r\nSigned up: {signed_up}\r\nCapacity: {service_capacity}','yes');
INSERT INTO `wp_options` VALUES (965,'bookly_cal_coloring_mode','staff','yes');
INSERT INTO `wp_options` VALUES (966,'bookly_co_logo_attachment_id','','yes');
INSERT INTO `wp_options` VALUES (967,'bookly_co_name','Matriarchy Build','yes');
INSERT INTO `wp_options` VALUES (968,'bookly_co_address','','yes');
INSERT INTO `wp_options` VALUES (969,'bookly_co_phone','','yes');
INSERT INTO `wp_options` VALUES (970,'bookly_co_website','','yes');
INSERT INTO `wp_options` VALUES (971,'bookly_co_email','dev@yellowrocketdigital.com','yes');
INSERT INTO `wp_options` VALUES (972,'bookly_co_industry','41','yes');
INSERT INTO `wp_options` VALUES (973,'bookly_co_size','1','yes');
INSERT INTO `wp_options` VALUES (974,'bookly_cst_allow_duplicates','0','yes');
INSERT INTO `wp_options` VALUES (975,'bookly_cst_create_account','0','yes');
INSERT INTO `wp_options` VALUES (976,'bookly_cst_default_country_code','','yes');
INSERT INTO `wp_options` VALUES (977,'bookly_cst_first_last_name','0','yes');
INSERT INTO `wp_options` VALUES (978,'bookly_cst_phone_default_country','auto','yes');
INSERT INTO `wp_options` VALUES (979,'bookly_cst_remember_in_cookie','0','yes');
INSERT INTO `wp_options` VALUES (980,'bookly_cst_required_address','0','yes');
INSERT INTO `wp_options` VALUES (981,'bookly_cst_required_birthday','0','yes');
INSERT INTO `wp_options` VALUES (982,'bookly_cst_required_details','a:2:{i:0;s:5:\"phone\";i:1;s:5:\"email\";}','yes');
INSERT INTO `wp_options` VALUES (983,'bookly_cst_show_update_details_dialog','1','yes');
INSERT INTO `wp_options` VALUES (984,'bookly_cst_verify_customer_details','on_update','yes');
INSERT INTO `wp_options` VALUES (985,'bookly_email_sender','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (986,'bookly_email_sender_name','Matriarchy Build','yes');
INSERT INTO `wp_options` VALUES (987,'bookly_email_send_as','html','yes');
INSERT INTO `wp_options` VALUES (988,'bookly_email_reply_to_customers','1','yes');
INSERT INTO `wp_options` VALUES (989,'bookly_gen_time_slot_length','30','yes');
INSERT INTO `wp_options` VALUES (990,'bookly_gen_service_duration_as_slot_length','1','yes');
INSERT INTO `wp_options` VALUES (991,'bookly_gen_min_time_prior_booking','0','yes');
INSERT INTO `wp_options` VALUES (992,'bookly_gen_min_time_prior_cancel','0','yes');
INSERT INTO `wp_options` VALUES (993,'bookly_gen_max_days_for_booking','365','yes');
INSERT INTO `wp_options` VALUES (994,'bookly_gen_use_client_time_zone','1','yes');
INSERT INTO `wp_options` VALUES (995,'bookly_gen_allow_staff_edit_profile','1','yes');
INSERT INTO `wp_options` VALUES (996,'bookly_gen_link_assets_method','enqueue','yes');
INSERT INTO `wp_options` VALUES (997,'bookly_gen_collect_stats','0','yes');
INSERT INTO `wp_options` VALUES (998,'bookly_gen_show_powered_by','0','yes');
INSERT INTO `wp_options` VALUES (999,'bookly_gen_prevent_caching','1','yes');
INSERT INTO `wp_options` VALUES (1000,'bookly_gen_prevent_session_locking','0','yes');
INSERT INTO `wp_options` VALUES (1001,'bookly_url_approve_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1002,'bookly_url_approve_denied_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1003,'bookly_url_cancel_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1004,'bookly_url_cancel_denied_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1005,'bookly_url_reject_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1006,'bookly_url_reject_denied_page_url','http://matriarchy-build.local','yes');
INSERT INTO `wp_options` VALUES (1007,'bookly_sms_administrator_phone','','yes');
INSERT INTO `wp_options` VALUES (1008,'bookly_sms_undelivered_count','0','yes');
INSERT INTO `wp_options` VALUES (1009,'bookly_cloud_notify_low_balance','1','yes');
INSERT INTO `wp_options` VALUES (1010,'bookly_cloud_token','','yes');
INSERT INTO `wp_options` VALUES (1011,'bookly_cloud_products','a:3:{i:0;a:6:{s:2:\"id\";s:3:\"sms\";s:8:\"icon_url\";s:41:\"https://i.bookly.info/cloud/sms_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:17:\"SMS Notifications\";s:5:\"price\";s:13:\"Pay as you go\";s:11:\"description\";s:464:\"<p>With <strong>SMS Notifications</strong> service you will keep your customers and staff members informed about their bookings, reduce “no shows” and empty booking slots. The service offers a wide range of codes which you can use to <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212411309\" target=\"_blank\">personalize</a> your text messages.</p><p>Top up your balance with one of the standard amounts and never lose your bookings again.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:10:\"SMS Prices\";s:10:\"info-title\";s:10:\"SMS Prices\";}}i:1;a:6:{s:2:\"id\";s:6:\"stripe\";s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/stripe_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:15:\"Stripe Payments\";s:5:\"price\";s:39:\"0.9% <small>per-transaction fee</small>\";s:11:\"description\";s:356:\"<p>With <strong>Stripe Payments</strong> activated, you can integrate <a href=\"https://stripe.com/\" target=\"_blank\">Stripe</a> payment gateway into your Bookly booking form to process credit card payments online.</p><p>Click <strong>Get started</strong> button to connect Bookly to your Stripe account and let customers instantly pay for your services.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:5:\"Setup\";}}i:2;a:7:{s:2:\"id\";s:6:\"zapier\";s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/zapier-96x96.png\";s:7:\"version\";s:4:\"18.7\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:6:\"Zapier\";s:5:\"price\";s:22:\"Your subscription plan\";s:11:\"description\";s:704:\"<p><strong><a href=\"https://zapier.com/\" target=\"_blank\">Zapier</a></strong> allows you to automatically trigger actions in your favorite cloud apps for certain events inside of Bookly: when new bookings are made and updated, and new customers are created.</p>\n<p>You can try <strong>Zapier integration</strong> for free during 7 days to learn more and discover how it can work for you. After the trial period expires, you will be charged for the price of the selected plan.</p>\n<p>Choose your subscription plan, click <strong>Start 7-day Trial</strong> or <strong>Get started</strong> button to set up the connection between Bookly and Zapier, and create individual workflows to perform automations.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:18:\"Zapier Integration\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:7:\"caption\";s:79:\"$24<sup>.99</sup> per month<br/><small class=\"text-muted\">200 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:1:\"2\";s:7:\"caption\";s:79:\"$59<sup>.99</sup> per month<br/><small class=\"text-muted\">500 Tasks /mo</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:1:\"3\";s:7:\"caption\";s:82:\"$124<sup>.99</sup> per month<br/><small class=\"text-muted\">1,100 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:1:\"4\";s:7:\"caption\";s:82:\"$249<sup>.99</sup> per month<br/><small class=\"text-muted\">2,300 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:1:\"5\";s:7:\"caption\";s:83:\"$999<sup>.99</sup> per month<br/><small class=\"text-muted\">12,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:1:\"6\";s:7:\"caption\";s:85:\"$1,499<sup>.99</sup> per month<br/><small class=\"text-muted\">20,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}}}}','yes');
INSERT INTO `wp_options` VALUES (1012,'bookly_cloud_promotions','a:1:{s:12:\"registration\";a:3:{s:2:\"id\";i:1;s:6:\"amount\";i:5;s:5:\"texts\";a:3:{s:4:\"info\";s:159:\"Register your <strong>Bookly Cloud account</strong> and get <strong>$5 Welcome Bonus</strong> to easily start using <strong>SMS Notifications</strong> feature!\";s:4:\"form\";s:66:\"You will get <strong>$5 welcome bonus</strong> after registration.\";s:6:\"button\";s:0:\"\";}}}','yes');
INSERT INTO `wp_options` VALUES (1013,'bookly_cloud_account_products','','yes');
INSERT INTO `wp_options` VALUES (1014,'bookly_cloud_stripe_enabled','0','yes');
INSERT INTO `wp_options` VALUES (1015,'bookly_cloud_stripe_timeout','0','yes');
INSERT INTO `wp_options` VALUES (1016,'bookly_cloud_stripe_increase','0','yes');
INSERT INTO `wp_options` VALUES (1017,'bookly_cloud_stripe_addition','0','yes');
INSERT INTO `wp_options` VALUES (1018,'bookly_cloud_zapier_api_key','','yes');
INSERT INTO `wp_options` VALUES (1019,'bookly_bh_monday_start','08:00:00','yes');
INSERT INTO `wp_options` VALUES (1020,'bookly_bh_monday_end','18:00:00','yes');
INSERT INTO `wp_options` VALUES (1021,'bookly_bh_tuesday_start','08:00:00','yes');
INSERT INTO `wp_options` VALUES (1022,'bookly_bh_tuesday_end','18:00:00','yes');
INSERT INTO `wp_options` VALUES (1023,'bookly_bh_wednesday_start','08:00:00','yes');
INSERT INTO `wp_options` VALUES (1024,'bookly_bh_wednesday_end','18:00:00','yes');
INSERT INTO `wp_options` VALUES (1025,'bookly_bh_thursday_end','18:00:00','yes');
INSERT INTO `wp_options` VALUES (1026,'bookly_bh_thursday_start','08:00:00','yes');
INSERT INTO `wp_options` VALUES (1027,'bookly_bh_friday_start','08:00:00','yes');
INSERT INTO `wp_options` VALUES (1028,'bookly_bh_friday_end','18:00:00','yes');
INSERT INTO `wp_options` VALUES (1029,'bookly_bh_saturday_start','','yes');
INSERT INTO `wp_options` VALUES (1030,'bookly_bh_saturday_end','','yes');
INSERT INTO `wp_options` VALUES (1031,'bookly_bh_sunday_start','','yes');
INSERT INTO `wp_options` VALUES (1032,'bookly_bh_sunday_end','','yes');
INSERT INTO `wp_options` VALUES (1033,'bookly_pmt_currency','USD','yes');
INSERT INTO `wp_options` VALUES (1034,'bookly_pmt_price_format','{symbol}{sign}{price|2}','yes');
INSERT INTO `wp_options` VALUES (1035,'bookly_pmt_order','','yes');
INSERT INTO `wp_options` VALUES (1036,'bookly_pmt_local','1','yes');
INSERT INTO `wp_options` VALUES (1037,'bookly_ntf_processing_interval','2','yes');
INSERT INTO `wp_options` VALUES (1038,'bookly_сa_count','0','yes');
INSERT INTO `wp_options` VALUES (1039,'bookly_logs_enabled','0','yes');
INSERT INTO `wp_options` VALUES (1040,'bookly_appointment_status_pending_color','#1e73be','yes');
INSERT INTO `wp_options` VALUES (1041,'bookly_appointment_status_approved_color','#81d742','yes');
INSERT INTO `wp_options` VALUES (1042,'bookly_appointment_status_cancelled_color','#eeee22','yes');
INSERT INTO `wp_options` VALUES (1043,'bookly_appointment_status_rejected_color','#dd3333','yes');
INSERT INTO `wp_options` VALUES (1044,'bookly_appointment_status_mixed_color','#8224e3','yes');
INSERT INTO `wp_options` VALUES (1045,'bookly_appointment_default_status','approved','yes');
INSERT INTO `wp_options` VALUES (1046,'bookly_appointment_cancel_action','cancel','yes');
INSERT INTO `wp_options` VALUES (1052,'_transient_timeout_orders-all-statuses','1639659255','no');
INSERT INTO `wp_options` VALUES (1053,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1074,'_transient_timeout__woocommerce_helper_updates','1639581550','no');
INSERT INTO `wp_options` VALUES (1075,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1639538350;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');
INSERT INTO `wp_options` VALUES (1080,'_transient_timeout_wcstripe_account_data_test','1639545645','no');
INSERT INTO `wp_options` VALUES (1081,'_transient_wcstripe_account_data_test','O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"acct_1K1hi7FpukNBisso\";s:6:\"object\";s:7:\"account\";s:12:\"capabilities\";O:8:\"stdClass\":11:{s:19:\"acss_debit_payments\";s:6:\"active\";s:26:\"afterpay_clearpay_payments\";s:6:\"active\";s:19:\"bancontact_payments\";s:6:\"active\";s:13:\"card_payments\";s:6:\"active\";s:12:\"eps_payments\";s:6:\"active\";s:16:\"giropay_payments\";s:6:\"active\";s:14:\"ideal_payments\";s:6:\"active\";s:12:\"p24_payments\";s:6:\"active\";s:19:\"sepa_debit_payments\";s:6:\"active\";s:15:\"sofort_payments\";s:6:\"active\";s:9:\"transfers\";s:6:\"active\";}s:15:\"charges_enabled\";b:1;s:7:\"country\";s:2:\"US\";s:16:\"default_currency\";s:3:\"usd\";s:17:\"details_submitted\";b:1;s:15:\"payouts_enabled\";b:1;s:8:\"settings\";O:8:\"stdClass\":8:{s:19:\"bacs_debit_payments\";O:8:\"stdClass\":0:{}s:8:\"branding\";O:8:\"stdClass\":4:{s:4:\"icon\";N;s:4:\"logo\";N;s:13:\"primary_color\";N;s:15:\"secondary_color\";N;}s:12:\"card_issuing\";O:8:\"stdClass\":1:{s:14:\"tos_acceptance\";O:8:\"stdClass\":2:{s:4:\"date\";N;s:2:\"ip\";N;}}s:13:\"card_payments\";O:8:\"stdClass\":1:{s:27:\"statement_descriptor_prefix\";s:6:\"YRDIGI\";}s:9:\"dashboard\";O:8:\"stdClass\":2:{s:12:\"display_name\";s:16:\"Matriarchy Build\";s:8:\"timezone\";s:16:\"America/New_York\";}s:8:\"payments\";O:8:\"stdClass\":3:{s:20:\"statement_descriptor\";s:19:\"YELLOWROCKETDIGITAL\";s:25:\"statement_descriptor_kana\";N;s:26:\"statement_descriptor_kanji\";N;}s:7:\"payouts\";O:8:\"stdClass\":3:{s:23:\"debit_negative_balances\";b:1;s:8:\"schedule\";O:8:\"stdClass\":2:{s:10:\"delay_days\";i:2;s:8:\"interval\";s:5:\"daily\";}s:20:\"statement_descriptor\";N;}s:19:\"sepa_debit_payments\";O:8:\"stdClass\":0:{}}s:4:\"type\";s:8:\"standard\";}','no');
INSERT INTO `wp_options` VALUES (1082,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1639571059;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:51:\"bookly-responsive-appointment-booking-tool/main.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:56:\"w.org/plugins/bookly-responsive-appointment-booking-tool\";s:4:\"slug\";s:42:\"bookly-responsive-appointment-booking-tool\";s:6:\"plugin\";s:51:\"bookly-responsive-appointment-booking-tool/main.php\";s:11:\"new_version\";s:4:\"20.4\";s:3:\"url\";s:73:\"https://wordpress.org/plugins/bookly-responsive-appointment-booking-tool/\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/plugin/bookly-responsive-appointment-booking-tool.20.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:95:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/icon-128x128.png?rev=1005009\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:98:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/banner-1544x500.png?rev=1726755\";s:2:\"1x\";s:97:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/banner-772x250.png?rev=1726755\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=2419673\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=2419673\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=2419673\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=2419673\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:51:\"bookly-responsive-appointment-booking-tool/main.php\";s:4:\"20.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.9.0\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"5.9.0\";}}','no');
INSERT INTO `wp_options` VALUES (1083,'wc_stripe_version','5.9.0','yes');
INSERT INTO `wp_options` VALUES (1094,'_site_transient_timeout_wp_remote_block_patterns_6573f888e943b6dff5485c0165112d12','1639542697','no');
INSERT INTO `wp_options` VALUES (1095,'_site_transient_wp_remote_block_patterns_6573f888e943b6dff5485c0165112d12','a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1082:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-61b9617d0f1a2 wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1221:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-61b9617d10047 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-61b9617d13af8 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-61b9617d1663a wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}','no');
INSERT INTO `wp_options` VALUES (1106,'_site_transient_timeout_available_translations','1639550654','no');
INSERT INTO `wp_options` VALUES (1107,'_site_transient_available_translations','a:127:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-25 05:18:11\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-30 20:41:33\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-16 21:42:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-30 07:56:59\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-05 09:08:31\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-13 09:06:40\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-01 02:04:03\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-10 20:58:55\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-22 10:24:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.8.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-10 12:19:50\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-21 08:37:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-22 10:24:20\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 11:17:46\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-31 09:41:30\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 10:29:25\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-04 18:08:37\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 03:09:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-25 03:05:46\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-03 10:52:30\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-12 16:17:36\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-14 13:29:01\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-10 16:31:06\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 02:19:31\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 02:19:00\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 20:42:17\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 13:13:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-06 18:44:52\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-20 12:04:09\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-27 18:48:52\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-17 11:15:06\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-20 22:02:44\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-21 15:09:24\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-26 18:07:06\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.25\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-20 10:01:27\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-28 10:05:42\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 11:18:08\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-16 20:16:57\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-25 11:28:10\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-18 15:58:53\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-04 10:01:14\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-21 06:43:12\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-02 18:03:03\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.13/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-03 06:17:02\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-16 13:28:36\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-07 14:00:59\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-17 20:04:07\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.8/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-21 04:11:41\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"5.2.13\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.13/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-19 08:25:54\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-09 08:40:42\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-25 07:35:55\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-09 08:36:33\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.26\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-15 08:56:03\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-08 19:39:30\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-30 09:51:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-09 09:03:10\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-01 21:02:01\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.8/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-07 12:49:21\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-15 15:37:00\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-31 06:12:58\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-03 10:59:56\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-19 09:53:33\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.10\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.10/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.30\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-10 08:48:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.17\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-04 12:16:39\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.18\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-10 16:46:39\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.8\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-09-22 14:07:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-11-05 11:55:27\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-08 23:17:35\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-27 10:46:14\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','no');
INSERT INTO `wp_options` VALUES (1121,'_transient_timeout__woocommerce_helper_subscriptions','1639571959','no');
INSERT INTO `wp_options` VALUES (1122,'_transient__woocommerce_helper_subscriptions','a:0:{}','no');
INSERT INTO `wp_options` VALUES (1123,'_site_transient_timeout_theme_roots','1639572859','no');
INSERT INTO `wp_options` VALUES (1124,'_site_transient_theme_roots','a:4:{s:16:\"matriarchy-build\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (24,10,'_edit_lock','1635249091:1');
INSERT INTO `wp_postmeta` VALUES (25,10,'_wp_page_template','page-full.php');
INSERT INTO `wp_postmeta` VALUES (32,15,'_edit_lock','1635335819:1');
INSERT INTO `wp_postmeta` VALUES (33,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (39,24,'_wp_attached_file','woocommerce-placeholder.png');
INSERT INTO `wp_postmeta` VALUES (40,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (48,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (49,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (50,31,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (51,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (52,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (53,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (54,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (55,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,28,'_edit_lock','1636829496:1');
INSERT INTO `wp_postmeta` VALUES (58,28,'_wp_page_template','page-full.php');
INSERT INTO `wp_postmeta` VALUES (59,33,'_edit_lock','1636855879:1');
INSERT INTO `wp_postmeta` VALUES (60,34,'_edit_lock','1636855873:1');
INSERT INTO `wp_postmeta` VALUES (61,35,'_edit_lock','1636855867:1');
INSERT INTO `wp_postmeta` VALUES (62,36,'_edit_lock','1636855856:1');
INSERT INTO `wp_postmeta` VALUES (63,37,'_edit_lock','1639540334:1');
INSERT INTO `wp_postmeta` VALUES (64,38,'_edit_lock','1636847837:1');
INSERT INTO `wp_postmeta` VALUES (65,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (66,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (67,37,'company','She Buildz Things');
INSERT INTO `wp_postmeta` VALUES (68,37,'_company','field_619050ede180f');
INSERT INTO `wp_postmeta` VALUES (69,37,'trade','Handywoman');
INSERT INTO `wp_postmeta` VALUES (70,37,'_trade','field_619050fde1810');
INSERT INTO `wp_postmeta` VALUES (71,37,'social','https://instagram.com/shebuildzthings');
INSERT INTO `wp_postmeta` VALUES (72,37,'_social','field_61905157e1811');
INSERT INTO `wp_postmeta` VALUES (73,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (74,36,'company','Jen Wears Many Hats');
INSERT INTO `wp_postmeta` VALUES (75,36,'_company','field_619050ede180f');
INSERT INTO `wp_postmeta` VALUES (76,36,'trade','DIYer / Handywoman');
INSERT INTO `wp_postmeta` VALUES (77,36,'_trade','field_619050fde1810');
INSERT INTO `wp_postmeta` VALUES (78,36,'social','https://instagram.com/jenwearsmanyhats');
INSERT INTO `wp_postmeta` VALUES (79,36,'_social','field_61905157e1811');
INSERT INTO `wp_postmeta` VALUES (80,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (81,35,'company','Guild Properties');
INSERT INTO `wp_postmeta` VALUES (82,35,'_company','field_619050ede180f');
INSERT INTO `wp_postmeta` VALUES (83,35,'trade','GC');
INSERT INTO `wp_postmeta` VALUES (84,35,'_trade','field_619050fde1810');
INSERT INTO `wp_postmeta` VALUES (85,35,'social','https://instagram.com/guildproperties');
INSERT INTO `wp_postmeta` VALUES (86,35,'_social','field_61905157e1811');
INSERT INTO `wp_postmeta` VALUES (87,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,34,'company','Trans Handymaam');
INSERT INTO `wp_postmeta` VALUES (89,34,'_company','field_619050ede180f');
INSERT INTO `wp_postmeta` VALUES (90,34,'trade','Handywoman');
INSERT INTO `wp_postmeta` VALUES (91,34,'_trade','field_619050fde1810');
INSERT INTO `wp_postmeta` VALUES (92,34,'social','https://tiktok.com/@mercurystardust');
INSERT INTO `wp_postmeta` VALUES (93,34,'_social','field_61905157e1811');
INSERT INTO `wp_postmeta` VALUES (94,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (95,33,'company','Handyma\'am');
INSERT INTO `wp_postmeta` VALUES (96,33,'_company','field_619050ede180f');
INSERT INTO `wp_postmeta` VALUES (97,33,'trade','Handywoman');
INSERT INTO `wp_postmeta` VALUES (98,33,'_trade','field_619050fde1810');
INSERT INTO `wp_postmeta` VALUES (99,33,'social','https://instagram.com/handymaamnyc');
INSERT INTO `wp_postmeta` VALUES (100,33,'_social','field_61905157e1811');
INSERT INTO `wp_postmeta` VALUES (101,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (102,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (103,42,'_menu_item_object_id','37');
INSERT INTO `wp_postmeta` VALUES (104,42,'_menu_item_object','pro');
INSERT INTO `wp_postmeta` VALUES (105,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (106,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (107,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (108,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,42,'_menu_item_orphaned','1636848663');
INSERT INTO `wp_postmeta` VALUES (110,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (111,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (112,43,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (113,43,'_menu_item_object','pro');
INSERT INTO `wp_postmeta` VALUES (114,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (115,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (116,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (117,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (118,43,'_menu_item_orphaned','1636848663');
INSERT INTO `wp_postmeta` VALUES (119,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (120,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (121,44,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (122,44,'_menu_item_object','pro');
INSERT INTO `wp_postmeta` VALUES (123,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (124,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (125,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (126,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,44,'_menu_item_orphaned','1636848663');
INSERT INTO `wp_postmeta` VALUES (128,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (129,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (130,45,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (131,45,'_menu_item_object','pro');
INSERT INTO `wp_postmeta` VALUES (132,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (133,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (134,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (135,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (136,45,'_menu_item_orphaned','1636848663');
INSERT INTO `wp_postmeta` VALUES (137,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (138,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (139,46,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (140,46,'_menu_item_object','pro');
INSERT INTO `wp_postmeta` VALUES (141,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (142,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (143,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (144,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (145,46,'_menu_item_orphaned','1636848663');
INSERT INTO `wp_postmeta` VALUES (151,49,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (152,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (153,49,'_menu_item_object_id','49');
INSERT INTO `wp_postmeta` VALUES (154,49,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (155,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (156,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (157,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (158,49,'_menu_item_url','/pro');
INSERT INTO `wp_postmeta` VALUES (160,31,'_wp_old_date','2021-11-13');
INSERT INTO `wp_postmeta` VALUES (161,51,'_edit_lock','1638323143:1');
INSERT INTO `wp_postmeta` VALUES (162,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (163,51,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (164,51,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (165,51,'_tax_class','');
INSERT INTO `wp_postmeta` VALUES (166,51,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (167,51,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (168,51,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (169,51,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (170,51,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (171,51,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (172,51,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (173,51,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (174,51,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (175,51,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (176,51,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (177,51,'_product_attributes','a:1:{s:8:\"duration\";a:6:{s:4:\"name\";s:8:\"Duration\";s:5:\"value\";s:23:\"30 minutes | 60 minutes\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (178,51,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (179,52,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (180,52,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (181,52,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (182,52,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (183,52,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (184,52,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (185,52,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (186,52,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (187,52,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (188,52,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (189,52,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (190,52,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (191,52,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (192,52,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (193,52,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (194,52,'attribute_duration','30 minutes');
INSERT INTO `wp_postmeta` VALUES (195,52,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (196,53,'_variation_description','');
INSERT INTO `wp_postmeta` VALUES (197,53,'total_sales','0');
INSERT INTO `wp_postmeta` VALUES (198,53,'_tax_status','taxable');
INSERT INTO `wp_postmeta` VALUES (199,53,'_tax_class','parent');
INSERT INTO `wp_postmeta` VALUES (200,53,'_manage_stock','no');
INSERT INTO `wp_postmeta` VALUES (201,53,'_backorders','no');
INSERT INTO `wp_postmeta` VALUES (202,53,'_sold_individually','no');
INSERT INTO `wp_postmeta` VALUES (203,53,'_virtual','no');
INSERT INTO `wp_postmeta` VALUES (204,53,'_downloadable','no');
INSERT INTO `wp_postmeta` VALUES (205,53,'_download_limit','-1');
INSERT INTO `wp_postmeta` VALUES (206,53,'_download_expiry','-1');
INSERT INTO `wp_postmeta` VALUES (207,53,'_stock',NULL);
INSERT INTO `wp_postmeta` VALUES (208,53,'_stock_status','instock');
INSERT INTO `wp_postmeta` VALUES (209,53,'_wc_average_rating','0');
INSERT INTO `wp_postmeta` VALUES (210,53,'_wc_review_count','0');
INSERT INTO `wp_postmeta` VALUES (211,53,'attribute_duration','60 minutes');
INSERT INTO `wp_postmeta` VALUES (212,53,'_product_version','5.9.0');
INSERT INTO `wp_postmeta` VALUES (213,52,'_regular_price','89.99');
INSERT INTO `wp_postmeta` VALUES (214,52,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (215,52,'_price','89.99');
INSERT INTO `wp_postmeta` VALUES (216,53,'_regular_price','153.99');
INSERT INTO `wp_postmeta` VALUES (217,53,'_thumbnail_id','0');
INSERT INTO `wp_postmeta` VALUES (218,53,'_price','153.99');
INSERT INTO `wp_postmeta` VALUES (219,51,'_price','89.99');
INSERT INTO `wp_postmeta` VALUES (220,51,'_price','153.99');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-10-18 04:20:15','2021-10-18 04:20:15','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-10-18 04:20:15','2021-10-18 04:20:15','',0,'http://matriarchy-build.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (3,1,'2021-10-18 04:20:15','2021-10-18 04:20:15','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://matriarchy-build.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-10-18 04:20:15','2021-10-18 04:20:15','',0,'http://matriarchy-build.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-10-26 11:49:31','2021-10-26 11:49:31','','Home','','publish','closed','closed','','home','','','2021-10-26 11:49:49','2021-10-26 11:49:49','',0,'http://matriarchy-build.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-10-26 11:49:31','2021-10-26 11:49:31','','Home','','inherit','closed','closed','','10-revision-v1','','','2021-10-26 11:49:31','2021-10-26 11:49:31','',10,'http://matriarchy-build.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-10-27 11:59:17','2021-10-27 11:59:17','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','User Profile Fields','user-profile-fields','publish','closed','closed','','group_61793d84d9f40','','','2021-10-27 11:59:17','2021-10-27 11:59:17','',0,'http://matriarchy-build.local/?post_type=acf-field-group&#038;p=15',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-10-27 11:59:17','2021-10-27 11:59:17','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:8:\"consumer\";s:8:\"Consumer\";s:3:\"pro\";s:3:\"Pro\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Account Type','account_type','publish','closed','closed','','field_61793e581e0c7','','','2021-10-27 11:59:17','2021-10-27 11:59:17','',15,'http://matriarchy-build.local/?post_type=acf-field&p=16',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-10-27 11:59:17','2021-10-27 11:59:17','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Industry','industry','publish','closed','closed','','field_61793e9e1e0c8','','','2021-10-27 11:59:17','2021-10-27 11:59:17','',15,'http://matriarchy-build.local/?post_type=acf-field&p=17',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-10-27 11:59:17','2021-10-27 11:59:17','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Location','location','publish','closed','closed','','field_61793eaa1e0c9','','','2021-10-27 11:59:17','2021-10-27 11:59:17','',15,'http://matriarchy-build.local/?post_type=acf-field&p=18',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-10-27 11:59:17','2021-10-27 11:59:17','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Instagram Handle','instagram_handle','publish','closed','closed','','field_61793eee1e0ca','','','2021-10-27 11:59:17','2021-10-27 11:59:17','',15,'http://matriarchy-build.local/?post_type=acf-field&p=19',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-11-13 18:44:00','2021-11-13 18:44:00','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2021-11-13 18:44:00','2021-11-13 18:44:00','',0,'http://matriarchy-build.local/wp-content/uploads/2021/11/woocommerce-placeholder.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-11-13 18:44:00','2021-11-13 18:44:00','','Shop','','publish','closed','closed','','shop','','','2021-11-13 18:44:00','2021-11-13 18:44:00','',0,'http://matriarchy-build.local/shop/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-11-13 18:44:00','2021-11-13 18:44:00','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Cart','','publish','closed','closed','','cart','','','2021-11-13 18:44:00','2021-11-13 18:44:00','',0,'http://matriarchy-build.local/cart/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-11-13 18:44:00','2021-11-13 18:44:00','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Checkout','','publish','closed','closed','','checkout','','','2021-11-13 18:44:00','2021-11-13 18:44:00','',0,'http://matriarchy-build.local/checkout/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-11-13 18:44:00','2021-11-13 18:44:00','<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2021-11-13 18:48:43','2021-11-13 18:48:43','',0,'http://matriarchy-build.local/my-account/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-11-13 18:44:00','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2021-11-13 18:44:00','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-11-14 00:57:59','2021-11-13 18:48:04',' ','','','publish','closed','closed','','31','','','2021-11-14 00:57:59','2021-11-14 00:57:59','',0,'http://matriarchy-build.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-11-13 18:48:43','2021-11-13 18:48:43','<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->','My account','','inherit','closed','closed','','28-revision-v1','','','2021-11-13 18:48:43','2021-11-13 18:48:43','',28,'http://matriarchy-build.local/?p=32',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-11-13 23:53:43','2021-11-13 23:53:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo nulla at ante mattis lacinia. Aliquam id augue porta, euismod dolor at, fermentum urna. Nullam volutpat pellentesque mauris, non auctor nibh commodo fermentum. Nam dignissim tellus diam. Nulla facilisi. Sed erat eros, consectetur a tempor eleifend, maximus ut odio. Etiam faucibus euismod metus, a accumsan arcu feugiat eu. Aenean fringilla est quis tortor pellentesque, fermentum maximus nibh pretium.</p>\n<!-- /wp:paragraph -->','Katie Whitaker','','publish','closed','closed','','katie-whitaker','','','2021-11-14 02:11:18','2021-11-14 02:11:18','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=33',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-11-13 23:54:08','2021-11-13 23:54:08','<!-- wp:paragraph -->\n<p>Vivamus lorem purus, consequat vel imperdiet ut, aliquet non massa. Mauris egestas nunc vel massa pulvinar, ac consequat lorem ultricies. Aenean auctor cursus quam. Nam ultricies tortor lacus, at molestie quam euismod faucibus. Vivamus porta quam eget justo aliquam, id facilisis nunc vestibulum. Cras a pretium lacus, at convallis elit. Donec tincidunt iaculis eros ultricies aliquam. Sed cursus mi fringilla magna eleifend tristique. Ut nec nulla id erat mattis ullamcorper malesuada in metus. Quisque tristique ante diam, in tempus justo vulputate a. Morbi vitae rhoncus tellus. Proin vel volutpat odio. Quisque quis facilisis nisi. Vivamus sagittis, lectus et gravida ornare, magna est consectetur nunc, eget placerat eros massa quis mi.</p>\n<!-- /wp:paragraph -->','Mercury Stardust','','publish','closed','closed','','mercury-stardust','','','2021-11-14 02:11:13','2021-11-14 02:11:13','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=34',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-11-13 23:55:52','2021-11-13 23:55:52','<!-- wp:paragraph -->\n<p>Nullam consequat vitae mi id hendrerit. Cras non dictum tortor, pulvinar condimentum urna. Aliquam dolor nibh, bibendum quis tempus vehicula, sagittis sit amet nunc. Pellentesque sed odio lacus. Nullam varius posuere nulla, eu sagittis enim lacinia in. Vestibulum id ex gravida, volutpat elit quis, facilisis dui. Curabitur pretium nisi sit amet tempus tincidunt. Proin rhoncus est id ipsum ornare molestie. Vivamus cursus, orci non interdum scelerisque, est urna pretium orci, vitae facilisis leo metus vitae arcu.</p>\n<!-- /wp:paragraph -->','Gabriela Narvaez','','publish','closed','closed','','gabriela-narvaez','','','2021-11-14 02:11:07','2021-11-14 02:11:07','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=35',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-11-13 23:56:33','2021-11-13 23:56:33','<!-- wp:paragraph -->\n<p>Donec sed hendrerit nibh. Vivamus venenatis quam et massa iaculis imperdiet. Morbi tempus efficitur aliquet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas mattis diam ac scelerisque pellentesque. Phasellus ac sapien nec tortor malesuada sagittis. Nunc tincidunt velit eu finibus faucibus. Vestibulum consequat tellus nec dignissim dignissim. Cras a tincidunt enim. Integer facilisis blandit turpis vitae cursus. Aliquam ac cursus enim, ut fermentum ipsum. Quisque vitae enim a odio luctus accumsan.</p>\n<!-- /wp:paragraph -->','Jen Sanchez','','publish','closed','closed','','jen-sanchez','','','2021-11-14 02:10:56','2021-11-14 02:10:56','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=36',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-11-13 23:57:02','2021-11-13 23:57:02','<!-- wp:paragraph -->\n<p>Maecenas vulputate egestas interdum. Pellentesque blandit non ante sed iaculis. Suspendisse potenti. Vivamus vehicula vestibulum volutpat. Cras faucibus enim id euismod tincidunt. Praesent laoreet mi eu tristique vehicula. Nulla facilisi. Maecenas fermentum lorem a ante viverra, sit amet mattis orci mollis. Praesent non consectetur leo. Aliquam erat volutpat. Donec ut tristique magna. Cras semper, felis ut aliquam congue, urna nisl gravida justo, sed auctor justo urna a neque. Sed congue nibh sed ultricies venenatis. Praesent maximus nisi vitae dapibus maximus. Proin finibus, purus in imperdiet tincidunt, arcu purus cursus metus, eget elementum sapien enim id mauris. Vivamus placerat rhoncus ultricies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:bookly/form {\"short_code\":\"[bookly-form service_id=\\u00221\\u0022 staff_member_id=\\u00221\\u0022 hide=\\u0022categories,services,staff_members\\u0022]\",\"service\":\"1\",\"staff\":\"1\",\"hide_category\":true,\"hide_services\":true,\"hide_staff\":true} -->\n<div class=\"wp-block-bookly-form\">[bookly-form service_id=\"1\" staff_member_id=\"1\" hide=\"categories,services,staff_members\"]</div>\n<!-- /wp:bookly/form -->','Cabo Verde','','publish','closed','closed','','cabo-verde','','','2021-12-15 03:33:05','2021-12-15 03:33:05','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=37',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"pro\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Pro Details','pro-details','publish','closed','closed','','group_619050de762cb','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',0,'http://matriarchy-build.local/?post_type=acf-field-group&#038;p=38',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Company','company','publish','closed','closed','','field_619050ede180f','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=39',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Trade','trade','publish','closed','closed','','field_619050fde1810','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=40',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Social','social','publish','closed','closed','','field_61905157e1811','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=41',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-11-14 00:57:59','2021-11-14 00:57:59','','Pros','','publish','closed','closed','','pros','','','2021-11-14 00:57:59','2021-11-14 00:57:59','',0,'http://matriarchy-build.local/?p=49',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-12-01 01:40:06','2021-12-01 01:40:06','Cabo Verde pro as product.','Cabo Verde','','publish','open','closed','','cabo-verde','','','2021-12-01 01:40:06','2021-12-01 01:40:06','',0,'http://matriarchy-build.local/?post_type=product&#038;p=51',0,'product','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-12-01 01:39:25','2021-12-01 01:39:25','','Cabo Verde - 30 minutes','Duration: 30 minutes','publish','closed','closed','','cabo-verde-30-minutes','','','2021-12-01 01:39:57','2021-12-01 01:39:57','',51,'http://matriarchy-build.local/?post_type=product_variation&p=52',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-12-01 01:39:26','2021-12-01 01:39:26','','Cabo Verde - 60 minutes','Duration: 60 minutes','publish','closed','closed','','cabo-verde-60-minutes','','','2021-12-01 01:39:57','2021-12-01 01:39:57','',51,'http://matriarchy-build.local/?post_type=product_variation&p=53',2,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-12-09 12:13:03','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-12-09 12:13:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=54',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (33,21,0);
INSERT INTO `wp_term_relationships` VALUES (34,21,0);
INSERT INTO `wp_term_relationships` VALUES (35,23,0);
INSERT INTO `wp_term_relationships` VALUES (36,18,0);
INSERT INTO `wp_term_relationships` VALUES (36,19,0);
INSERT INTO `wp_term_relationships` VALUES (36,21,0);
INSERT INTO `wp_term_relationships` VALUES (36,22,0);
INSERT INTO `wp_term_relationships` VALUES (37,20,0);
INSERT INTO `wp_term_relationships` VALUES (37,21,0);
INSERT INTO `wp_term_relationships` VALUES (49,3,0);
INSERT INTO `wp_term_relationships` VALUES (51,6,0);
INSERT INTO `wp_term_relationships` VALUES (51,17,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'product_type','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'product_type','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'product_visibility','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'product_cat','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'pro-category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'pro-category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'pro-category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'pros','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'pros','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'pros','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,17,'product_count_product_cat','1');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (4,'simple','simple',0);
INSERT INTO `wp_terms` VALUES (5,'grouped','grouped',0);
INSERT INTO `wp_terms` VALUES (6,'variable','variable',0);
INSERT INTO `wp_terms` VALUES (7,'external','external',0);
INSERT INTO `wp_terms` VALUES (8,'exclude-from-search','exclude-from-search',0);
INSERT INTO `wp_terms` VALUES (9,'exclude-from-catalog','exclude-from-catalog',0);
INSERT INTO `wp_terms` VALUES (10,'featured','featured',0);
INSERT INTO `wp_terms` VALUES (11,'outofstock','outofstock',0);
INSERT INTO `wp_terms` VALUES (12,'rated-1','rated-1',0);
INSERT INTO `wp_terms` VALUES (13,'rated-2','rated-2',0);
INSERT INTO `wp_terms` VALUES (14,'rated-3','rated-3',0);
INSERT INTO `wp_terms` VALUES (15,'rated-4','rated-4',0);
INSERT INTO `wp_terms` VALUES (16,'rated-5','rated-5',0);
INSERT INTO `wp_terms` VALUES (17,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (18,'Handywoman','handywoman',0);
INSERT INTO `wp_terms` VALUES (19,'DIYer','diyer',0);
INSERT INTO `wp_terms` VALUES (20,'General Contractor','general-contractor',0);
INSERT INTO `wp_terms` VALUES (21,'Handywoman','handywoman',0);
INSERT INTO `wp_terms` VALUES (22,'DIYer','diyer',0);
INSERT INTO `wp_terms` VALUES (23,'General Contractor','general-contractor',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Darielle');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Davis');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"13dfa629eb105d3759f7e97b37dead10e764b8f250149c397f08c61442855846\";a:4:{s:10:\"expiration\";i:1639711244;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36\";s:5:\"login\";i:1639538444;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','54');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (22,1,'facebook_profile','');
INSERT INTO `wp_usermeta` VALUES (23,1,'twitter_profile','');
INSERT INTO `wp_usermeta` VALUES (24,1,'linkedin_profile','');
INSERT INTO `wp_usermeta` VALUES (25,1,'xing_profile','');
INSERT INTO `wp_usermeta` VALUES (26,1,'github_profile','');
INSERT INTO `wp_usermeta` VALUES (27,2,'nickname','test-user1');
INSERT INTO `wp_usermeta` VALUES (28,2,'first_name','Darielle');
INSERT INTO `wp_usermeta` VALUES (29,2,'last_name','Davis');
INSERT INTO `wp_usermeta` VALUES (30,2,'description','This is the bio for the test user.');
INSERT INTO `wp_usermeta` VALUES (31,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (32,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (34,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (35,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (36,2,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (37,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (38,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (40,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (42,2,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (43,2,'facebook_profile','');
INSERT INTO `wp_usermeta` VALUES (44,2,'twitter_profile','');
INSERT INTO `wp_usermeta` VALUES (45,2,'linkedin_profile','');
INSERT INTO `wp_usermeta` VALUES (46,2,'xing_profile','');
INSERT INTO `wp_usermeta` VALUES (47,2,'github_profile','');
INSERT INTO `wp_usermeta` VALUES (52,2,'session_tokens','a:2:{s:64:\"2efe464a22cd8349f665f0917e3fd218aee0949411baeb65a00fa10b1aa81d8f\";a:4:{s:10:\"expiration\";i:1635424223;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36\";s:5:\"login\";i:1635251423;}s:64:\"5e634400256d2acf49447566c3affa8ed5a6daa6d12ce958e574885bf1aff964\";a:4:{s:10:\"expiration\";i:1635508819;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36\";s:5:\"login\";i:1635336019;}}');
INSERT INTO `wp_usermeta` VALUES (53,2,'account_type','consumer');
INSERT INTO `wp_usermeta` VALUES (54,2,'_account_type','field_61793e581e0c7');
INSERT INTO `wp_usermeta` VALUES (55,2,'industry','Plumbing');
INSERT INTO `wp_usermeta` VALUES (56,2,'_industry','field_61793e9e1e0c8');
INSERT INTO `wp_usermeta` VALUES (57,2,'location','Savannah, GA');
INSERT INTO `wp_usermeta` VALUES (58,2,'_location','field_61793eaa1e0c9');
INSERT INTO `wp_usermeta` VALUES (59,2,'instagram_handle','@yourfavoriteplumber');
INSERT INTO `wp_usermeta` VALUES (60,2,'_instagram_handle','field_61793eee1e0ca');
INSERT INTO `wp_usermeta` VALUES (61,1,'_woocommerce_tracks_anon_id','woo:8diC2todNLE1NzrtW6V70ISY');
INSERT INTO `wp_usermeta` VALUES (62,1,'last_update','1638322332');
INSERT INTO `wp_usermeta` VALUES (63,1,'woocommerce_admin_activity_panel_inbox_last_read','1638322321787');
INSERT INTO `wp_usermeta` VALUES (64,1,'wc_last_active','1639526400');
INSERT INTO `wp_usermeta` VALUES (65,1,'billing_first_name','Darielle');
INSERT INTO `wp_usermeta` VALUES (66,1,'billing_last_name','Davis');
INSERT INTO `wp_usermeta` VALUES (67,1,'_order_count','0');
INSERT INTO `wp_usermeta` VALUES (69,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}');
INSERT INTO `wp_usermeta` VALUES (70,1,'closedpostboxes_dashboard','a:1:{i:0;s:24:\"wc_admin_dashboard_setup\";}');
INSERT INTO `wp_usermeta` VALUES (71,1,'metaboxhidden_dashboard','a:4:{i:0;s:24:\"wc_admin_dashboard_setup\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (72,1,'dismissed_no_secure_connection_notice','1');
INSERT INTO `wp_usermeta` VALUES (77,1,'woocommerce_admin_task_list_tracked_started_tasks','{\"payments\":1}');
INSERT INTO `wp_usermeta` VALUES (81,1,'bookly_dismiss_collect_stats_notice','1');
INSERT INTO `wp_usermeta` VALUES (82,1,'bookly_dismiss_powered_by_notice','1');
INSERT INTO `wp_usermeta` VALUES (83,1,'bookly_staff_members_table_settings','a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:3:{s:10:\"visibility\";s:0:\"\";s:8:\"archived\";s:1:\"0\";s:8:\"category\";s:0:\"\";}}');
INSERT INTO `wp_usermeta` VALUES (84,1,'bookly_dismiss_contact_us_notice','1');
INSERT INTO `wp_usermeta` VALUES (85,1,'bookly_appointments_table_settings','a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:6:{s:2:\"id\";s:0:\"\";s:12:\"created_date\";s:3:\"any\";s:5:\"staff\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:7:\"service\";s:0:\"\";s:6:\"status\";s:0:\"\";}}');
INSERT INTO `wp_usermeta` VALUES (86,1,'bookly_payments_table_settings','a:2:{s:6:\"filter\";a:6:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:5:\"staff\";s:0:\"\";s:7:\"service\";s:0:\"\";s:6:\"status\";s:0:\"\";}s:5:\"order\";a:0:{}}');
INSERT INTO `wp_usermeta` VALUES (87,1,'bookly_services_table_settings','a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:1:{s:8:\"category\";s:0:\"\";}}');
INSERT INTO `wp_usermeta` VALUES (89,1,'bookly_customers_table_settings','a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (90,1,'bookly_email_notifications_table_settings','a:1:{s:5:\"order\";a:0:{}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BUpYBtWXQOo55Rq0pjcxpkWzGxSUIm.','admin','dev-email@flywheel.local','http://matriarchy-build.local','2021-10-18 04:20:15','',0,'admin');
INSERT INTO `wp_users` VALUES (2,'test-user1','$P$BSEbL6HA52L8b28Ana.o7Eu6Vfc47L.','test-user1','hello@darielledavis.com','','2021-10-24 01:55:11','',0,'Darielle Davis');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'notify-refund-returns-page','Edit page','http://matriarchy-build.local/wp-admin/post.php?post=29&action=edit','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (2,2,'connect','Connect','?page=wc-addons&section=helper','unactioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (3,3,'learn-more','Learn more','https://woocommerce.com/mobile/?utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (4,4,'visit-the-theme-marketplace','Visit the theme marketplace','https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (5,5,'affirm-insight-first-product-and-payment','Yes','','actioned',0,'Thanks for your feedback',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (6,5,'affirm-insight-first-product-and-payment','No','','actioned',0,'Thanks for your feedback',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (7,6,'add-first-product','Add a product','http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&task=products','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (8,7,'learn-more','Learn more','https://docs.woocommerce.com/document/managing-products/?utm_source=inbox&utm_medium=product','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (9,8,'tracking-opt-in','Activate usage tracking','','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (10,9,'view-payment-gateways','Learn more','https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?utm_medium=product','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (11,10,'learn-more','Learn more','https://woocommerce.com/payments/?utm_medium=product','unactioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (12,10,'get-started','Get started','http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&action=setup-woocommerce-payments','actioned',1,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (13,11,'open-marketing-hub','Open marketing hub','http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&path=/marketing','actioned',0,'',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (14,12,'affirm-insight-first-sale','Yes','','actioned',0,'Thanks for your feedback',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (15,12,'deny-insight-first-sale','No','','actioned',0,'Thanks for your feedback',NULL,NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES (16,13,'learn-more','Learn more','https://docs.woocommerce.com/document/woocommerce-analytics/?utm_medium=product#variations-report','actioned',0,'',NULL,NULL);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-refund-returns-page','info','en_US','Setup a Refund and Returns Policy page to boost your store\'s credibility.','We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.','{}','unactioned','woocommerce-core','2021-11-13 18:44:01',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (2,'wc-admin-wc-helper-connection','info','en_US','Connect to WooCommerce.com','Connect to get important product notifications and updates.','{}','unactioned','woocommerce-admin','2021-11-13 18:44:01',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (3,'wc-admin-mobile-app','info','en_US','Install Woo mobile app','Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.','{}','unactioned','woocommerce-admin','2021-11-17 13:07:47',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (4,'wc-admin-choosing-a-theme','marketing','en_US','Choosing a theme?','Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.','{}','unactioned','woocommerce-admin','2021-11-17 13:07:47',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (5,'wc-admin-insight-first-product-and-payment','survey','en_US','Insight','More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?','{}','unactioned','woocommerce-admin','2021-11-17 13:07:47',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (6,'wc-admin-add-first-product-note','email','en_US','Add your first product','{greetings}<br /><br />Nice one; you\'ve created a WooCommerce store! Now it\'s time to add your first product and get ready to start selling.<br /><br />There are three ways to add your products: you can <strong>create products manually, import them at once via CSV file</strong>, or <strong>migrate them from another service</strong>.<br /><br /><a href=\"https://docs.woocommerce.com/document/managing-products/?utm_source=help_panel&amp;utm_medium=product\">Explore our docs</a> for more information, or just get started!','{\"role\":\"administrator\"}','unactioned','woocommerce-admin','2021-11-17 13:07:47',NULL,0,'plain','http://matriarchy-build.local/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/dashboard-widget-setup.png',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (7,'wc-admin-adding-and-managing-products','info','en_US','Adding and Managing Products','Learn more about how to set up products in WooCommerce through our useful documentation about adding and managing products.','{}','unactioned','woocommerce-admin','2021-11-17 13:07:47',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (8,'wc-admin-usage-tracking-opt-in','info','en_US','Help WooCommerce improve with usage tracking','Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://matriarchy-build.local/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Read more</a> about what data we collect.','{}','unactioned','woocommerce-admin','2021-12-01 01:16:37',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (9,'wc-admin-onboarding-payments-reminder','info','en_US','Start accepting payments on your store!','Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.','{}','unactioned','woocommerce-admin','2021-12-01 01:16:37',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (10,'wc-admin-woocommerce-payments','marketing','en_US','Try the new way to get paid','Securely accept credit and debit cards on your site. Manage transactions without leaving your WordPress dashboard. Only with <strong>WooCommerce Payments</strong>.<br><br>By clicking \"Get started\", you agree to our <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a>','{}','unactioned','woocommerce-admin','2021-12-01 01:16:37',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (11,'wc-admin-marketing-intro','info','en_US','Connect with your audience','Grow your customer base and increase your sales with marketing tools built for WooCommerce.','{}','unactioned','woocommerce-admin','2021-12-01 01:16:37',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (12,'wc-admin-insight-first-sale','survey','en_US','Did you know?','A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?','{}','unactioned','woocommerce-admin','2021-12-01 01:16:37',NULL,0,'plain','',0,'info');
INSERT INTO `wp_wc_admin_notes` VALUES (13,'wc-admin-filter-by-product-variations-in-reports','info','en_US','New - filter by product variations in orders and products reports','One of the most awaited features has just arrived! You can now have insights into each product variation in the orders and products reports.','{}','unactioned','woocommerce-admin','2021-12-01 20:34:49',NULL,0,'banner','http://matriarchy-build.local/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg',0,'info');
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (17,17);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`),
  CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (51,'',0,0,89.9900,153.9900,0,NULL,'instock',0,0.00,0,'taxable','');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (52,'',0,0,89.9900,89.9900,0,NULL,'instock',0,0.00,0,'taxable','parent');
INSERT INTO `wp_wc_product_meta_lookup` VALUES (53,'',0,0,153.9900,153.9900,0,NULL,'instock',0,0.00,0,'taxable','parent');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Reduced rate','reduced-rate');
INSERT INTO `wp_wc_tax_rate_classes` VALUES (2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (12,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:784:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-12-01T01:32:12+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:8:\"Darielle\";s:9:\"last_name\";s:5:\"Davis\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1639711246);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15  7:40:59
