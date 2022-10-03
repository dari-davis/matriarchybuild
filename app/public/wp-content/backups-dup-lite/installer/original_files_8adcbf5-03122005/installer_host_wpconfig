<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'v8nd55XQXhPmv0GDeimsdfqwrDJgeXtReGr4WnsFGoLjds6IylD3n8eAlwKOXDHhvevYm3XzGz/b5xYoXXxVUA==');
define('SECURE_AUTH_KEY',  'yDBGnqie4YWLPipCfi5xULFEAd+zXqzXebLR61PzGquJHO8dt+bn5VjsyqF7V4wgnzBAitkJimRwrqd8wBYiqw==');
define('LOGGED_IN_KEY',    'JqtBo6AK53SChtkOMbf+Dt0DuixAMncvNGJV2L9pWA+0gs6mESr6Um0frkbfvSipmNYWgORMgjFwsfykoAC3SQ==');
define('NONCE_KEY',        'skAMjbT/bOfuHSFhYclHVA0C7GgxjwgOtFX1nTO+JmW4nC1Edt5zfwdx/g88I8e/HgpcyJmqTE7TzF4PXRcsug==');
define('AUTH_SALT',        'mfYYh+Ahf7SeAs9Gwte+ykt9+xrVwkySSlgvs9/i23V324XG0+SrNlYY70D3onRA1JUCWgnGR5MxGCMYXMNaWQ==');
define('SECURE_AUTH_SALT', 'WHKnEEsZxtWrJeUOTOPe8md+7wqFimnNlLVwr3amBb4NbsP5Tlm9+jqmGg9lFhCiI3vN84PO1kGoNiKnrPkxVg==');
define('LOGGED_IN_SALT',   'UTC70IeLeQh50nBhiCwLejKp5OPIuJ5S9BeUXhrQdN7K4PPODqnP8gW45U5AWf69elJRIu/bAO9DQFmVl6vyCA==');
define('NONCE_SALT',       '2AzbIukaJQsd8q3n91E3qgmqyKLecYkR5rQs0tlmDfplb51jZlL09g5nYiGjaiWCEklzJUmTrEdqOXWTQkZkvw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
