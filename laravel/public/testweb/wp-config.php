<?php
define( 'WP_CACHE', true );
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'u160192341_mupKH' );

/** Database username */
define( 'DB_USER', 'u160192341_IXALh' );

/** Database password */
define( 'DB_PASSWORD', 'nhm9zBFJx1' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'JXgjpA-~CyJy1i]a+3Kx!i>wz~`cbg:wj^tN&Wc:8}YVx>#gZm#7H,@Hm!B1Z*A}' );
define( 'SECURE_AUTH_KEY',   ',Dp/ULM`8D`d!QKq[m%;Hnqz|F EG{b~7_2v[2(43f:S~<DnYC:?}!dqC~AR}0y=' );
define( 'LOGGED_IN_KEY',     ';j)6U(PY]X8cx:gtyGn+L6TJQ^/d6S_-ljaXFtg;ZDn!N}^$bBRFXQBja3TD{7^a' );
define( 'NONCE_KEY',         ']<WahC/W7hx7Hm`oLBoerYx<1II^kdvnaQLi//A>y132jp?3=6/C#L>8An0IW{/Z' );
define( 'AUTH_SALT',         'I#Yk` !dz9ejruM,fEmF}j,0 >R@N?gt9=l).{`CYFa9q|v_?C|{wUaW@C`/kCCr' );
define( 'SECURE_AUTH_SALT',  '}j`4SSU`c[R(_1--5a=<w-EJ.dx^]VPsA 94S].ll8_8G*x8A>aU;6_7d[/9=7#(' );
define( 'LOGGED_IN_SALT',    'y{u-dBB-AI||dskFSRMR$&v>,:@MXgW(4e8oea[+DD#9j1]/&~H9iC^~_jzqjL[5' );
define( 'NONCE_SALT',        'laXg.ImxM7>1H8`0x|`NP-&a0Rj#PD)J:!ebs5a&KYb{_P_kAB6|(,+4@(W3Xt-H' );
define( 'WP_CACHE_KEY_SALT', 'wtLd/.1Y@%xV*FA7Ws${pZQjD_A)!j.M:auUB{w9cxIOv[K,a[_k*fd$89nH5WK ' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );


/* Add any custom values between this line and the "stop editing" line. */



define( 'FS_METHOD', 'direct' );
define( 'WP_AUTO_UPDATE_CORE', 'minor' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
