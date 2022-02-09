<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
/*
Plugin Name: Bookly Special Days (Add-on)
Plugin URI: https://www.booking-wp-plugin.com/?utm_source=bookly_admin&utm_medium=plugins_page&utm_campaign=plugins_page
Description: Bookly Special Days add-on allows you to change working hours of staff members for special days in a year.
Version: 4.4
Author: Bookly
Author URI: https://www.booking-wp-plugin.com/?utm_source=bookly_admin&utm_medium=plugins_page&utm_campaign=plugins_page
Text Domain: bookly
Domain Path: /languages
License: Commercial
*/

$addon = implode( DIRECTORY_SEPARATOR, array( str_replace( array( '/', '\\' ), DIRECTORY_SEPARATOR, WP_PLUGIN_DIR ), 'bookly-addon-pro', 'lib', 'addons', basename( __DIR__ ) ) );
if ( ! file_exists( $addon ) || $addon === __DIR__ ) {
    include_once __DIR__ . '/autoload.php';
    BooklySpecialDays\Lib\Boot::up();
}