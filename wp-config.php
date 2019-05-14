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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */


$dbname = 'portfolio2018';
$dbpass = 'root';
$dbuser = 'root';
$dbhost = 'localhost:8889';

$whitelist = array('127.0.0.1','192.168.0.11', "::1");
if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
	$dbname = 'emilj_se';
	$dbuser = 'emilj_se';
	$dbpass = 'Gh2BPz92';
	$dbhost = 'emilj.se.mysql';
}

define('DB_NAME', $dbname);

/** MySQL database username */
define('DB_USER', $dbuser);

/** MySQL database password */
define('DB_PASSWORD', $dbpass);

/** MySQL hostname */
define('DB_HOST', $dbhost);

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');


/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '>AKS3pQ.Y,B4k2*86L:u0Xl4-*p*4[myyOI+R#{{ Xd}!.jb!UxIQkoWE~j=d6BN');
define('SECURE_AUTH_KEY',  'l6OlE8VIwr1?9Q*<ncSV-<n6|S 7tf{joc-T,VUY~+S|RMF(>AJr(%zveP.Q-b)Z');
define('LOGGED_IN_KEY',    ']*Qf,38CDxTy(i0]m@byW7ZWAXe(komnQnA$~t2zBwzv#I*6i![SI/k/p61_3QwL');
define('NONCE_KEY',        'j?_aIarWGUSE-:DC%m=%tBGn3)jEr#SdZk-9tLWrBEjGO!?N[k^p8iVQx4HtSdEp');
define('AUTH_SALT',        'R-$>{6c#!PE>PZ,}Q)(bJ$l@<7DLzfPW5_A-4LT@TPQdCi(,=9siZe<mG$JP3@rS');
define('SECURE_AUTH_SALT', '8jG0Qc:8N_@Xfi`MB._(oMZk6bHlLY=_96v`I:)BL#TjN{ic*cB!Ohvi[H>tPs7R');
define('LOGGED_IN_SALT',   'IrkWh?(5Hw4$95a?L^81WdcVkDxY1$V~`lgs-g*m`Yh/B8LP7)8x<_O/ Cjx{.k^');
define('NONCE_SALT',       '0=a2Z0x&Kgx,[<4+Iz+Jb^HsE!G0&O?fbWpandCV28j+L,,v(e]4S@8{kB2VDi4+');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
