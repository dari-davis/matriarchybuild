/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2022-01-06 14:22:02 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  `online_meeting_provider` enum('zoom','google_meet','jitsi') COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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

CREATE TABLE `wp_bookly_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_bookly_email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attach` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_bookly_mailing_campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mailing_list_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `state` enum('pending','completed') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'pending',
  `send_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mailing_list_id` (`mailing_list_id`),
  CONSTRAINT `wp_bookly_mailing_campaigns_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_mailing_list_recipients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mailing_list_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mailing_list_id` (`mailing_list_id`),
  CONSTRAINT `wp_bookly_mailing_list_recipients_ibfk_1` FOREIGN KEY (`mailing_list_id`) REFERENCES `wp_bookly_mailing_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_mailing_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_mailing_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `sent` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_bookly_schedule_item_breaks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `staff_schedule_item_id` int(10) unsigned NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_schedule_item_id` (`staff_schedule_item_id`),
  CONSTRAINT `wp_bookly_schedule_item_breaks_ibfk_1` FOREIGN KEY (`staff_schedule_item_id`) REFERENCES `wp_bookly_staff_schedule_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_bookly_series` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `repeat` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  `online_meetings` enum('off','zoom','google_meet','jitsi') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'off',
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
  `icalendar_token` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icalendar_days_before` int(11) NOT NULL DEFAULT '365',
  `icalendar_days_after` int(11) NOT NULL DEFAULT '365',
  `color` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '#dddddd',
  `gateways` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `wp_bookly_staff_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `wp_bookly_staff_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_staff_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_staff_preference_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `staff_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `wp_bookly_staff_preference_orders_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `wp_bookly_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_bookly_staff_preference_orders_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `wp_bookly_staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_bookly_stats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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

CREATE TABLE `wp_login_redirects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rul_type` enum('user','role','level','all','register') NOT NULL,
  `rul_value` varchar(191) DEFAULT NULL,
  `rul_url` longtext,
  `rul_url_logout` longtext,
  `rul_order` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1900 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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


/* INSERT TABLE DATA: wp_actionscheduler_actions */
INSERT INTO `wp_actionscheduler_actions` VALUES("34", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-02 01:16:37", "2021-12-02 01:16:37", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638407797;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638407797;}", "0", "1", "2021-12-09 12:12:24", "2021-12-09 12:12:24", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("39", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-10 12:12:24", "2021-12-10 12:12:24", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639138344;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639138344;}", "0", "1", "2021-12-15 03:19:09", "2021-12-15 03:19:09", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("40", "wc-admin_import_customers", "complete", "2021-12-09 12:13:06", "2021-12-09 12:13:06", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639051986;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639051986;}", "2", "1", "2021-12-09 12:14:14", "2021-12-09 12:14:14", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("41", "action_scheduler/migration_hook", "complete", "2021-12-09 12:51:55", "2021-12-09 12:51:55", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639054315;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639054315;}", "1", "1", "2021-12-09 12:52:02", "2021-12-09 12:52:02", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("42", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-16 03:19:09", "2021-12-16 03:19:09", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639624749;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639624749;}", "0", "1", "2021-12-17 23:30:43", "2021-12-17 23:30:43", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("43", "wc-admin_import_customers", "complete", "2021-12-15 03:20:49", "2021-12-15 03:20:49", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639538449;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639538449;}", "2", "1", "2021-12-15 03:21:48", "2021-12-15 03:21:48", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("44", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-18 23:30:43", "2021-12-18 23:30:43", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639870243;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639870243;}", "0", "1", "2021-12-20 12:04:46", "2021-12-20 12:04:46", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("45", "wc-admin_import_customers", "complete", "2021-12-17 23:31:07", "2021-12-17 23:31:07", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639783867;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639783867;}", "2", "1", "2021-12-17 23:32:04", "2021-12-17 23:32:04", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("46", "wc-admin_import_customers", "complete", "2021-12-18 00:00:09", "2021-12-18 00:00:09", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1639785609;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1639785609;}", "2", "1", "2021-12-18 00:01:21", "2021-12-18 00:01:21", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("47", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-21 12:04:46", "2021-12-21 12:04:46", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640088286;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640088286;}", "0", "1", "2021-12-21 12:07:32", "2021-12-21 12:07:32", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("48", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-22 12:07:32", "2021-12-22 12:07:32", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640174852;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640174852;}", "0", "1", "2021-12-22 12:08:58", "2021-12-22 12:08:58", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("49", "wc-admin_import_customers", "complete", "2021-12-22 11:01:25", "2021-12-22 11:01:25", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640170885;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640170885;}", "2", "1", "2021-12-22 11:02:29", "2021-12-22 11:02:29", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("50", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-23 12:08:58", "2021-12-23 12:08:58", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640261338;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640261338;}", "0", "1", "2021-12-26 22:37:14", "2021-12-26 22:37:14", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("51", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-27 22:37:14", "2021-12-27 22:37:14", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640644634;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640644634;}", "0", "1", "2021-12-29 00:23:22", "2021-12-29 00:23:22", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("52", "wc-admin_import_customers", "complete", "2021-12-26 22:37:39", "2021-12-26 22:37:39", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640558259;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640558259;}", "2", "1", "2021-12-26 22:38:20", "2021-12-26 22:38:20", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("53", "woocommerce_update_marketplace_suggestions", "complete", "2021-12-30 00:23:22", "2021-12-30 00:23:22", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640823802;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640823802;}", "0", "1", "2022-01-06 12:28:53", "2022-01-06 12:28:53", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("54", "wc-admin_import_customers", "complete", "2021-12-29 00:24:07", "2021-12-29 00:24:07", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640737447;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640737447;}", "2", "1", "2021-12-29 00:25:04", "2021-12-29 00:25:04", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("55", "action_scheduler/migration_hook", "complete", "2021-12-29 00:34:03", "2021-12-29 00:34:03", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640738043;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640738043;}", "1", "1", "2021-12-29 00:34:39", "2021-12-29 00:34:39", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("56", "woocommerce_update_marketplace_suggestions", "pending", "2022-01-07 12:28:53", "2022-01-07 12:28:53", "[]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1641558533;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1641558533;}", "0", "0", "0000-00-00 00:00:00", "0000-00-00 00:00:00", "0", NULL);
INSERT INTO `wp_actionscheduler_actions` VALUES("57", "wc-admin_import_customers", "complete", "2022-01-06 13:15:35", "2022-01-06 13:15:35", "[1]", "O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1641474935;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1641474935;}", "2", "1", "2022-01-06 13:15:58", "2022-01-06 13:15:58", "0", NULL);

/* INSERT TABLE DATA: wp_actionscheduler_groups */
INSERT INTO `wp_actionscheduler_groups` VALUES("1", "action-scheduler-migration");
INSERT INTO `wp_actionscheduler_groups` VALUES("2", "wc-admin-data");

/* INSERT TABLE DATA: wp_actionscheduler_logs */
INSERT INTO `wp_actionscheduler_logs` VALUES("27", "34", "action created", "2021-12-01 01:16:37", "2021-12-01 01:16:37");
INSERT INTO `wp_actionscheduler_logs` VALUES("41", "34", "action started via WP Cron", "2021-12-09 12:12:24", "2021-12-09 12:12:24");
INSERT INTO `wp_actionscheduler_logs` VALUES("42", "39", "action created", "2021-12-09 12:12:24", "2021-12-09 12:12:24");
INSERT INTO `wp_actionscheduler_logs` VALUES("43", "34", "action complete via WP Cron", "2021-12-09 12:12:24", "2021-12-09 12:12:24");
INSERT INTO `wp_actionscheduler_logs` VALUES("44", "40", "action created", "2021-12-09 12:13:01", "2021-12-09 12:13:01");
INSERT INTO `wp_actionscheduler_logs` VALUES("45", "40", "action started via WP Cron", "2021-12-09 12:14:14", "2021-12-09 12:14:14");
INSERT INTO `wp_actionscheduler_logs` VALUES("46", "40", "action complete via WP Cron", "2021-12-09 12:14:14", "2021-12-09 12:14:14");
INSERT INTO `wp_actionscheduler_logs` VALUES("47", "41", "action created", "2021-12-09 12:50:55", "2021-12-09 12:50:55");
INSERT INTO `wp_actionscheduler_logs` VALUES("48", "41", "action started via WP Cron", "2021-12-09 12:52:02", "2021-12-09 12:52:02");
INSERT INTO `wp_actionscheduler_logs` VALUES("49", "41", "action complete via WP Cron", "2021-12-09 12:52:02", "2021-12-09 12:52:02");
INSERT INTO `wp_actionscheduler_logs` VALUES("50", "39", "action started via WP Cron", "2021-12-15 03:19:09", "2021-12-15 03:19:09");
INSERT INTO `wp_actionscheduler_logs` VALUES("51", "42", "action created", "2021-12-15 03:19:09", "2021-12-15 03:19:09");
INSERT INTO `wp_actionscheduler_logs` VALUES("52", "39", "action complete via WP Cron", "2021-12-15 03:19:09", "2021-12-15 03:19:09");
INSERT INTO `wp_actionscheduler_logs` VALUES("53", "43", "action created", "2021-12-15 03:20:44", "2021-12-15 03:20:44");
INSERT INTO `wp_actionscheduler_logs` VALUES("54", "43", "action started via Async Request", "2021-12-15 03:21:48", "2021-12-15 03:21:48");
INSERT INTO `wp_actionscheduler_logs` VALUES("55", "43", "action complete via Async Request", "2021-12-15 03:21:48", "2021-12-15 03:21:48");
INSERT INTO `wp_actionscheduler_logs` VALUES("56", "42", "action started via WP Cron", "2021-12-17 23:30:43", "2021-12-17 23:30:43");
INSERT INTO `wp_actionscheduler_logs` VALUES("57", "44", "action created", "2021-12-17 23:30:43", "2021-12-17 23:30:43");
INSERT INTO `wp_actionscheduler_logs` VALUES("58", "42", "action complete via WP Cron", "2021-12-17 23:30:43", "2021-12-17 23:30:43");
INSERT INTO `wp_actionscheduler_logs` VALUES("59", "45", "action created", "2021-12-17 23:31:02", "2021-12-17 23:31:02");
INSERT INTO `wp_actionscheduler_logs` VALUES("60", "45", "action started via WP Cron", "2021-12-17 23:32:04", "2021-12-17 23:32:04");
INSERT INTO `wp_actionscheduler_logs` VALUES("61", "45", "action complete via WP Cron", "2021-12-17 23:32:04", "2021-12-17 23:32:04");
INSERT INTO `wp_actionscheduler_logs` VALUES("62", "46", "action created", "2021-12-18 00:00:04", "2021-12-18 00:00:04");
INSERT INTO `wp_actionscheduler_logs` VALUES("63", "46", "action started via WP Cron", "2021-12-18 00:01:21", "2021-12-18 00:01:21");
INSERT INTO `wp_actionscheduler_logs` VALUES("64", "46", "action complete via WP Cron", "2021-12-18 00:01:21", "2021-12-18 00:01:21");
INSERT INTO `wp_actionscheduler_logs` VALUES("65", "44", "action started via WP Cron", "2021-12-20 12:04:46", "2021-12-20 12:04:46");
INSERT INTO `wp_actionscheduler_logs` VALUES("66", "47", "action created", "2021-12-20 12:04:46", "2021-12-20 12:04:46");
INSERT INTO `wp_actionscheduler_logs` VALUES("67", "44", "action complete via WP Cron", "2021-12-20 12:04:46", "2021-12-20 12:04:46");
INSERT INTO `wp_actionscheduler_logs` VALUES("68", "47", "action started via WP Cron", "2021-12-21 12:07:32", "2021-12-21 12:07:32");
INSERT INTO `wp_actionscheduler_logs` VALUES("69", "48", "action created", "2021-12-21 12:07:32", "2021-12-21 12:07:32");
INSERT INTO `wp_actionscheduler_logs` VALUES("70", "47", "action complete via WP Cron", "2021-12-21 12:07:32", "2021-12-21 12:07:32");
INSERT INTO `wp_actionscheduler_logs` VALUES("71", "49", "action created", "2021-12-22 11:01:20", "2021-12-22 11:01:20");
INSERT INTO `wp_actionscheduler_logs` VALUES("72", "49", "action started via WP Cron", "2021-12-22 11:02:29", "2021-12-22 11:02:29");
INSERT INTO `wp_actionscheduler_logs` VALUES("73", "49", "action complete via WP Cron", "2021-12-22 11:02:29", "2021-12-22 11:02:29");
INSERT INTO `wp_actionscheduler_logs` VALUES("74", "48", "action started via WP Cron", "2021-12-22 12:08:58", "2021-12-22 12:08:58");
INSERT INTO `wp_actionscheduler_logs` VALUES("75", "50", "action created", "2021-12-22 12:08:58", "2021-12-22 12:08:58");
INSERT INTO `wp_actionscheduler_logs` VALUES("76", "48", "action complete via WP Cron", "2021-12-22 12:08:58", "2021-12-22 12:08:58");
INSERT INTO `wp_actionscheduler_logs` VALUES("77", "50", "action started via WP Cron", "2021-12-26 22:37:14", "2021-12-26 22:37:14");
INSERT INTO `wp_actionscheduler_logs` VALUES("78", "51", "action created", "2021-12-26 22:37:14", "2021-12-26 22:37:14");
INSERT INTO `wp_actionscheduler_logs` VALUES("79", "50", "action complete via WP Cron", "2021-12-26 22:37:14", "2021-12-26 22:37:14");
INSERT INTO `wp_actionscheduler_logs` VALUES("80", "52", "action created", "2021-12-26 22:37:34", "2021-12-26 22:37:34");
INSERT INTO `wp_actionscheduler_logs` VALUES("81", "52", "action started via WP Cron", "2021-12-26 22:38:20", "2021-12-26 22:38:20");
INSERT INTO `wp_actionscheduler_logs` VALUES("82", "52", "action complete via WP Cron", "2021-12-26 22:38:20", "2021-12-26 22:38:20");
INSERT INTO `wp_actionscheduler_logs` VALUES("83", "51", "action started via WP Cron", "2021-12-29 00:23:22", "2021-12-29 00:23:22");
INSERT INTO `wp_actionscheduler_logs` VALUES("84", "53", "action created", "2021-12-29 00:23:22", "2021-12-29 00:23:22");
INSERT INTO `wp_actionscheduler_logs` VALUES("85", "51", "action complete via WP Cron", "2021-12-29 00:23:22", "2021-12-29 00:23:22");
INSERT INTO `wp_actionscheduler_logs` VALUES("86", "54", "action created", "2021-12-29 00:24:02", "2021-12-29 00:24:02");
INSERT INTO `wp_actionscheduler_logs` VALUES("87", "54", "action started via WP Cron", "2021-12-29 00:25:04", "2021-12-29 00:25:04");
INSERT INTO `wp_actionscheduler_logs` VALUES("88", "54", "action complete via WP Cron", "2021-12-29 00:25:04", "2021-12-29 00:25:04");
INSERT INTO `wp_actionscheduler_logs` VALUES("89", "55", "action created", "2021-12-29 00:33:03", "2021-12-29 00:33:03");
INSERT INTO `wp_actionscheduler_logs` VALUES("90", "55", "action started via Async Request", "2021-12-29 00:34:39", "2021-12-29 00:34:39");
INSERT INTO `wp_actionscheduler_logs` VALUES("91", "55", "action complete via Async Request", "2021-12-29 00:34:39", "2021-12-29 00:34:39");
INSERT INTO `wp_actionscheduler_logs` VALUES("92", "53", "action started via WP Cron", "2022-01-06 12:28:53", "2022-01-06 12:28:53");
INSERT INTO `wp_actionscheduler_logs` VALUES("93", "56", "action created", "2022-01-06 12:28:53", "2022-01-06 12:28:53");
INSERT INTO `wp_actionscheduler_logs` VALUES("94", "53", "action complete via WP Cron", "2022-01-06 12:28:53", "2022-01-06 12:28:53");
INSERT INTO `wp_actionscheduler_logs` VALUES("95", "57", "action created", "2022-01-06 13:15:30", "2022-01-06 13:15:30");
INSERT INTO `wp_actionscheduler_logs` VALUES("96", "57", "action started via WP Cron", "2022-01-06 13:15:58", "2022-01-06 13:15:58");
INSERT INTO `wp_actionscheduler_logs` VALUES("97", "57", "action complete via WP Cron", "2022-01-06 13:15:58", "2022-01-06 13:15:58");

/* INSERT TABLE DATA: wp_bookly_appointments */
INSERT INTO `wp_bookly_appointments` VALUES("1", NULL, "2", "0", "1", NULL, NULL, "2021-12-29 13:45:00", "2021-12-29 14:00:00", "0", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "bookly", "2021-12-29 02:39:51", "2021-12-29 02:39:51");

/* INSERT TABLE DATA: wp_bookly_customer_appointments */
INSERT INTO `wp_bookly_customer_appointments` VALUES("1", NULL, NULL, "1", "1", "1", "1", "1", "1", "", "[]", "1", "1", "[]", "approved", NULL, "bec9ab595ed1462e2031598462d1f5c3", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, "frontend", "2021-12-29 02:39:51", "2021-12-29 02:39:51");

/* INSERT TABLE DATA: wp_bookly_customers */
INSERT INTO `wp_bookly_customers` VALUES("1", NULL, NULL, NULL, "admin", "admin", "", "", "dev-email@flywheel.local", NULL, "", "", "", "", "", "", "", "", "[]", NULL, "2021-12-29 02:39:51");

/* INSERT TABLE DATA: wp_bookly_email_log */
INSERT INTO `wp_bookly_email_log` VALUES("1", "dev@yellowrocketdigital.com", "New staff member", "<p>Hello.</p>\n<p>An account was created for you at http://matriarchy-build.local</p>\n<p>Your user details:<br />\nuser: Tester ProMember<br />\npassword: *QRCuA</p>\n<p>Thanks.</p>\n", "[\"Content-Type: text\\/html; charset=utf-8\",\"From: Matriarchy Build <dev-email@flywheel.local>\"]", "[]", "staff_new_wp_user", "2021-12-29 00:51:30");
INSERT INTO `wp_bookly_email_log` VALUES("2", "dev2@example.com", "New staff member", "<p>Hello.</p>\n<p>An account was created for you at http://matriarchy-build.local</p>\n<p>Your user details:<br />\nuser: TesterTwo ProMember<br />\npassword: %cU6KA</p>\n<p>Thanks.</p>\n", "[\"Content-Type: text\\/html; charset=utf-8\",\"From: Matriarchy Build <dev-email@flywheel.local>\"]", "[]", "staff_new_wp_user", "2021-12-29 01:16:28");
INSERT INTO `wp_bookly_email_log` VALUES("3", "dev-email@flywheel.local", "Your appointment information", "<p>Dear admin.</p>\n<p>This is a confirmation that you have booked 1:1 Consultation.</p>\n<p>We are waiting you at  on December 29, 2021 at 1:45 pm.</p>\n<p>Thank you for choosing our company.</p>\n<p>Matriarchy Build</p>\n", "[\"Content-Type: text\\/html; charset=utf-8\",\"From: Matriarchy Build <dev-email@flywheel.local>\"]", "[]", "new_booking", "2021-12-29 02:39:51");
INSERT INTO `wp_bookly_email_log` VALUES("4", "dev2@example.com", "New booking information", "<p>Hello.</p>\n<p>You have a new booking.</p>\n<p>Service: 1:1 Consultation<br />\nDate: December 29, 2021<br />\nTime: 1:45 pm<br />\nClient name: admin<br />\nClient phone:<br />\nClient email: dev-email@flywheel.local</p>\n", "[\"Content-Type: text\\/html; charset=utf-8\",\"From: Matriarchy Build <dev-email@flywheel.local>\",\"Reply-To: admin <dev-email@flywheel.local>\"]", "[]", "new_booking", "2021-12-29 02:39:51");

/* INSERT TABLE DATA: wp_bookly_news */
INSERT INTO `wp_bookly_news` VALUES("1", "1", " How to promote best selling services with Bookly", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/how-promote-best-selling-services-bookly-banner-756.jpg", "<p><span>While Bookly is an appointment scheduling plugin that allows you to automate your online reservation system, some of its features can be used as a great way to gain customers’ interest in the services you want to promote. From this article, you’ll find out which Bookly items and built-in features you can use to better sell your services.</span></p>", "https://www.booking-wp-plugin.com/promote-best-selling-services-bookly/", "Read more", "1", "2021-09-20 19:02:23", "2021-09-20 19:02:23");
INSERT INTO `wp_bookly_news` VALUES("2", "2", " Mistakes every Bookly beginner should avoid", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/mistakes-every-bookly-beginner-should-avoid-banner-756.jpg", "<p><span>Bookly admin panel is very intuitive and user-friendly. Thanks to its clean and simple design, even a WP beginner can</span><span>&nbsp;</span>set up Bookly<span>&nbsp;</span><span>without problems. We know you probably want to get started with online bookings on your website as quickly as possible and with almost no effort, so we’ve gathered the most common mistakes to avoid when you start using Bookly.</span></p>", "https://www.booking-wp-plugin.com/mistakes-every-bookly-beginner-avoid/", "Read more", "1", "2021-09-20 19:05:05", "2021-09-20 19:05:05");
INSERT INTO `wp_bookly_news` VALUES("3", "3", "What’s the difference between Service Schedule (Add-on) & Special Days (Add-on)", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/difference-between-service-schedule-addon-and-special-days-addon-banner.jpg", "<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a quick overview of the Service Schedule (Add-on) and Special Days (Add-on) for Bookly.</span></p>", "https://www.booking-wp-plugin.com/whats-difference-service-schedule-add-special-days-add/", "Read more", "1", "2021-09-20 19:07:00", "2021-09-20 19:07:00");
INSERT INTO `wp_bookly_news` VALUES("4", "4", " New version release. See what’s new in Bookly PRO 4.2.", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/Bookly-PRO-4.2-release.jpg", "<p><span style=\"font-weight: 400;\" data-mce-style=\"font-weight: 400;\">In this new update, we’ve added new features, fixed errors, and generally made some improvements to make your Bookly experience better.&nbsp;<span>Here’s the list of the most important updates included in&nbsp;</span><b>Bookly PRO version 4.2</b><span>.</span></span></p>", "https://www.booking-wp-plugin.com/bookly-pro-v4-2/", "Read more", "1", "2021-09-21 06:53:14", "2021-09-21 06:53:14");
INSERT INTO `wp_bookly_news` VALUES("5", "5", "New video: How to manage Services in Bookly PRO", "youtube", "https://www.youtube.com/embed/WCu_g3pHXa8", "<p>In this video, you will learn how to set up services and categories in Bookly PRO. Settings are available in the Services section in Bookly menu. For more details, visit&nbsp;our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212176289-Services\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212176289-Services\" target=\"_blank\" rel=\"noopener\">help center</a> and check other video tutorials to learn the basics and get the most out of Bookly.</p>", "https://www.youtube.com/watch?v=WCu_g3pHXa8", "Watch on Youtube", "1", "2021-09-28 07:52:26", "2021-09-28 07:52:26");
INSERT INTO `wp_bookly_news` VALUES("6", "6", " How to check the full history of customer’s bookings", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/09/check-full-history-of-customers-bookings-banner-756.jpg", "<p><span>It is very important to be able to view the full history of appointments made by each customer. This information will keep you updated about how many times a client has booked with you or cancelled the appointment, what kind of services they prefer, and which staff members they usually choose for their visit.</span></p>", "https://www.booking-wp-plugin.com/check-full-history-customers-bookings/", "Read more", "1", "2021-09-30 07:40:51", "2021-09-30 07:40:51");
INSERT INTO `wp_bookly_news` VALUES("7", "7", "New video: How to manage Staff Members in Bookly PRO", "youtube", "https://www.youtube.com/embed/v-ULkUau38o", "<p><span>Find out how to set up and manage staff members in Bookly PRO. Settings are available in the Staff Members section in Bookly menu. For more details, visit&nbsp;our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212177569-Staff\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212177569-Staff\">help center</a><span>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=v-ULkUau38o", "Watch on Youtube", "1", "2021-10-01 08:22:19", "2021-10-01 08:22:19");
INSERT INTO `wp_bookly_news` VALUES("8", "8", "New video: How to customize the look of your Bookly booking form", "youtube", "https://www.youtube.com/embed/Lyt5qHqjpCY", "<p><span>Learn how to&nbsp;</span><span>make the booking form fit right into your site and branding</span><span>. Settings are available in the Appearance section in Bookly menu. For more details, visit&nbsp;our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212178149-Booking-Form-Look-Feel\" target=\"_blank\" rel=\"noopener\">help center</a><span>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=Lyt5qHqjpCY", "Watch on Youtube", "1", "2021-10-05 13:35:02", "2021-10-05 13:35:02");
INSERT INTO `wp_bookly_news` VALUES("9", "9", " 3 ways to cancel an appointment for your customers", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/3-ways-to-cancel-appointment-for-your-customers-banner-756.jpg", "<p><span>Missed appointments cost your staff members money and waste precious time which could be spent on other customers. Fortunately, the cancellation process with Bookly PRO is very easy and handy. This article explains how to provide your customers with a cancellation link, so you’re notified in advance about the free time slot in your timetable.</span></p>", "https://www.booking-wp-plugin.com/3-ways-cancel-appointment-customers/", "Read more", "1", "2021-10-07 10:12:10", "2021-10-07 10:12:10");
INSERT INTO `wp_bookly_news` VALUES("10", "10", "New video: How to send automated SMS Notifications in Bookly", "youtube", "https://www.youtube.com/embed/9uQ6LtaJj_k", "<p><span>Using the automated Bookly SMS reminder service, you can send personalized text messages to notify your employees and clients regarding upcoming or updated appointments. This video will show you how to quickly set up this feature in Bookly. For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>", "https://www.youtube.com/watch?v=9uQ6LtaJj_k", "Watch on Youtube", "1", "2021-10-11 08:28:11", "2021-10-11 08:28:11");
INSERT INTO `wp_bookly_news` VALUES("11", "11", "How to let clients book in their timezone", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/let-clients-book-in-their-timezone-banner-756.jpg", "<p><span>Bookly strives to offer convenience to your clients, so it works perfectly for handling international appointments. If you and your customers live in different time zones, Bookly can show the online booking form to your clients converted to their local time.</span></p>", "https://www.booking-wp-plugin.com/let-clients-book-timezone/", "Read more", "1", "2021-10-14 07:31:52", "2021-10-14 07:31:52");
INSERT INTO `wp_bookly_news` VALUES("12", "12", "New version release. See what’s new in Bookly PRO 4.3.", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/Bookly-PRO-4.3-release.jpg", "<p><span>With every new version, we release new features that will definitely improve your Bookly experience. Thank you for sharing your suggestions with us – we love helping you and your business grow and succeed!&nbsp;Here’s the list of the most important updates included in <strong>Bookly PRO version 4.3</strong>.</span></p>", "https://www.booking-wp-plugin.com/bookly-pro-v4-3/", "Read more", "1", "2021-10-18 08:22:17", "2021-10-18 08:22:17");
INSERT INTO `wp_bookly_news` VALUES("13", "13", "New video: General Settings in Bookly PRO", "youtube", "https://www.youtube.com/embed/qbxOU5OOjcc", "<p><span>This video will walk you through the main Bookly PRO settings and options which you have to set up before publishing the booking form on your website.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/categories/200390551-Documentation\" href=\"https://support.booking-wp-plugin.com/hc/en-us/categories/200390551-Documentation\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other video tutorials to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=qbxOU5OOjcc", "Watch on Youtube", "1", "2021-10-21 08:56:39", "2021-10-21 08:56:39");
INSERT INTO `wp_bookly_news` VALUES("14", "14", " What’s the difference between Custom Fields (Add-on) & Customer Information (Add-on)", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/10/difference-between-custom-fields-addon-and-customer-information-addon-banner.jpg", "<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a quick overview of the Custom Fields (Add-on) and Customer Information (Add-on) for Bookly.</span></p>", "https://www.booking-wp-plugin.com/whats-difference-custom-fields-add-customer-information-add/", "Read more", "1", "2021-10-26 07:21:39", "2021-10-26 07:21:39");
INSERT INTO `wp_bookly_news` VALUES("15", "15", "New video: Bookly PRO initial setup", "youtube", "https://www.youtube.com/embed/OgsQ8CM3Gq0", "<p><span>The initial steps you should take to quickly start using Bookly: create your first service, a staff member, and add the Bookly booking form on your website. For further setup, we recommend you to check&nbsp;other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;about Bookly WordPress appointment plugin and visit our <a href=\"https://support.booking-wp-plugin.com/hc/en-us\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>", "https://www.youtube.com/watch?v=OgsQ8CM3Gq0&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i", "Watch on Youtube", "1", "2021-10-28 08:32:07", "2021-10-28 08:32:07");
INSERT INTO `wp_bookly_news` VALUES("16", "16", "How to block a customer from making an appointment", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/block-customer-from-making-appointment-banner-756.jpg", "<p>In some cases, you may want to restrict clients from making multiple appointments or even block someone from all future bookings. Bookly features will help you prevent unwanted reservations from problematic customers and have more control over who can book your services online.</p>", "https://www.booking-wp-plugin.com/block-customer-making-appointment/", "Read more", "1", "2021-11-02 10:27:09", "2021-11-02 10:27:09");
INSERT INTO `wp_bookly_news` VALUES("17", "17", "New video: How to set up and send automated Email Notifications in Bookly", "youtube", "https://www.youtube.com/embed/AqXiN73sGbc", "<p><span>A quick video tutorial about creating personalized email notifications for your customers and staff members right from Bookly admin panel.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202868045-Email-Text-Message-Notifications\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">videos</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=AqXiN73sGbc&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i", "Watch on Youtube", "1", "2021-11-04 10:24:37", "2021-11-04 10:24:37");
INSERT INTO `wp_bookly_news` VALUES("18", "18", "How to use resources in bookings", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/how-to-use-resources-in-bookings-banner-756.jpg", "<p><span>Do you provide services that require some rooms, equipment, or things during the appointment?&nbsp;With Bookly features, you can create bookable resources.&nbsp;This article explains how to add resources to your bookings and have full control over their availability.</span></p>", "https://www.booking-wp-plugin.com/use-resources-bookings/", "Read more", "1", "2021-11-11 10:25:09", "2021-11-11 10:25:09");
INSERT INTO `wp_bookly_news` VALUES("19", "19", "New video: How to give online access to bookings for clients", "youtube", "https://www.youtube.com/embed/bQf_oayrPaM", "<p><span>This video will show you how to let your customers view and edit bookings online&nbsp;</span><span>directly on your website.&nbsp;For more details, visit our&nbsp;<a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212455529-Online-Access-to-Bookings-for-Clients\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212455529-Online-Access-to-Bookings-for-Clients\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=bQf_oayrPaM&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK", "Watch on Youtube", "1", "2021-11-12 09:28:51", "2021-11-12 09:28:51");
INSERT INTO `wp_bookly_news` VALUES("20", "20", "Appointment cancellation by staff – 3 options", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/Appointment-cancellation-by-staff-3-options-banner-756.jpg", "<p><span>Whatever the reason, there are situations when your staff member cannot make an appointment and has no choice but to cancel a scheduled visit. This article describes a few different ways for your employees to cancel an appointment via Bookly.</span></p>", "https://www.booking-wp-plugin.com/appointment-cancellation-staff-3-options/", "Read more", "1", "2021-11-17 09:42:50", "2021-11-17 09:42:50");
INSERT INTO `wp_bookly_news` VALUES("21", "21", "New video: How to manage appointments in Bookly", "youtube", "https://www.youtube.com/embed/D7jPxQXngGM", "<p><span>Dealing with an unlimited number of customer reservations from Bookly admin panel is very simple. This video describes how to view and manage your company workload effectively. For more details, visit our&nbsp;<a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212973145-Keep-Track-and-Edit-Appointments\" target=\"_blank\" rel=\"noopener\">help center</a>.</span></p>", "https://www.youtube.com/watch?v=D7jPxQXngGM", "Watch on Youtube", "1", "2021-11-19 09:49:41", "2021-11-19 09:49:41");
INSERT INTO `wp_bookly_news` VALUES("22", "22", "New version release. See what’s new in Bookly PRO 4.4.", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/Bookly-PRO-release-4.4-756.jpg", "<p><span>Bookly is continually getting better to provide you with the most helpful features for your business. This update brings most-requested features, general improvements, and fixes to ensure that Bookly is working at its best.&nbsp;Check out the list of capabilities included in&nbsp;</span><strong>Bookly PRO version 4.4</strong><span>.</span></p>", "https://www.booking-wp-plugin.com/bookly-pro-v4-4/", "Read more", "1", "2021-11-22 12:25:15", "2021-11-22 12:25:15");
INSERT INTO `wp_bookly_news` VALUES("23", "23", "Introducing Bookly Mailchimp (Add-on)", "image", "https://images.booking-wp-plugin.com/main/products/Bookly-Mailchimp-integration.jpg", "<p><span>We are happy to announce our new integration with&nbsp;</span><strong>Mailchimp&nbsp;</strong><span>– one of the most popular and flexible email marketing platforms that you can use for scheduling and </span><strong>automating your email campaigns</strong><span>. Once connected, you\'ll be able to&nbsp;automatically export client\'s contact information to your mailing list after an appointment is created via Bookly.</span></p>", "https://codecanyon.net/item/bookly-mailchimp-addon/34925755?ref=ladela", "Learn more", "1", "2021-11-24 10:29:57", "2021-11-24 10:29:57");
INSERT INTO `wp_bookly_news` VALUES("24", "24", "New video: How to set up and use custom fields in Bookly", "youtube", "https://www.youtube.com/embed/yRqrXj83eoY", "<p><span>This video explains how</span><span>&nbsp;to add your own custom questions to the booking form with the <strong>Bookly Custom Fields (Add-on)</strong>.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003963514-Custom-Fields-add-on\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://youtu.be/yRqrXj83eoY", "Watch on Youtube", "1", "2021-11-26 08:21:57", "2021-11-26 08:21:57");
INSERT INTO `wp_bookly_news` VALUES("25", "25", " How to never miss an appointment", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/11/how-to-never-miss-an-appointment-with-Bookly-756.jpg", "<p><span>The last thing any business owner or service provider would want is to miss an appointment with a client. No matter how long is your booking list, Bookly will help you to efficiently control your company workload. With these recommendations, you will have no chance to forget or miss a scheduled meeting.</span></p>", "https://www.booking-wp-plugin.com/never-miss-appointment-bookly/", "Read more", "1", "2021-11-30 08:06:35", "2021-11-30 08:06:35");
INSERT INTO `wp_bookly_news` VALUES("26", "26", "New video: How to receive and manage online payments", "youtube", "https://www.youtube.com/embed/5WaXF4AeG-A", "<p><span>There are&nbsp;more than </span><strong>10 payment gateways&nbsp;</strong><span>which can be integrated with Bookly PRO to help drive more customers from the booking plugin right to your door. Learn how to quickly enable a desired online payment option in Bookly settings. For more details, visit our&nbsp;</span><a href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202811029-Pricing-Payment\" target=\"_blank\" rel=\"noopener\">help center</a><span>.</span></p>", "https://www.youtube.com/watch?v=5WaXF4AeG-A&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i", "Watch on Youtube", "1", "2021-12-02 09:08:52", "2021-12-02 09:08:52");
INSERT INTO `wp_bookly_news` VALUES("27", "27", "What’s the difference between Multiply Appointments (Add-on) & Custom Duration (Add-on)", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/difference-between-multiply-appointments-addon-and-custom-duration-addon-banner-756.jpg", "<p><span>Add-ons for Bookly have been created to add more advanced functionality to the default configuration of your Bookly PRO. If you have doubts about which extension is best for you, here’s a detailed comparison of the Multiply Appointments (Add-on) and Custom Duration (Add-on) for Bookly.</span></p>", "https://www.booking-wp-plugin.com/whats-difference-multiply-appointments-add-custom-duration-add/", "Read more", "1", "2021-12-07 09:19:54", "2021-12-07 09:19:54");
INSERT INTO `wp_bookly_news` VALUES("28", "28", "New video: How to manage customer base in Bookly", "youtube", "https://www.youtube.com/embed/K53xCEIo8NQ", "<p><span>With Bookly you get an unlimited, sortable and searchable customer list. But that’s not all. Learn how&nbsp;</span><span>Bookly allows you to effortlessly manage your customer base. For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" target=\"_blank\" rel=\"noopener\">help center</a><span>&nbsp;and&nbsp;check other </span><a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=K53xCEIo8NQ&list=PLuLhoBV-rlAbu0MMy7yG8KeysVAEdBOcc", "Watch on Youtube", "1", "2021-12-09 09:28:31", "2021-12-09 09:28:31");
INSERT INTO `wp_bookly_news` VALUES("29", "29", "Discontinued support for Internet Explorer 11", "image", "https://images.booking-wp-plugin.com/main/blog/Internet_Explorer_discontinued_support.jpg", "<p><span>The Internet Explorer (IE) 11 desktop application </span><strong>will go out of support&nbsp;</strong><span>starting June 15, 2022. Bootstrap framework used for Bookly interface elements in the admin panel, </span><a href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://blog.getbootstrap.com/2021/05/05/bootstrap-5/#browser-support\">stopped supporting IE since version 5.0</a>&nbsp;<span>and </span><a href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\" data-mce-href=\"https://wordpress.org/news/2021/05/dropping-support-for-internet-explorer-11/\">WordPress no longer supports IE 11 starting from version 5.8</a><span>. If you are currently using IE 11, it is strongly recommended that you switch to a more modern browser.</span></p>", "https://blogs.windows.com/windowsexperience/2021/05/19/the-future-of-internet-explorer-on-windows-10-is-in-microsoft-edge/", "Read more", "1", "2021-12-13 07:36:02", "2021-12-13 07:36:02");
INSERT INTO `wp_bookly_news` VALUES("30", "30", "Top 5 automations to use in Bookly", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/Top-five-automations-to-use-in-Bookly-banner-756.jpg", "<p><span>Bookly is known to be the most feature-rich online booking and scheduling plugin in the market.&nbsp;In this post, we’ll provide an overview of the top 5 Bookly automations that will help you to manage your administrative workload with ease and improve your efficiency.</span></p>", "https://www.booking-wp-plugin.com/top-5-automations-use-bookly/", "Read more", "1", "2021-12-14 08:03:44", "2021-12-14 08:03:44");
INSERT INTO `wp_bookly_news` VALUES("31", "31", "New video: How to extend client\'s profile in Bookly", "youtube", "https://www.youtube.com/embed/LvV2JDZV0uc", "<p><span>This video explains how to add custom data to the client’s profile with the Bookly Customer Information (Add-on). All customer-related information will always be available for you with a couple of clicks in the Customers section.&nbsp;For more details, visit our&nbsp;<a href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/sections/202869125-Manage-Clients\">help center</a>&nbsp;and&nbsp;check other&nbsp;<a href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\" data-mce-href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://youtu.be/LvV2JDZV0uc&list=PLuLhoBV-rlAagLXlILG_1KgjVSaMUju8i", "Watch on Youtube", "1", "2021-12-16 11:23:12", "2021-12-16 11:23:12");
INSERT INTO `wp_bookly_news` VALUES("32", "32", "How to book appointments longer than 1 day", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/how-to-book-appointments-longer-than-one-day-banner-756.jpg", "<p><span>Some companies provide services that last throughout the day or even take several days, such as all-day conferences, weekend educational courses, or multi-day guided tours. Depending on the specific type of business, there are several options for setting up and managing such appointments via Bookly.</span></p>", "https://www.booking-wp-plugin.com/book-appointments-longer-1-day/", "Read more", "1", "2021-12-21 08:41:51", "2021-12-21 08:41:51");
INSERT INTO `wp_bookly_news` VALUES("33", "33", "New video: How to accept group bookings", "youtube", "https://www.youtube.com/embed/Cmb1sxPFIMY", "<p><span>With the Bookly Group Booking (Add-on) you can use a capacity option, so your customers will be able to specify the number of persons they’d like to book for. Learn how to determine&nbsp;individual settings for each&nbsp;service and employee separately.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000259594-Group-Booking-Add-on\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/360000259594-Group-Booking-Add-on\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=Cmb1sxPFIMY&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK", "Watch on Youtube", "1", "2021-12-23 10:28:27", "2021-12-23 10:28:27");
INSERT INTO `wp_bookly_news` VALUES("34", "34", "New version release. See what’s new in Bookly PRO 4.5.", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2021/12/Bookly-PRO-4.5-banner-756.jpg", "<p><span>The end of the year brings new features that we’re very excited to share with you! We want you to have a great experience using Bookly items, so the new release, as usual, includes some of the most requested improvements, general enhancements, and bug fixes.</span></p>", "https://www.booking-wp-plugin.com/bookly-pro-v4-5/", "Read more", "1", "2021-12-27 08:50:24", "2021-12-27 08:50:24");
INSERT INTO `wp_bookly_news` VALUES("35", "35", "New video: How to limit the service availability", "youtube", "https://www.youtube.com/embed/8EEf0HbZwi0", "<p><span>Learn how to limit the hours during the day when the service can be booked, and which options you have when both Service Schedule (Add-on) and Special Days (Add-on) are installed and activated.&nbsp;For more details, visit our <a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213850385-Services-Available-at-Limited-Hours-Service-Schedule-Add-on-\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/213850385-Services-Available-at-Limited-Hours-Service-Schedule-Add-on-\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;and check other <a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=8EEf0HbZwi0&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK", "Watch on Youtube", "0", "2021-12-30 15:25:12", "2021-12-30 10:32:17");
INSERT INTO `wp_bookly_news` VALUES("36", "36", "How to create a separate booking page for each staff member", "image", "https://www.booking-wp-plugin.com/wp-content/uploads/2022/01/how-to-create-separate-booking-page-for-staff-member-banner-756.jpg", "<p><span>If you want to invite your customers to an appointment with a certain staff member, you may want to create a custom booking page that includes staff details, featured services, information about special offers, etc. This article explains how to set up a personalized online booking form for your employee and provide your customers with a unique booking link.</span></p>", "https://www.booking-wp-plugin.com/create-separate-booking-page/", "Read more", "0", "2022-01-04 09:32:50", "2022-01-04 09:32:50");
INSERT INTO `wp_bookly_news` VALUES("37", "37", "New video: How to set up Staff Cabinet (Add-on) for Bookly", "youtube", "https://www.youtube.com/embed/awHddbbNOaw", "<p><span>Personal Staff Cabinet for your employees enables them to view and manage the list of bookings, personal details, and schedules on the front end of your website. This video describes how to install and use it.&nbsp;For more details, visit our </span><a data-mce-href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003349989\" href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/115003349989\" target=\"_blank\" rel=\"noopener\">help center</a>&nbsp;<span>and check other </span><a data-mce-href=\"https://www.youtube.com/c/Bookly/videos\" href=\"https://www.youtube.com/c/Bookly/videos\" target=\"_blank\" rel=\"noopener\">video tutorials</a>&nbsp;<span>to learn the basics and get the most out of Bookly.</span></p>", "https://www.youtube.com/watch?v=awHddbbNOaw&list=PLuLhoBV-rlAZpUnQgHJkMBx1rCvQGQ6cK", "Watch on Youtube", "0", "2022-01-06 12:10:24", "2022-01-06 12:08:42");

/* INSERT TABLE DATA: wp_bookly_notifications */
INSERT INTO `wp_bookly_notifications` VALUES("1", "email", "new_booking", "1", "Notification to customer about approved appointment", "Your appointment information", "Dear {client_name}.\n\nThis is a confirmation that you have booked {service_name}.\n\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("2", "email", "new_booking", "1", "Notification to staff member about approved appointment", "New booking information", "Hello.\n\nYou have a new booking.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("3", "email", "ca_status_changed", "1", "Notification to customer about cancelled appointment", "Booking cancellation", "Dear {client_name}.\n\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("4", "email", "ca_status_changed", "1", "Notification to staff member about cancelled appointment", "Booking cancellation", "Hello.\n\nThe following booking has been cancelled.\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("5", "email", "ca_status_changed", "1", "Notification to customer about rejected appointment", "Booking rejection", "Dear {client_name}.\n\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\n\nReason: {cancellation_reason}\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("6", "email", "ca_status_changed", "1", "Notification to staff member about rejected appointment", "Booking rejection", "Hello.\n\nThe following booking has been rejected.\n\nReason: {cancellation_reason}\n\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("7", "sms", "new_booking", "1", "Notification to customer about approved appointment", "", "Dear {client_name}.\nThis is a confirmation that you have booked {service_name}.\nWe are waiting you at {company_address} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("8", "sms", "new_booking", "1", "Notification to staff member about approved appointment", "", "Hello.\nYou have a new booking.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"approved\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("9", "sms", "ca_status_changed", "1", "Notification to customer about cancelled appointment", "", "Dear {client_name}.\nYou have cancelled your booking of {service_name} on {appointment_date} at {appointment_time}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("10", "sms", "ca_status_changed", "1", "Notification to staff member about cancelled appointment", "", "Hello.\nThe following booking has been cancelled.\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"cancelled\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("11", "sms", "ca_status_changed", "1", "Notification to customer about rejected appointment", "", "Dear {client_name}.\nYour booking of {service_name} on {appointment_date} at {appointment_time} has been rejected.\nReason: {cancellation_reason}\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("12", "sms", "ca_status_changed", "1", "Notification to staff member about rejected appointment", "", "Hello.\nThe following booking has been rejected.\nReason: {cancellation_reason}\nService: {service_name}\nDate: {appointment_date}\nTime: {appointment_time}\nClient name: {client_name}\nClient phone: {client_phone}\nClient email: {client_email}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"rejected\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("13", "sms", "appointment_reminder", "0", "Evening reminder to customer about next day appointment (requires cron setup)", "", "Dear {client_name}.\nWe would like to remind you that you have booked {service_name} tomorrow at {appointment_time}. We are waiting for you at {company_address}.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}");
INSERT INTO `wp_bookly_notifications` VALUES("14", "sms", "appointment_reminder", "0", "Follow-up message in the same day after appointment (requires cron setup)", "", "Dear {client_name}.\nThank you for choosing {company_name}. We hope you were satisfied with your {service_name}.\nThank you and we look forward to seeing you again soon.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":21,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("15", "sms", "staff_day_agenda", "0", "Evening notification with the next day agenda to staff member (requires cron setup)", "", "Hello.\nYour agenda for tomorrow is:\n{next_day_agenda}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}");
INSERT INTO `wp_bookly_notifications` VALUES("16", "email", "verify_email", "1", "Notification to customer with verification code", "Bookly verification code", "{verification_code}", "0", "1", "0", "0", NULL, "0", "0", "[]");
INSERT INTO `wp_bookly_notifications` VALUES("17", "sms", "verify_phone", "1", "Notification to customer with verification code", "", "{verification_code}", "0", "1", "0", "0", NULL, "0", "0", "[]");
INSERT INTO `wp_bookly_notifications` VALUES("18", "email", "customer_new_wp_user", "1", "Notification to customer about their WordPress user login details", "New customer", "Hello.\n\nAn account was created for you at {site_address}\n\nYour user details:\nuser: {new_username}\npassword: {new_password}\n\nThanks.", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("19", "email", "staff_new_wp_user", "1", "New staff member\'s WordPress user login details", "New staff member", "Hello.\n\nAn account was created for you at {site_address}\n\nYour user details:\nuser: {new_username}\npassword: {new_password}\n\nThanks.", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("20", "email", "appointment_reminder", "0", "Evening reminder to customer about next day appointment (requires cron setup)", "Your appointment at {company_name}", "Dear {client_name}.\n\nWe would like to remind you that you have booked {service_name} tomorrow at {appointment_time}. We are waiting for you at {company_address}.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":1,\"perform\":\"before\",\"at_hour\":18,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":-24}");
INSERT INTO `wp_bookly_notifications` VALUES("21", "email", "appointment_reminder", "0", "Follow-up message in the same day after appointment (requires cron setup)", "Your visit to {company_name}", "Dear {client_name}.\n\nThank you for choosing {company_name}. We hope you were satisfied with your {service_name}.\n\nThank you and we look forward to seeing you again soon.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":21,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("22", "email", "customer_birthday", "0", "Customer birthday greeting (requires cron setup)", "Happy Birthday!", "Dear {client_name},\n\nHappy birthday!\nWe wish you all the best.\nMay you and your family be happy and healthy.\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("23", "email", "staff_day_agenda", "0", "Evening notification with the next day agenda to staff member (requires cron setup)", "Your agenda for {tomorrow_date}", "Hello.\n\nYour agenda for tomorrow is:\n\n{next_day_agenda}", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":3,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("24", "email", "new_booking_combined", "0", "New booking combined notification", "Your appointment information", "Dear {client_name}.\n\nThis is a confirmation that you have booked the following items:\n\n{cart_info}\n\nThank you for choosing our company.\n\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("25", "sms", "customer_new_wp_user", "1", "Notification to customer about their WordPress user login details", "", "Hello.\nAn account was created for you at {site_address}\nYour user details:\nuser: {new_username}\npassword: {new_password}\n\nThanks.", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("26", "sms", "staff_new_wp_user", "1", "New staff member\'s WordPress user login details", "", "Hello.\nAn account was created for you at {site_address}\nYour user details:\nuser: {new_username}\npassword: {new_password}\n\nThanks.", "1", "0", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");
INSERT INTO `wp_bookly_notifications` VALUES("27", "sms", "customer_birthday", "0", "Customer birthday greeting (requires cron setup)", "", "Dear {client_name},\nHappy birthday!\nWe wish you all the best.\nMay you and your family be happy and healthy.\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0,\"existing_event_with_date\":{\"at_hour\":9}}");
INSERT INTO `wp_bookly_notifications` VALUES("28", "sms", "new_booking_combined", "0", "New booking combined notification", "", "Dear {client_name}.\nThis is a confirmation that you have booked the following items:\n{cart_info}\nThank you for choosing our company.\n{company_name}\n{company_phone}\n{company_website}", "0", "1", "0", "0", NULL, "0", "0", "{\"status\":\"any\",\"option\":2,\"services\":{\"any\":\"any\",\"ids\":[]},\"offset_hours\":2,\"perform\":\"before\",\"at_hour\":9,\"before_at_hour\":18,\"offset_before_hours\":-24,\"offset_bidirectional_hours\":0}");

/* INSERT TABLE DATA: wp_bookly_orders */
INSERT INTO `wp_bookly_orders` VALUES("1", "43af36abe8d3888254bf6254778838fe");

/* INSERT TABLE DATA: wp_bookly_payments */
INSERT INTO `wp_bookly_payments` VALUES("1", NULL, "local", "245.00", "0.00", "0.00", "in_full", NULL, "pending", "e9d469981fec1af1a0acfc9267812e6d", "{\"items\":[{\"ca_id\":1,\"appointment_date\":\"2021-12-29 13:45:00\",\"service_name\":\"1:1 Consultation\",\"service_price\":245,\"service_tax\":0,\"wait_listed\":false,\"deposit_format\":null,\"number_of_persons\":1,\"units\":1,\"duration\":\"900\",\"staff_name\":\"TesterTwo ProMember\",\"extras\":[]}],\"coupon\":null,\"subtotal\":{\"price\":245,\"deposit\":0},\"customer\":\"admin\",\"tax_in_price\":\"excluded\",\"tax_paid\":null,\"extras_multiply_nop\":1,\"gateway\":null,\"gateway_ref_id\":null,\"tips\":null}", "2021-12-29 02:39:51", "2021-12-29 02:39:51");

/* INSERT TABLE DATA: wp_bookly_services */
INSERT INTO `wp_bookly_services` VALUES("1", NULL, "simple", "1:1 Consultation", "0", "900", "default", "250.00", "#446126", "100%", "1", "1", "0", "0", "0", "", "", "", "0", "1", "1", NULL, NULL, "0", NULL, "off", "most_expensive", "{\"period\":{\"before\":0,\"after\":0},\"random\":false}", "1", "daily,weekly,biweekly,monthly", "required", "0", "off", "", "0", "Appointment", "Date: {appointment_date}\nTime: {appointment_time}\nService: {service_name}", NULL, NULL, "public", "1");

/* INSERT TABLE DATA: wp_bookly_shop */
INSERT INTO `wp_bookly_shop` VALUES("1", "7226091", "plugin", "1", "100", NULL, "Bookly Pro", "bookly-addon-pro", "Bring appointment scheduling process to the next level with Bookly Pro add-on.  Pro add-on turns Bookly plugin into the professional appointment management system. Unlock Advanced Customer management, Service provider management, Services management, Email and SMS notifications, Booking management capabilities. Connect payment gateways and modify Pro version with other add-ons available only with Bookly Pro and more.", "https://codecanyon.net/item/bookly-booking-plugin-responsive-appointment-booking-and-scheduling/7226091", "https://s3.envato.com/files/276918414/bookly-icon-(1)%20(3).png", "89.00", "41477", "4.54", "1056", "2014-04-12 17:14:52", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("2", "13903524", "plugin", "0", "0", NULL, "Bookly Multisite (Add-on)", "bookly-addon-multisite", "Do you need to administrate Booky on multiple websites? This add-on enables Bookly to become a Multisite ready plugin. You need to buy an additional Regular License for Bookly Pro and every installed add-on for each domain name that you use.", "https://codecanyon.net/item/bookly-multisite-addon/13903524", "https://s3.envato.com/files/257314580/14multisite.png", "49.00", "642", "5.00", "7", "2015-12-04 16:38:03", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("3", "15552320", "plugin", "0", "0", NULL, "Bookly Service Extras (Add-on)", "bookly-addon-service-extras", "Increase the average check for every client visit with Service Extras add-on. Let your customers order extra items when they schedule an appointment with you or book your service. It adds one more step into the booking form and allows your customers to pick extras they would like to order as an addition to the service booking, see the price of extras, name, image, and total cost of the selected items.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-service-extras-addon/15552320", "https://s3.envato.com/files/275715191/bookly_extras_80x80.jpg", "49.00", "2900", "4.41", "32", "2016-04-01 15:29:11", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("4", "17328208", "plugin", "0", "0", NULL, "Bookly Locations (Add-on)", "bookly-addon-locations", "Do you offer your services in more than one location? Try Bookly Locations add-on to manage the service booking process between various locations. Let your customers pick the location, where they would like to get the service and associate the staff members with those locations.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-locations-addon/17328208", "https://s3.envato.com/files/257314201/3locations.png", "39.00", "2568", "4.41", "32", "2016-08-03 17:49:31", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("5", "17367838", "plugin", "0", "0", NULL, "Bookly Chain Appointments (Add-on)", "bookly-addon-chain-appointments", "Do you offer services which can be combined and provided during a single client visit by the same or different staff members? Let your clients book several services for a single visit with the Chain Appointments add-on. The clients will be able to choose multiple services from different providers at the first step of the booking process.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-chain-appointments-addon/17367838", "https://s3.envato.com/files/257314361/11chain.png", "29.00", "1128", "4.80", "5", "2016-08-09 17:40:29", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("6", "17457141", "plugin", "0", "0", NULL, "Bookly Multiply Appointments (Add-on)", "bookly-addon-multiply-appointments", "Do you provide fixed-time services, which your clients can book for example for an hour or 15 minutes? Boost your sales with Bookly Multiply Appointments add-on by providing an option to book the same service several times in a row.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-multiply-appointments-addon/17457141", "https://s3.envato.com/files/277980955/icon_80x80.png", "29.00", "789", "0.00", "2", "2016-08-16 16:02:12", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("7", "17956131", "plugin", "0", "0", NULL, "Bookly Deposit Payments (Add-on)", "bookly-addon-deposit-payments", "Would you like to reduce the number of no-shows? Or maybe you need to buy something before the clients\' visit? With Bookly Deposit Payments add-on, you can request full or partial pre-payment during the service booking process.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-deposit-payments-addon/17956131", "https://s3.envato.com/files/257314254/7deposit.png", "39.00", "1493", "4.57", "7", "2016-09-22 18:11:00", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("8", "18611122", "plugin", "0", "0", NULL, "Bookly Special Days (Add-on)", "bookly-addon-special-days", "Customize the schedule of your employees during the holiday season or any other occasion, without changing your regular schedule. With this add-on, you can add days with long or short hours or even the day when you provide service for 24 hours. Bookly Special Days add-on enables you to modify the schedule of each staff member in your organization.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-special-days-addon/18611122", "https://s3.envato.com/files/257314246/6specialdays.png", "39.00", "2164", "4.27", "11", "2016-11-07 01:25:43", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("9", "18704535", "plugin", "0", "0", NULL, "Bookly Special Hours (Add-on)", "bookly-addon-special-hours", "Would you like to provide a discount during happy hours or raise service price during busy hours? You can do it with Bookly Special Hours add-on. With full control of the daily schedule, you can adjust the price to maximize revenues or reduce workload.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-special-hours-addon/18704535", "https://s3.envato.com/files/276664014/icon_80x80.jpg", "29.00", "507", "4.20", "5", "2016-11-09 01:22:54", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("10", "18874038", "plugin", "0", "0", NULL, "Bookly Service Schedule (Add-on)", "bookly-addon-service-schedule", "Do you have services with a specific schedule which must be aligned with the default schedule of your employees? With Bookly Service Schedule add-on, you can set hours during each day of the week when your clients can book this service taking into consideration the staff members availability.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-service-schedule-addon/18874038", "https://s3.envato.com/files/257314213/5serviceschedule.png", "29.00", "2294", "4.40", "10", "2016-11-22 05:03:19", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("11", "19497634", "plugin", "0", "0", NULL, "Bookly Recurring Appointments (Add-on)", "bookly-addon-recurring-appointments", "Do you provide a service which may require a series of visits, like therapy, massage, tutoring and more? With Bookly Recurring Appointments, your client can book the service set upfront. Must-have for businesses, which provide service sets.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-recurring-appointments-addon/19497634", "https://s3.envato.com/files/257314299/10recurring.png", "39.00", "1529", "3.67", "12", "2017-02-23 17:42:00", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("12", "19617518", "plugin", "0", "0", NULL, "Bookly PayPal Payments Standard (Add-on)", "bookly-addon-paypal-payments-standard", "Do you have PayPal Business or PayPal Premier account and would like to provide one of the most popular online payment options for your clients? With Bookly PayPal Payments Standard add-on clients can pay directly via credit card or by logging in to their PayPal account – all processed by PayPal.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-paypal-payments-standard-addon/19617518", "https://s3.envato.com/files/257314391/13paypalstandard.png", "29.00", "1408", "5.00", "7", "2017-03-22 04:29:25", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("13", "20005540", "plugin", "0", "0", NULL, "Bookly Staff Cabinet (Add-on)", "bookly-addon-staff-cabinet", "You can manage Bookly in the WordPress admin area of your website. Many of your employees may also need access to Bookly. To avoid any complications and limit the access to the website admin area, you can use Bookly Staff Cabinet, where your employees can: view the calendar, add and manage appointments, view and update personal details and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-staff-cabinet-addon/20005540", "https://s3.envato.com/files/257314313/12staffcabinet.png", "39.00", "1822", "3.87", "15", "2017-05-26 16:11:36", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("14", "20685954", "plugin", "0", "0", NULL, "Bookly PayU Latam (Add-on)", "bookly-addon-payu-latam", "Accept payments online to reduce the funnel friction and boost your sales. PayU Latam is an international payment gateway provider, which also supports the most popular payment options in Latin America and is a perfect fit for businesses, which provide services in the LatAm market.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-payu-latam-addon/20685954", "https://s3.envato.com/files/257315044/34payulatam.jpg", "29.00", "94", "0.00", "2", "2017-10-04 22:22:08", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("15", "20917406", "plugin", "0", "0", NULL, "Bookly Waiting List (Add-on)", "bookly-addon-waiting-list", "Do you lose customers because you are overbooked? Try Bookly Waiting List add-on to collect warm leads and maximize your profits. When you are fully booked, the customer will be able to join the waiting list. Service provider will get an automatic notification when the free slot appears.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-waiting-list-addon/20917406", "https://s3.envato.com/files/257314909/28waitinglist.jpg", "29.00", "367", "0.00", "1", "2017-11-09 17:58:26", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("16", "20952783", "plugin", "0", "0", NULL, "Bookly Packages (Add-on)", "bookly-addon-packages", "Do you have customers who purchase your services regularly? You can increase their loyalty to your company and boost your sales by providing package deals at a discounted price with Bookly Packages add-on.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-packages-addon/20952783", "https://s3.envato.com/files/277560972/icon_80x80.jpg", "29.00", "578", "2.80", "5", "2017-11-14 18:45:26", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("17", "21113698", "plugin", "0", "0", NULL, "Bookly 2Checkout (Add-on)", "bookly-addon-2checkout", "Accept payments online to reduce the funnel friction and boost your sales. 2Checkout enables merchants to accept mobile and online payments from buyers worldwide. Seamless, safe, reliable payment processing regardless of where you are on the map.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-2checkout-addon/21113698", "https://s3.envato.com/files/257315086/35_2checkout(1).jpg", "29.00", "35", "0.00", "0", "2017-12-12 10:30:34", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("18", "21113750", "plugin", "0", "0", NULL, "Bookly Authorize.Net (Add-on)", "bookly-addon-authorize-net", "Accept payments online to reduce the funnel friction and boost your sales. Authorize.Net is a US-based payment gateway, which allows merchants to accept various payment types like: Visa, MasterCard, Discover, American Express, JCB, PayPal, Visa Checkout, Apple Pay, Google Pay, E-check.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-authorizenet-addon/21113750", "https://s3.envato.com/files/257315021/33authorize.jpg", "29.00", "172", "0.00", "0", "2017-12-12 10:30:24", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("19", "21113860", "plugin", "0", "0", NULL, "Bookly Coupons (Add-on)", "bookly-addon-coupons", "Provide your clients with discount coupons to boost your sales, improve the conversion rate for less popular services, and increase customer loyalty. With the Bookly Coupons add-on enabled, your clients will be able to apply a coupon code at the checkout and get the service at a discounted price. You can easily create, manage and keep track of all promotional codes directly in Bookly.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-coupons-addon/21113860", "https://s3.envato.com/files/257314530/17coupons.jpg", "39.00", "1719", "4.20", "5", "2017-12-12 10:39:37", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("20", "21113970", "plugin", "0", "0", NULL, "Bookly Custom Fields (Add-on)", "bookly-addon-custom-fields", "Do you need to know specific info about your customer before they visit you? Do you want to provide a personalized experience for your customers?\r\nWith Custom Fields add-on, you can ask for more details during the booking process to save time and provide better client experience during the visit.\r\n\r\nImportant: This add-on requires the Bookly PRO to be installed and activated.\r\n", "https://codecanyon.net/item/bookly-custom-fields-addon/21113970", "https://s3.envato.com/files/278250393/icon_80x80.jpg", "49.00", "4321", "5.00", "13", "2017-12-12 10:40:39", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("21", "21114042", "plugin", "0", "0", NULL, "Bookly Mollie (Add-on)", "bookly-addon-mollie", "Accept payments online to reduce the funnel friction and boost your sales. Mollie is a Payment Service Provider (PSP) which allows you to process such payment methods as iDEAL, credit card, Bancontact/Mister Cash, PayPal, SCT, SDD, and others.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-mollie-addon/21114042", "https://s3.envato.com/files/257314852/25mollie.jpg", "34.00", "666", "0.00", "2", "2017-12-12 10:43:25", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("22", "21114096", "plugin", "0", "0", NULL, "Bookly Payson (Add-on)", "bookly-addon-payson", "Accept payments online to reduce the funnel friction and boost your sales. Payson is one of Sweden’s leading companies for payments online. It provides both e-traders and private individuals with access to secure online payments.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-payson-addon/21114096", "https://s3.envato.com/files/257315118/37payson.jpg", "29.00", "15", "0.00", "1", "2017-12-12 10:44:08", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("23", "21114146", "plugin", "0", "0", NULL, "Bookly Stripe (Add-on)", "bookly-addon-stripe", "Accept payments online to reduce the funnel friction and boost your sales. Stripe operates in more than 25 countries and provides various options to accept payments online. One of the most powerful solutions to cover your payments needs.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-stripe-addon/21114146", "https://s3.envato.com/files/257314285/9stripe.jpg", "39.00", "2745", "4.60", "10", "2017-12-12 10:46:42", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("24", "21344225", "plugin", "0", "0", NULL, "Bookly Group Booking (Add-on)", "bookly-addon-group-booking", "Do you provide services for groups, like yoga or fitness class, group tutoring, or maybe a guided tour? With Bookly Group Booking add-on, you can easily set the capacity for each service you provide, let your customers specify the number of people during the booking and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-group-booking-addon/21344225", "https://s3.envato.com/files/257314273/8groupbooking.jpg", "39.00", "3211", "4.50", "8", "2018-02-01 01:33:45", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("25", "21344290", "plugin", "0", "0", NULL, "Bookly Customer Groups (Add-on)", "bookly-addon-customer-groups", "Do you have different types of customers? Bookly Customer Groups add-on enables you to create and manage Customer Groups. With this add-on, you can arrange your customers in different categories and set the rules for booking process, pricing and more.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-customer-groups-addon/21344290", "https://s3.envato.com/files/257314959/31customergroups.jpg", "29.00", "359", "0.00", "0", "2018-02-01 02:03:48", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("26", "21344354", "plugin", "0", "0", NULL, "Bookly Files (Add-on)", "bookly-addon-files", "Do you require documents or any other information before the customer can book your service? Let your clients attach files during the booking process with Bookly Files add-on. All materials added by your customers will be available for review in booking details.\r\n\r\nImportant: This add-on requires the Bookly PRO and Bookly Custom Fields (Add-on) installed and activated.", "https://codecanyon.net/item/bookly-files-addon/21344354", "https://s3.envato.com/files/257314861/27files.jpg", "29.00", "585", "3.83", "6", "2018-02-01 02:07:58", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("27", "21574371", "plugin", "0", "0", NULL, "Bookly Compound Services (Add-on)", "bookly-addon-compound-services", "Do you have services which can be combined into one service at a higher price? For example, if you provide web design, coding, content creation services you could combine them into the website or app development service which includes services mentioned in the example and involves several employees in it. \r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-compound-services-addon/21574371", "https://s3.envato.com/files/257314987/30compound.jpg", "29.00", "225", "0.00", "1", "2018-03-13 06:08:47", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("28", "21574466", "plugin", "0", "0", NULL, "Bookly Customer Information (Add-on)", "bookly-addon-customer-information", "Know your customer better with Bookly Customer Information add-on. Add custom fields to the booking form to gather additional info about your customer. The extended user profile will allow you to personalize your marketing activities in the future.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-customer-information-addon/21574466", "https://s3.envato.com/files/279832345/icon_80x80.jpg", "29.00", "1158", "5.00", "5", "2018-03-13 06:10:12", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("29", "21574566", "plugin", "0", "0", NULL, "Bookly Ratings (Add-on)", "bookly-addon-ratings", "Do you want to improve your services and become more client-oriented? With Bookly Ratings add-on, you can evaluate your staff members and services you provide. Encourage your customers to rate the services they receive to keep up with professional standards and always meet the client’s expectations.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-ratings-addon/21574566", "https://s3.envato.com/files/257315009/32ratings.jpg", "29.00", "292", "0.00", "2", "2018-03-13 06:19:21", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("30", "21841764", "plugin", "0", "0", NULL, "Bookly Cart (Add-on)", "bookly-addon-cart", "Do you want to boost your online sales even more? With Bookly Cart add-on, your customers can add multiple service bookings to the cart. It simplifies the buying process and motivates to purchase more. You can customize columns and display the cart summary data the way you want.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-cart-addon/21841764", "https://s3.envato.com/files/257314676/21cart.jpg", "29.00", "1269", "4.57", "7", "2018-04-29 02:25:40", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("31", "21841828", "plugin", "0", "0", NULL, "Bookly Taxes (Add-on)", "bookly-addon-taxes", "Bookly Taxes add-on will let you set up and include taxes in the service price. You’ll be able to define different tax rates and apply them to all or only to selected services. Based on your settings, Bookly will calculate and display a total price with taxes that were applied.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-taxes-addon/21841828", "https://s3.envato.com/files/257314926/29taxes.jpg", "39.00", "487", "3.00", "3", "2018-04-29 02:29:54", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("32", "21841856", "plugin", "0", "0", NULL, "Bookly Invoices (Add-on)", "bookly-addon-invoices", "Do you need need to invoice your clients without routine? With Bookly Invoices add-on, you can automatically issue invoices to your clients after your service is booked. Send a payment request when appointments are booked, approved, or received, and get paid within a specified period. Take advantage of the automatic online invoicing and let your clients pay for your services quickly and easily.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.\r\n", "https://codecanyon.net/item/bookly-invoices-addon/21841856", "https://s3.envato.com/files/276228740/icon_80x80.jpg", "39.00", "849", "0.00", "1", "2018-04-29 02:30:22", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("33", "21841871", "plugin", "0", "0", NULL, "Bookly Google Maps Address (Add-on)", "bookly-addon-google-maps-address", "Would you like to reduce Bookly form fill-in time and increase the conversion rate? Bookly Google Maps Address add-on simplifies the process of address data entry allowing you to use an autocomplete service. It helps to minimize the funnel friction, which leads to a better conversion rate and more sales.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-google-maps-address-addon/21841871", "https://s3.envato.com/files/257314833/26googlemaps.jpg", "29.00", "404", "4.67", "3", "2018-04-29 02:45:11", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("34", "22060579", "plugin", "0", "0", NULL, "Bookly Advanced Google Calendar (Add-on)", "bookly-addon-advanced-google-calendar", "Are you used to Google Сalendar and want to leverage its capabilities together with Bookly? With  Bookly Advanced Google Calendar add-on, you get two-way synchronization between Bookly Calendar and Google Calendar so that you’ll always be able to see and manage all appointments in both calendars.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-advanced-google-calendar-addon/22060579", "https://s3.envato.com/files/257314406/15googlecalendar.jpg", "49.00", "2362", "4.44", "9", "2018-06-06 04:37:53", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("35", "22060627", "plugin", "0", "0", NULL, "Bookly Customer Cabinet (Add-on)", "bookly-addon-customer-cabinet", "Do you need even more flexibility and let your customers manage their existing appointments and profile info? With Bookly Customer Cabinet add-on, Bookly becomes fully GDPR compliant and allows your users to control their data and appointments on your website in their personal user account. \r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-customer-cabinet-addon/22060627", "https://s3.envato.com/files/257314653/19customercabinet.jpg", "29.00", "1483", "3.89", "9", "2018-06-06 04:39:24", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("36", "22060703", "plugin", "0", "0", NULL, "Bookly Custom Duration (Add-on)", "bookly-addon-custom-duration", "Do you sell services which may have a flexible duration like tutoring, training, consulting, etc.? With Bookly Custom Duration add-on, your customers can define the length of the appointment. The price will be calculated accordingly.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-custom-duration-addon/22060703", "https://s3.envato.com/files/277098076/icon_80x80.jpg", "29.00", "1070", "4.33", "6", "2018-06-06 04:42:30", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("37", "22060797", "plugin", "0", "0", NULL, "Bookly PayUbiz (Add-on)", "bookly-addon-payu-biz", "Accept payments online to reduce the funnel friction and boost your sales. PayUbiz is a payment gateway provider, which also supports most popular payment options in India and is a perfect fit for businesses, which provide services in the Indian market.\r\n\r\nImportant: This add-on requires the Bookly PRO installed and activated.", "https://codecanyon.net/item/bookly-payubiz-addon/22060797", "https://s3.envato.com/files/257315098/36payubiz.jpg", "29.00", "19", "0.00", "1", "2018-06-06 04:52:32", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("38", "22999600", "plugin", "0", "0", NULL, "Bookly Tasks (Add-on) ", "bookly-addon-tasks", "Bookly Tasks add-on allows you and your customers to create bookings without choosing date and time.", "https://codecanyon.net/item/bookly-tasks-addon/22999600", "https://s3.envato.com/files/257552116/icon_80x80.jpg", "29.00", "351", "0.00", "1", "2018-12-12 00:17:51", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("39", "22999632", "plugin", "0", "0", NULL, "Bookly Collaborative Services (Add-on)", "bookly-addon-collaborative-services", "Bookly Collaborative Services add-on allows you to create services that require simultaneous participation of several staff members or staff member and shared resources necessary for the service performance.", "https://codecanyon.net/item/bookly-collaborative-services-addon/22999632", "https://s3.envato.com/files/257552412/icon_80x80.jpg", "39.00", "501", "0.00", "0", "2018-12-12 00:22:29", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("40", "23324001", "plugin", "0", "0", NULL, "Bookly Custom Statuses (Add-on)", "bookly-addon-custom-statuses", "Bookly Custom Statuses add-on allows you to create and use additional statuses for the appointment.", "https://codecanyon.net/item/bookly-custom-statuses-addon/23324001", "https://s3.envato.com/files/260657848/icon_80x80.jpg", "29.00", "384", "0.00", "2", "2019-02-18 20:10:01", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("41", "23350952", "plugin", "0", "0", NULL, "Bookly Outlook Calendar (Add-on)", "bookly-addon-outlook-calendar", "Bookly Outlook Calendar add-on allows you to get a full two-way synchronization between Bookly Calendar and Outlook Calendar.", "https://codecanyon.net/item/bookly-outlook-calendar-addon/23350952", "https://s3.envato.com/files/260900000/icon_80x80(1).jpg", "49.00", "690", "2.33", "3", "2019-02-21 23:33:34", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("42", "24219988", "plugin", "0", "0", NULL, "Bookly PayPal Checkout (Add-on)", "bookly-addon-paypal-checkout", "Bookly PayPal Checkout add-on allows your client to use PayPal Checkout payment method.", "https://codecanyon.net/item/bookly-paypal-checkout-addon/24219988", "https://s3.envato.com/files/268224387/icon_80x80.jpg", "29.00", "469", "0.00", "0", "2019-07-30 18:31:46", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("43", "29936495", "plugin", "0", "0", NULL, "Bookly Discounts (Add-on)", "bookly-addon-discounts", "Bookly Discounts add-on allows you to set up conditional discounts that will be applied during checkout if the booking details match requirements set by you.", "https://codecanyon.net/item/bookly-discounts-addon/29936495", "https://s3.envato.com/files/317556319/icon_80x80.jpg", "29.00", "149", "0.00", "0", "2021-01-05 01:18:25", "1", "2022-01-06 12:28:56");
INSERT INTO `wp_bookly_shop` VALUES("44", "34925755", "plugin", "0", "0", NULL, "Bookly Mailchimp (Add-on)", "bookly-addon-mailchimp", "Bookly Mailchimp add-on allows you to automatically export your customers contact information to your mailing list.", "https://codecanyon.net/item/bookly-mailchimp-addon/34925755", "https://s3.envato.com/files/366451641/icon_80x80.jpg", "29.00", "15", "0.00", "0", "2021-11-24 03:10:56", "1", "2022-01-06 12:28:56");

/* INSERT TABLE DATA: wp_bookly_staff */
INSERT INTO `wp_bookly_staff` VALUES("1", NULL, "3", "0", "Tester ProMember", "dev@yellowrocketdigital.com", "", NULL, "", NULL, "public", "1", NULL, NULL, "default", "", "", NULL, "0", "71042dc83f008c9d67c28c6a64ab25b7", "365", "365", "#376526", NULL);
INSERT INTO `wp_bookly_staff` VALUES("2", NULL, "4", "0", "TesterTwo ProMember", "dev2@example.com", "", NULL, "", NULL, "public", "2", NULL, NULL, "default", "", "", NULL, "0", "dbedd1605e49889c02c9b890ced7e23d", "365", "365", "#213092", NULL);

/* INSERT TABLE DATA: wp_bookly_staff_schedule_items */
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("1", "1", NULL, "1", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("2", "1", NULL, "2", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("3", "1", NULL, "3", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("4", "1", NULL, "4", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("5", "1", NULL, "5", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("6", "1", NULL, "6", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("7", "1", NULL, "7", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("8", "2", NULL, "1", NULL, NULL);
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("9", "2", NULL, "2", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("10", "2", NULL, "3", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("11", "2", NULL, "4", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("12", "2", NULL, "5", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("13", "2", NULL, "6", "08:00:00", "18:00:00");
INSERT INTO `wp_bookly_staff_schedule_items` VALUES("14", "2", NULL, "7", NULL, NULL);

/* INSERT TABLE DATA: wp_bookly_staff_services */
INSERT INTO `wp_bookly_staff_services` VALUES("1", "1", "1", NULL, "270.00", "100%", "1", "1");
INSERT INTO `wp_bookly_staff_services` VALUES("2", "2", "1", NULL, "245.00", "100%", "1", "1");

/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2021-10-18 04:20:15", "2021-10-18 04:20:15", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "comment", "0", "0");

/* INSERT TABLE DATA: wp_cpappbk_forms */
INSERT INTO `wp_cpappbk_forms` VALUES("1", "Form 1", "[[{\"form_identifier\":\"\",\"name\":\"fieldname1\",\"shortlabel\":\"\",\"index\":0,\"ftype\":\"fapp\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Appointment\",\"services\":[{\"name\":\"Service 1\",\"price\":1,\"duration\":60}],\"openhours\":[{\"name\":\"Default\",\"openhours\":[{\"type\":\"all\",\"d\":\"\",\"h1\":8,\"m1\":0,\"h2\":17,\"m2\":0}]}],\"allOH\":[{\"name\":\"Default\",\"openhours\":[{\"type\":\"all\",\"d\":\"\",\"h1\":8,\"m1\":0,\"h2\":17,\"m2\":0}]}],\"dateFormat\":\"mm/dd/yy\",\"showDropdown\":false,\"dropdownRange\":\"-10:+10\",\"working_dates\":[true,true,true,true,true,true,true],\"numberOfMonths\":1,\"firstDay\":0,\"minDate\":\"0\",\"maxDate\":\"\",\"defaultDate\":\"\",\"invalidDates\":\"\",\"required\":true,\"fBuild\":{}},{\"form_identifier\":\"\",\"name\":\"email\",\"shortlabel\":\"\",\"index\":1,\"ftype\":\"femail\",\"userhelp\":\"\",\"userhelpTooltip\":false,\"csslayout\":\"\",\"title\":\"Email\",\"predefined\":\"\",\"predefinedClick\":false,\"required\":true,\"size\":\"medium\",\"equalTo\":\"\",\"fBuild\":{}}],[{\"title\":\"\",\"description\":\"\",\"formlayout\":\"top_aligned\",\"formtemplate\":\"\",\"evalequations\":1,\"autocomplete\":1}]]", "", "mm/dd/yy", "Booking", "Pay later", "", "", "dev-email@flywheel.local", "dev-email@flywheel.local", "Notification to administrator: Booking request received...", "true", "http://matriarchy-build.local", "The following booking request has been received:\n\n<%INFO%>\n\n", "text", "", "", "true", "email", "Confirmation: Your booking has been received...", "Your appointment is received. We look forward to seeing you then.\n\nThis is a copy of the data sent:\n\n<%INFO%>\n\nBest Regards.", "text", "", "Please select a max of  {0} appointments per customer.", "This field is required.", "Please enter a valid email address.", "Please enter a valid date with this format(mm/dd/yyyy)", "Please enter a valid date with this format(dd/mm/yyyy)", "Please enter a valid number.", "Please enter only digits.", "Please enter a value less than or equal to {0}.", "Please enter a value greater than or equal to {0}.", "Page {0} of {0}", "Submit", "Previous", "Next", "Quantity", "Cancel", "Cost", "Selected time is no longer available. Please select a different time.", NULL, "", "", "no", "1", "0", "", "Submissions report...", "text", "Attached you will find the data from the form submissions.", "true", "180", "60", "5", "font1", "25", "35", "200", "4", "ffffff", "000000", "Please enter a valid captcha code.");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20220106_matriarchybuild", "322893abdbe4ad8b4850_20220106141841", "25", "2022-01-06 14:22:02", "unknown", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-01-06 14:18:41\";s:7:\"Version\";s:5:\"1.4.3\";s:9:\"VersionWP\";s:5:\"5.8.1\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:1;s:4:\"Name\";s:24:\"20220106_matriarchybuild\";s:4:\"Hash\";s:35:\"322893abdbe4ad8b4850_20220106141841\";s:8:\"NameHash\";s:60:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:70:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"24.9\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:72:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:60:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-01-06 14:18:41\";s:7:\"Version\";s:5:\"1.4.3\";s:9:\"VersionWP\";s:5:\"5.8.1\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:24:\"20220106_matriarchybuild\";s:4:\"Hash\";s:35:\"322893abdbe4ad8b4850_20220106141841\";s:8:\"NameHash\";s:60:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";s:74:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:73:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:35:{s:26:\"wp_actionscheduler_actions\";s:2:\"20\";s:25:\"wp_actionscheduler_claims\";s:1:\"0\";s:25:\"wp_actionscheduler_groups\";s:1:\"2\";s:23:\"wp_actionscheduler_logs\";s:2:\"58\";s:22:\"wp_bookly_appointments\";s:1:\"1\";s:20:\"wp_bookly_categories\";s:1:\"0\";s:31:\"wp_bookly_customer_appointments\";s:1:\"1\";s:19:\"wp_bookly_customers\";s:1:\"1\";s:19:\"wp_bookly_email_log\";s:1:\"4\";s:18:\"wp_bookly_holidays\";s:1:\"0\";s:13:\"wp_bookly_log\";s:1:\"0\";s:27:\"wp_bookly_mailing_campaigns\";s:1:\"0\";s:33:\"wp_bookly_mailing_list_recipients\";s:1:\"0\";s:23:\"wp_bookly_mailing_lists\";s:1:\"0\";s:23:\"wp_bookly_mailing_queue\";s:1:\"0\";s:14:\"wp_bookly_news\";s:2:\"37\";s:23:\"wp_bookly_notifications\";s:2:\"28\";s:16:\"wp_bookly_orders\";s:1:\"1\";s:18:\"wp_bookly_payments\";s:1:\"1\";s:30:\"wp_bookly_schedule_item_breaks\";s:1:\"0\";s:28:\"wp_bookly_sent_notifications\";s:1:\"0\";s:16:\"wp_bookly_series\";s:1:\"0\";s:18:\"wp_bookly_services\";s:1:\"1\";s:14:\"wp_bookly_shop\";s:2:\"44\";s:15:\"wp_bookly_staff\";s:1:\"2\";s:26:\"wp_bookly_staff_categories\";s:1:\"0\";s:33:\"wp_bookly_staff_preference_orders\";s:1:\"0\";s:30:\"wp_bookly_staff_schedule_items\";s:2:\"14\";s:24:\"wp_bookly_staff_services\";s:1:\"2\";s:15:\"wp_bookly_stats\";s:1:\"0\";s:22:\"wp_bookly_sub_services\";s:1:\"0\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:16:\"wp_cpappbk_forms\";s:1:\"1\";s:19:\"wp_cpappbk_messages\";s:1:\"0\";}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:166:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/backups-dup-lite/tmp/20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:69:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-admin\";i:1;s:79:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/uploads\";i:2;s:81:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/languages\";i:3;s:78:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/themes\";i:4;s:72:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:60:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public\";i:1;s:71:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:165;}");

/* INSERT TABLE DATA: wp_login_redirects */
INSERT INTO `wp_login_redirects` VALUES("1", "all", NULL, "/login/", "/logout/", "0");
INSERT INTO `wp_login_redirects` VALUES("2", "register", NULL, NULL, NULL, "0");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "Matriarchy Build", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Just another WordPress site", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "dev-email@flywheel.local", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:187:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:61:\"^\\.well-known\\/apple-developer-merchantid-domain-association$\";s:57:\"index.php?apple-developer-merchantid-domain-association=1\";s:6:\"pro/?$\";s:23:\"index.php?post_type=pro\";s:36:\"pro/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=pro&feed=$matches[1]\";s:31:\"pro/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?post_type=pro&feed=$matches[1]\";s:23:\"pro/page/([0-9]{1,})/?$\";s:41:\"index.php?post_type=pro&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"pro/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"pro/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"pro/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"pro/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"pro/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"pro/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"pro/([^/]+)/embed/?$\";s:36:\"index.php?pro=$matches[1]&embed=true\";s:24:\"pro/([^/]+)/trackback/?$\";s:30:\"index.php?pro=$matches[1]&tb=1\";s:44:\"pro/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?pro=$matches[1]&feed=$matches[2]\";s:39:\"pro/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?pro=$matches[1]&feed=$matches[2]\";s:32:\"pro/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?pro=$matches[1]&paged=$matches[2]\";s:39:\"pro/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?pro=$matches[1]&cpage=$matches[2]\";s:29:\"pro/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?pro=$matches[1]&wc-api=$matches[3]\";s:35:\"pro/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\"pro/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:28:\"pro/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?pro=$matches[1]&page=$matches[2]\";s:20:\"pro/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"pro/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"pro/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"pro/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"pro/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"pro/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"pros/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pros=$matches[1]&feed=$matches[2]\";s:40:\"pros/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pros=$matches[1]&feed=$matches[2]\";s:21:\"pros/([^/]+)/embed/?$\";s:37:\"index.php?pros=$matches[1]&embed=true\";s:33:\"pros/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?pros=$matches[1]&paged=$matches[2]\";s:15:\"pros/([^/]+)/?$\";s:26:\"index.php?pros=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:38:\"bookly-addon-customer-cabinet/main.php\";i:2;s:25:\"bookly-addon-pro/main.php\";i:3;s:35:\"bookly-addon-staff-cabinet/main.php\";i:4;s:28:\"bookly-addon-stripe/main.php\";i:5;s:51:\"bookly-responsive-appointment-booking-tool/main.php\";i:6;s:25:\"duplicator/duplicator.php\";i:7;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:8;s:27:\"woocommerce/woocommerce.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "matriarchy-build", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "matriarchy-build", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("43", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("44", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("46", "db_version", "49752", "yes");
INSERT INTO `wp_options` VALUES("47", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("48", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("49", "blog_public", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("51", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("52", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("53", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("54", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("55", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("56", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("57", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("59", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("60", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("61", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("62", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("63", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("64", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("65", "image_default_size", "large", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_align", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("68", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("69", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("70", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("71", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("72", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("73", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("74", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("75", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("76", "widget_categories", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("77", "widget_text", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_rss", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("79", "uninstall_plugins", "a:5:{s:25:\"bookly-addon-pro/main.php\";a:2:{i:0;s:18:\"BooklyPro\\Lib\\Boot\";i:1;s:9:\"uninstall\";}s:51:\"bookly-responsive-appointment-booking-tool/main.php\";a:2:{i:0;s:17:\"Bookly\\Lib\\Plugin\";i:1;s:9:\"uninstall\";}s:38:\"bookly-addon-customer-cabinet/main.php\";a:2:{i:0;s:30:\"BooklyCustomerCabinet\\Lib\\Boot\";i:1;s:9:\"uninstall\";}s:35:\"bookly-addon-staff-cabinet/main.php\";a:2:{i:0;s:27:\"BooklyStaffCabinet\\Lib\\Boot\";i:1;s:9:\"uninstall\";}s:28:\"bookly-addon-stripe/main.php\";a:2:{i:0;s:21:\"BooklyStripe\\Lib\\Boot\";i:1;s:9:\"uninstall\";}}", "no");
INSERT INTO `wp_options` VALUES("80", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("81", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("82", "page_on_front", "10", "yes");
INSERT INTO `wp_options` VALUES("83", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("85", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("86", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("88", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "wp_page_for_privacy_policy", "3", "yes");
INSERT INTO `wp_options` VALUES("90", "show_comments_cookies_opt_in", "1", "yes");
INSERT INTO `wp_options` VALUES("91", "admin_email_lifespan", "1650082814", "yes");
INSERT INTO `wp_options` VALUES("92", "disallowed_keys", "", "no");
INSERT INTO `wp_options` VALUES("93", "comment_previously_approved", "1", "yes");
INSERT INTO `wp_options` VALUES("94", "auto_plugin_theme_update_emails", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("95", "auto_update_core_dev", "enabled", "yes");
INSERT INTO `wp_options` VALUES("96", "auto_update_core_minor", "enabled", "yes");
INSERT INTO `wp_options` VALUES("97", "auto_update_core_major", "enabled", "yes");
INSERT INTO `wp_options` VALUES("98", "wp_force_deactivated_plugins", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("99", "initial_db_version", "49752", "yes");
INSERT INTO `wp_options` VALUES("100", "wp_user_roles", "a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:17:\"bookly_supervisor\";a:2:{s:4:\"name\";s:17:\"Bookly Supervisor\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:20:\"view_admin_dashboard\";b:1;s:26:\"manage_bookly_appointments\";b:1;}}s:20:\"bookly_administrator\";a:2:{s:4:\"name\";s:20:\"Bookly Administrator\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:20:\"view_admin_dashboard\";b:1;s:13:\"manage_bookly\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("101", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_block", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "sidebars_widgets", "a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary_widget_area\";a:0:{}s:21:\"secondary_widget_area\";a:0:{}s:17:\"third_widget_area\";a:0:{}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("104", "cron", "a:22:{i:1641478978;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1641479364;a:2:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1641479627;a:1:{s:21:\"bookly_hourly_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641480241;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641480258;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641482418;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641486018;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641494641;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641494650;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641503390;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641505440;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641513600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641515627;a:1:{s:20:\"bookly_daily_routine\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641515630;a:1:{s:37:\"check_plugin_updates-bookly-addon-pro\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641515919;a:1:{s:50:\"check_plugin_updates-bookly-addon-customer-cabinet\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641515975;a:1:{s:47:\"check_plugin_updates-bookly-addon-staff-cabinet\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641515995;a:1:{s:40:\"check_plugin_updates-bookly-addon-stripe\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641516240;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641529218;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641874818;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1642013100;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_archives", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("111", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("112", "widget_meta", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("113", "widget_search", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("114", "nonce_key", "%Ez2qxUlu.f~jHl<2~P`AY:n<iE8|)pIN4kO_FF2Q[X!b)Bc]za^}Hx2fMT)vYlx", "no");
INSERT INTO `wp_options` VALUES("115", "nonce_salt", "4l/v*NcTkXO?Rm!H6X<$BS#,LiY3M!&V!OgS_:p JPKJ6M-{v@-y[@=qxL YKk;J", "no");
INSERT INTO `wp_options` VALUES("116", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("117", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("118", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("120", "recovery_keys", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("121", "theme_mods_twentytwentyone", "a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635024316;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("122", "https_detection_errors", "a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}", "yes");
INSERT INTO `wp_options` VALUES("123", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:5:\"5.8.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1641478653;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("128", "_site_transient_update_themes", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641478653;s:7:\"checked\";a:1:{s:16:\"matriarchy-build\";s:5:\"3.0.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("135", "_transient_health-check-site-status-result", "{\"good\":11,\"recommended\":5,\"critical\":2}", "yes");
INSERT INTO `wp_options` VALUES("146", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("155", "finished_updating_comment_type", "1", "yes");
INSERT INTO `wp_options` VALUES("156", "current_theme", "Matriarchy Build v0.1", "yes");
INSERT INTO `wp_options` VALUES("157", "theme_mods_JointsWP", "a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635023752;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("158", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("162", "theme_mods_matriarchybuild", "a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"main-nav\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635038296;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"sidebar1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"offcanvas\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("165", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("175", "theme_mods_matriarchy-build", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `wp_options` VALUES("177", "recovery_mode_email_last_sent", "1636847143", "yes");
INSERT INTO `wp_options` VALUES("232", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("233", "acf_version", "5.11.4", "yes");
INSERT INTO `wp_options` VALUES("268", "rul_version", "3.0.0.5", "no");
INSERT INTO `wp_options` VALUES("269", "loginwp_from_ab_initio", "true", "yes");
INSERT INTO `wp_options` VALUES("270", "loginwp_install_date", "2021-11-13 18:39:45", "yes");
INSERT INTO `wp_options` VALUES("275", "action_scheduler_hybrid_store_demarkation", "24", "yes");
INSERT INTO `wp_options` VALUES("276", "schema-ActionScheduler_StoreSchema", "5.0.1636829038", "yes");
INSERT INTO `wp_options` VALUES("277", "schema-ActionScheduler_LoggerSchema", "3.0.1636829038", "yes");
INSERT INTO `wp_options` VALUES("280", "woocommerce_schema_version", "430", "yes");
INSERT INTO `wp_options` VALUES("281", "woocommerce_store_address", "", "yes");
INSERT INTO `wp_options` VALUES("282", "woocommerce_store_address_2", "", "yes");
INSERT INTO `wp_options` VALUES("283", "woocommerce_store_city", "", "yes");
INSERT INTO `wp_options` VALUES("284", "woocommerce_default_country", "US:CA", "yes");
INSERT INTO `wp_options` VALUES("285", "woocommerce_store_postcode", "", "yes");
INSERT INTO `wp_options` VALUES("286", "woocommerce_allowed_countries", "all", "yes");
INSERT INTO `wp_options` VALUES("287", "woocommerce_all_except_countries", "", "yes");
INSERT INTO `wp_options` VALUES("288", "woocommerce_specific_allowed_countries", "", "yes");
INSERT INTO `wp_options` VALUES("289", "woocommerce_ship_to_countries", "", "yes");
INSERT INTO `wp_options` VALUES("290", "woocommerce_specific_ship_to_countries", "", "yes");
INSERT INTO `wp_options` VALUES("291", "woocommerce_default_customer_address", "base", "yes");
INSERT INTO `wp_options` VALUES("292", "woocommerce_calc_taxes", "no", "yes");
INSERT INTO `wp_options` VALUES("293", "woocommerce_enable_coupons", "yes", "yes");
INSERT INTO `wp_options` VALUES("294", "woocommerce_calc_discounts_sequentially", "no", "no");
INSERT INTO `wp_options` VALUES("295", "woocommerce_currency", "USD", "yes");
INSERT INTO `wp_options` VALUES("296", "woocommerce_currency_pos", "left", "yes");
INSERT INTO `wp_options` VALUES("297", "woocommerce_price_thousand_sep", ",", "yes");
INSERT INTO `wp_options` VALUES("298", "woocommerce_price_decimal_sep", ".", "yes");
INSERT INTO `wp_options` VALUES("299", "woocommerce_price_num_decimals", "2", "yes");
INSERT INTO `wp_options` VALUES("300", "woocommerce_shop_page_id", "25", "yes");
INSERT INTO `wp_options` VALUES("301", "woocommerce_cart_redirect_after_add", "yes", "yes");
INSERT INTO `wp_options` VALUES("302", "woocommerce_enable_ajax_add_to_cart", "no", "yes");
INSERT INTO `wp_options` VALUES("303", "woocommerce_placeholder_image", "24", "yes");
INSERT INTO `wp_options` VALUES("304", "woocommerce_weight_unit", "kg", "yes");
INSERT INTO `wp_options` VALUES("305", "woocommerce_dimension_unit", "cm", "yes");
INSERT INTO `wp_options` VALUES("306", "woocommerce_enable_reviews", "yes", "yes");
INSERT INTO `wp_options` VALUES("307", "woocommerce_review_rating_verification_label", "yes", "no");
INSERT INTO `wp_options` VALUES("308", "woocommerce_review_rating_verification_required", "no", "no");
INSERT INTO `wp_options` VALUES("309", "woocommerce_enable_review_rating", "yes", "yes");
INSERT INTO `wp_options` VALUES("310", "woocommerce_review_rating_required", "yes", "no");
INSERT INTO `wp_options` VALUES("311", "woocommerce_manage_stock", "yes", "yes");
INSERT INTO `wp_options` VALUES("312", "woocommerce_hold_stock_minutes", "60", "no");
INSERT INTO `wp_options` VALUES("313", "woocommerce_notify_low_stock", "yes", "no");
INSERT INTO `wp_options` VALUES("314", "woocommerce_notify_no_stock", "yes", "no");
INSERT INTO `wp_options` VALUES("315", "woocommerce_stock_email_recipient", "dev-email@flywheel.local", "no");
INSERT INTO `wp_options` VALUES("316", "woocommerce_notify_low_stock_amount", "2", "no");
INSERT INTO `wp_options` VALUES("317", "woocommerce_notify_no_stock_amount", "0", "yes");
INSERT INTO `wp_options` VALUES("318", "woocommerce_hide_out_of_stock_items", "no", "yes");
INSERT INTO `wp_options` VALUES("319", "woocommerce_stock_format", "", "yes");
INSERT INTO `wp_options` VALUES("320", "woocommerce_file_download_method", "force", "no");
INSERT INTO `wp_options` VALUES("321", "woocommerce_downloads_redirect_fallback_allowed", "no", "no");
INSERT INTO `wp_options` VALUES("322", "woocommerce_downloads_require_login", "no", "no");
INSERT INTO `wp_options` VALUES("323", "woocommerce_downloads_grant_access_after_payment", "yes", "no");
INSERT INTO `wp_options` VALUES("324", "woocommerce_downloads_add_hash_to_filename", "yes", "yes");
INSERT INTO `wp_options` VALUES("325", "woocommerce_prices_include_tax", "no", "yes");
INSERT INTO `wp_options` VALUES("326", "woocommerce_tax_based_on", "shipping", "yes");
INSERT INTO `wp_options` VALUES("327", "woocommerce_shipping_tax_class", "inherit", "yes");
INSERT INTO `wp_options` VALUES("328", "woocommerce_tax_round_at_subtotal", "no", "yes");
INSERT INTO `wp_options` VALUES("329", "woocommerce_tax_classes", "", "yes");
INSERT INTO `wp_options` VALUES("330", "woocommerce_tax_display_shop", "excl", "yes");
INSERT INTO `wp_options` VALUES("331", "woocommerce_tax_display_cart", "excl", "yes");
INSERT INTO `wp_options` VALUES("332", "woocommerce_price_display_suffix", "", "yes");
INSERT INTO `wp_options` VALUES("333", "woocommerce_tax_total_display", "itemized", "no");
INSERT INTO `wp_options` VALUES("334", "woocommerce_enable_shipping_calc", "yes", "no");
INSERT INTO `wp_options` VALUES("335", "woocommerce_shipping_cost_requires_address", "no", "yes");
INSERT INTO `wp_options` VALUES("336", "woocommerce_ship_to_destination", "billing", "no");
INSERT INTO `wp_options` VALUES("337", "woocommerce_shipping_debug_mode", "no", "yes");
INSERT INTO `wp_options` VALUES("338", "woocommerce_enable_guest_checkout", "yes", "no");
INSERT INTO `wp_options` VALUES("339", "woocommerce_enable_checkout_login_reminder", "no", "no");
INSERT INTO `wp_options` VALUES("340", "woocommerce_enable_signup_and_login_from_checkout", "no", "no");
INSERT INTO `wp_options` VALUES("341", "woocommerce_enable_myaccount_registration", "no", "no");
INSERT INTO `wp_options` VALUES("342", "woocommerce_registration_generate_username", "yes", "no");
INSERT INTO `wp_options` VALUES("343", "woocommerce_registration_generate_password", "yes", "no");
INSERT INTO `wp_options` VALUES("344", "woocommerce_erasure_request_removes_order_data", "no", "no");
INSERT INTO `wp_options` VALUES("345", "woocommerce_erasure_request_removes_download_data", "no", "no");
INSERT INTO `wp_options` VALUES("346", "woocommerce_allow_bulk_remove_personal_data", "no", "no");
INSERT INTO `wp_options` VALUES("347", "woocommerce_registration_privacy_policy_text", "Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].", "yes");
INSERT INTO `wp_options` VALUES("348", "woocommerce_checkout_privacy_policy_text", "Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].", "yes");
INSERT INTO `wp_options` VALUES("349", "woocommerce_delete_inactive_accounts", "a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}", "no");
INSERT INTO `wp_options` VALUES("350", "woocommerce_trash_pending_orders", "", "no");
INSERT INTO `wp_options` VALUES("351", "woocommerce_trash_failed_orders", "", "no");
INSERT INTO `wp_options` VALUES("352", "woocommerce_trash_cancelled_orders", "", "no");
INSERT INTO `wp_options` VALUES("353", "woocommerce_anonymize_completed_orders", "a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}", "no");
INSERT INTO `wp_options` VALUES("354", "woocommerce_email_from_name", "Matriarchy Build", "no");
INSERT INTO `wp_options` VALUES("355", "woocommerce_email_from_address", "dev-email@flywheel.local", "no");
INSERT INTO `wp_options` VALUES("356", "woocommerce_email_header_image", "", "no");
INSERT INTO `wp_options` VALUES("357", "woocommerce_email_footer_text", "{site_title} &mdash; Built with {WooCommerce}", "no");
INSERT INTO `wp_options` VALUES("358", "woocommerce_email_base_color", "#96588a", "no");
INSERT INTO `wp_options` VALUES("359", "woocommerce_email_background_color", "#f7f7f7", "no");
INSERT INTO `wp_options` VALUES("360", "woocommerce_email_body_background_color", "#ffffff", "no");
INSERT INTO `wp_options` VALUES("361", "woocommerce_email_text_color", "#3c3c3c", "no");
INSERT INTO `wp_options` VALUES("362", "woocommerce_merchant_email_notifications", "no", "no");
INSERT INTO `wp_options` VALUES("363", "woocommerce_cart_page_id", "26", "no");
INSERT INTO `wp_options` VALUES("364", "woocommerce_checkout_page_id", "27", "no");
INSERT INTO `wp_options` VALUES("365", "woocommerce_myaccount_page_id", "28", "no");
INSERT INTO `wp_options` VALUES("366", "woocommerce_terms_page_id", "", "no");
INSERT INTO `wp_options` VALUES("367", "woocommerce_force_ssl_checkout", "no", "yes");
INSERT INTO `wp_options` VALUES("368", "woocommerce_unforce_ssl_checkout", "no", "yes");
INSERT INTO `wp_options` VALUES("369", "woocommerce_checkout_pay_endpoint", "order-pay", "yes");
INSERT INTO `wp_options` VALUES("370", "woocommerce_checkout_order_received_endpoint", "order-received", "yes");
INSERT INTO `wp_options` VALUES("371", "woocommerce_myaccount_add_payment_method_endpoint", "add-payment-method", "yes");
INSERT INTO `wp_options` VALUES("372", "woocommerce_myaccount_delete_payment_method_endpoint", "delete-payment-method", "yes");
INSERT INTO `wp_options` VALUES("373", "woocommerce_myaccount_set_default_payment_method_endpoint", "set-default-payment-method", "yes");
INSERT INTO `wp_options` VALUES("374", "woocommerce_myaccount_orders_endpoint", "orders", "yes");
INSERT INTO `wp_options` VALUES("375", "woocommerce_myaccount_view_order_endpoint", "view-order", "yes");
INSERT INTO `wp_options` VALUES("376", "woocommerce_myaccount_downloads_endpoint", "downloads", "yes");
INSERT INTO `wp_options` VALUES("377", "woocommerce_myaccount_edit_account_endpoint", "edit-account", "yes");
INSERT INTO `wp_options` VALUES("378", "woocommerce_myaccount_edit_address_endpoint", "edit-address", "yes");
INSERT INTO `wp_options` VALUES("379", "woocommerce_myaccount_payment_methods_endpoint", "payment-methods", "yes");
INSERT INTO `wp_options` VALUES("380", "woocommerce_myaccount_lost_password_endpoint", "lost-password", "yes");
INSERT INTO `wp_options` VALUES("381", "woocommerce_logout_endpoint", "customer-logout", "yes");
INSERT INTO `wp_options` VALUES("382", "woocommerce_api_enabled", "no", "yes");
INSERT INTO `wp_options` VALUES("383", "woocommerce_allow_tracking", "no", "no");
INSERT INTO `wp_options` VALUES("384", "woocommerce_show_marketplace_suggestions", "yes", "no");
INSERT INTO `wp_options` VALUES("385", "woocommerce_single_image_width", "600", "yes");
INSERT INTO `wp_options` VALUES("386", "woocommerce_thumbnail_image_width", "300", "yes");
INSERT INTO `wp_options` VALUES("387", "woocommerce_checkout_highlight_required_fields", "yes", "yes");
INSERT INTO `wp_options` VALUES("388", "woocommerce_demo_store", "no", "no");
INSERT INTO `wp_options` VALUES("389", "woocommerce_permalinks", "a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}", "yes");
INSERT INTO `wp_options` VALUES("390", "current_theme_supports_woocommerce", "no", "yes");
INSERT INTO `wp_options` VALUES("391", "woocommerce_queue_flush_rewrite_rules", "no", "yes");
INSERT INTO `wp_options` VALUES("392", "_transient_wc_attribute_taxonomies", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("393", "product_cat_children", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("394", "default_product_cat", "17", "yes");
INSERT INTO `wp_options` VALUES("396", "woocommerce_refund_returns_page_id", "29", "yes");
INSERT INTO `wp_options` VALUES("399", "woocommerce_paypal_settings", "a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:24:\"dev-email@flywheel.local\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}", "yes");
INSERT INTO `wp_options` VALUES("400", "woocommerce_version", "5.9.0", "yes");
INSERT INTO `wp_options` VALUES("401", "woocommerce_db_version", "5.9.0", "yes");
INSERT INTO `wp_options` VALUES("402", "woocommerce_inbox_variant_assignment", "8", "yes");
INSERT INTO `wp_options` VALUES("406", "_transient_jetpack_autoloader_plugin_paths", "a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}", "yes");
INSERT INTO `wp_options` VALUES("407", "action_scheduler_lock_async-request-runner", "1641478965", "yes");
INSERT INTO `wp_options` VALUES("408", "woocommerce_admin_notices", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("409", "woocommerce_maxmind_geolocation_settings", "a:1:{s:15:\"database_prefix\";s:32:\"u3oYXIRwQpqH06yF8Nw5vzR1Tjwd84le\";}", "yes");
INSERT INTO `wp_options` VALUES("410", "_transient_woocommerce_webhook_ids_status_active", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("411", "widget_woocommerce_widget_cart", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("412", "widget_woocommerce_layered_nav_filters", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("413", "widget_woocommerce_layered_nav", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("414", "widget_woocommerce_price_filter", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("415", "widget_woocommerce_product_categories", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("416", "widget_woocommerce_product_search", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("417", "widget_woocommerce_product_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("418", "widget_woocommerce_products", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("419", "widget_woocommerce_recently_viewed_products", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("420", "widget_woocommerce_top_rated_products", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("421", "widget_woocommerce_recent_reviews", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("422", "widget_woocommerce_rating_filter", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("425", "woocommerce_admin_version", "2.8.0", "yes");
INSERT INTO `wp_options` VALUES("426", "woocommerce_admin_install_timestamp", "1636829041", "yes");
INSERT INTO `wp_options` VALUES("427", "wc_remote_inbox_notifications_wca_updated", "", "no");
INSERT INTO `wp_options` VALUES("428", "wc_remote_inbox_notifications_specs", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("432", "_transient_wc_count_comments", "O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}", "yes");
INSERT INTO `wp_options` VALUES("433", "wc_blocks_surface_cart_checkout_probability", "59", "yes");
INSERT INTO `wp_options` VALUES("434", "wc_blocks_db_schema_version", "260", "yes");
INSERT INTO `wp_options` VALUES("435", "woocommerce_meta_box_errors", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("436", "wc_remote_inbox_notifications_stored_state", "O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}", "no");
INSERT INTO `wp_options` VALUES("437", "_transient_woocommerce_reports-transient-version", "1636829043", "yes");
INSERT INTO `wp_options` VALUES("448", "woocommerce_onboarding_profile", "a:1:{s:7:\"skipped\";b:1;}", "yes");
INSERT INTO `wp_options` VALUES("457", "woocommerce_task_list_welcome_modal_dismissed", "yes", "yes");
INSERT INTO `wp_options` VALUES("464", "woocommerce_marketplace_suggestions", "a:2:{s:11:\"suggestions\";a:0:{}s:7:\"updated\";i:1641472133;}", "no");
INSERT INTO `wp_options` VALUES("471", "_transient_shipping-transient-version", "1636829226", "yes");
INSERT INTO `wp_options` VALUES("474", "_transient_product_query-transient-version", "1641474932", "yes");
INSERT INTO `wp_options` VALUES("482", "mo_dismiss_adnotice", "true", "yes");
INSERT INTO `wp_options` VALUES("731", "wc_stripe_wh_monitor_began_at", "1638322344", "yes");
INSERT INTO `wp_options` VALUES("732", "wc_stripe_wh_last_success_at", "0", "yes");
INSERT INTO `wp_options` VALUES("733", "wc_stripe_wh_last_failure_at", "0", "yes");
INSERT INTO `wp_options` VALUES("734", "wc_stripe_wh_last_error", "validation_succeeded", "yes");
INSERT INTO `wp_options` VALUES("736", "wc_stripe_show_style_notice", "no", "yes");
INSERT INTO `wp_options` VALUES("737", "wc_stripe_show_sca_notice", "no", "yes");
INSERT INTO `wp_options` VALUES("741", "woocommerce_stripe_settings", "a:25:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:11:\"Credit Card\";s:11:\"description\";s:37:\"Pay with your credit card via Stripe.\";s:15:\"api_credentials\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:20:\"test_publishable_key\";s:107:\"pk_test_51K1hi7FpukNBissoWfNpRrEA0oPDTIasw2jJqeuKzH9hFupn3zs4s5JaucEoZD5739GSiacbZN07efFOXSP5u33o00HYzMe6tv\";s:15:\"test_secret_key\";s:107:\"sk_test_51K1hi7FpukNBissopfVTcQBtNKxGzfAPvDtdk2iQbB4FklAttSCltuJkvHUK9oOoVV1yUopfrb8vEfrGK06FaR1300NO1YtOai\";s:15:\"publishable_key\";N;s:10:\"secret_key\";N;s:7:\"webhook\";s:0:\"\";s:19:\"test_webhook_secret\";s:0:\"\";s:14:\"webhook_secret\";N;s:14:\"inline_cc_form\";s:2:\"no\";s:20:\"statement_descriptor\";s:0:\"\";s:7:\"capture\";s:3:\"yes\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:32:\"payment_request_button_locations\";a:3:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";}s:27:\"payment_request_button_size\";s:7:\"default\";s:11:\"saved_cards\";s:3:\"yes\";s:7:\"logging\";s:2:\"no\";s:31:\"upe_checkout_experience_enabled\";s:2:\"no\";s:9:\"title_upe\";s:0:\"\";s:37:\"is_short_statement_descriptor_enabled\";s:2:\"no\";}", "yes");
INSERT INTO `wp_options` VALUES("742", "wc_stripe_wh_test_monitor_began_at", "1638322542", "yes");
INSERT INTO `wp_options` VALUES("743", "wc_stripe_wh_test_last_success_at", "0", "yes");
INSERT INTO `wp_options` VALUES("744", "wc_stripe_wh_test_last_failure_at", "0", "yes");
INSERT INTO `wp_options` VALUES("745", "wc_stripe_wh_test_last_error", "validation_succeeded", "yes");
INSERT INTO `wp_options` VALUES("754", "_transient_product-transient-version", "1638322806", "yes");
INSERT INTO `wp_options` VALUES("817", "installed_appointment-hour-booking", "1638391022", "yes");
INSERT INTO `wp_options` VALUES("818", "cp_cpappb_last_verified", "2021-12-09 12:50:19", "yes");
INSERT INTO `wp_options` VALUES("819", "_transient_codepeople_promote_banner_appointment-hour-booking", "1638391023", "yes");
INSERT INTO `wp_options` VALUES("1083", "wc_stripe_version", "5.9.0", "yes");
INSERT INTO `wp_options` VALUES("1401", "bookly_data_loaded", "1", "yes");
INSERT INTO `wp_options` VALUES("1402", "bookly_db_version", "20.5", "yes");
INSERT INTO `wp_options` VALUES("1403", "bookly_installation_time", "1640738027", "yes");
INSERT INTO `wp_options` VALUES("1405", "bookly_admin_preferred_language", "", "yes");
INSERT INTO `wp_options` VALUES("1406", "bookly_app_color", "#f4662f", "yes");
INSERT INTO `wp_options` VALUES("1407", "bookly_app_custom_styles", "", "yes");
INSERT INTO `wp_options` VALUES("1408", "bookly_app_required_employee", "0", "yes");
INSERT INTO `wp_options` VALUES("1409", "bookly_app_service_name_with_duration", "0", "yes");
INSERT INTO `wp_options` VALUES("1410", "bookly_app_show_blocked_timeslots", "0", "yes");
INSERT INTO `wp_options` VALUES("1411", "bookly_app_show_calendar", "1", "yes");
INSERT INTO `wp_options` VALUES("1412", "bookly_app_show_day_one_column", "0", "yes");
INSERT INTO `wp_options` VALUES("1413", "bookly_app_show_login_button", "1", "yes");
INSERT INTO `wp_options` VALUES("1414", "bookly_app_show_notes", "1", "yes");
INSERT INTO `wp_options` VALUES("1415", "bookly_app_show_progress_tracker", "0", "yes");
INSERT INTO `wp_options` VALUES("1416", "bookly_app_align_buttons_left", "0", "yes");
INSERT INTO `wp_options` VALUES("1417", "bookly_app_staff_name_with_price", "1", "yes");
INSERT INTO `wp_options` VALUES("1418", "bookly_app_show_single_slot", "0", "yes");
INSERT INTO `wp_options` VALUES("1419", "bookly_app_show_email_confirm", "0", "yes");
INSERT INTO `wp_options` VALUES("1420", "bookly_app_show_start_over", "1", "yes");
INSERT INTO `wp_options` VALUES("1421", "bookly_app_show_service_info", "1", "yes");
INSERT INTO `wp_options` VALUES("1422", "bookly_app_show_staff_info", "0", "yes");
INSERT INTO `wp_options` VALUES("1423", "bookly_app_show_terms", "0", "yes");
INSERT INTO `wp_options` VALUES("1424", "bookly_app_show_download_ics", "1", "yes");
INSERT INTO `wp_options` VALUES("1425", "bookly_l10n_button_apply", "Apply", "yes");
INSERT INTO `wp_options` VALUES("1426", "bookly_l10n_button_back", "Back", "yes");
INSERT INTO `wp_options` VALUES("1427", "bookly_l10n_button_download_ics", "Download ICS", "yes");
INSERT INTO `wp_options` VALUES("1428", "bookly_l10n_info_complete_step", "Thank you! Your booking is complete. An email with details of your booking has been sent to you.", "yes");
INSERT INTO `wp_options` VALUES("1429", "bookly_l10n_info_complete_step_limit_error", "You are trying to use the service too often. Please contact us to make a booking.", "yes");
INSERT INTO `wp_options` VALUES("1430", "bookly_l10n_info_complete_step_processing", "Your payment has been accepted for processing.", "yes");
INSERT INTO `wp_options` VALUES("1431", "bookly_l10n_info_details_step", "You selected a booking for {service_name} by {staff_name} at {appointment_time} on {appointment_date}. The price for the service is {service_price}.\nPlease provide your details in the form below to proceed with booking.", "yes");
INSERT INTO `wp_options` VALUES("1432", "bookly_l10n_info_details_step_guest", "", "yes");
INSERT INTO `wp_options` VALUES("1433", "bookly_l10n_info_payment_step_single_app", "Please tell us how you would like to pay: ", "yes");
INSERT INTO `wp_options` VALUES("1434", "bookly_l10n_info_service_step", "Please select service: ", "yes");
INSERT INTO `wp_options` VALUES("1435", "bookly_l10n_info_time_step", "Below you can find a list of available time slots for {service_name} by {staff_name}.\nClick on a time slot to proceed with booking.", "yes");
INSERT INTO `wp_options` VALUES("1436", "bookly_l10n_label_category", "Category", "yes");
INSERT INTO `wp_options` VALUES("1437", "bookly_l10n_label_email", "Email", "yes");
INSERT INTO `wp_options` VALUES("1438", "bookly_l10n_label_email_confirm", "Confirm email", "yes");
INSERT INTO `wp_options` VALUES("1439", "bookly_l10n_label_employee", "Employee", "yes");
INSERT INTO `wp_options` VALUES("1440", "bookly_l10n_label_finish_by", "Finish by", "yes");
INSERT INTO `wp_options` VALUES("1441", "bookly_l10n_label_name", "Full name", "yes");
INSERT INTO `wp_options` VALUES("1442", "bookly_l10n_label_first_name", "First name", "yes");
INSERT INTO `wp_options` VALUES("1443", "bookly_l10n_label_last_name", "Last name", "yes");
INSERT INTO `wp_options` VALUES("1444", "bookly_l10n_label_notes", "Notes", "yes");
INSERT INTO `wp_options` VALUES("1445", "bookly_l10n_label_pay_locally", "I will pay locally", "yes");
INSERT INTO `wp_options` VALUES("1446", "bookly_l10n_label_pay_cloud_stripe", "I will pay now with Credit Card", "yes");
INSERT INTO `wp_options` VALUES("1447", "bookly_l10n_label_phone", "Phone", "yes");
INSERT INTO `wp_options` VALUES("1448", "bookly_l10n_label_select_date", "I\'m available on or after", "yes");
INSERT INTO `wp_options` VALUES("1449", "bookly_l10n_label_service", "Service", "yes");
INSERT INTO `wp_options` VALUES("1450", "bookly_l10n_label_start_from", "Start from", "yes");
INSERT INTO `wp_options` VALUES("1451", "bookly_l10n_label_terms", "I agree to the terms of service", "yes");
INSERT INTO `wp_options` VALUES("1452", "bookly_l10n_error_terms", "You must accept our terms", "yes");
INSERT INTO `wp_options` VALUES("1453", "bookly_l10n_option_category", "Select category", "yes");
INSERT INTO `wp_options` VALUES("1454", "bookly_l10n_option_employee", "Any", "yes");
INSERT INTO `wp_options` VALUES("1455", "bookly_l10n_option_service", "Select service", "yes");
INSERT INTO `wp_options` VALUES("1456", "bookly_l10n_option_day", "Select day", "yes");
INSERT INTO `wp_options` VALUES("1457", "bookly_l10n_option_month", "Select month", "yes");
INSERT INTO `wp_options` VALUES("1458", "bookly_l10n_option_year", "Select year", "yes");
INSERT INTO `wp_options` VALUES("1459", "bookly_l10n_required_email", "Please tell us your email", "yes");
INSERT INTO `wp_options` VALUES("1460", "bookly_l10n_email_in_use", "This email is already in use", "yes");
INSERT INTO `wp_options` VALUES("1461", "bookly_l10n_email_confirm_not_match", "Email confirmation doesn\'t match", "yes");
INSERT INTO `wp_options` VALUES("1462", "bookly_l10n_required_employee", "Please select an employee", "yes");
INSERT INTO `wp_options` VALUES("1463", "bookly_l10n_required_name", "Please tell us your name", "yes");
INSERT INTO `wp_options` VALUES("1464", "bookly_l10n_required_first_name", "Please tell us your first name", "yes");
INSERT INTO `wp_options` VALUES("1465", "bookly_l10n_required_last_name", "Please tell us your last name", "yes");
INSERT INTO `wp_options` VALUES("1466", "bookly_l10n_required_phone", "Please tell us your phone", "yes");
INSERT INTO `wp_options` VALUES("1467", "bookly_l10n_required_service", "Please select a service", "yes");
INSERT INTO `wp_options` VALUES("1468", "bookly_l10n_step_service", "Service", "yes");
INSERT INTO `wp_options` VALUES("1469", "bookly_l10n_step_time", "Time", "yes");
INSERT INTO `wp_options` VALUES("1470", "bookly_l10n_step_time_slot_not_available", "The selected time is not available anymore. Please, choose another time slot.", "yes");
INSERT INTO `wp_options` VALUES("1471", "bookly_l10n_step_details", "Details", "yes");
INSERT INTO `wp_options` VALUES("1472", "bookly_l10n_step_details_button_login", "Login", "yes");
INSERT INTO `wp_options` VALUES("1473", "bookly_l10n_step_payment", "Payment", "yes");
INSERT INTO `wp_options` VALUES("1474", "bookly_l10n_step_done", "Done", "yes");
INSERT INTO `wp_options` VALUES("1475", "bookly_l10n_step_done_button_start_over", "Start over", "yes");
INSERT INTO `wp_options` VALUES("1476", "bookly_l10n_step_service_service_info", "{service_info}", "yes");
INSERT INTO `wp_options` VALUES("1477", "bookly_l10n_step_service_staff_info", "{staff_info}", "yes");
INSERT INTO `wp_options` VALUES("1478", "bookly_l10n_step_service_button_next", "Next", "yes");
INSERT INTO `wp_options` VALUES("1479", "bookly_l10n_step_service_mobile_button_next", "Next", "yes");
INSERT INTO `wp_options` VALUES("1480", "bookly_l10n_step_details_button_next", "Next", "yes");
INSERT INTO `wp_options` VALUES("1481", "bookly_l10n_step_payment_button_next", "Next", "yes");
INSERT INTO `wp_options` VALUES("1482", "bookly_cal_show_only_business_days", "1", "yes");
INSERT INTO `wp_options` VALUES("1483", "bookly_cal_show_only_business_hours", "1", "yes");
INSERT INTO `wp_options` VALUES("1484", "bookly_cal_show_only_staff_with_appointments", "1", "yes");
INSERT INTO `wp_options` VALUES("1485", "bookly_cal_one_participant", "{service_name}\n{client_name}\n{client_phone}\n{client_email}\n{total_price} {payment_type} {payment_status}\nStatus: {status}\nSigned up: {signed_up}\nCapacity: {service_capacity}", "yes");
INSERT INTO `wp_options` VALUES("1486", "bookly_cal_many_participants", "{service_name}\nSigned up: {signed_up}\nCapacity: {service_capacity}", "yes");
INSERT INTO `wp_options` VALUES("1487", "bookly_cal_coloring_mode", "service", "yes");
INSERT INTO `wp_options` VALUES("1488", "bookly_cal_month_view_style", "classic", "yes");
INSERT INTO `wp_options` VALUES("1489", "bookly_co_logo_attachment_id", "", "yes");
INSERT INTO `wp_options` VALUES("1490", "bookly_co_name", "Matriarchy Build", "yes");
INSERT INTO `wp_options` VALUES("1491", "bookly_co_address", "", "yes");
INSERT INTO `wp_options` VALUES("1492", "bookly_co_phone", "", "yes");
INSERT INTO `wp_options` VALUES("1493", "bookly_co_website", "", "yes");
INSERT INTO `wp_options` VALUES("1494", "bookly_co_email", "lacey@matriarchybuild.com", "yes");
INSERT INTO `wp_options` VALUES("1495", "bookly_co_industry", "41", "yes");
INSERT INTO `wp_options` VALUES("1496", "bookly_co_size", "1", "yes");
INSERT INTO `wp_options` VALUES("1497", "bookly_cst_allow_duplicates", "0", "yes");
INSERT INTO `wp_options` VALUES("1498", "bookly_cst_create_account", "0", "yes");
INSERT INTO `wp_options` VALUES("1499", "bookly_cst_default_country_code", "", "yes");
INSERT INTO `wp_options` VALUES("1500", "bookly_cst_first_last_name", "0", "yes");
INSERT INTO `wp_options` VALUES("1501", "bookly_cst_phone_default_country", "auto", "yes");
INSERT INTO `wp_options` VALUES("1502", "bookly_cst_remember_in_cookie", "0", "yes");
INSERT INTO `wp_options` VALUES("1503", "bookly_cst_required_address", "0", "yes");
INSERT INTO `wp_options` VALUES("1504", "bookly_cst_required_birthday", "0", "yes");
INSERT INTO `wp_options` VALUES("1505", "bookly_cst_required_details", "a:1:{i:0;s:5:\"email\";}", "yes");
INSERT INTO `wp_options` VALUES("1506", "bookly_cst_show_update_details_dialog", "1", "yes");
INSERT INTO `wp_options` VALUES("1507", "bookly_cst_verify_customer_details", "on_update", "yes");
INSERT INTO `wp_options` VALUES("1508", "bookly_email_sender", "dev-email@flywheel.local", "yes");
INSERT INTO `wp_options` VALUES("1509", "bookly_email_sender_name", "Matriarchy Build", "yes");
INSERT INTO `wp_options` VALUES("1510", "bookly_email_send_as", "html", "yes");
INSERT INTO `wp_options` VALUES("1511", "bookly_email_reply_to_customers", "1", "yes");
INSERT INTO `wp_options` VALUES("1512", "bookly_gen_time_slot_length", "15", "yes");
INSERT INTO `wp_options` VALUES("1513", "bookly_gen_service_duration_as_slot_length", "0", "yes");
INSERT INTO `wp_options` VALUES("1514", "bookly_gen_min_time_prior_booking", "0", "yes");
INSERT INTO `wp_options` VALUES("1515", "bookly_gen_min_time_prior_cancel", "0", "yes");
INSERT INTO `wp_options` VALUES("1516", "bookly_gen_max_days_for_booking", "365", "yes");
INSERT INTO `wp_options` VALUES("1517", "bookly_gen_use_client_time_zone", "0", "yes");
INSERT INTO `wp_options` VALUES("1518", "bookly_gen_allow_staff_edit_profile", "1", "yes");
INSERT INTO `wp_options` VALUES("1519", "bookly_gen_link_assets_method", "enqueue", "yes");
INSERT INTO `wp_options` VALUES("1520", "bookly_gen_collect_stats", "0", "yes");
INSERT INTO `wp_options` VALUES("1521", "bookly_gen_show_powered_by", "0", "yes");
INSERT INTO `wp_options` VALUES("1522", "bookly_gen_prevent_caching", "1", "yes");
INSERT INTO `wp_options` VALUES("1523", "bookly_gen_prevent_session_locking", "0", "yes");
INSERT INTO `wp_options` VALUES("1524", "bookly_gen_badge_consider_news", "1", "yes");
INSERT INTO `wp_options` VALUES("1525", "bookly_url_approve_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1526", "bookly_url_approve_denied_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1527", "bookly_url_cancel_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1528", "bookly_url_cancel_denied_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1529", "bookly_url_reject_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1530", "bookly_url_reject_denied_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1531", "bookly_sms_administrator_phone", "", "yes");
INSERT INTO `wp_options` VALUES("1532", "bookly_sms_undelivered_count", "0", "yes");
INSERT INTO `wp_options` VALUES("1533", "bookly_cloud_account_products", "", "yes");
INSERT INTO `wp_options` VALUES("1534", "bookly_cloud_auto_recharge_end_at", "", "yes");
INSERT INTO `wp_options` VALUES("1535", "bookly_cloud_auto_recharge_end_at_ts", "0", "yes");
INSERT INTO `wp_options` VALUES("1536", "bookly_cloud_auto_recharge_gateway", "", "yes");
INSERT INTO `wp_options` VALUES("1537", "bookly_cloud_badge_consider_sms", "1", "yes");
INSERT INTO `wp_options` VALUES("1538", "bookly_cloud_notify_low_balance", "1", "yes");
INSERT INTO `wp_options` VALUES("1539", "bookly_cloud_promotions", "a:1:{s:12:\"registration\";a:3:{s:2:\"id\";i:1;s:6:\"amount\";i:5;s:5:\"texts\";a:3:{s:4:\"info\";s:159:\"Register your <strong>Bookly Cloud account</strong> and get <strong>$5 Welcome Bonus</strong> to easily start using <strong>SMS Notifications</strong> feature!\";s:4:\"form\";s:66:\"You will get <strong>$5 welcome bonus</strong> after registration.\";s:6:\"button\";s:0:\"\";}}}", "yes");
INSERT INTO `wp_options` VALUES("1540", "bookly_cloud_renew_auto_recharge_notice_hide_until", "-1", "yes");
INSERT INTO `wp_options` VALUES("1541", "bookly_cloud_stripe_addition", "0", "yes");
INSERT INTO `wp_options` VALUES("1542", "bookly_cloud_stripe_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("1543", "bookly_cloud_stripe_increase", "0", "yes");
INSERT INTO `wp_options` VALUES("1544", "bookly_cloud_stripe_timeout", "0", "yes");
INSERT INTO `wp_options` VALUES("1545", "bookly_cloud_token", "", "yes");
INSERT INTO `wp_options` VALUES("1546", "bookly_cloud_zapier_api_key", "", "yes");
INSERT INTO `wp_options` VALUES("1547", "bookly_bh_monday_start", "08:00:00", "yes");
INSERT INTO `wp_options` VALUES("1548", "bookly_bh_monday_end", "18:00:00", "yes");
INSERT INTO `wp_options` VALUES("1549", "bookly_bh_tuesday_start", "08:00:00", "yes");
INSERT INTO `wp_options` VALUES("1550", "bookly_bh_tuesday_end", "18:00:00", "yes");
INSERT INTO `wp_options` VALUES("1551", "bookly_bh_wednesday_start", "08:00:00", "yes");
INSERT INTO `wp_options` VALUES("1552", "bookly_bh_wednesday_end", "18:00:00", "yes");
INSERT INTO `wp_options` VALUES("1553", "bookly_bh_thursday_end", "18:00:00", "yes");
INSERT INTO `wp_options` VALUES("1554", "bookly_bh_thursday_start", "08:00:00", "yes");
INSERT INTO `wp_options` VALUES("1555", "bookly_bh_friday_start", "08:00:00", "yes");
INSERT INTO `wp_options` VALUES("1556", "bookly_bh_friday_end", "18:00:00", "yes");
INSERT INTO `wp_options` VALUES("1557", "bookly_bh_saturday_start", "", "yes");
INSERT INTO `wp_options` VALUES("1558", "bookly_bh_saturday_end", "", "yes");
INSERT INTO `wp_options` VALUES("1559", "bookly_bh_sunday_start", "", "yes");
INSERT INTO `wp_options` VALUES("1560", "bookly_bh_sunday_end", "", "yes");
INSERT INTO `wp_options` VALUES("1561", "bookly_pmt_currency", "USD", "yes");
INSERT INTO `wp_options` VALUES("1562", "bookly_pmt_price_format", "{symbol}{sign}{price|2}", "yes");
INSERT INTO `wp_options` VALUES("1563", "bookly_pmt_order", "", "yes");
INSERT INTO `wp_options` VALUES("1564", "bookly_pmt_local", "0", "yes");
INSERT INTO `wp_options` VALUES("1565", "bookly_ntf_processing_interval", "2", "yes");
INSERT INTO `wp_options` VALUES("1566", "bookly_сa_count", "0", "yes");
INSERT INTO `wp_options` VALUES("1567", "bookly_logs_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("1568", "bookly_appointment_status_pending_color", "#1e73be", "yes");
INSERT INTO `wp_options` VALUES("1569", "bookly_appointment_status_approved_color", "#81d742", "yes");
INSERT INTO `wp_options` VALUES("1570", "bookly_appointment_status_cancelled_color", "#eeee22", "yes");
INSERT INTO `wp_options` VALUES("1571", "bookly_appointment_status_rejected_color", "#dd3333", "yes");
INSERT INTO `wp_options` VALUES("1572", "bookly_appointment_status_mixed_color", "#8224e3", "yes");
INSERT INTO `wp_options` VALUES("1573", "bookly_appointment_default_status", "approved", "yes");
INSERT INTO `wp_options` VALUES("1574", "bookly_appointment_cancel_action", "cancel", "yes");
INSERT INTO `wp_options` VALUES("1576", "bookly_cloud_products", "a:3:{i:0;a:6:{s:2:\"id\";s:3:\"sms\";s:8:\"icon_url\";s:41:\"https://i.bookly.info/cloud/sms_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:17:\"SMS Notifications\";s:5:\"price\";s:13:\"Pay as you go\";s:11:\"description\";s:464:\"<p>With <strong>SMS Notifications</strong> service you will keep your customers and staff members informed about their bookings, reduce “no shows” and empty booking slots. The service offers a wide range of codes which you can use to <a href=\"https://support.booking-wp-plugin.com/hc/en-us/articles/212411309\" target=\"_blank\">personalize</a> your text messages.</p><p>Top up your balance with one of the standard amounts and never lose your bookings again.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:10:\"SMS Prices\";s:10:\"info-title\";s:10:\"SMS Prices\";}}i:1;a:6:{s:2:\"id\";s:6:\"stripe\";s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/stripe_96x96.png\";s:7:\"version\";s:4:\"18.6\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:15:\"Stripe Payments\";s:5:\"price\";s:39:\"0.9% <small>per-transaction fee</small>\";s:11:\"description\";s:356:\"<p>With <strong>Stripe Payments</strong> activated, you can integrate <a href=\"https://stripe.com/\" target=\"_blank\">Stripe</a> payment gateway into your Bookly booking form to process credit card payments online.</p><p>Click <strong>Get started</strong> button to connect Bookly to your Stripe account and let customers instantly pay for your services.</p>\";s:9:\"action-on\";s:11:\"Get started\";s:10:\"action-off\";s:7:\"Disable\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:5:\"Setup\";}}i:2;a:7:{s:2:\"id\";s:6:\"zapier\";s:8:\"icon_url\";s:44:\"https://i.bookly.info/cloud/zapier-96x96.png\";s:7:\"version\";s:4:\"18.7\";s:6:\"rating\";s:3:\"5.0\";s:6:\"button\";b:1;s:5:\"texts\";a:8:{s:5:\"title\";s:6:\"Zapier\";s:5:\"price\";s:22:\"Your subscription plan\";s:11:\"description\";s:704:\"<p><strong><a href=\"https://zapier.com/\" target=\"_blank\">Zapier</a></strong> allows you to automatically trigger actions in your favorite cloud apps for certain events inside of Bookly: when new bookings are made and updated, and new customers are created.</p>\n<p>You can try <strong>Zapier integration</strong> for free during 7 days to learn more and discover how it can work for you. After the trial period expires, you will be charged for the price of the selected plan.</p>\n<p>Choose your subscription plan, click <strong>Start 7-day Trial</strong> or <strong>Get started</strong> button to set up the connection between Bookly and Zapier, and create individual workflows to perform automations.</p>\";s:9:\"action-on\";s:17:\"Start 7-day Trial\";s:10:\"action-off\";s:19:\"Cancel subscription\";s:20:\"action-revert-cancel\";s:22:\"I want to keep my plan\";s:11:\"info-button\";s:9:\"More info\";s:10:\"info-title\";s:18:\"Zapier Integration\";}s:6:\"prices\";a:6:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:7:\"caption\";s:79:\"$24<sup>.99</sup> per month<br/><small class=\"text-muted\">200 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:1;a:3:{s:2:\"id\";s:1:\"2\";s:7:\"caption\";s:79:\"$59<sup>.99</sup> per month<br/><small class=\"text-muted\">500 Tasks /mo</small>\";s:4:\"tags\";a:1:{i:0;s:10:\"best_offer\";}}i:2;a:3:{s:2:\"id\";s:1:\"3\";s:7:\"caption\";s:82:\"$124<sup>.99</sup> per month<br/><small class=\"text-muted\">1,100 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:3;a:3:{s:2:\"id\";s:1:\"4\";s:7:\"caption\";s:82:\"$249<sup>.99</sup> per month<br/><small class=\"text-muted\">2,300 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:4;a:3:{s:2:\"id\";s:1:\"5\";s:7:\"caption\";s:83:\"$999<sup>.99</sup> per month<br/><small class=\"text-muted\">12,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}i:5;a:3:{s:2:\"id\";s:1:\"6\";s:7:\"caption\";s:85:\"$1,499<sup>.99</sup> per month<br/><small class=\"text-muted\">20,000 Tasks /mo</small>\";s:4:\"tags\";a:0:{}}}}}", "yes");
INSERT INTO `wp_options` VALUES("1577", "bookly_pro_data_loaded", "1", "yes");
INSERT INTO `wp_options` VALUES("1578", "bookly_pro_db_version", "4.5", "yes");
INSERT INTO `wp_options` VALUES("1579", "bookly_pro_installation_time", "1640738030", "yes");
INSERT INTO `wp_options` VALUES("1580", "bookly_pro_envato_purchase_code", "166ce8e0-c6af-426c-8813-4b278b32ca82", "yes");
INSERT INTO `wp_options` VALUES("1581", "bookly_pro_grace_start", "1645922030", "yes");
INSERT INTO `wp_options` VALUES("1582", "bookly_app_show_address", "0", "yes");
INSERT INTO `wp_options` VALUES("1583", "bookly_app_show_birthday", "0", "yes");
INSERT INTO `wp_options` VALUES("1584", "bookly_app_show_facebook_login_button", "0", "yes");
INSERT INTO `wp_options` VALUES("1585", "bookly_api_server_error_time", "0", "yes");
INSERT INTO `wp_options` VALUES("1586", "bookly_gc_client_id", "", "yes");
INSERT INTO `wp_options` VALUES("1587", "bookly_gc_client_secret", "", "yes");
INSERT INTO `wp_options` VALUES("1588", "bookly_gc_event_title", "{service_name}", "yes");
INSERT INTO `wp_options` VALUES("1589", "bookly_gc_sync_mode", "1.5-way", "yes");
INSERT INTO `wp_options` VALUES("1590", "bookly_gc_limit_events", "50", "yes");
INSERT INTO `wp_options` VALUES("1591", "bookly_gc_event_description", "{#each participants as participant}Name: {participant.client_name}\nEmail: {participant.client_email}\nPhone: {participant.client_phone}\n{/each}", "yes");
INSERT INTO `wp_options` VALUES("1592", "bookly_pr_show_time", "1648514030", "yes");
INSERT INTO `wp_options` VALUES("1593", "bookly_pr_data", "a:3:{i:0;s:180:\"SW1wb3J0YW50ITxici8+SXQgbG9va3MgbGlrZSB5b3UgYXJlIHVzaW5nIGFuIGlsbGVnYWwgY29weSBvZiBCb29rbHkgUHJvLiBBbmQgaXQgbWF5IGNvbnRhaW4gYSBtYWxpY2lvdXMgY29kZSwgYSB0cm9qYW4gb3IgYSBiYWNrZG9vci4=\";i:1;s:160:\"Q29uc2lkZXIgc3dpdGNoaW5nIHRvIHRoZSBsZWdhbCBjb3B5IG9mIEJvb2tseSBQcm8gdGhhdCBpbmNsdWRlcyBhbGwgZmVhdHVyZXMsIGxpZmV0aW1lIGZyZWUgdXBkYXRlcywgYW5kIDI0Lzcgc3VwcG9ydC4=\";i:2;s:304:\"WW91IGNhbiBidXkgYSBsZWdhbCBjb3B5IG9uIG91ciB3ZWJzaXRlIDxhIGhyZWY9Imh0dHBzOi8vd3d3LmJvb2tpbmctd3AtcGx1Z2luLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnd3dy5ib29raW5nLXdwLXBsdWdpbi5jb208L2E+LCBvciBjb250YWN0IHVzIGF0IDxhIGhyZWY9Im1haWx0bzpzdXBwb3J0QGJvb2tseS5pbmZvIj5zdXBwb3J0QGJvb2tseS5pbmZvPC9hPiBmb3IgYW55IGFzc2lzdGFuY2Uu\";}", "yes");
INSERT INTO `wp_options` VALUES("1594", "bookly_grace_notifications", "a:3:{s:6:\"bookly\";s:1:\"0\";s:7:\"add-ons\";s:1:\"0\";s:4:\"sent\";s:1:\"0\";}", "yes");
INSERT INTO `wp_options` VALUES("1595", "bookly_save_email_logs", "1", "yes");
INSERT INTO `wp_options` VALUES("1596", "bookly_app_show_time_zone_switcher", "0", "yes");
INSERT INTO `wp_options` VALUES("1597", "bookly_app_show_tips", "0", "yes");
INSERT INTO `wp_options` VALUES("1598", "bookly_l10n_label_tips", "Tips", "yes");
INSERT INTO `wp_options` VALUES("1599", "bookly_l10n_button_apply_tips", "Apply", "yes");
INSERT INTO `wp_options` VALUES("1600", "bookly_l10n_button_applied_tips", "Applied", "yes");
INSERT INTO `wp_options` VALUES("1601", "bookly_l10n_tips_error", "Incorrect value", "yes");
INSERT INTO `wp_options` VALUES("1602", "bookly_l10n_label_pay_paypal", "I will pay now with PayPal", "yes");
INSERT INTO `wp_options` VALUES("1603", "bookly_url_cancel_confirm_page_url", "http://matriarchy-build.local", "yes");
INSERT INTO `wp_options` VALUES("1604", "bookly_url_final_step_url", "", "yes");
INSERT INTO `wp_options` VALUES("1605", "bookly_appointments_main_value", "provider", "yes");
INSERT INTO `wp_options` VALUES("1606", "bookly_appointments_displayed_time_slots", "all", "yes");
INSERT INTO `wp_options` VALUES("1607", "bookly_appointments_time_delimiter", "0", "yes");
INSERT INTO `wp_options` VALUES("1608", "bookly_cst_address_show_fields", "a:7:{s:7:\"country\";a:1:{s:4:\"show\";i:1;}s:5:\"state\";a:1:{s:4:\"show\";i:1;}s:8:\"postcode\";a:1:{s:4:\"show\";i:1;}s:4:\"city\";a:1:{s:4:\"show\";i:1;}s:6:\"street\";a:1:{s:4:\"show\";i:1;}s:13:\"street_number\";a:1:{s:4:\"show\";i:1;}s:18:\"additional_address\";a:1:{s:4:\"show\";i:1;}}", "yes");
INSERT INTO `wp_options` VALUES("1609", "bookly_cst_limit_statuses", "a:1:{i:0;s:10:\"waitlisted\";}", "yes");
INSERT INTO `wp_options` VALUES("1610", "bookly_cst_new_account_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("1611", "bookly_l10n_cst_address_template", "{#if country}{country}, {/if}{#if state}{state}, {/if}{#if postcode}{postcode}, {/if}{#if city}{city}, {/if}{#if street}{street} {/if}{#if street_number}{street_number} {/if}{#if additional_address}{additional_address}{/if}", "yes");
INSERT INTO `wp_options` VALUES("1612", "bookly_paypal_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("1613", "bookly_paypal_sandbox", "0", "yes");
INSERT INTO `wp_options` VALUES("1614", "bookly_paypal_api_password", "", "yes");
INSERT INTO `wp_options` VALUES("1615", "bookly_paypal_api_signature", "", "yes");
INSERT INTO `wp_options` VALUES("1616", "bookly_paypal_api_username", "", "yes");
INSERT INTO `wp_options` VALUES("1617", "bookly_paypal_id", "", "yes");
INSERT INTO `wp_options` VALUES("1618", "bookly_paypal_increase", "0", "yes");
INSERT INTO `wp_options` VALUES("1619", "bookly_paypal_addition", "0", "yes");
INSERT INTO `wp_options` VALUES("1620", "bookly_paypal_send_tax", "0", "yes");
INSERT INTO `wp_options` VALUES("1621", "bookly_paypal_timeout", "0", "yes");
INSERT INTO `wp_options` VALUES("1622", "bookly_l10n_info_payment_step_several_apps", "Please tell us how you would like to pay: ", "yes");
INSERT INTO `wp_options` VALUES("1623", "bookly_l10n_info_payment_step_with_100percents_off_price", "You are not required to pay for the booked services, click Next to complete the booking process.", "yes");
INSERT INTO `wp_options` VALUES("1624", "bookly_l10n_info_payment_step_without_intersected_gateways", "No payment methods available for one or more staff. Please contact service provider.", "yes");
INSERT INTO `wp_options` VALUES("1625", "bookly_l10n_info_address", "Address", "yes");
INSERT INTO `wp_options` VALUES("1626", "bookly_l10n_label_country", "Country", "yes");
INSERT INTO `wp_options` VALUES("1627", "bookly_l10n_label_state", "State/Region", "yes");
INSERT INTO `wp_options` VALUES("1628", "bookly_l10n_label_postcode", "Postal Code", "yes");
INSERT INTO `wp_options` VALUES("1629", "bookly_l10n_label_city", "City", "yes");
INSERT INTO `wp_options` VALUES("1630", "bookly_l10n_label_street", "Street Address", "yes");
INSERT INTO `wp_options` VALUES("1631", "bookly_l10n_label_street_number", "Street Number", "yes");
INSERT INTO `wp_options` VALUES("1632", "bookly_l10n_label_additional_address", "Additional Address", "yes");
INSERT INTO `wp_options` VALUES("1633", "bookly_l10n_invalid_day", "Invalid day", "yes");
INSERT INTO `wp_options` VALUES("1634", "bookly_l10n_required_day", "Day is required", "yes");
INSERT INTO `wp_options` VALUES("1635", "bookly_l10n_required_month", "Month is required", "yes");
INSERT INTO `wp_options` VALUES("1636", "bookly_l10n_required_year", "Year is required", "yes");
INSERT INTO `wp_options` VALUES("1637", "bookly_l10n_required_country", "Country is required", "yes");
INSERT INTO `wp_options` VALUES("1638", "bookly_l10n_required_state", "State is required", "yes");
INSERT INTO `wp_options` VALUES("1639", "bookly_l10n_required_postcode", "Postcode is required", "yes");
INSERT INTO `wp_options` VALUES("1640", "bookly_l10n_required_city", "City is required", "yes");
INSERT INTO `wp_options` VALUES("1641", "bookly_l10n_required_street", "Street is required", "yes");
INSERT INTO `wp_options` VALUES("1642", "bookly_l10n_required_street_number", "Street number is required", "yes");
INSERT INTO `wp_options` VALUES("1643", "bookly_l10n_required_additional_address", "Additional address is required", "yes");
INSERT INTO `wp_options` VALUES("1644", "bookly_l10n_label_ccard_code", "Card Security Code", "yes");
INSERT INTO `wp_options` VALUES("1645", "bookly_l10n_label_ccard_expire", "Expiration Date", "yes");
INSERT INTO `wp_options` VALUES("1646", "bookly_l10n_label_ccard_number", "Credit Card Number", "yes");
INSERT INTO `wp_options` VALUES("1647", "bookly_l10n_label_birthday_day", "", "yes");
INSERT INTO `wp_options` VALUES("1648", "bookly_l10n_label_birthday_month", "Birthday", "yes");
INSERT INTO `wp_options` VALUES("1649", "bookly_l10n_label_birthday_year", "", "yes");
INSERT INTO `wp_options` VALUES("1650", "bookly_fb_app_id", "", "yes");
INSERT INTO `wp_options` VALUES("1651", "bookly_staff_new_account_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("1652", "bookly_wc_enabled", "1", "yes");
INSERT INTO `wp_options` VALUES("1653", "bookly_wc_product", "51", "yes");
INSERT INTO `wp_options` VALUES("1654", "bookly_l10n_wc_cart_info_name", "Appointment", "yes");
INSERT INTO `wp_options` VALUES("1655", "bookly_l10n_wc_cart_info_value", "Date: {appointment_date}\r\nTime: {appointment_time}\r\nService: {service_name}", "yes");
INSERT INTO `wp_options` VALUES("1656", "bookly_zoom_authentication", "jwt", "yes");
INSERT INTO `wp_options` VALUES("1657", "bookly_zoom_jwt_api_key", "", "yes");
INSERT INTO `wp_options` VALUES("1658", "bookly_zoom_jwt_api_secret", "", "yes");
INSERT INTO `wp_options` VALUES("1659", "bookly_zoom_oauth_client_id", "", "yes");
INSERT INTO `wp_options` VALUES("1660", "bookly_zoom_oauth_client_secret", "", "yes");
INSERT INTO `wp_options` VALUES("1661", "bookly_zoom_oauth_token", "", "yes");
INSERT INTO `wp_options` VALUES("1662", "bookly_cal_frontend_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("1664", "external_updates-bookly-addon-pro", "O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1641478653;s:14:\"checkedVersion\";s:3:\"4.5\";s:6:\"update\";O:8:\"stdClass\":10:{s:2:\"id\";i:0;s:4:\"slug\";s:16:\"bookly-addon-pro\";s:7:\"version\";s:3:\"4.5\";s:8:\"homepage\";N;s:6:\"tested\";s:5:\"5.8.2\";s:12:\"download_url\";s:196:\"https://api.booking-wp-plugin.com/1.1/plugins/bookly-addon-pro/download?purchase_code=166ce8e0-c6af-426c-8813-4b278b32ca82&site_url=http%3A//matriarchy-build.local&bookly=20.5&bookly-addon-pro=4.5\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:25:\"bookly-addon-pro/main.php\";s:12:\"translations\";a:0:{}s:5:\"icons\";O:8:\"stdClass\":1:{s:2:\"1x\";s:63:\"https://s3.envato.com/files/276918414/bookly-icon-(1)%20(3).png\";}}}", "no");
INSERT INTO `wp_options` VALUES("1665", "_site_transient_bookly_update_plugins", "a:1:{i:0;b:0;}", "no");
INSERT INTO `wp_options` VALUES("1667", "action_scheduler_migration_status", "complete", "yes");
INSERT INTO `wp_options` VALUES("1675", "bookly_customer_cabinet_data_loaded", "1", "yes");
INSERT INTO `wp_options` VALUES("1676", "bookly_customer_cabinet_db_version", "4.2", "yes");
INSERT INTO `wp_options` VALUES("1677", "bookly_customer_cabinet_installation_time", "1640738319", "yes");
INSERT INTO `wp_options` VALUES("1678", "bookly_customer_cabinet_envato_purchase_code", "7a945cbd-31f4-44ac-8564-c466898189cd", "yes");
INSERT INTO `wp_options` VALUES("1679", "bookly_customer_cabinet_grace_start", "1645922319", "yes");
INSERT INTO `wp_options` VALUES("1681", "external_updates-bookly-addon-customer-cabinet", "O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1641478653;s:14:\"checkedVersion\";s:3:\"4.2\";s:6:\"update\";O:8:\"stdClass\":10:{s:2:\"id\";i:0;s:4:\"slug\";s:29:\"bookly-addon-customer-cabinet\";s:7:\"version\";s:3:\"4.2\";s:8:\"homepage\";N;s:6:\"tested\";s:5:\"5.8.2\";s:12:\"download_url\";s:209:\"https://api.booking-wp-plugin.com/1.1/plugins/bookly-addon-customer-cabinet/download?purchase_code=7a945cbd-31f4-44ac-8564-c466898189cd&site_url=http%3A//matriarchy-build.local&bookly=20.5&bookly-addon-pro=4.5\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:38:\"bookly-addon-customer-cabinet/main.php\";s:12:\"translations\";a:0:{}s:5:\"icons\";O:8:\"stdClass\":1:{s:2:\"1x\";s:59:\"https://s3.envato.com/files/257314653/19customercabinet.jpg\";}}}", "no");
INSERT INTO `wp_options` VALUES("1685", "bookly_staff_cabinet_data_loaded", "1", "yes");
INSERT INTO `wp_options` VALUES("1686", "bookly_staff_cabinet_db_version", "4.1", "yes");
INSERT INTO `wp_options` VALUES("1687", "bookly_staff_cabinet_installation_time", "1640738375", "yes");
INSERT INTO `wp_options` VALUES("1688", "bookly_staff_cabinet_envato_purchase_code", "4c87a064-e25e-48cd-b3d0-6ee7cfcaf362", "yes");
INSERT INTO `wp_options` VALUES("1689", "bookly_staff_cabinet_grace_start", "1645922375", "yes");
INSERT INTO `wp_options` VALUES("1691", "external_updates-bookly-addon-staff-cabinet", "O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1641478654;s:14:\"checkedVersion\";s:3:\"4.1\";s:6:\"update\";O:8:\"stdClass\":10:{s:2:\"id\";i:0;s:4:\"slug\";s:26:\"bookly-addon-staff-cabinet\";s:7:\"version\";s:3:\"4.1\";s:8:\"homepage\";N;s:6:\"tested\";s:5:\"5.8.2\";s:12:\"download_url\";s:206:\"https://api.booking-wp-plugin.com/1.1/plugins/bookly-addon-staff-cabinet/download?purchase_code=4c87a064-e25e-48cd-b3d0-6ee7cfcaf362&site_url=http%3A//matriarchy-build.local&bookly=20.5&bookly-addon-pro=4.5\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:35:\"bookly-addon-staff-cabinet/main.php\";s:12:\"translations\";a:0:{}s:5:\"icons\";O:8:\"stdClass\":1:{s:2:\"1x\";s:56:\"https://s3.envato.com/files/257314313/12staffcabinet.png\";}}}", "no");
INSERT INTO `wp_options` VALUES("1694", "bookly_stripe_data_loaded", "1", "yes");
INSERT INTO `wp_options` VALUES("1695", "bookly_stripe_db_version", "3.4", "yes");
INSERT INTO `wp_options` VALUES("1696", "bookly_stripe_installation_time", "1640738395", "yes");
INSERT INTO `wp_options` VALUES("1697", "bookly_stripe_envato_purchase_code", "4d9fddb8-bfec-4c4e-9b7c-007afb3cd5b1", "yes");
INSERT INTO `wp_options` VALUES("1698", "bookly_stripe_grace_start", "1645922395", "yes");
INSERT INTO `wp_options` VALUES("1699", "bookly_stripe_enabled", "1", "yes");
INSERT INTO `wp_options` VALUES("1700", "bookly_stripe_publishable_key", "pk_test_51K1hi7FpukNBissoWfNpRrEA0oPDTIasw2jJqeuKzH9hFupn3zs4s5JaucEoZD5739GSiacbZN07efFOXSP5u33o00HYzMe6tv", "yes");
INSERT INTO `wp_options` VALUES("1701", "bookly_stripe_secret_key", "sk_test_51K1hi7FpukNBissopfVTcQBtNKxGzfAPvDtdk2iQbB4FklAttSCltuJkvHUK9oOoVV1yUopfrb8vEfrGK06FaR1300NO1YtOai", "yes");
INSERT INTO `wp_options` VALUES("1702", "bookly_stripe_timeout", "0", "yes");
INSERT INTO `wp_options` VALUES("1703", "bookly_stripe_increase", "0", "yes");
INSERT INTO `wp_options` VALUES("1704", "bookly_stripe_addition", "0", "yes");
INSERT INTO `wp_options` VALUES("1705", "bookly_l10n_label_pay_stripe", "I will pay now with Credit Card", "yes");
INSERT INTO `wp_options` VALUES("1707", "external_updates-bookly-addon-stripe", "O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1641478655;s:14:\"checkedVersion\";s:3:\"3.4\";s:6:\"update\";O:8:\"stdClass\":10:{s:2:\"id\";i:0;s:4:\"slug\";s:19:\"bookly-addon-stripe\";s:7:\"version\";s:3:\"3.4\";s:8:\"homepage\";N;s:6:\"tested\";s:5:\"5.8.2\";s:12:\"download_url\";s:199:\"https://api.booking-wp-plugin.com/1.1/plugins/bookly-addon-stripe/download?purchase_code=4d9fddb8-bfec-4c4e-9b7c-007afb3cd5b1&site_url=http%3A//matriarchy-build.local&bookly=20.5&bookly-addon-pro=4.5\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:28:\"bookly-addon-stripe/main.php\";s:12:\"translations\";a:0:{}s:5:\"icons\";O:8:\"stdClass\":1:{s:2:\"1x\";s:49:\"https://s3.envato.com/files/257314285/9stripe.jpg\";}}}", "no");
INSERT INTO `wp_options` VALUES("1757", "bookly_app_service_duration_with_price", "NaN", "yes");
INSERT INTO `wp_options` VALUES("1800", "_transient_timeout__woocommerce_helper_updates", "1641515334", "no");
INSERT INTO `wp_options` VALUES("1801", "_transient__woocommerce_helper_updates", "a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1641472134;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}", "no");
INSERT INTO `wp_options` VALUES("1806", "_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89", "1642076940", "no");
INSERT INTO `wp_options` VALUES("1807", "_site_transient_php_check_472f71d2a071d463a95f84346288dc89", "a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}", "no");
INSERT INTO `wp_options` VALUES("1825", "_site_transient_timeout_browser_8ffec38781748c07c6d2e71b451e2e28", "1642079731", "no");
INSERT INTO `wp_options` VALUES("1826", "_site_transient_browser_8ffec38781748c07c6d2e71b451e2e28", "a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}", "no");
INSERT INTO `wp_options` VALUES("1827", "_transient_timeout_wcstripe_account_data_test", "1641482132", "no");
INSERT INTO `wp_options` VALUES("1828", "_transient_wcstripe_account_data_test", "O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"acct_1K1hi7FpukNBisso\";s:6:\"object\";s:7:\"account\";s:12:\"capabilities\";O:8:\"stdClass\":11:{s:19:\"acss_debit_payments\";s:6:\"active\";s:26:\"afterpay_clearpay_payments\";s:6:\"active\";s:19:\"bancontact_payments\";s:6:\"active\";s:13:\"card_payments\";s:6:\"active\";s:12:\"eps_payments\";s:6:\"active\";s:16:\"giropay_payments\";s:6:\"active\";s:14:\"ideal_payments\";s:6:\"active\";s:12:\"p24_payments\";s:6:\"active\";s:19:\"sepa_debit_payments\";s:6:\"active\";s:15:\"sofort_payments\";s:6:\"active\";s:9:\"transfers\";s:6:\"active\";}s:15:\"charges_enabled\";b:1;s:7:\"country\";s:2:\"US\";s:16:\"default_currency\";s:3:\"usd\";s:17:\"details_submitted\";b:1;s:15:\"payouts_enabled\";b:0;s:8:\"settings\";O:8:\"stdClass\":8:{s:19:\"bacs_debit_payments\";O:8:\"stdClass\":0:{}s:8:\"branding\";O:8:\"stdClass\":4:{s:4:\"icon\";N;s:4:\"logo\";N;s:13:\"primary_color\";N;s:15:\"secondary_color\";N;}s:12:\"card_issuing\";O:8:\"stdClass\":1:{s:14:\"tos_acceptance\";O:8:\"stdClass\":2:{s:4:\"date\";N;s:2:\"ip\";N;}}s:13:\"card_payments\";O:8:\"stdClass\":1:{s:27:\"statement_descriptor_prefix\";s:6:\"YRDIGI\";}s:9:\"dashboard\";O:8:\"stdClass\":2:{s:12:\"display_name\";s:16:\"Matriarchy Build\";s:8:\"timezone\";s:16:\"America/New_York\";}s:8:\"payments\";O:8:\"stdClass\":3:{s:20:\"statement_descriptor\";s:19:\"YELLOWROCKETDIGITAL\";s:25:\"statement_descriptor_kana\";N;s:26:\"statement_descriptor_kanji\";N;}s:7:\"payouts\";O:8:\"stdClass\":3:{s:23:\"debit_negative_balances\";b:1;s:8:\"schedule\";O:8:\"stdClass\":2:{s:10:\"delay_days\";i:2;s:8:\"interval\";s:5:\"daily\";}s:20:\"statement_descriptor\";N;}s:19:\"sepa_debit_payments\";O:8:\"stdClass\":0:{}}s:4:\"type\";s:8:\"standard\";}", "no");
INSERT INTO `wp_options` VALUES("1831", "_transient_timeout_wc_shipping_method_count_legacy", "1644067060", "no");
INSERT INTO `wp_options` VALUES("1832", "_transient_wc_shipping_method_count_legacy", "a:2:{s:7:\"version\";s:10:\"1636829226\";s:5:\"value\";i:0;}", "no");
INSERT INTO `wp_options` VALUES("1833", "_transient_timeout_orders-all-statuses", "1642079874", "no");
INSERT INTO `wp_options` VALUES("1834", "_transient_orders-all-statuses", "a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("1837", "_transient_timeout_wc_onboarding_themes", "1641561475", "no");
INSERT INTO `wp_options` VALUES("1838", "_transient_wc_onboarding_themes", "a:1:{s:16:\"matriarchy-build\";a:6:{s:4:\"slug\";s:16:\"matriarchy-build\";s:5:\"title\";s:21:\"Matriarchy Build v0.1\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";s:79:\"http://matriarchy-build.local/wp-content/themes/matriarchy-build/screenshot.png\";s:23:\"has_woocommerce_support\";b:1;}}", "no");
INSERT INTO `wp_options` VALUES("1840", "_transient_timeout_wc_report_orders_stats_fc61b0d6369ba2f0f65bb96aed00029f", "1642079881", "no");
INSERT INTO `wp_options` VALUES("1841", "_transient_wc_report_orders_stats_fc61b0d6369ba2f0f65bb96aed00029f", "a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-01\";s:10:\"date_start\";s:19:\"2022-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-01-06 00:00:00\";s:8:\"date_end\";s:19:\"2022-01-06 08:17:55\";s:12:\"date_end_gmt\";s:19:\"2022-01-06 08:17:55\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}", "no");
INSERT INTO `wp_options` VALUES("1842", "_transient_timeout_wc_report_orders_stats_01a5f8f8523a9583fddeda8b31d5afd4", "1642079881", "no");
INSERT INTO `wp_options` VALUES("1843", "_transient_wc_report_orders_stats_01a5f8f8523a9583fddeda8b31d5afd4", "a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-01\";s:10:\"date_start\";s:19:\"2022-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-01-06 00:00:00\";s:8:\"date_end\";s:19:\"2022-01-06 08:17:55\";s:12:\"date_end_gmt\";s:19:\"2022-01-06 08:17:55\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}", "no");
INSERT INTO `wp_options` VALUES("1844", "_transient_timeout_wc_report_orders_stats_0647c69babadb7c6a180d1102db4d15c", "1642079882", "no");
INSERT INTO `wp_options` VALUES("1845", "_transient_wc_report_orders_stats_0647c69babadb7c6a180d1102db4d15c", "a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-01\";s:10:\"date_start\";s:19:\"2022-01-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-01-05 00:00:00\";s:8:\"date_end\";s:19:\"2022-01-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-01-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}", "no");
INSERT INTO `wp_options` VALUES("1846", "_transient_timeout_wc_report_orders_stats_e45cf24ef17602ee31304d693fc521fd", "1642079882", "no");
INSERT INTO `wp_options` VALUES("1847", "_transient_wc_report_orders_stats_e45cf24ef17602ee31304d693fc521fd", "a:2:{s:7:\"version\";s:10:\"1636829043\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-01\";s:10:\"date_start\";s:19:\"2022-01-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-01-05 00:00:00\";s:8:\"date_end\";s:19:\"2022-01-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-01-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}", "no");
INSERT INTO `wp_options` VALUES("1848", "woocommerce_task_list_tracked_completed_tasks", "a:2:{i:0;s:8:\"products\";i:1;s:8:\"payments\";}", "yes");
INSERT INTO `wp_options` VALUES("1849", "_transient_timeout_wc_recommended_payment_plugins", "1641476004", "no");
INSERT INTO `wp_options` VALUES("1850", "_transient_wc_recommended_payment_plugins", "a:2:{s:15:\"recommendations\";a:0:{}s:7:\"updated\";i:1641475104;}", "no");
INSERT INTO `wp_options` VALUES("1882", "_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a", "1641489441", "no");
INSERT INTO `wp_options` VALUES("1883", "_site_transient_poptags_40cd750bba9870f18aada2478b24840a", "O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5314;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4776;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2741;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2611;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2023;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1877;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1866;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1546;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1537;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1515;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1507;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1503;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1482;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1329;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1311;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1302;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1246;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1167;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1136;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1081;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:985;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:945;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:926;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:922;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:889;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:850;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:831;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:830;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:825;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:815;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:771;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:763;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:755;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:742;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:735;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:728;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:720;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:700;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:691;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:682;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:670;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:668;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:668;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:667;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:667;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:658;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:609;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:605;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:598;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:594;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:588;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:585;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:585;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:578;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:572;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:572;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:570;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:566;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:562;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:562;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:553;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:544;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:536;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:525;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:520;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:518;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:516;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:504;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:503;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:498;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:492;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:490;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:489;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:480;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:479;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:475;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:456;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:450;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:450;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:443;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:438;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:431;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:428;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:416;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:415;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:409;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:405;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:401;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:396;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:392;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:392;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:390;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:385;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:385;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:382;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:376;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:372;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:365;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:365;}}", "no");
INSERT INTO `wp_options` VALUES("1884", "_transient_timeout__woocommerce_helper_subscriptions", "1641479553", "no");
INSERT INTO `wp_options` VALUES("1885", "_transient__woocommerce_helper_subscriptions", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("1886", "_site_transient_timeout_theme_roots", "1641480453", "no");
INSERT INTO `wp_options` VALUES("1887", "_site_transient_theme_roots", "a:1:{s:16:\"matriarchy-build\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("1889", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641478661;s:8:\"response\";a:2:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.0.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"6.0.0\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.6.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=2419673\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=2419673\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=2419673\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=2419673\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:51:\"bookly-responsive-appointment-booking-tool/main.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:56:\"w.org/plugins/bookly-responsive-appointment-booking-tool\";s:4:\"slug\";s:42:\"bookly-responsive-appointment-booking-tool\";s:6:\"plugin\";s:51:\"bookly-responsive-appointment-booking-tool/main.php\";s:11:\"new_version\";s:4:\"20.5\";s:3:\"url\";s:73:\"https://wordpress.org/plugins/bookly-responsive-appointment-booking-tool/\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/plugin/bookly-responsive-appointment-booking-tool.20.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:95:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/icon-128x128.png?rev=1005009\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:98:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/banner-1544x500.png?rev=1726755\";s:2:\"1x\";s:97:\"https://ps.w.org/bookly-responsive-appointment-booking-tool/assets/banner-772x250.png?rev=1726755\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2605836\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2605835\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:51:\"bookly-responsive-appointment-booking-tool/main.php\";s:4:\"20.5\";s:38:\"bookly-addon-customer-cabinet/main.php\";s:3:\"4.2\";s:25:\"bookly-addon-pro/main.php\";s:3:\"4.5\";s:35:\"bookly-addon-staff-cabinet/main.php\";s:3:\"4.1\";s:28:\"bookly-addon-stripe/main.php\";s:3:\"3.4\";s:25:\"duplicator/duplicator.php\";s:5:\"1.4.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"5.9.0\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"5.9.0\";}}", "no");
INSERT INTO `wp_options` VALUES("1890", "duplicator_settings", "a:17:{s:7:\"version\";s:5:\"1.4.3\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("1891", "duplicator_version_plugin", "1.4.3", "yes");
INSERT INTO `wp_options` VALUES("1892", "_transient_timeout_wc_upgrade_notice_6.0.0", "1641565062", "no");
INSERT INTO `wp_options` VALUES("1893", "_transient_wc_upgrade_notice_6.0.0", "", "no");
INSERT INTO `wp_options` VALUES("1895", "duplicator_ui_view_state", "a:2:{s:22:\"dup-pack-storage-panel\";s:1:\"1\";s:24:\"dup-pack-installer-panel\";s:1:\"1\";}", "yes");
INSERT INTO `wp_options` VALUES("1896", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-01-06 14:18:41\";s:7:\"Version\";s:5:\"1.4.3\";s:9:\"VersionWP\";s:5:\"5.8.1\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:24:\"20220106_matriarchybuild\";s:4:\"Hash\";s:35:\"322893abdbe4ad8b4850_20220106141841\";s:8:\"NameHash\";s:60:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:70:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:60:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":6:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":7:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:10:\"AddonSites\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2022-01-06 14:18:41\";s:7:\"Version\";s:5:\"1.4.3\";s:9:\"VersionWP\";s:5:\"5.8.1\";s:9:\"VersionDB\";s:6:\"8.0.16\";s:10:\"VersionPHP\";s:5:\"7.3.5\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:24:\"20220106_matriarchybuild\";s:4:\"Hash\";s:35:\"322893abdbe4ad8b4850_20220106141841\";s:8:\"NameHash\";s:60:\"20220106_matriarchybuild_322893abdbe4ad8b4850_20220106141841\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":13:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:13:\"OptsDBCharset\";s:0:\"\";s:15:\"OptsDBCollation\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":16:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:11:\"triggerList\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:69:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-admin\";i:1;s:79:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/uploads\";i:2;s:81:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/languages\";i:3;s:78:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content/themes\";i:4;s:72:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:60:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public\";i:1;s:71:\"/Users/darielledavis/Local Sites/matriarchy-build/app/public/wp-content\";}}s:9:\"Installer\";r:84;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:129;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("2", "3", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("24", "10", "_edit_lock", "1635249091:1");
INSERT INTO `wp_postmeta` VALUES("25", "10", "_wp_page_template", "page-full.php");
INSERT INTO `wp_postmeta` VALUES("32", "15", "_edit_lock", "1635335819:1");
INSERT INTO `wp_postmeta` VALUES("33", "15", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("39", "24", "_wp_attached_file", "woocommerce-placeholder.png");
INSERT INTO `wp_postmeta` VALUES("40", "24", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("48", "31", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("49", "31", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("50", "31", "_menu_item_object_id", "28");
INSERT INTO `wp_postmeta` VALUES("51", "31", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("52", "31", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("53", "31", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("54", "31", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("55", "31", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("57", "28", "_edit_lock", "1636829496:1");
INSERT INTO `wp_postmeta` VALUES("58", "28", "_wp_page_template", "page-full.php");
INSERT INTO `wp_postmeta` VALUES("59", "33", "_edit_lock", "1636855879:1");
INSERT INTO `wp_postmeta` VALUES("60", "34", "_edit_lock", "1636855873:1");
INSERT INTO `wp_postmeta` VALUES("61", "35", "_edit_lock", "1636855867:1");
INSERT INTO `wp_postmeta` VALUES("62", "36", "_edit_lock", "1636855856:1");
INSERT INTO `wp_postmeta` VALUES("63", "37", "_edit_lock", "1640742114:1");
INSERT INTO `wp_postmeta` VALUES("64", "38", "_edit_lock", "1636847837:1");
INSERT INTO `wp_postmeta` VALUES("65", "38", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("66", "37", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("67", "37", "company", "She Buildz Things");
INSERT INTO `wp_postmeta` VALUES("68", "37", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("69", "37", "trade", "Handywoman");
INSERT INTO `wp_postmeta` VALUES("70", "37", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("71", "37", "social", "https://instagram.com/shebuildzthings");
INSERT INTO `wp_postmeta` VALUES("72", "37", "_social", "field_61905157e1811");
INSERT INTO `wp_postmeta` VALUES("73", "36", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("74", "36", "company", "Jen Wears Many Hats");
INSERT INTO `wp_postmeta` VALUES("75", "36", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("76", "36", "trade", "DIYer / Handywoman");
INSERT INTO `wp_postmeta` VALUES("77", "36", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("78", "36", "social", "https://instagram.com/jenwearsmanyhats");
INSERT INTO `wp_postmeta` VALUES("79", "36", "_social", "field_61905157e1811");
INSERT INTO `wp_postmeta` VALUES("80", "35", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("81", "35", "company", "Guild Properties");
INSERT INTO `wp_postmeta` VALUES("82", "35", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("83", "35", "trade", "GC");
INSERT INTO `wp_postmeta` VALUES("84", "35", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("85", "35", "social", "https://instagram.com/guildproperties");
INSERT INTO `wp_postmeta` VALUES("86", "35", "_social", "field_61905157e1811");
INSERT INTO `wp_postmeta` VALUES("87", "34", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("88", "34", "company", "Trans Handymaam");
INSERT INTO `wp_postmeta` VALUES("89", "34", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("90", "34", "trade", "Handywoman");
INSERT INTO `wp_postmeta` VALUES("91", "34", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("92", "34", "social", "https://tiktok.com/@mercurystardust");
INSERT INTO `wp_postmeta` VALUES("93", "34", "_social", "field_61905157e1811");
INSERT INTO `wp_postmeta` VALUES("94", "33", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("95", "33", "company", "Handyma\'am");
INSERT INTO `wp_postmeta` VALUES("96", "33", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("97", "33", "trade", "Handywoman");
INSERT INTO `wp_postmeta` VALUES("98", "33", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("99", "33", "social", "https://instagram.com/handymaamnyc");
INSERT INTO `wp_postmeta` VALUES("100", "33", "_social", "field_61905157e1811");
INSERT INTO `wp_postmeta` VALUES("101", "42", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("102", "42", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("103", "42", "_menu_item_object_id", "37");
INSERT INTO `wp_postmeta` VALUES("104", "42", "_menu_item_object", "pro");
INSERT INTO `wp_postmeta` VALUES("105", "42", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("106", "42", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("107", "42", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("108", "42", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("109", "42", "_menu_item_orphaned", "1636848663");
INSERT INTO `wp_postmeta` VALUES("110", "43", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("111", "43", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("112", "43", "_menu_item_object_id", "36");
INSERT INTO `wp_postmeta` VALUES("113", "43", "_menu_item_object", "pro");
INSERT INTO `wp_postmeta` VALUES("114", "43", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("115", "43", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("116", "43", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("117", "43", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("118", "43", "_menu_item_orphaned", "1636848663");
INSERT INTO `wp_postmeta` VALUES("119", "44", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("120", "44", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("121", "44", "_menu_item_object_id", "35");
INSERT INTO `wp_postmeta` VALUES("122", "44", "_menu_item_object", "pro");
INSERT INTO `wp_postmeta` VALUES("123", "44", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("124", "44", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("125", "44", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("126", "44", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("127", "44", "_menu_item_orphaned", "1636848663");
INSERT INTO `wp_postmeta` VALUES("128", "45", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("129", "45", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("130", "45", "_menu_item_object_id", "34");
INSERT INTO `wp_postmeta` VALUES("131", "45", "_menu_item_object", "pro");
INSERT INTO `wp_postmeta` VALUES("132", "45", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("133", "45", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("134", "45", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("135", "45", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("136", "45", "_menu_item_orphaned", "1636848663");
INSERT INTO `wp_postmeta` VALUES("137", "46", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("138", "46", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("139", "46", "_menu_item_object_id", "33");
INSERT INTO `wp_postmeta` VALUES("140", "46", "_menu_item_object", "pro");
INSERT INTO `wp_postmeta` VALUES("141", "46", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("142", "46", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("143", "46", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("144", "46", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("145", "46", "_menu_item_orphaned", "1636848663");
INSERT INTO `wp_postmeta` VALUES("151", "49", "_menu_item_type", "custom");
INSERT INTO `wp_postmeta` VALUES("152", "49", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("153", "49", "_menu_item_object_id", "49");
INSERT INTO `wp_postmeta` VALUES("154", "49", "_menu_item_object", "custom");
INSERT INTO `wp_postmeta` VALUES("155", "49", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("156", "49", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("157", "49", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("158", "49", "_menu_item_url", "/pro");
INSERT INTO `wp_postmeta` VALUES("160", "31", "_wp_old_date", "2021-11-13");
INSERT INTO `wp_postmeta` VALUES("161", "51", "_edit_lock", "1638323143:1");
INSERT INTO `wp_postmeta` VALUES("162", "51", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("163", "51", "total_sales", "0");
INSERT INTO `wp_postmeta` VALUES("164", "51", "_tax_status", "taxable");
INSERT INTO `wp_postmeta` VALUES("165", "51", "_tax_class", "");
INSERT INTO `wp_postmeta` VALUES("166", "51", "_manage_stock", "no");
INSERT INTO `wp_postmeta` VALUES("167", "51", "_backorders", "no");
INSERT INTO `wp_postmeta` VALUES("168", "51", "_sold_individually", "no");
INSERT INTO `wp_postmeta` VALUES("169", "51", "_virtual", "no");
INSERT INTO `wp_postmeta` VALUES("170", "51", "_downloadable", "no");
INSERT INTO `wp_postmeta` VALUES("171", "51", "_download_limit", "-1");
INSERT INTO `wp_postmeta` VALUES("172", "51", "_download_expiry", "-1");
INSERT INTO `wp_postmeta` VALUES("173", "51", "_stock", NULL);
INSERT INTO `wp_postmeta` VALUES("174", "51", "_stock_status", "instock");
INSERT INTO `wp_postmeta` VALUES("175", "51", "_wc_average_rating", "0");
INSERT INTO `wp_postmeta` VALUES("176", "51", "_wc_review_count", "0");
INSERT INTO `wp_postmeta` VALUES("177", "51", "_product_attributes", "a:1:{s:8:\"duration\";a:6:{s:4:\"name\";s:8:\"Duration\";s:5:\"value\";s:23:\"30 minutes | 60 minutes\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}");
INSERT INTO `wp_postmeta` VALUES("178", "51", "_product_version", "5.9.0");
INSERT INTO `wp_postmeta` VALUES("179", "52", "_variation_description", "");
INSERT INTO `wp_postmeta` VALUES("180", "52", "total_sales", "0");
INSERT INTO `wp_postmeta` VALUES("181", "52", "_tax_status", "taxable");
INSERT INTO `wp_postmeta` VALUES("182", "52", "_tax_class", "parent");
INSERT INTO `wp_postmeta` VALUES("183", "52", "_manage_stock", "no");
INSERT INTO `wp_postmeta` VALUES("184", "52", "_backorders", "no");
INSERT INTO `wp_postmeta` VALUES("185", "52", "_sold_individually", "no");
INSERT INTO `wp_postmeta` VALUES("186", "52", "_virtual", "no");
INSERT INTO `wp_postmeta` VALUES("187", "52", "_downloadable", "no");
INSERT INTO `wp_postmeta` VALUES("188", "52", "_download_limit", "-1");
INSERT INTO `wp_postmeta` VALUES("189", "52", "_download_expiry", "-1");
INSERT INTO `wp_postmeta` VALUES("190", "52", "_stock", NULL);
INSERT INTO `wp_postmeta` VALUES("191", "52", "_stock_status", "instock");
INSERT INTO `wp_postmeta` VALUES("192", "52", "_wc_average_rating", "0");
INSERT INTO `wp_postmeta` VALUES("193", "52", "_wc_review_count", "0");
INSERT INTO `wp_postmeta` VALUES("194", "52", "attribute_duration", "30 minutes");
INSERT INTO `wp_postmeta` VALUES("195", "52", "_product_version", "5.9.0");
INSERT INTO `wp_postmeta` VALUES("196", "53", "_variation_description", "");
INSERT INTO `wp_postmeta` VALUES("197", "53", "total_sales", "0");
INSERT INTO `wp_postmeta` VALUES("198", "53", "_tax_status", "taxable");
INSERT INTO `wp_postmeta` VALUES("199", "53", "_tax_class", "parent");
INSERT INTO `wp_postmeta` VALUES("200", "53", "_manage_stock", "no");
INSERT INTO `wp_postmeta` VALUES("201", "53", "_backorders", "no");
INSERT INTO `wp_postmeta` VALUES("202", "53", "_sold_individually", "no");
INSERT INTO `wp_postmeta` VALUES("203", "53", "_virtual", "no");
INSERT INTO `wp_postmeta` VALUES("204", "53", "_downloadable", "no");
INSERT INTO `wp_postmeta` VALUES("205", "53", "_download_limit", "-1");
INSERT INTO `wp_postmeta` VALUES("206", "53", "_download_expiry", "-1");
INSERT INTO `wp_postmeta` VALUES("207", "53", "_stock", NULL);
INSERT INTO `wp_postmeta` VALUES("208", "53", "_stock_status", "instock");
INSERT INTO `wp_postmeta` VALUES("209", "53", "_wc_average_rating", "0");
INSERT INTO `wp_postmeta` VALUES("210", "53", "_wc_review_count", "0");
INSERT INTO `wp_postmeta` VALUES("211", "53", "attribute_duration", "60 minutes");
INSERT INTO `wp_postmeta` VALUES("212", "53", "_product_version", "5.9.0");
INSERT INTO `wp_postmeta` VALUES("213", "52", "_regular_price", "89.99");
INSERT INTO `wp_postmeta` VALUES("214", "52", "_thumbnail_id", "0");
INSERT INTO `wp_postmeta` VALUES("215", "52", "_price", "89.99");
INSERT INTO `wp_postmeta` VALUES("216", "53", "_regular_price", "153.99");
INSERT INTO `wp_postmeta` VALUES("217", "53", "_thumbnail_id", "0");
INSERT INTO `wp_postmeta` VALUES("218", "53", "_price", "153.99");
INSERT INTO `wp_postmeta` VALUES("219", "51", "_price", "89.99");
INSERT INTO `wp_postmeta` VALUES("220", "51", "_price", "153.99");
INSERT INTO `wp_postmeta` VALUES("233", "64", "_edit_lock", "1640740527:1");
INSERT INTO `wp_postmeta` VALUES("234", "64", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("235", "64", "company", "My Company Name");
INSERT INTO `wp_postmeta` VALUES("236", "64", "_company", "field_619050ede180f");
INSERT INTO `wp_postmeta` VALUES("237", "64", "trade", "Handywoman");
INSERT INTO `wp_postmeta` VALUES("238", "64", "_trade", "field_619050fde1810");
INSERT INTO `wp_postmeta` VALUES("239", "64", "social", "@myhandle");
INSERT INTO `wp_postmeta` VALUES("240", "64", "_social", "field_61905157e1811");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2021-10-18 04:20:15", "2021-10-18 04:20:15", "<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->", "Hello world!", "", "publish", "open", "open", "", "hello-world", "", "", "2021-10-18 04:20:15", "2021-10-18 04:20:15", "", "0", "http://matriarchy-build.local/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("3", "1", "2021-10-18 04:20:15", "2021-10-18 04:20:15", "<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://matriarchy-build.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->", "Privacy Policy", "", "draft", "closed", "open", "", "privacy-policy", "", "", "2021-10-18 04:20:15", "2021-10-18 04:20:15", "", "0", "http://matriarchy-build.local/?page_id=3", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2021-10-26 11:49:31", "2021-10-26 11:49:31", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2021-10-26 11:49:49", "2021-10-26 11:49:49", "", "0", "http://matriarchy-build.local/?page_id=10", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2021-10-26 11:49:31", "2021-10-26 11:49:31", "", "Home", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2021-10-26 11:49:31", "2021-10-26 11:49:31", "", "10", "http://matriarchy-build.local/?p=11", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_form\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "User Profile Fields", "user-profile-fields", "publish", "closed", "closed", "", "group_61793d84d9f40", "", "", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "", "0", "http://matriarchy-build.local/?post_type=acf-field-group&#038;p=15", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:8:\"consumer\";s:8:\"Consumer\";s:3:\"pro\";s:3:\"Pro\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}", "Account Type", "account_type", "publish", "closed", "closed", "", "field_61793e581e0c7", "", "", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "", "15", "http://matriarchy-build.local/?post_type=acf-field&p=16", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Industry", "industry", "publish", "closed", "closed", "", "field_61793e9e1e0c8", "", "", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "", "15", "http://matriarchy-build.local/?post_type=acf-field&p=17", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Location", "location", "publish", "closed", "closed", "", "field_61793eaa1e0c9", "", "", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "", "15", "http://matriarchy-build.local/?post_type=acf-field&p=18", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Instagram Handle", "instagram_handle", "publish", "closed", "closed", "", "field_61793eee1e0ca", "", "", "2021-10-27 11:59:17", "2021-10-27 11:59:17", "", "15", "http://matriarchy-build.local/?post_type=acf-field&p=19", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "woocommerce-placeholder", "", "inherit", "open", "closed", "", "woocommerce-placeholder", "", "", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "0", "http://matriarchy-build.local/wp-content/uploads/2021/11/woocommerce-placeholder.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "Shop", "", "publish", "closed", "closed", "", "shop", "", "", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "0", "http://matriarchy-build.local/shop/", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->", "Cart", "", "publish", "closed", "closed", "", "cart", "", "", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "0", "http://matriarchy-build.local/cart/", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("27", "1", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->", "Checkout", "", "publish", "closed", "closed", "", "checkout", "", "", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "", "0", "http://matriarchy-build.local/checkout/", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2021-11-13 18:44:00", "2021-11-13 18:44:00", "<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->", "My account", "", "publish", "closed", "closed", "", "my-account", "", "", "2021-11-13 18:48:43", "2021-11-13 18:48:43", "", "0", "http://matriarchy-build.local/my-account/", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("29", "1", "2021-11-13 18:44:00", "0000-00-00 00:00:00", "<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->", "Refund and Returns Policy", "", "draft", "closed", "closed", "", "refund_returns", "", "", "2021-11-13 18:44:00", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?page_id=29", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2021-11-14 00:57:59", "2021-11-13 18:48:04", " ", "", "", "publish", "closed", "closed", "", "31", "", "", "2021-11-14 00:57:59", "2021-11-14 00:57:59", "", "0", "http://matriarchy-build.local/?p=31", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("32", "1", "2021-11-13 18:48:43", "2021-11-13 18:48:43", "<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->", "My account", "", "inherit", "closed", "closed", "", "28-revision-v1", "", "", "2021-11-13 18:48:43", "2021-11-13 18:48:43", "", "28", "http://matriarchy-build.local/?p=32", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2021-11-13 23:53:43", "2021-11-13 23:53:43", "<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo nulla at ante mattis lacinia. Aliquam id augue porta, euismod dolor at, fermentum urna. Nullam volutpat pellentesque mauris, non auctor nibh commodo fermentum. Nam dignissim tellus diam. Nulla facilisi. Sed erat eros, consectetur a tempor eleifend, maximus ut odio. Etiam faucibus euismod metus, a accumsan arcu feugiat eu. Aenean fringilla est quis tortor pellentesque, fermentum maximus nibh pretium.</p>\n<!-- /wp:paragraph -->", "Katie Whitaker", "", "publish", "closed", "closed", "", "katie-whitaker", "", "", "2021-11-14 02:11:18", "2021-11-14 02:11:18", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=33", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2021-11-13 23:54:08", "2021-11-13 23:54:08", "<!-- wp:paragraph -->\n<p>Vivamus lorem purus, consequat vel imperdiet ut, aliquet non massa. Mauris egestas nunc vel massa pulvinar, ac consequat lorem ultricies. Aenean auctor cursus quam. Nam ultricies tortor lacus, at molestie quam euismod faucibus. Vivamus porta quam eget justo aliquam, id facilisis nunc vestibulum. Cras a pretium lacus, at convallis elit. Donec tincidunt iaculis eros ultricies aliquam. Sed cursus mi fringilla magna eleifend tristique. Ut nec nulla id erat mattis ullamcorper malesuada in metus. Quisque tristique ante diam, in tempus justo vulputate a. Morbi vitae rhoncus tellus. Proin vel volutpat odio. Quisque quis facilisis nisi. Vivamus sagittis, lectus et gravida ornare, magna est consectetur nunc, eget placerat eros massa quis mi.</p>\n<!-- /wp:paragraph -->", "Mercury Stardust", "", "publish", "closed", "closed", "", "mercury-stardust", "", "", "2021-11-14 02:11:13", "2021-11-14 02:11:13", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=34", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2021-11-13 23:55:52", "2021-11-13 23:55:52", "<!-- wp:paragraph -->\n<p>Nullam consequat vitae mi id hendrerit. Cras non dictum tortor, pulvinar condimentum urna. Aliquam dolor nibh, bibendum quis tempus vehicula, sagittis sit amet nunc. Pellentesque sed odio lacus. Nullam varius posuere nulla, eu sagittis enim lacinia in. Vestibulum id ex gravida, volutpat elit quis, facilisis dui. Curabitur pretium nisi sit amet tempus tincidunt. Proin rhoncus est id ipsum ornare molestie. Vivamus cursus, orci non interdum scelerisque, est urna pretium orci, vitae facilisis leo metus vitae arcu.</p>\n<!-- /wp:paragraph -->", "Gabriela Narvaez", "", "publish", "closed", "closed", "", "gabriela-narvaez", "", "", "2021-11-14 02:11:07", "2021-11-14 02:11:07", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=35", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2021-11-13 23:56:33", "2021-11-13 23:56:33", "<!-- wp:paragraph -->\n<p>Donec sed hendrerit nibh. Vivamus venenatis quam et massa iaculis imperdiet. Morbi tempus efficitur aliquet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas mattis diam ac scelerisque pellentesque. Phasellus ac sapien nec tortor malesuada sagittis. Nunc tincidunt velit eu finibus faucibus. Vestibulum consequat tellus nec dignissim dignissim. Cras a tincidunt enim. Integer facilisis blandit turpis vitae cursus. Aliquam ac cursus enim, ut fermentum ipsum. Quisque vitae enim a odio luctus accumsan.</p>\n<!-- /wp:paragraph -->", "Jen Sanchez", "", "publish", "closed", "closed", "", "jen-sanchez", "", "", "2021-11-14 02:10:56", "2021-11-14 02:10:56", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=36", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2021-11-13 23:57:02", "2021-11-13 23:57:02", "<!-- wp:paragraph -->\n<p>Maecenas vulputate egestas interdum. Pellentesque blandit non ante sed iaculis. Suspendisse potenti. Vivamus vehicula vestibulum volutpat. Cras faucibus enim id euismod tincidunt. Praesent laoreet mi eu tristique vehicula. Nulla facilisi. Maecenas fermentum lorem a ante viverra, sit amet mattis orci mollis. Praesent non consectetur leo. Aliquam erat volutpat. Donec ut tristique magna. Cras semper, felis ut aliquam congue, urna nisl gravida justo, sed auctor justo urna a neque. Sed congue nibh sed ultricies venenatis. Praesent maximus nisi vitae dapibus maximus. Proin finibus, purus in imperdiet tincidunt, arcu purus cursus metus, eget elementum sapien enim id mauris. Vivamus placerat rhoncus ultricies.</p>\n<!-- /wp:paragraph -->", "Cabo Verde", "", "publish", "closed", "closed", "", "cabo-verde", "", "", "2021-12-29 01:21:31", "2021-12-29 01:21:31", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=37", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"pro\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}", "Pro Details", "pro-details", "publish", "closed", "closed", "", "group_619050de762cb", "", "", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "", "0", "http://matriarchy-build.local/?post_type=acf-field-group&#038;p=38", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Company", "company", "publish", "closed", "closed", "", "field_619050ede180f", "", "", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "", "38", "http://matriarchy-build.local/?post_type=acf-field&p=39", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("40", "1", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Trade", "trade", "publish", "closed", "closed", "", "field_619050fde1810", "", "", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "", "38", "http://matriarchy-build.local/?post_type=acf-field&p=40", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Social", "social", "publish", "closed", "closed", "", "field_61905157e1811", "", "", "2021-11-13 23:59:35", "2021-11-13 23:59:35", "", "38", "http://matriarchy-build.local/?post_type=acf-field&p=41", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("42", "1", "2021-11-14 00:11:03", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2021-11-14 00:11:03", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=42", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2021-11-14 00:11:03", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2021-11-14 00:11:03", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=43", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2021-11-14 00:11:03", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2021-11-14 00:11:03", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=44", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2021-11-14 00:11:03", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2021-11-14 00:11:03", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=45", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2021-11-14 00:11:03", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2021-11-14 00:11:03", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=46", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2021-11-14 00:57:59", "2021-11-14 00:57:59", "", "Pros", "", "publish", "closed", "closed", "", "pros", "", "", "2021-11-14 00:57:59", "2021-11-14 00:57:59", "", "0", "http://matriarchy-build.local/?p=49", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2021-12-01 01:40:06", "2021-12-01 01:40:06", "Cabo Verde pro as product.", "Cabo Verde", "", "publish", "open", "closed", "", "cabo-verde", "", "", "2021-12-01 01:40:06", "2021-12-01 01:40:06", "", "0", "http://matriarchy-build.local/?post_type=product&#038;p=51", "0", "product", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2021-12-01 01:39:25", "2021-12-01 01:39:25", "", "Cabo Verde - 30 minutes", "Duration: 30 minutes", "publish", "closed", "closed", "", "cabo-verde-30-minutes", "", "", "2021-12-01 01:39:57", "2021-12-01 01:39:57", "", "51", "http://matriarchy-build.local/?post_type=product_variation&p=52", "1", "product_variation", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2021-12-01 01:39:26", "2021-12-01 01:39:26", "", "Cabo Verde - 60 minutes", "Duration: 60 minutes", "publish", "closed", "closed", "", "cabo-verde-60-minutes", "", "", "2021-12-01 01:39:57", "2021-12-01 01:39:57", "", "51", "http://matriarchy-build.local/?post_type=product_variation&p=53", "2", "product_variation", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2021-12-29 01:00:13", "2021-12-29 01:00:13", "", "Tester ProMember", "", "publish", "closed", "closed", "", "tester-promember", "", "", "2021-12-29 01:00:13", "2021-12-29 01:00:13", "", "0", "http://matriarchy-build.local/?post_type=pro&#038;p=64", "0", "pro", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2022-01-06 13:15:32", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2022-01-06 13:15:32", "0000-00-00 00:00:00", "", "0", "http://matriarchy-build.local/?p=67", "0", "post", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("31", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("33", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("34", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("35", "23", "0");
INSERT INTO `wp_term_relationships` VALUES("36", "18", "0");
INSERT INTO `wp_term_relationships` VALUES("36", "19", "0");
INSERT INTO `wp_term_relationships` VALUES("36", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("36", "22", "0");
INSERT INTO `wp_term_relationships` VALUES("37", "20", "0");
INSERT INTO `wp_term_relationships` VALUES("37", "21", "0");
INSERT INTO `wp_term_relationships` VALUES("49", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("51", "6", "0");
INSERT INTO `wp_term_relationships` VALUES("51", "17", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "nav_menu", "", "0", "2");
INSERT INTO `wp_term_taxonomy` VALUES("4", "4", "product_type", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("5", "5", "product_type", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("6", "6", "product_type", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("7", "7", "product_type", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("8", "8", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("9", "9", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("10", "10", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("11", "11", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("12", "12", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("13", "13", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("14", "14", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("15", "15", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("16", "16", "product_visibility", "", "0", "0");
INSERT INTO `wp_term_taxonomy` VALUES("17", "17", "product_cat", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("18", "18", "pro-category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("19", "19", "pro-category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("20", "20", "pro-category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("21", "21", "pros", "", "0", "4");
INSERT INTO `wp_term_taxonomy` VALUES("22", "22", "pros", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("23", "23", "pros", "", "0", "1");

/* INSERT TABLE DATA: wp_termmeta */
INSERT INTO `wp_termmeta` VALUES("1", "17", "product_count_product_cat", "1");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("3", "Main Menu", "main-menu", "0");
INSERT INTO `wp_terms` VALUES("4", "simple", "simple", "0");
INSERT INTO `wp_terms` VALUES("5", "grouped", "grouped", "0");
INSERT INTO `wp_terms` VALUES("6", "variable", "variable", "0");
INSERT INTO `wp_terms` VALUES("7", "external", "external", "0");
INSERT INTO `wp_terms` VALUES("8", "exclude-from-search", "exclude-from-search", "0");
INSERT INTO `wp_terms` VALUES("9", "exclude-from-catalog", "exclude-from-catalog", "0");
INSERT INTO `wp_terms` VALUES("10", "featured", "featured", "0");
INSERT INTO `wp_terms` VALUES("11", "outofstock", "outofstock", "0");
INSERT INTO `wp_terms` VALUES("12", "rated-1", "rated-1", "0");
INSERT INTO `wp_terms` VALUES("13", "rated-2", "rated-2", "0");
INSERT INTO `wp_terms` VALUES("14", "rated-3", "rated-3", "0");
INSERT INTO `wp_terms` VALUES("15", "rated-4", "rated-4", "0");
INSERT INTO `wp_terms` VALUES("16", "rated-5", "rated-5", "0");
INSERT INTO `wp_terms` VALUES("17", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("18", "Handywoman", "handywoman", "0");
INSERT INTO `wp_terms` VALUES("19", "DIYer", "diyer", "0");
INSERT INTO `wp_terms` VALUES("20", "General Contractor", "general-contractor", "0");
INSERT INTO `wp_terms` VALUES("21", "Handywoman", "handywoman", "0");
INSERT INTO `wp_terms` VALUES("22", "DIYer", "diyer", "0");
INSERT INTO `wp_terms` VALUES("23", "General Contractor", "general-contractor", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "admin");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "Darielle");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "Davis");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "false");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "0");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"a3a05271900b08990007e15835546ab489841b41a1ce06e0c86d573d77b838c4\";a:4:{s:10:\"expiration\";i:1641647730;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1641474930;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "67");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("20", "1", "metaboxhidden_nav-menus", "a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}");
INSERT INTO `wp_usermeta` VALUES("21", "1", "nav_menu_recently_edited", "3");
INSERT INTO `wp_usermeta` VALUES("22", "1", "facebook_profile", "");
INSERT INTO `wp_usermeta` VALUES("23", "1", "twitter_profile", "");
INSERT INTO `wp_usermeta` VALUES("24", "1", "linkedin_profile", "");
INSERT INTO `wp_usermeta` VALUES("25", "1", "xing_profile", "");
INSERT INTO `wp_usermeta` VALUES("26", "1", "github_profile", "");
INSERT INTO `wp_usermeta` VALUES("27", "2", "nickname", "test-user1");
INSERT INTO `wp_usermeta` VALUES("28", "2", "first_name", "Darielle");
INSERT INTO `wp_usermeta` VALUES("29", "2", "last_name", "Davis");
INSERT INTO `wp_usermeta` VALUES("30", "2", "description", "This is the bio for the test user.");
INSERT INTO `wp_usermeta` VALUES("31", "2", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("32", "2", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("33", "2", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("34", "2", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("35", "2", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("36", "2", "show_admin_bar_front", "false");
INSERT INTO `wp_usermeta` VALUES("37", "2", "locale", "");
INSERT INTO `wp_usermeta` VALUES("38", "2", "wp_capabilities", "a:1:{s:10:\"subscriber\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("39", "2", "wp_user_level", "0");
INSERT INTO `wp_usermeta` VALUES("40", "2", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("42", "2", "community-events-location", "a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}");
INSERT INTO `wp_usermeta` VALUES("43", "2", "facebook_profile", "");
INSERT INTO `wp_usermeta` VALUES("44", "2", "twitter_profile", "");
INSERT INTO `wp_usermeta` VALUES("45", "2", "linkedin_profile", "");
INSERT INTO `wp_usermeta` VALUES("46", "2", "xing_profile", "");
INSERT INTO `wp_usermeta` VALUES("47", "2", "github_profile", "");
INSERT INTO `wp_usermeta` VALUES("52", "2", "session_tokens", "a:2:{s:64:\"2efe464a22cd8349f665f0917e3fd218aee0949411baeb65a00fa10b1aa81d8f\";a:4:{s:10:\"expiration\";i:1635424223;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36\";s:5:\"login\";i:1635251423;}s:64:\"5e634400256d2acf49447566c3affa8ed5a6daa6d12ce958e574885bf1aff964\";a:4:{s:10:\"expiration\";i:1635508819;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36\";s:5:\"login\";i:1635336019;}}");
INSERT INTO `wp_usermeta` VALUES("53", "2", "account_type", "consumer");
INSERT INTO `wp_usermeta` VALUES("54", "2", "_account_type", "field_61793e581e0c7");
INSERT INTO `wp_usermeta` VALUES("55", "2", "industry", "Plumbing");
INSERT INTO `wp_usermeta` VALUES("56", "2", "_industry", "field_61793e9e1e0c8");
INSERT INTO `wp_usermeta` VALUES("57", "2", "location", "Savannah, GA");
INSERT INTO `wp_usermeta` VALUES("58", "2", "_location", "field_61793eaa1e0c9");
INSERT INTO `wp_usermeta` VALUES("59", "2", "instagram_handle", "@yourfavoriteplumber");
INSERT INTO `wp_usermeta` VALUES("60", "2", "_instagram_handle", "field_61793eee1e0ca");
INSERT INTO `wp_usermeta` VALUES("61", "1", "_woocommerce_tracks_anon_id", "woo:8diC2todNLE1NzrtW6V70ISY");
INSERT INTO `wp_usermeta` VALUES("62", "1", "last_update", "1641475077");
INSERT INTO `wp_usermeta` VALUES("63", "1", "woocommerce_admin_activity_panel_inbox_last_read", "1641475075547");
INSERT INTO `wp_usermeta` VALUES("64", "1", "wc_last_active", "1641427200");
INSERT INTO `wp_usermeta` VALUES("65", "1", "billing_first_name", "Darielle");
INSERT INTO `wp_usermeta` VALUES("66", "1", "billing_last_name", "Davis");
INSERT INTO `wp_usermeta` VALUES("67", "1", "_order_count", "0");
INSERT INTO `wp_usermeta` VALUES("70", "1", "closedpostboxes_dashboard", "a:1:{i:0;s:24:\"wc_admin_dashboard_setup\";}");
INSERT INTO `wp_usermeta` VALUES("71", "1", "metaboxhidden_dashboard", "a:4:{i:0;s:24:\"wc_admin_dashboard_setup\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}");
INSERT INTO `wp_usermeta` VALUES("72", "1", "dismissed_no_secure_connection_notice", "1");
INSERT INTO `wp_usermeta` VALUES("77", "1", "woocommerce_admin_task_list_tracked_started_tasks", "{\"payments\":1}");
INSERT INTO `wp_usermeta` VALUES("83", "1", "bookly_staff_members_table_settings", "a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:3:{s:10:\"visibility\";s:0:\"\";s:8:\"archived\";s:1:\"0\";s:8:\"category\";s:0:\"\";}}");
INSERT INTO `wp_usermeta` VALUES("87", "1", "bookly_services_table_settings", "a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:1:{s:8:\"category\";s:0:\"\";}}");
INSERT INTO `wp_usermeta` VALUES("97", "1", "bookly_dismiss_collect_stats_notice", "1");
INSERT INTO `wp_usermeta` VALUES("98", "1", "bookly_dismiss_powered_by_notice", "1");
INSERT INTO `wp_usermeta` VALUES("99", "1", "bookly_analytics_table_settings", "a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:0:{}}");
INSERT INTO `wp_usermeta` VALUES("100", "1", "bookly_appointments_table_settings", "a:2:{s:5:\"order\";a:0:{}s:6:\"filter\";a:6:{s:2:\"id\";s:0:\"\";s:12:\"created_date\";s:3:\"any\";s:5:\"staff\";s:0:\"\";s:8:\"customer\";s:0:\"\";s:7:\"service\";s:0:\"\";s:6:\"status\";s:0:\"\";}}");
INSERT INTO `wp_usermeta` VALUES("101", "3", "nickname", "Tester ProMember");
INSERT INTO `wp_usermeta` VALUES("102", "3", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("103", "3", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("104", "3", "description", "");
INSERT INTO `wp_usermeta` VALUES("105", "3", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("106", "3", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("107", "3", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("108", "3", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("109", "3", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("110", "3", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("111", "3", "locale", "");
INSERT INTO `wp_usermeta` VALUES("112", "3", "wp_capabilities", "a:1:{s:10:\"subscriber\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("113", "3", "wp_user_level", "0");
INSERT INTO `wp_usermeta` VALUES("114", "3", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("115", "4", "nickname", "TesterTwo ProMember");
INSERT INTO `wp_usermeta` VALUES("116", "4", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("117", "4", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("118", "4", "description", "");
INSERT INTO `wp_usermeta` VALUES("119", "4", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("120", "4", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("121", "4", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("122", "4", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("123", "4", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("124", "4", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("125", "4", "locale", "");
INSERT INTO `wp_usermeta` VALUES("126", "4", "wp_capabilities", "a:1:{s:10:\"subscriber\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("127", "4", "wp_user_level", "0");
INSERT INTO `wp_usermeta` VALUES("128", "4", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("130", "1", "_woocommerce_persistent_cart_1", "a:1:{s:4:\"cart\";a:1:{s:32:\"2838023a778dfaecdc212708f721b788\";a:6:{s:3:\"key\";s:32:\"2838023a778dfaecdc212708f721b788\";s:10:\"product_id\";i:51;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"36f76fb62ac326633be66211f53a026c\";}}}");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "admin", "$P$BUpYBtWXQOo55Rq0pjcxpkWzGxSUIm.", "admin", "dev-email@flywheel.local", "http://matriarchy-build.local", "2021-10-18 04:20:15", "", "0", "admin");
INSERT INTO `wp_users` VALUES("2", "test-user1", "$P$BSEbL6HA52L8b28Ana.o7Eu6Vfc47L.", "test-user1", "hello@darielledavis.com", "", "2021-10-24 01:55:11", "", "0", "Darielle Davis");
INSERT INTO `wp_users` VALUES("3", "Tester ProMember", "$P$BrLF2IZf/NCDxBneATUuU/vR6zcJHK/", "tester-promember", "dev@yellowrocketdigital.com", "", "2021-12-29 00:51:30", "", "0", "Tester ProMember");
INSERT INTO `wp_users` VALUES("4", "TesterTwo ProMember", "$P$Bz/zVd9wjSRc7tPTTz9yGCqjzCElCQ1", "testertwo-promember", "dev2@example.com", "", "2021-12-29 01:16:28", "", "0", "TesterTwo ProMember");

/* INSERT TABLE DATA: wp_wc_admin_note_actions */
INSERT INTO `wp_wc_admin_note_actions` VALUES("1", "1", "notify-refund-returns-page", "Edit page", "http://matriarchy-build.local/wp-admin/post.php?post=29&action=edit", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("2", "2", "connect", "Connect", "?page=wc-addons&section=helper", "unactioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("3", "3", "learn-more", "Learn more", "https://woocommerce.com/mobile/?utm_medium=product", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("4", "4", "visit-the-theme-marketplace", "Visit the theme marketplace", "https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("5", "5", "affirm-insight-first-product-and-payment", "Yes", "", "actioned", "0", "Thanks for your feedback", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("6", "5", "affirm-insight-first-product-and-payment", "No", "", "actioned", "0", "Thanks for your feedback", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("7", "6", "add-first-product", "Add a product", "http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&task=products", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("8", "7", "learn-more", "Learn more", "https://docs.woocommerce.com/document/managing-products/?utm_source=inbox&utm_medium=product", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("9", "8", "tracking-opt-in", "Activate usage tracking", "", "actioned", "1", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("10", "9", "view-payment-gateways", "Learn more", "https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?utm_medium=product", "actioned", "1", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("11", "10", "learn-more", "Learn more", "https://woocommerce.com/payments/?utm_medium=product", "unactioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("12", "10", "get-started", "Get started", "http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&action=setup-woocommerce-payments", "actioned", "1", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("13", "11", "open-marketing-hub", "Open marketing hub", "http://matriarchy-build.local/wp-admin/admin.php?page=wc-admin&path=/marketing", "actioned", "0", "", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("14", "12", "affirm-insight-first-sale", "Yes", "", "actioned", "0", "Thanks for your feedback", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("15", "12", "deny-insight-first-sale", "No", "", "actioned", "0", "Thanks for your feedback", NULL, NULL);
INSERT INTO `wp_wc_admin_note_actions` VALUES("16", "13", "learn-more", "Learn more", "https://docs.woocommerce.com/document/woocommerce-analytics/?utm_medium=product#variations-report", "actioned", "0", "", NULL, NULL);

/* INSERT TABLE DATA: wp_wc_admin_notes */
INSERT INTO `wp_wc_admin_notes` VALUES("1", "wc-refund-returns-page", "info", "en_US", "Setup a Refund and Returns Policy page to boost your store\'s credibility.", "We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.", "{}", "unactioned", "woocommerce-core", "2021-11-13 18:44:01", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("2", "wc-admin-wc-helper-connection", "info", "en_US", "Connect to WooCommerce.com", "Connect to get important product notifications and updates.", "{}", "unactioned", "woocommerce-admin", "2021-11-13 18:44:01", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("3", "wc-admin-mobile-app", "info", "en_US", "Install Woo mobile app", "Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.", "{}", "unactioned", "woocommerce-admin", "2021-11-17 13:07:47", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("4", "wc-admin-choosing-a-theme", "marketing", "en_US", "Choosing a theme?", "Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.", "{}", "unactioned", "woocommerce-admin", "2021-11-17 13:07:47", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("5", "wc-admin-insight-first-product-and-payment", "survey", "en_US", "Insight", "More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?", "{}", "unactioned", "woocommerce-admin", "2021-11-17 13:07:47", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("6", "wc-admin-add-first-product-note", "email", "en_US", "Add your first product", "{greetings}<br /><br />Nice one; you\'ve created a WooCommerce store! Now it\'s time to add your first product and get ready to start selling.<br /><br />There are three ways to add your products: you can <strong>create products manually, import them at once via CSV file</strong>, or <strong>migrate them from another service</strong>.<br /><br /><a href=\"https://docs.woocommerce.com/document/managing-products/?utm_source=help_panel&amp;utm_medium=product\">Explore our docs</a> for more information, or just get started!", "{\"role\":\"administrator\"}", "unactioned", "woocommerce-admin", "2021-11-17 13:07:47", NULL, "0", "plain", "http://matriarchy-build.local/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/dashboard-widget-setup.png", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("7", "wc-admin-adding-and-managing-products", "info", "en_US", "Adding and Managing Products", "Learn more about how to set up products in WooCommerce through our useful documentation about adding and managing products.", "{}", "unactioned", "woocommerce-admin", "2021-11-17 13:07:47", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("8", "wc-admin-usage-tracking-opt-in", "info", "en_US", "Help WooCommerce improve with usage tracking", "Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://matriarchy-build.local/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Read more</a> about what data we collect.", "{}", "unactioned", "woocommerce-admin", "2021-12-01 01:16:37", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("9", "wc-admin-onboarding-payments-reminder", "info", "en_US", "Start accepting payments on your store!", "Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.", "{}", "unactioned", "woocommerce-admin", "2021-12-01 01:16:37", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("10", "wc-admin-woocommerce-payments", "marketing", "en_US", "Try the new way to get paid", "Securely accept credit and debit cards on your site. Manage transactions without leaving your WordPress dashboard. Only with <strong>WooCommerce Payments</strong>.<br><br>By clicking \"Get started\", you agree to our <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a>", "{}", "unactioned", "woocommerce-admin", "2021-12-01 01:16:37", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("11", "wc-admin-marketing-intro", "info", "en_US", "Connect with your audience", "Grow your customer base and increase your sales with marketing tools built for WooCommerce.", "{}", "unactioned", "woocommerce-admin", "2021-12-01 01:16:37", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("12", "wc-admin-insight-first-sale", "survey", "en_US", "Did you know?", "A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?", "{}", "unactioned", "woocommerce-admin", "2021-12-01 01:16:37", NULL, "0", "plain", "", "0", "info");
INSERT INTO `wp_wc_admin_notes` VALUES("13", "wc-admin-filter-by-product-variations-in-reports", "info", "en_US", "New - filter by product variations in orders and products reports", "One of the most awaited features has just arrived! You can now have insights into each product variation in the orders and products reports.", "{}", "unactioned", "woocommerce-admin", "2021-12-01 20:34:49", NULL, "0", "banner", "http://matriarchy-build.local/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/filter-by-product-variations-note.svg", "0", "info");

/* INSERT TABLE DATA: wp_wc_category_lookup */
INSERT INTO `wp_wc_category_lookup` VALUES("17", "17");

/* INSERT TABLE DATA: wp_wc_product_meta_lookup */
INSERT INTO `wp_wc_product_meta_lookup` VALUES("51", "", "0", "0", "89.9900", "153.9900", "0", NULL, "instock", "0", "0.00", "0", "taxable", "");
INSERT INTO `wp_wc_product_meta_lookup` VALUES("52", "", "0", "0", "89.9900", "89.9900", "0", NULL, "instock", "0", "0.00", "0", "taxable", "parent");
INSERT INTO `wp_wc_product_meta_lookup` VALUES("53", "", "0", "0", "153.9900", "153.9900", "0", NULL, "instock", "0", "0.00", "0", "taxable", "parent");

/* INSERT TABLE DATA: wp_wc_tax_rate_classes */
INSERT INTO `wp_wc_tax_rate_classes` VALUES("1", "Reduced rate", "reduced-rate");
INSERT INTO `wp_wc_tax_rate_classes` VALUES("2", "Zero rate", "zero-rate");

/* INSERT TABLE DATA: wp_woocommerce_sessions */
INSERT INTO `wp_woocommerce_sessions` VALUES("17", "1", "a:9:{s:4:\"cart\";s:442:\"a:1:{s:32:\"2838023a778dfaecdc212708f721b788\";a:11:{s:3:\"key\";s:32:\"2838023a778dfaecdc212708f721b788\";s:10:\"product_id\";i:51;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"36f76fb62ac326633be66211f53a026c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89.989999999999995;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89.989999999999995;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:5:\"89.99\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:5:\"89.99\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"89.99\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:784:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2022-01-06T13:17:57+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:8:\"Darielle\";s:9:\"last_name\";s:5:\"Davis\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"dev-email@flywheel.local\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:6:\"stripe\";s:10:\"wc_notices\";N;}", "1641647860");
INSERT INTO `wp_woocommerce_sessions` VALUES("22", "b5a4c0201b32b67f79ba06a5e2b49f50", "a:7:{s:4:\"cart\";s:4256:\"a:2:{s:32:\"b55d7e07c99110e0a586b37d41b56e13\";a:12:{s:6:\"bookly\";a:35:{s:19:\"first_rendered_step\";i:3;s:9:\"time_zone\";N;s:16:\"time_zone_offset\";N;s:9:\"date_from\";s:10:\"2022-01-06\";s:4:\"days\";a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}s:9:\"time_from\";s:5:\"08:00\";s:7:\"time_to\";s:5:\"18:00\";s:5:\"slots\";a:1:{i:0;a:4:{i:0;i:1;i:1;i:2;i:2;s:19:\"2022-01-06 17:00:00\";i:3;i:0;}}s:11:\"facebook_id\";N;s:9:\"full_name\";s:8:\"Darielle\";s:10:\"first_name\";N;s:9:\"last_name\";N;s:5:\"email\";s:27:\"dev@yellowrocketdigital.com\";s:13:\"email_confirm\";N;s:5:\"phone\";s:0:\"\";s:8:\"birthday\";N;s:18:\"additional_address\";N;s:7:\"country\";N;s:5:\"state\";N;s:8:\"postcode\";N;s:4:\"city\";N;s:6:\"street\";N;s:13:\"street_number\";N;s:11:\"address_iso\";a:0:{}s:5:\"notes\";N;s:11:\"info_fields\";a:0:{}s:11:\"coupon_code\";N;s:4:\"tips\";N;s:12:\"deposit_full\";i:0;s:14:\"edit_cart_keys\";a:1:{i:0;i:0;}s:8:\"repeated\";i:0;s:11:\"repeat_data\";a:0:{}s:7:\"version\";s:3:\"1.1\";s:5:\"items\";a:1:{i:0;a:16:{s:11:\"location_id\";N;s:10:\"service_id\";i:1;s:9:\"staff_ids\";a:1:{i:0;i:2;}s:17:\"number_of_persons\";i:1;s:9:\"date_from\";s:10:\"2022-01-06\";s:4:\"days\";a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}s:9:\"time_from\";s:5:\"08:00\";s:7:\"time_to\";s:5:\"18:00\";s:5:\"units\";i:1;s:6:\"extras\";a:0:{}s:24:\"consider_extras_duration\";b:1;s:5:\"slots\";a:1:{i:0;a:4:{i:0;i:1;i:1;i:2;i:2;s:19:\"2022-01-06 17:00:00\";i:3;i:0;}}s:13:\"custom_fields\";a:0:{}s:16:\"series_unique_id\";i:0;s:15:\"first_in_series\";b:1;s:14:\"appointment_id\";N;}}s:11:\"wc_checkout\";a:10:{s:18:\"billing_first_name\";s:8:\"Darielle\";s:17:\"billing_last_name\";b:0;s:13:\"billing_email\";s:27:\"dev@yellowrocketdigital.com\";s:13:\"billing_phone\";s:0:\"\";s:15:\"billing_country\";N;s:13:\"billing_state\";N;s:12:\"billing_city\";N;s:17:\"billing_address_1\";N;s:17:\"billing_address_2\";N;s:16:\"billing_postcode\";N;}}s:3:\"key\";s:32:\"b55d7e07c99110e0a586b37d41b56e13\";s:10:\"product_id\";i:51;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"36f76fb62ac326633be66211f53a026c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:245;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:245;s:8:\"line_tax\";i:0;}s:32:\"688e479a4b492e4106907f8d94f7cbf5\";a:12:{s:6:\"bookly\";a:35:{s:19:\"first_rendered_step\";i:3;s:9:\"time_zone\";N;s:16:\"time_zone_offset\";N;s:9:\"date_from\";s:10:\"2022-01-06\";s:4:\"days\";a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}s:9:\"time_from\";s:5:\"08:00\";s:7:\"time_to\";s:5:\"18:00\";s:5:\"slots\";a:1:{i:0;a:4:{i:0;i:1;i:1;i:2;i:2;s:19:\"2022-01-06 16:45:00\";i:3;i:0;}}s:11:\"facebook_id\";N;s:9:\"full_name\";s:4:\"Dari\";s:10:\"first_name\";N;s:9:\"last_name\";N;s:5:\"email\";s:13:\"test@test.com\";s:13:\"email_confirm\";N;s:5:\"phone\";s:0:\"\";s:8:\"birthday\";N;s:18:\"additional_address\";N;s:7:\"country\";N;s:5:\"state\";N;s:8:\"postcode\";N;s:4:\"city\";N;s:6:\"street\";N;s:13:\"street_number\";N;s:11:\"address_iso\";a:0:{}s:5:\"notes\";N;s:11:\"info_fields\";a:0:{}s:11:\"coupon_code\";N;s:4:\"tips\";N;s:12:\"deposit_full\";i:0;s:14:\"edit_cart_keys\";a:1:{i:0;i:0;}s:8:\"repeated\";i:0;s:11:\"repeat_data\";a:0:{}s:7:\"version\";s:3:\"1.1\";s:5:\"items\";a:1:{i:0;a:16:{s:11:\"location_id\";N;s:10:\"service_id\";i:1;s:9:\"staff_ids\";a:1:{i:0;i:2;}s:17:\"number_of_persons\";i:1;s:9:\"date_from\";s:10:\"2022-01-06\";s:4:\"days\";a:5:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:6;}s:9:\"time_from\";s:5:\"08:00\";s:7:\"time_to\";s:5:\"18:00\";s:5:\"units\";i:1;s:6:\"extras\";a:0:{}s:24:\"consider_extras_duration\";b:1;s:5:\"slots\";a:1:{i:0;a:4:{i:0;i:1;i:1;i:2;i:2;s:19:\"2022-01-06 16:45:00\";i:3;i:0;}}s:13:\"custom_fields\";a:0:{}s:16:\"series_unique_id\";i:0;s:15:\"first_in_series\";b:1;s:14:\"appointment_id\";N;}}s:11:\"wc_checkout\";a:10:{s:18:\"billing_first_name\";s:4:\"Dari\";s:17:\"billing_last_name\";b:0;s:13:\"billing_email\";s:13:\"test@test.com\";s:13:\"billing_phone\";s:0:\"\";s:15:\"billing_country\";N;s:13:\"billing_state\";N;s:12:\"billing_city\";N;s:17:\"billing_address_1\";N;s:17:\"billing_address_2\";N;s:16:\"billing_postcode\";N;}}s:3:\"key\";s:32:\"688e479a4b492e4106907f8d94f7cbf5\";s:10:\"product_id\";i:51;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"36f76fb62ac326633be66211f53a026c\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:245;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:245;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:396:\"a:15:{s:8:\"subtotal\";s:3:\"490\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:3:\"490\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"490.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:720:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}", "1641648319");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2022-01-06 14:22:02*/
/* DUPLICATOR_MYSQLDUMP_EOF */
