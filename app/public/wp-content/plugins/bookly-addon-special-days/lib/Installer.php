<?php
namespace BooklySpecialDays\Lib;

use BooklySpecialDays\Lib\Entities;
use Bookly\Lib as BooklyLib;

/**
 * Class Installer
 * @package BooklySpecialDays\Lib
 */
class Installer extends Base\Installer
{
    /**
     * Create tables in database.
     */
    public function createTables()
    {
        /** @global \wpdb $wpdb */
        global $wpdb;

        $charset_collate = $wpdb->has_cap( 'collation' )
            ? $wpdb->get_charset_collate()
            : 'DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci';

        $wpdb->query(
            'CREATE TABLE IF NOT EXISTS `' . Entities\StaffSpecialDay::getTableName() . '` (
                `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                `staff_id`    INT UNSIGNED NOT NULL,
                `location_id` INT UNSIGNED DEFAULT NULL,
                `date`        DATE,
                `start_time`  TIME DEFAULT NULL,
                `end_time`    TIME DEFAULT NULL,
                CONSTRAINT
                    FOREIGN KEY (staff_id)
                    REFERENCES ' . BooklyLib\Entities\Staff::getTableName() . '(id)
                    ON DELETE CASCADE
                    ON UPDATE CASCADE
                ) ENGINE = INNODB
                ' . $charset_collate
        );

        $wpdb->query(
            'CREATE TABLE IF NOT EXISTS `' . Entities\StaffSpecialDayBreak::getTableName() . '` (
                  `id`                   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                  `staff_special_day_id` INT UNSIGNED NOT NULL,
                  `start_time`           TIME DEFAULT NULL,
                  `end_time`             TIME DEFAULT NULL,
                CONSTRAINT
                    FOREIGN KEY (staff_special_day_id)
                    REFERENCES ' . Entities\StaffSpecialDay::getTableName() . '(id)
                    ON DELETE CASCADE
                    ON UPDATE CASCADE
                ) ENGINE = INNODB
                ' . $charset_collate
        );

        $wpdb->query(
            'CREATE TABLE IF NOT EXISTS `' . Entities\ServiceSpecialDay::getTableName() . '` (
                `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                `service_id`  INT UNSIGNED NOT NULL,
                `date`        DATE,
                `start_time`  TIME DEFAULT NULL,
                `end_time`    TIME DEFAULT NULL,
                CONSTRAINT
                    FOREIGN KEY (service_id)
                    REFERENCES ' . BooklyLib\Entities\Service::getTableName() . '(id)
                    ON DELETE CASCADE
                    ON UPDATE CASCADE
                ) ENGINE = INNODB
                ' . $charset_collate
        );

        $wpdb->query(
            'CREATE TABLE IF NOT EXISTS `' . Entities\ServiceSpecialDayBreak::getTableName() . '` (
                  `id`                   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                  `service_special_day_id` INT UNSIGNED NOT NULL,
                  `start_time`           TIME DEFAULT NULL,
                  `end_time`             TIME DEFAULT NULL,
                CONSTRAINT
                    FOREIGN KEY (service_special_day_id)
                    REFERENCES ' . Entities\ServiceSpecialDay::getTableName() . '(id)
                    ON DELETE CASCADE
                    ON UPDATE CASCADE
                ) ENGINE = INNODB
                ' . $charset_collate
        );
    }

}