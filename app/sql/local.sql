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
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (25,'action_scheduler/migration_hook','complete','2021-11-13 18:45:01','2021-11-13 18:45:01','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636829101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636829101;}',1,1,'2021-11-13 18:45:11','2021-11-13 18:45:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (26,'woocommerce_update_marketplace_suggestions','complete','2021-11-13 18:45:09','2021-11-13 18:45:09','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636829109;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636829109;}',0,1,'2021-11-13 18:45:11','2021-11-13 18:45:11',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (27,'woocommerce_update_marketplace_suggestions','complete','2021-11-14 18:45:11','2021-11-14 18:45:11','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636915511;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636915511;}',0,1,'2021-11-17 13:07:47','2021-11-17 13:07:47',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (28,'wc-admin_import_customers','complete','2021-11-13 18:49:32','2021-11-13 18:49:32','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636829372;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636829372;}',2,1,'2021-11-13 18:49:34','2021-11-13 18:49:34',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (29,'wc-admin_import_customers','complete','2021-11-14 00:00:45','2021-11-14 00:00:45','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636848045;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636848045;}',2,1,'2021-11-14 00:01:07','2021-11-14 00:01:07',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (30,'action_scheduler/migration_hook','complete','2021-11-14 02:24:02','2021-11-14 02:24:02','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636856642;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636856642;}',1,1,'2021-11-14 02:24:26','2021-11-14 02:24:26',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (31,'action_scheduler/migration_hook','complete','2021-11-14 02:32:49','2021-11-14 02:32:49','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1636857169;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1636857169;}',1,1,'2021-11-17 13:07:46','2021-11-17 13:07:46',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (32,'woocommerce_update_marketplace_suggestions','complete','2021-11-18 13:07:47','2021-11-18 13:07:47','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1637240867;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1637240867;}',0,1,'2021-12-01 01:16:37','2021-12-01 01:16:37',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (33,'wc-admin_import_customers','complete','2021-11-17 20:36:09','2021-11-17 20:36:09','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1637181369;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1637181369;}',2,1,'2021-11-17 20:37:52','2021-11-17 20:37:52',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (34,'woocommerce_update_marketplace_suggestions','pending','2021-12-02 01:16:37','2021-12-02 01:16:37','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638407797;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638407797;}',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (35,'wc-admin_import_customers','complete','2021-12-01 01:31:52','2021-12-01 01:31:52','[1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322312;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322312;}',2,1,'2021-12-01 01:32:33','2021-12-01 01:32:33',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (36,'adjust_download_permissions','complete','2021-12-01 01:39:27','2021-12-01 01:39:27','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322767;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322767;}',0,1,'2021-12-01 01:39:59','2021-12-01 01:39:59',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (37,'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications','complete','0000-00-00 00:00:00','0000-00-00 00:00:00','[]','O:28:\"ActionScheduler_NullSchedule\":0:{}',0,1,'2021-12-01 01:40:06','2021-12-01 01:40:06',0,NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES (38,'adjust_download_permissions','complete','2021-12-01 01:40:07','2021-12-01 01:40:07','[51]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638322807;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638322807;}',0,1,'2021-12-01 01:40:14','2021-12-01 01:40:14',0,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (1,25,'action created','2021-11-13 18:44:01','2021-11-13 18:44:01');
INSERT INTO `wp_actionscheduler_logs` VALUES (2,26,'action created','2021-11-13 18:45:09','2021-11-13 18:45:09');
INSERT INTO `wp_actionscheduler_logs` VALUES (3,25,'action started via Async Request','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (4,25,'action complete via Async Request','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (5,26,'action started via Async Request','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (6,27,'action created','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (7,26,'action complete via Async Request','2021-11-13 18:45:11','2021-11-13 18:45:11');
INSERT INTO `wp_actionscheduler_logs` VALUES (8,28,'action created','2021-11-13 18:49:27','2021-11-13 18:49:27');
INSERT INTO `wp_actionscheduler_logs` VALUES (9,28,'action started via Async Request','2021-11-13 18:49:34','2021-11-13 18:49:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (10,28,'action complete via Async Request','2021-11-13 18:49:34','2021-11-13 18:49:34');
INSERT INTO `wp_actionscheduler_logs` VALUES (11,29,'action created','2021-11-14 00:00:40','2021-11-14 00:00:40');
INSERT INTO `wp_actionscheduler_logs` VALUES (12,29,'action started via WP Cron','2021-11-14 00:01:07','2021-11-14 00:01:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (13,29,'action complete via WP Cron','2021-11-14 00:01:07','2021-11-14 00:01:07');
INSERT INTO `wp_actionscheduler_logs` VALUES (14,30,'action created','2021-11-14 02:23:02','2021-11-14 02:23:02');
INSERT INTO `wp_actionscheduler_logs` VALUES (15,30,'action started via WP Cron','2021-11-14 02:24:26','2021-11-14 02:24:26');
INSERT INTO `wp_actionscheduler_logs` VALUES (16,30,'action complete via WP Cron','2021-11-14 02:24:26','2021-11-14 02:24:26');
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
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
  `form_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `form_structure` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `calendar_language` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_format` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `pay_later_label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultstatus` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `defaultpaidstatus` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_from_email` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails` text COLLATE utf8mb4_unicode_520_ci,
  `fp_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_inc_additional_info` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_return_page` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_message` text COLLATE utf8mb4_unicode_520_ci,
  `fp_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailtomethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_destination_emails_field` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_enable_copy_to_user` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_user_email_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_subject` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cu_message` text COLLATE utf8mb4_unicode_520_ci,
  `cu_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fp_emailfrommethod` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vs_text_maxapp` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_is_required` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_is_email` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_datemmddyyyy` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_dateddmmyyyy` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_number` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_digits` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_max` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_min` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_pageof` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_submitbtn` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_previousbtn` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_nextbtn` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_quantity` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_cancel` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_cost` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vs_text_nmore` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cp_user_access` text COLLATE utf8mb4_unicode_520_ci,
  `cp_user_access_settings` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `display_emails_endtime` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_enable` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_days` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_hour` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_emails` text COLLATE utf8mb4_unicode_520_ci,
  `rep_subject` text COLLATE utf8mb4_unicode_520_ci,
  `rep_emailformat` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `rep_message` text COLLATE utf8mb4_unicode_520_ci,
  `cv_enable_captcha` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_width` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_height` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_chars` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_font` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_min_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_max_font_size` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_noise_length` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_background` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_border` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cv_text_enter_valid_captcha` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `ipaddr` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notifyto` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `posted_data` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `whoadded` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
-- Table structure for table `wp_emcs_event_types`
--

DROP TABLE IF EXISTS `wp_emcs_event_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_emcs_event_types` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_emcs_event_types`
--

LOCK TABLES `wp_emcs_event_types` WRITE;
/*!40000 ALTER TABLE `wp_emcs_event_types` DISABLE KEYS */;
INSERT INTO `wp_emcs_event_types` VALUES (1,'15 Minute Meeting','https://calendly.com/daridavis/15min','15min','1');
INSERT INTO `wp_emcs_event_types` VALUES (2,'30 Minute Meeting','https://calendly.com/daridavis/30min','30min','0');
INSERT INTO `wp_emcs_event_types` VALUES (3,'60 Minute Meeting','https://calendly.com/daridavis/60min','60min','0');
/*!40000 ALTER TABLE `wp_emcs_event_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:47:\"appointment-hour-booking/app-booking-plugin.php\";i:2;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}','yes');
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
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
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
INSERT INTO `wp_options` VALUES (104,'cron','a:15:{i:1638392038;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1638392990;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638393618;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638394488;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1638395040;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638395041;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638395058;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638403200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638405840;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1638418818;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1638470641;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638470650;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638850818;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1639421100;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes');
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
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1639051707;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638391019;s:7:\"checked\";a:4:{s:16:\"matriarchy-build\";s:5:\"3.0.3\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (135,'_transient_health-check-site-status-result','{\"good\":11,\"recommended\":6,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (155,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'current_theme','Matriarchy Build v0.1','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_JointsWP','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635023752;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'theme_mods_matriarchybuild','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"main-nav\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635038296;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (165,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (175,'theme_mods_matriarchy-build','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (177,'recovery_mode_email_last_sent','1636847143','yes');
INSERT INTO `wp_options` VALUES (232,'recently_activated','a:2:{s:55:\"embed-calendly-scheduling/embed-calendly-scheduling.php\";i:1636857108;s:42:\"peters-login-redirect/wplogin_redirect.php\";i:1636856582;}','yes');
INSERT INTO `wp_options` VALUES (233,'acf_version','5.11','yes');
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
INSERT INTO `wp_options` VALUES (407,'action_scheduler_lock_async-request-runner','1638392051','yes');
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
INSERT INTO `wp_options` VALUES (464,'woocommerce_marketplace_suggestions','a:2:{s:11:\"suggestions\";a:0:{}s:7:\"updated\";i:1638321396;}','no');
INSERT INTO `wp_options` VALUES (471,'_transient_shipping-transient-version','1636829226','yes');
INSERT INTO `wp_options` VALUES (472,'_transient_timeout_wc_shipping_method_count_legacy','1639421226','no');
INSERT INTO `wp_options` VALUES (473,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1636829226\";s:5:\"value\";i:0;}','no');
INSERT INTO `wp_options` VALUES (474,'_transient_product_query-transient-version','1638322806','yes');
INSERT INTO `wp_options` VALUES (482,'mo_dismiss_adnotice','true','yes');
INSERT INTO `wp_options` VALUES (657,'emcs_activation_time','1636856573','yes');
INSERT INTO `wp_options` VALUES (658,'emcs_stop_review_notice','0','yes');
INSERT INTO `wp_options` VALUES (659,'emcs_stop_newsletter_notice','0','yes');
INSERT INTO `wp_options` VALUES (660,'emcs_display_greeting','0','yes');
INSERT INTO `wp_options` VALUES (665,'emcs_settings','a:1:{s:12:\"emcs_api_key\";s:32:\"DDNPCCCFTOY5DIBK3EIMOB3ZLE4VKSPF\";}','yes');
INSERT INTO `wp_options` VALUES (675,'action_scheduler_migration_status','complete','yes');
INSERT INTO `wp_options` VALUES (711,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1638926198','no');
INSERT INTO `wp_options` VALUES (712,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (714,'_site_transient_timeout_browser_42f1afc97980ed8007c15e4a3958305b','1638927109','no');
INSERT INTO `wp_options` VALUES (715,'_site_transient_browser_42f1afc97980ed8007c15e4a3958305b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.55\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (716,'_transient_timeout_orders-all-statuses','1638927119','no');
INSERT INTO `wp_options` VALUES (717,'_transient_orders-all-statuses','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (718,'_transient_timeout_wc_onboarding_themes','1638408719','no');
INSERT INTO `wp_options` VALUES (719,'_transient_wc_onboarding_themes','a:4:{s:16:\"matriarchy-build\";a:6:{s:4:\"slug\";s:16:\"matriarchy-build\";s:5:\"title\";s:21:\"Matriarchy Build v0.1\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:79:\"http://matriarchy-build.local/wp-content/themes/matriarchy-build/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}s:14:\"twentynineteen\";a:6:{s:4:\"slug\";s:14:\"twentynineteen\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:77:\"http://matriarchy-build.local/wp-content/themes/twentynineteen/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}s:12:\"twentytwenty\";a:6:{s:4:\"slug\";s:12:\"twentytwenty\";s:5:\"title\";s:13:\"Twenty Twenty\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:75:\"http://matriarchy-build.local/wp-content/themes/twentytwenty/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}s:15:\"twentytwentyone\";a:6:{s:4:\"slug\";s:15:\"twentytwentyone\";s:5:\"title\";s:17:\"Twenty Twenty-One\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:78:\"http://matriarchy-build.local/wp-content/themes/twentytwentyone/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}}','no');
INSERT INTO `wp_options` VALUES (720,'_transient_timeout_wc_report_orders_stats_ac22c4021598dfd32b8be80b61c5bb2e','1638927125','no');
INSERT INTO `wp_options` VALUES (721,'_transient_wc_report_orders_stats_ac22c4021598dfd32b8be80b61c5bb2e','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-48\";s:10:\"date_start\";s:19:\"2021-11-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-11-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-11-30 20:32:01\";s:12:\"date_end_gmt\";s:19:\"2021-11-30 20:32:01\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (722,'_transient_timeout_wc_report_orders_stats_a04a033594971a86aa25050388b79c7d','1638927125','no');
INSERT INTO `wp_options` VALUES (723,'_transient_wc_report_orders_stats_a04a033594971a86aa25050388b79c7d','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-48\";s:10:\"date_start\";s:19:\"2021-11-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-11-30 00:00:00\";s:8:\"date_end\";s:19:\"2021-11-30 20:32:01\";s:12:\"date_end_gmt\";s:19:\"2021-11-30 20:32:01\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (724,'_transient_timeout_wc_report_orders_stats_d1926d700fb067107726333b85c96018','1638927126','no');
INSERT INTO `wp_options` VALUES (725,'_transient_wc_report_orders_stats_d1926d700fb067107726333b85c96018','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-48\";s:10:\"date_start\";s:19:\"2021-11-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-11-29 00:00:00\";s:8:\"date_end\";s:19:\"2021-11-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-11-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (726,'_transient_timeout_wc_report_orders_stats_42ad149fbf47bff53e781a5e62199727','1638927126','no');
INSERT INTO `wp_options` VALUES (727,'_transient_wc_report_orders_stats_42ad149fbf47bff53e781a5e62199727','a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-48\";s:10:\"date_start\";s:19:\"2021-11-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-11-29 00:00:00\";s:8:\"date_end\";s:19:\"2021-11-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-11-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}','no');
INSERT INTO `wp_options` VALUES (731,'wc_stripe_wh_monitor_began_at','1638322344','yes');
INSERT INTO `wp_options` VALUES (732,'wc_stripe_wh_last_success_at','0','yes');
INSERT INTO `wp_options` VALUES (733,'wc_stripe_wh_last_failure_at','0','yes');
INSERT INTO `wp_options` VALUES (734,'wc_stripe_wh_last_error','validation_succeeded','yes');
INSERT INTO `wp_options` VALUES (736,'wc_stripe_show_style_notice','no','yes');
INSERT INTO `wp_options` VALUES (737,'wc_stripe_show_sca_notice','no','yes');
INSERT INTO `wp_options` VALUES (738,'wc_stripe_version','5.8.1','yes');
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
INSERT INTO `wp_options` VALUES (776,'_transient_timeout_wc_related_51','1638409216','no');
INSERT INTO `wp_options` VALUES (777,'_transient_wc_related_51','a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=51\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (800,'_transient_timeout__woocommerce_helper_subscriptions','1638391789','no');
INSERT INTO `wp_options` VALUES (801,'_transient__woocommerce_helper_subscriptions','a:0:{}','no');
INSERT INTO `wp_options` VALUES (802,'_site_transient_timeout_theme_roots','1638392689','no');
INSERT INTO `wp_options` VALUES (803,'_site_transient_theme_roots','a:4:{s:16:\"matriarchy-build\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (804,'_transient_timeout__woocommerce_helper_updates','1638434089','no');
INSERT INTO `wp_options` VALUES (805,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1638390889;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no');
INSERT INTO `wp_options` VALUES (810,'_transient_timeout_wcstripe_account_data_test','1638398131','no');
INSERT INTO `wp_options` VALUES (811,'_transient_wcstripe_account_data_test','O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"acct_1K1hi7FpukNBisso\";s:6:\"object\";s:7:\"account\";s:12:\"capabilities\";O:8:\"stdClass\":11:{s:19:\"acss_debit_payments\";s:6:\"active\";s:26:\"afterpay_clearpay_payments\";s:6:\"active\";s:19:\"bancontact_payments\";s:6:\"active\";s:13:\"card_payments\";s:6:\"active\";s:12:\"eps_payments\";s:6:\"active\";s:16:\"giropay_payments\";s:6:\"active\";s:14:\"ideal_payments\";s:6:\"active\";s:12:\"p24_payments\";s:6:\"active\";s:19:\"sepa_debit_payments\";s:6:\"active\";s:15:\"sofort_payments\";s:6:\"active\";s:9:\"transfers\";s:6:\"active\";}s:15:\"charges_enabled\";b:1;s:7:\"country\";s:2:\"US\";s:16:\"default_currency\";s:3:\"usd\";s:17:\"details_submitted\";b:1;s:15:\"payouts_enabled\";b:1;s:8:\"settings\";O:8:\"stdClass\":8:{s:19:\"bacs_debit_payments\";O:8:\"stdClass\":0:{}s:8:\"branding\";O:8:\"stdClass\":4:{s:4:\"icon\";N;s:4:\"logo\";N;s:13:\"primary_color\";N;s:15:\"secondary_color\";N;}s:12:\"card_issuing\";O:8:\"stdClass\":1:{s:14:\"tos_acceptance\";O:8:\"stdClass\":2:{s:4:\"date\";N;s:2:\"ip\";N;}}s:13:\"card_payments\";O:8:\"stdClass\":1:{s:27:\"statement_descriptor_prefix\";s:6:\"YRDIGI\";}s:9:\"dashboard\";O:8:\"stdClass\":2:{s:12:\"display_name\";s:16:\"Matriarchy Build\";s:8:\"timezone\";s:16:\"America/New_York\";}s:8:\"payments\";O:8:\"stdClass\":3:{s:20:\"statement_descriptor\";s:19:\"YELLOWROCKETDIGITAL\";s:25:\"statement_descriptor_kana\";N;s:26:\"statement_descriptor_kanji\";N;}s:7:\"payouts\";O:8:\"stdClass\":3:{s:23:\"debit_negative_balances\";b:1;s:8:\"schedule\";O:8:\"stdClass\":2:{s:10:\"delay_days\";i:2;s:8:\"interval\";s:5:\"daily\";}s:20:\"statement_descriptor\";N;}s:19:\"sepa_debit_payments\";O:8:\"stdClass\":0:{}}s:4:\"type\";s:8:\"standard\";}','no');
INSERT INTO `wp_options` VALUES (812,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1638401740','no');
INSERT INTO `wp_options` VALUES (813,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5258;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4774;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2741;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2607;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2022;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1874;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1863;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1536;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1532;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1511;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1506;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1501;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1480;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1310;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1309;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1244;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1167;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1136;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1076;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:983;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:944;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:921;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:917;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:889;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:849;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:827;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:824;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:822;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:809;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:770;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:761;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:744;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:738;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:718;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:694;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:685;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:679;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:669;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:667;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:667;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:665;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:656;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:607;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:604;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:596;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:594;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:581;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:577;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:571;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:571;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:571;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:570;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:566;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:566;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:561;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:559;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:553;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:542;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:535;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:525;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:517;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:516;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:509;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:503;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:495;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:488;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:484;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:481;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:477;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:476;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:474;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:455;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:451;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:448;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:444;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:437;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:427;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:427;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:426;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:415;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:415;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:409;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:404;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:392;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:392;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:392;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:385;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:384;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:382;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:381;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:374;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:372;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:363;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:363;}}','no');
INSERT INTO `wp_options` VALUES (816,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638391022;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:47:\"appointment-hour-booking/app-booking-plugin.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/appointment-hour-booking\";s:4:\"slug\";s:24:\"appointment-hour-booking\";s:6:\"plugin\";s:47:\"appointment-hour-booking/app-booking-plugin.php\";s:11:\"new_version\";s:6:\"1.3.30\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/appointment-hour-booking/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/appointment-hour-booking.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/appointment-hour-booking/assets/icon-256x256.png?rev=1784135\";s:2:\"1x\";s:77:\"https://ps.w.org/appointment-hour-booking/assets/icon-128x128.png?rev=1784135\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/appointment-hour-booking/assets/banner-1544x500.png?rev=1788823\";s:2:\"1x\";s:79:\"https://ps.w.org/appointment-hour-booking/assets/banner-772x250.png?rev=1788823\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.5\";}s:55:\"embed-calendly-scheduling/embed-calendly-scheduling.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:39:\"w.org/plugins/embed-calendly-scheduling\";s:4:\"slug\";s:25:\"embed-calendly-scheduling\";s:6:\"plugin\";s:55:\"embed-calendly-scheduling/embed-calendly-scheduling.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/embed-calendly-scheduling/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/embed-calendly-scheduling.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/embed-calendly-scheduling/assets/icon-256x256.png?rev=2576331\";s:2:\"1x\";s:78:\"https://ps.w.org/embed-calendly-scheduling/assets/icon-256x256.png?rev=2576331\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/embed-calendly-scheduling/assets/banner-772x250.png?rev=2576331\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"5.8.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.5.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=2419673\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=2419673\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=2419673\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=2419673\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:4:\"5.11\";s:47:\"appointment-hour-booking/app-booking-plugin.php\";s:6:\"1.3.30\";s:55:\"embed-calendly-scheduling/embed-calendly-scheduling.php\";s:3:\"2.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.9.0\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"5.8.1\";}}','no');
INSERT INTO `wp_options` VALUES (817,'installed_appointment-hour-booking','1638391022','yes');
INSERT INTO `wp_options` VALUES (818,'cp_cpappb_last_verified','2021-12-01 20:53:11','yes');
INSERT INTO `wp_options` VALUES (819,'_transient_codepeople_promote_banner_appointment-hour-booking','1638391023','yes');
INSERT INTO `wp_options` VALUES (830,'_transient_doing_cron','1639051706.8372459411621093750000','yes');
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
INSERT INTO `wp_postmeta` VALUES (63,37,'_edit_lock','1636855847:1');
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
INSERT INTO `wp_postmeta` VALUES (146,47,'_edit_lock','1636850192:1');
INSERT INTO `wp_postmeta` VALUES (147,47,'_wp_page_template','page-full.php');
INSERT INTO `wp_postmeta` VALUES (148,47,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (149,47,'_wp_trash_meta_time','1636850051');
INSERT INTO `wp_postmeta` VALUES (150,47,'_wp_desired_post_slug','pros');
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
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_posts` VALUES (37,1,'2021-11-13 23:57:02','2021-11-13 23:57:02','<!-- wp:paragraph -->\n<p>Maecenas vulputate egestas interdum. Pellentesque blandit non ante sed iaculis. Suspendisse potenti. Vivamus vehicula vestibulum volutpat. Cras faucibus enim id euismod tincidunt. Praesent laoreet mi eu tristique vehicula. Nulla facilisi. Maecenas fermentum lorem a ante viverra, sit amet mattis orci mollis. Praesent non consectetur leo. Aliquam erat volutpat. Donec ut tristique magna. Cras semper, felis ut aliquam congue, urna nisl gravida justo, sed auctor justo urna a neque. Sed congue nibh sed ultricies venenatis. Praesent maximus nisi vitae dapibus maximus. Proin finibus, purus in imperdiet tincidunt, arcu purus cursus metus, eget elementum sapien enim id mauris. Vivamus placerat rhoncus ultricies.</p>\n<!-- /wp:paragraph -->','Cabo Verde','','publish','closed','closed','','cabo-verde','','','2021-11-14 02:10:47','2021-11-14 02:10:47','',0,'http://matriarchy-build.local/?post_type=pro&#038;p=37',0,'pro','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"pro\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Pro Details','pro-details','publish','closed','closed','','group_619050de762cb','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',0,'http://matriarchy-build.local/?post_type=acf-field-group&#038;p=38',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Company','company','publish','closed','closed','','field_619050ede180f','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=39',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Trade','trade','publish','closed','closed','','field_619050fde1810','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=40',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-11-13 23:59:35','2021-11-13 23:59:35','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Social','social','publish','closed','closed','','field_61905157e1811','','','2021-11-13 23:59:35','2021-11-13 23:59:35','',38,'http://matriarchy-build.local/?post_type=acf-field&p=41',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=42',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-11-14 00:11:03','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-14 00:11:03','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-11-14 00:27:51','2021-11-14 00:27:51','<!-- wp:paragraph -->\n<p>These are our pros</p>\n<!-- /wp:paragraph -->','Pros','','trash','closed','closed','','pros__trashed','','','2021-11-14 00:34:11','2021-11-14 00:34:11','',0,'http://matriarchy-build.local/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-11-14 00:27:51','2021-11-14 00:27:51','<!-- wp:paragraph -->\n<p>These are our pros</p>\n<!-- /wp:paragraph -->','Pros','','inherit','closed','closed','','47-revision-v1','','','2021-11-14 00:27:51','2021-11-14 00:27:51','',47,'http://matriarchy-build.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-11-14 00:57:59','2021-11-14 00:57:59','','Pros','','publish','closed','closed','','pros','','','2021-11-14 00:57:59','2021-11-14 00:57:59','',0,'http://matriarchy-build.local/?p=49',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-12-01 01:31:49','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-12-01 01:31:49','0000-00-00 00:00:00','',0,'http://matriarchy-build.local/?p=50',0,'post','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-12-01 01:40:06','2021-12-01 01:40:06','Cabo Verde pro as product.','Cabo Verde','','publish','open','closed','','cabo-verde','','','2021-12-01 01:40:06','2021-12-01 01:40:06','',0,'http://matriarchy-build.local/?post_type=product&#038;p=51',0,'product','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-12-01 01:39:25','2021-12-01 01:39:25','','Cabo Verde - 30 minutes','Duration: 30 minutes','publish','closed','closed','','cabo-verde-30-minutes','','','2021-12-01 01:39:57','2021-12-01 01:39:57','',51,'http://matriarchy-build.local/?post_type=product_variation&p=52',1,'product_variation','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-12-01 01:39:26','2021-12-01 01:39:26','','Cabo Verde - 60 minutes','Duration: 60 minutes','publish','closed','closed','','cabo-verde-60-minutes','','','2021-12-01 01:39:57','2021-12-01 01:39:57','',51,'http://matriarchy-build.local/?post_type=product_variation&p=53',2,'product_variation','',0);
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
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"d1cecbd4066e622d8c05a60c719d70e8656d5f94480a7b1cc30dbd75c6a49ba6\";a:4:{s:10:\"expiration\";i:1638495107;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36\";s:5:\"login\";i:1638322307;}s:64:\"0e81e8ea6a60e6a816bd911c9dc3b795b9f90f5b6ac8faf207e8462f5aafaac1\";a:4:{s:10:\"expiration\";i:1638563729;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36\";s:5:\"login\";i:1638390929;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','50');
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
INSERT INTO `wp_usermeta` VALUES (64,1,'wc_last_active','1638316800');
INSERT INTO `wp_usermeta` VALUES (65,1,'billing_first_name','Darielle');
INSERT INTO `wp_usermeta` VALUES (66,1,'billing_last_name','Davis');
INSERT INTO `wp_usermeta` VALUES (67,1,'_order_count','0');
INSERT INTO `wp_usermeta` VALUES (69,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:0:{}}');
INSERT INTO `wp_usermeta` VALUES (70,1,'closedpostboxes_dashboard','a:1:{i:0;s:24:\"wc_admin_dashboard_setup\";}');
INSERT INTO `wp_usermeta` VALUES (71,1,'metaboxhidden_dashboard','a:4:{i:0;s:24:\"wc_admin_dashboard_setup\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (72,1,'dismissed_no_secure_connection_notice','1');
INSERT INTO `wp_usermeta` VALUES (77,1,'woocommerce_admin_task_list_tracked_started_tasks','{\"payments\":1}');
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
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
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
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
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
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
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
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
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
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES (9,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:784:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-12-01T01:32:12+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:8:\"Darielle\";s:9:\"last_name\";s:5:\"Davis\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}',1638495212);
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
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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

-- Dump completed on 2021-12-09  7:09:09
