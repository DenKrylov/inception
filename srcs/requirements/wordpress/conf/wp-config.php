<?php

define( 'DB_NAME', 'inception' );

define( 'DB_USER', 'monie' );

define( 'DB_PASSWORD', '!Q2w3e4r5t' );

define( 'DB_HOST', 'db');
define( 'WP_HOME', 'https://monie.42.fr');
define( 'WP_SITEURL', 'https://monie.42.fr');
define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define('FS_METHOD', 'direct');

define('AUTH_KEY',         '`bOV|4|jom~SF|]%o`JjP?VsQ2[Xqyer[+thw#+Zgs%{{Q4W1wIhlfg;(jYVXj(@');
define('SECURE_AUTH_KEY',  'eM@>%[]hfQxe1z!2v1ZV0~;o%0V~%#c3P*-@^rZ%ewHDe?IQeLbOH?{sp~Z9Q>l?');
define('LOGGED_IN_KEY',    '0NT;5j*BfPkPn@Ukw{x>~(ao:Jzv. 0H%lq-b`H7|/ng0k,t=jnFzN78s-} -=v.');
define('NONCE_KEY',        'jxuxQ:bJ??-B2(Q&sb_C)?l:-3g[Ppgc03u:@48&lhL!L+:tjoM.Z6&WNx:(50c0');
define('AUTH_SALT',        'so+HfD6[hTTSxOcoxN%gdboBg&ID#rsEcWgiEL{OgVieTe,8aRS7;6^C|)(a%Z$$');
define('SECURE_AUTH_SALT', 'O/7jy`a`zMue#!=D$d-TM7IK[/v4fh/6LVF`Eh{ny|vPs_tQ t|,U4:?z_TY+8u_');
define('LOGGED_IN_SALT',   '+~9C et<)^dBeodtu+NDv2cW}WL/6?.RO?#VkL;O lxlK/ysT#s^6mS92E|vrW)#');
define('NONCE_SALT',       '1@(]ivz&?4_1k{eK!![DaVAU{qX]-ZCg&@zI^~osdqDf/`:w#L!eyBO| 1$Anc23');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
