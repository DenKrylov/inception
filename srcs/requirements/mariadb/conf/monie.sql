# WordPress MySQL database migration
#
# Generated: Thursday 19. August 2021 15:12 UTC
# Hostname: db
# Database: `inception`
# URL: 
# Path: 
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, customize_changeset, page, post
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-08-19 14:56:48', '2021-08-19 14:56:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://monie.42.fr', 'yes'),
(2, 'home', 'https://monie.42.fr', 'yes'),
(3, 'blogname', 'monie', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'monie@mail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1644936996', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:9:"sidebar-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1629385022;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1629385023;a:5:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1629385028;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1629385029;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1629385032;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1629385089;a:1:{s:28:"wp_update_comment_type_batch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1629385296;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1629471422;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(131, 'can_compress_scripts', '1', 'no'),
(133, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1629385187;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(138, 'current_theme', 'Twenty Twenty', 'yes'),
(139, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1629385262;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(141, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(147, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:21:"HTTPS request failed.";}}', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1629385974;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(4, 5, '_customize_changeset_uuid', '2ed402dc-e881-41d7-852c-19b33545bb65'),
(5, 6, '_customize_draft_post_name', 'about'),
(6, 6, '_customize_changeset_uuid', '2ed402dc-e881-41d7-852c-19b33545bb65'),
(7, 7, '_customize_draft_post_name', 'contact'),
(8, 7, '_customize_changeset_uuid', '2ed402dc-e881-41d7-852c-19b33545bb65'),
(9, 8, '_customize_draft_post_name', 'blog'),
(10, 8, '_customize_changeset_uuid', '2ed402dc-e881-41d7-852c-19b33545bb65'),
(11, 9, '_customize_restore_dismissed', '1'),
(12, 10, '_wp_attached_file', '2021/08/2020-landscape-1.png'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:28:"2021/08/2020-landscape-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 10, '_starter_content_theme', 'twentytwenty'),
(15, 10, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(16, 11, '_thumbnail_id', '10'),
(17, 11, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(18, 11, '_customize_changeset_uuid', 'db8cd21b-17c4-4ad6-969c-da4c57de55f7'),
(19, 12, '_customize_draft_post_name', 'about'),
(20, 12, '_customize_changeset_uuid', 'db8cd21b-17c4-4ad6-969c-da4c57de55f7'),
(21, 13, '_customize_draft_post_name', 'contact'),
(22, 13, '_customize_changeset_uuid', 'db8cd21b-17c4-4ad6-969c-da4c57de55f7'),
(23, 14, '_customize_draft_post_name', 'blog'),
(24, 14, '_customize_changeset_uuid', 'db8cd21b-17c4-4ad6-969c-da4c57de55f7'),
(25, 16, '_wp_attached_file', '2021/08/2020-landscape-1-1.png'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:30:"2021/08/2020-landscape-1-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 16, '_starter_content_theme', 'twentytwenty'),
(28, 16, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(29, 17, '_thumbnail_id', '16'),
(30, 17, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(31, 17, '_customize_changeset_uuid', 'c9eb9e44-c5d4-4fb5-974d-047be2138dbb'),
(32, 18, '_customize_draft_post_name', 'about'),
(33, 18, '_customize_changeset_uuid', 'c9eb9e44-c5d4-4fb5-974d-047be2138dbb'),
(34, 19, '_customize_draft_post_name', 'contact'),
(35, 19, '_customize_changeset_uuid', 'c9eb9e44-c5d4-4fb5-974d-047be2138dbb'),
(36, 20, '_customize_draft_post_name', 'blog'),
(37, 20, '_customize_changeset_uuid', 'c9eb9e44-c5d4-4fb5-974d-047be2138dbb'),
(38, 1, '_edit_lock', '1629385166:1'),
(39, 1, '_encloseme', '1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-08-19 14:56:48', '2021-08-19 14:56:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello peer!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-08-19 15:01:36', '2021-08-19 15:01:36', '', 0, 'https://monie.42.fr/?p=1', 0, 'post', '', 1),
(2, 1, '2021-08-19 14:56:48', '2021-08-19 14:56:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="https://monie.42.fr/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-08-19 14:56:48', '2021-08-19 14:56:48', '', 0, 'https://monie.42.fr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-08-19 14:56:48', '2021-08-19 14:56:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: https://monie.42.fr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-08-19 14:56:48', '2021-08-19 14:56:48', '', 0, 'https://monie.42.fr/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-08-19 14:57:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-19 14:57:12', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?p=4', 0, 'post', '', 0),
(5, 1, '2021-08-19 14:57:17', '0000-00-00 00:00:00', '\n					<!-- wp:heading {"align":"wide","fontSize":"gigantic","style":{"typography":{"lineHeight":"1.1"}}} -->\n					<h2 class="alignwide has-text-align-wide has-gigantic-font-size" style="line-height:1.1">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {"verticalAlignment":"center","align":"wide","className":"is-style-twentytwentyone-columns-overlap"} -->\n					<div class="wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap"><!-- wp:column {"verticalAlignment":"center"} -->\n					<div class="wp-block-column is-vertically-aligned-center"><!-- wp:image {"align":"full","sizeSlug":"large"} -->\n					<figure class="wp-block-image alignfull size-large"><img src="https://monie.42.fr/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg" alt="&#8220;Roses Trémières&#8221; by Berthe Morisot"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {"align":"full","sizeSlug":"large","className":"is-style-twentytwentyone-image-frame"} -->\n					<figure class="wp-block-image alignfull size-large is-style-twentytwentyone-image-frame"><img src="https://monie.42.fr/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg" alt="&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {"verticalAlignment":"center"} -->\n					<div class="wp-block-column is-vertically-aligned-center"><!-- wp:spacer -->\n					<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {"sizeSlug":"large","className":"alignfull size-full is-style-twentytwentyone-border"} -->\n					<figure class="wp-block-image size-large alignfull size-full is-style-twentytwentyone-border"><img src="https://monie.42.fr/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg" alt="&#8220;Young Woman in Mauve&#8221; by Berthe Morisot"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {"height":50} -->\n					<div style="height:50px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {"verticalAlignment":"top","align":"wide"} -->\n					<div class="wp-block-columns alignwide are-vertically-aligned-top"><!-- wp:column {"verticalAlignment":"top"} -->\n					<div class="wp-block-column is-vertically-aligned-top"><!-- wp:heading {"level":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {"verticalAlignment":"top"} -->\n					<div class="wp-block-column is-vertically-aligned-top"><!-- wp:heading {"level":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {"verticalAlignment":"top"} -->\n					<div class="wp-block-column is-vertically-aligned-top"><!-- wp:heading {"level":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {"overlayColor":"green","contentPosition":"center center","align":"wide","className":"is-style-twentytwentyone-border"} -->\n					<div class="wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border"><div class="wp-block-cover__inner-container"><!-- wp:spacer {"height":20} -->\n					<div style="height:20px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {"fontSize":"huge"} -->\n					<p class="has-huge-font-size">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {"height":75} -->\n					<div style="height:75px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class="wp-block-columns"><!-- wp:column -->\n					<div class="wp-block-column"><!-- wp:paragraph -->\n					<p><a href="https://wordpress.org/support/article/twenty-twenty-one/">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class="wp-block-column"><!-- wp:paragraph -->\n					<p><a href="https://wordpress.org/support/theme/twentytwentyone/">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {"height":20} -->\n					<div style="height:20px" aria-hidden="true" class="wp-block-spacer"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 14:57:16', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-08-19 14:57:17', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 14:57:17', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-08-19 14:57:17', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 14:57:17', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-08-19 14:57:17', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 14:57:17', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-08-19 14:57:17', '0000-00-00 00:00:00', '{"nav_menus_created_posts":{"starter_content":true,"value":[5,6,7,8],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu[-1]":{"starter_content":true,"value":{"name":"Primary menu"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-1]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"https:\\/\\/monie.42.fr\\/","position":0,"nav_menu_term_id":-1,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-2]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":6,"position":1,"nav_menu_term_id":-1,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-3]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":8,"position":2,"nav_menu_term_id":-1,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-4]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":7,"position":3,"nav_menu_term_id":-1,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"twentytwentyone::nav_menu_locations[primary]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu[-5]":{"starter_content":true,"value":{"name":"Secondary menu"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-5]":{"starter_content":true,"value":{"title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","position":0,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-6]":{"starter_content":true,"value":{"title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","position":1,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-7]":{"starter_content":true,"value":{"title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","position":2,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"nav_menu_item[-8]":{"starter_content":true,"value":{"title":"Email","url":"mailto:wordpress@example.com","position":3,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"twentytwentyone::nav_menu_locations[footer]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"page_on_front":{"starter_content":true,"value":5,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"},"page_for_posts":{"starter_content":true,"value":8,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 14:57:17"}}', '', '', 'auto-draft', 'closed', 'closed', '', '2ed402dc-e881-41d7-852c-19b33545bb65', '', '', '2021-08-19 14:57:17', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-08-19 15:00:43', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/wp-content/uploads/2021/08/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:44', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:44', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:44', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:45', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=14', 0, 'page', '', 0),
(15, 1, '2021-08-19 15:00:45', '0000-00-00 00:00:00', '{"widget_text[2]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"993cc0cfe323835b3ba537fd972bab41"},"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-2"],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"widget_text[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"e3ff58ed43b6ee33594a588202a232c0"},"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-3"],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menus_created_posts":{"starter_content":true,"value":[10,11,12,13,14],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu[-1]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-1]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"https:\\/\\/monie.42.fr\\/","position":0,"nav_menu_term_id":-1,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-2]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":12,"position":1,"nav_menu_term_id":-1,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-3]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":14,"position":2,"nav_menu_term_id":-1,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-4]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":13,"position":3,"nav_menu_term_id":-1,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"twentytwenty::nav_menu_locations[primary]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu[-5]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-5]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"https:\\/\\/monie.42.fr\\/","position":0,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-6]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":12,"position":1,"nav_menu_term_id":-5,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-7]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":14,"position":2,"nav_menu_term_id":-5,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-8]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":13,"position":3,"nav_menu_term_id":-5,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"twentytwenty::nav_menu_locations[expanded]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu[-9]":{"starter_content":true,"value":{"name":"Social Links Menu"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-9]":{"starter_content":true,"value":{"title":"Yelp","url":"https:\\/\\/www.yelp.com","position":0,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-10]":{"starter_content":true,"value":{"title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","position":1,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-11]":{"starter_content":true,"value":{"title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","position":2,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-12]":{"starter_content":true,"value":{"title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","position":3,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"nav_menu_item[-13]":{"starter_content":true,"value":{"title":"Email","url":"mailto:wordpress@example.com","position":4,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"twentytwenty::nav_menu_locations[social]":{"starter_content":true,"value":-9,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"page_on_front":{"starter_content":true,"value":11,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"page_for_posts":{"starter_content":true,"value":14,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"},"old_sidebars_widgets_data":{"value":{"wp_inactive_widgets":[],"sidebar-1":["text-2"],"sidebar-2":["text-3"]},"type":"global_variable","user_id":1,"date_modified_gmt":"2021-08-19 15:00:45"}}', '', '', 'auto-draft', 'closed', 'closed', '', 'db8cd21b-17c4-4ad6-969c-da4c57de55f7', '', '', '2021-08-19 15:00:45', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-08-19 15:00:55', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/wp-content/uploads/2021/08/2020-landscape-1-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '<!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {"align":"wide"} --><div class="wp-block-columns alignwide"><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class="wp-block-column"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:heading {"level":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {"className":"is-style-outline"} --><div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {"align":"full","id":37,"sizeSlug":"full"} --><figure class="wp-block-image alignfull size-full"><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png" alt="" class="wp-image-37"/></figure><!-- /wp:image --><!-- wp:group {"align":"wide"} --><div class="wp-block-group alignwide"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center","textColor":"accent"} --><h2 class="has-accent-color has-text-align-center">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {"dropCap":true} --><p class="has-drop-cap">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {"customBackgroundColor":"#ffffff","align":"wide"} --><div class="wp-block-group alignwide has-background" style="background-color:#ffffff"><div class="wp-block-group__inner-container"><!-- wp:group --><div class="wp-block-group"><div class="wp-block-group__inner-container"><!-- wp:heading {"align":"center"} --><h2 class="has-text-align-center">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {"align":"center"} --><p class="has-text-align-center">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {"align":"center"} --><div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {"ids":[39,38],"align":"wide"} --><figure class="wp-block-gallery alignwide columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" alt="" data-id="39" data-full-url="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-2.png" data-link="assets/images/2020-square-2/" class="wp-image-39"/></figure></li><li class="blocks-gallery-item"><figure><img src="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" alt="" data-id="38" data-full-url="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1.png" data-link="https://monie.42.fr/wp-content/themes/twentytwenty/assets/images/2020-square-1/" class="wp-image-38"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:55', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-08-19 15:00:56', '0000-00-00 00:00:00', '{"widget_text[2]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"About This Site","is_widget_customizer_js_value":true,"instance_hash_key":"993cc0cfe323835b3ba537fd972bab41"},"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"sidebars_widgets[sidebar-1]":{"starter_content":true,"value":["text-2"],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"widget_text[3]":{"starter_content":true,"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"Find Us","is_widget_customizer_js_value":true,"instance_hash_key":"e3ff58ed43b6ee33594a588202a232c0"},"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"sidebars_widgets[sidebar-2]":{"starter_content":true,"value":["text-3"],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menus_created_posts":{"starter_content":true,"value":[16,17,18,19,20],"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu[-1]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-1]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"https:\\/\\/monie.42.fr\\/","position":0,"nav_menu_term_id":-1,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-2]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":18,"position":1,"nav_menu_term_id":-1,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-3]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":20,"position":2,"nav_menu_term_id":-1,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-4]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":19,"position":3,"nav_menu_term_id":-1,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"twentytwenty::nav_menu_locations[primary]":{"starter_content":true,"value":-1,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu[-5]":{"starter_content":true,"value":{"name":"Primary"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-5]":{"starter_content":true,"value":{"type":"custom","title":"Home","url":"https:\\/\\/monie.42.fr\\/","position":0,"nav_menu_term_id":-5,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-6]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":18,"position":1,"nav_menu_term_id":-5,"title":"About"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-7]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":20,"position":2,"nav_menu_term_id":-5,"title":"Blog"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-8]":{"starter_content":true,"value":{"type":"post_type","object":"page","object_id":19,"position":3,"nav_menu_term_id":-5,"title":"Contact"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"twentytwenty::nav_menu_locations[expanded]":{"starter_content":true,"value":-5,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu[-9]":{"starter_content":true,"value":{"name":"Social Links Menu"},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-9]":{"starter_content":true,"value":{"title":"Yelp","url":"https:\\/\\/www.yelp.com","position":0,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-10]":{"starter_content":true,"value":{"title":"Facebook","url":"https:\\/\\/www.facebook.com\\/wordpress","position":1,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-11]":{"starter_content":true,"value":{"title":"Twitter","url":"https:\\/\\/twitter.com\\/wordpress","position":2,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-12]":{"starter_content":true,"value":{"title":"Instagram","url":"https:\\/\\/www.instagram.com\\/explore\\/tags\\/wordcamp\\/","position":3,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"nav_menu_item[-13]":{"starter_content":true,"value":{"title":"Email","url":"mailto:wordpress@example.com","position":4,"nav_menu_term_id":-9,"object_id":0},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"twentytwenty::nav_menu_locations[social]":{"starter_content":true,"value":-9,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"show_on_front":{"starter_content":true,"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"page_on_front":{"starter_content":true,"value":17,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"page_for_posts":{"starter_content":true,"value":20,"type":"option","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"},"old_sidebars_widgets_data":{"value":{"wp_inactive_widgets":[],"sidebar-1":["text-2"],"sidebar-2":["text-3"]},"type":"global_variable","user_id":1,"date_modified_gmt":"2021-08-19 15:00:56"}}', '', '', 'auto-draft', 'closed', 'closed', '', 'c9eb9e44-c5d4-4fb5-974d-047be2138dbb', '', '', '2021-08-19 15:00:56', '0000-00-00 00:00:00', '', 0, 'https://monie.42.fr/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2021-08-19 15:01:36', '2021-08-19 15:01:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello peer!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-08-19 15:01:36', '2021-08-19 15:01:36', '', 1, 'https://monie.42.fr/?p=22', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'monie'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"7764749dadbbf390410b07aa782b743fd69102712a2708f95c75d242f57cb05f";a:4:{s:10:"expiration";i:1630594628;s:2:"ip";s:10:"172.30.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0";s:5:"login";i:1629385028;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.30.0.0";}'),
(19, 2, 'nickname', 'user'),
(20, 2, 'first_name', 'peer'),
(21, 2, 'last_name', 'to'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(31, 2, 'wp_user_level', '7'),
(32, 2, 'dismissed_wp_pointers', '') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'monie', '$P$BxHnA8nvEdWSjWRxMYi3u9boG1AN8C.', 'monie', 'monie@mail.com', 'https://monie.42.fr', '2021-08-19 14:56:46', '', 0, 'monie'),
(2, 'user', '$P$BNN5REiFFWleHAdRq217h9kS2xcv7x0', 'user', 'user@mail.com', 'http://peer', '2021-08-19 14:59:19', '1629385161:$P$B95r6z8LToOtr9/TmNzQ47qTXPT/sQ/', 0, 'peer to') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#
