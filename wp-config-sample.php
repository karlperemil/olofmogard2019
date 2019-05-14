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
define('DB_NAME', 'portfolio2018');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '.TbKb-~XV6]J$2FbK?}{,@6XY@~hxc1J,Nhc*cO+ceX{hgy7(V,wz9z^#:=@--$t');
define('SECURE_AUTH_KEY',  'Jo*>Uv,%nq:aTE+6>Ik:dd3PAOf xF<WXPq1dFiGvrBsG{]$+{2YJ.oa*P*mvdp1');
define('LOGGED_IN_KEY',    'FEI~w8A@3X{w6mFy|*+;98,aH{7caO+5|n!G-2&1oe*2c!8c6l(KbNxYd]I/ @Vl');
define('NONCE_KEY',        '-}y%8t-FnBs*z7|g~L?>OPYZ*(SU;@uVbXQ2!+m|>Ilg}hS12o:[y5pxRKT}%~pN');
define('AUTH_SALT',        '_NR*Sf~86S;jy%29<F^a9mVxFT[q/oscA*OWErVc{D>70_%(<yW$hCLTT?k~D|El');
define('SECURE_AUTH_SALT', 'RLs9{GDg+O:k+V^!]vtm$r+0TtyC@0krKIB963(afPWl$=cYQN <y8EktU^Z0(Q%');
define('LOGGED_IN_SALT',   's|W:h+M$t:orb1(9=N3Zcs.3d$[5:F~n.(E5M.T{[[N2Ew~r;Jn<5O:_7M*/fu#t');
define('NONCE_SALT',       '93Dl.%OCdM.hw[}I/!+KO:-RKB[vXq`P&2r]z=!dj-Vj()WA{kzQ |%~Anm :CdG');

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
