<?php
namespace BooklySpecialDays\Lib;

use Bookly\Lib as BooklyLib;

/**
 * Class Updates
 * @package BooklySpecialDays\Lib
 */
class Updater extends BooklyLib\Base\Updater
{
    public function update_4_2()
    {
        $this->alterTables( array(
            'bookly_staff_special_days' => array(
                'ALTER TABLE `%s` ADD COLUMN `location_id` INT UNSIGNED DEFAULT NULL AFTER `staff_id`',
            ),
        ) );
    }

    public function update_2_8()
    {
        $this->upgradeCharsetCollate( array(
            'bookly_staff_special_days',
            'bookly_special_days_breaks',
            'bookly_service_special_days',
            'bookly_service_special_days_breaks',
        ) );
    }

    public function update_2_2()
    {
        /** @global \wpdb $wpdb */
        global $wpdb;

        // Rename tables.
        $tables = array(
            'service_special_days',
            'service_special_days_breaks',
            'staff_special_days',
            'special_days_breaks',
        );
        $query = 'RENAME TABLE ';
        foreach ( $tables as $table ) {
            $query .= sprintf( '`%s` TO `%s`, ', $this->getTableName( 'ab_' . $table ), $this->getTableName( 'bookly_' . $table ) );
        }
        $query = substr( $query, 0, -2 );
        $wpdb->query( $query );

        delete_option( 'bookly_special_days_enabled' );
    }

    function update_1_9()
    {
        global $wpdb;

        $wpdb->query( 'DELETE FROM `' . $this->getTableName( 'ab_staff_special_days' ) . '` WHERE DAYOFWEEK(`date`) IS null' );
        $wpdb->query( 'DELETE FROM `' . $this->getTableName( 'ab_service_special_days' ) . '` WHERE DAYOFWEEK(`date`) IS null' );
    }

    function update_1_3()
    {
        global $wpdb;

        $wpdb->query(
            'CREATE TABLE IF NOT EXISTS `' . Entities\ServiceSpecialDay::getTableName() . '` (
                `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                `service_id`  INT UNSIGNED NOT NULL,
                `date`        DATE,
                `start_time`  TIME DEFAULT NULL,
                `end_time`    TIME DEFAULT NULL,
                CONSTRAINT
                    FOREIGN KEY (service_id)
                    REFERENCES ' . \Bookly\Lib\Entities\Service::getTableName() . '(id)
                    ON DELETE CASCADE
                    ON UPDATE CASCADE
                ) ENGINE = INNODB
             DEFAULT CHARACTER SET = utf8
             COLLATE = utf8_general_ci'
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
             DEFAULT CHARACTER SET = utf8
             COLLATE = utf8_general_ci'
        );
    }
}