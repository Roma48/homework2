-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 24 2014 г., 06:38
-- Версия сервера: 5.5.40-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-10-15 18:20:44', '2014-10-15 18:20:44', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp.home', 'yes'),
(2, 'home', 'http://wp.home', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@wp.home', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentyfourteen', 'yes'),
(42, 'stylesheet', 'twentyfourteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1414136640;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1414171413;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1414174850;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1414174871;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1414131991;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(99, '_transient_random_seed', '3024f9844ebfe2c72ae2df378797f020', 'yes'),
(101, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1414131992;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(102, 'auth_key', '#BLh0!cpN4OJXtvAV@8n^U;{M>SkyaTqgds nPi(Q3g`5s+kM/;{_/[WYO/TQ(KG', 'yes'),
(103, 'auth_salt', '7$+X4vQ>}[[,fdg!En3C2{#hBZBAX5 vKE$1i<j8ZsLa<{VANV]*IW&~I8A?Jxi~', 'yes'),
(104, 'logged_in_key', '/2#PUA~k]X7o?Hf+=P$lj^Pt{,xo>zXT~@$OcPzrv(igV|KO!*>~7aTo:M&.|4]@', 'yes'),
(105, 'logged_in_salt', 'HKz-DJ/-/{!TL0t`NR.Y_w:{|*XkPt5ZT84XV~T3vyt1/(fP#srjW!Tr.I$ `Mso', 'yes'),
(108, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1414131992;s:7:"checked";a:3:{s:14:"twentyfourteen";s:3:"1.2";s:14:"twentythirteen";s:3:"1.3";s:12:"twentytwelve";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(109, 'nonce_key', '7CA^E!iaheo|whR_LCYoEk*Sq>QM4Q.Z;wQGtl|;3|Devj--7%<x?^(fwnj]8`;F', 'yes'),
(110, 'nonce_salt', 'OIxilS1e-mPjEqX#d> Yv8d*b_`v?TAf:F3[@b]:GOCGX.ZM8F?CCSvu.](Nj O/', 'yes'),
(111, '_site_transient_timeout_browser_a3f32cf0762485b949829652a42956d1', '1414002056', 'yes'),
(112, '_site_transient_browser_a3f32cf0762485b949829652a42956d1', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"38.0.2125.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'can_compress_scripts', '0', 'yes'),
(140, 'current_theme', 'Twenty Fourteen', 'yes'),
(141, 'theme_mods_twentytwelve', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1413450314;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'widget_calendar', 'a:2:{s:12:"_multiwidget";i:1;i:1;a:0:{}}', 'yes'),
(178, '_transient_timeout_plugin_slugs', '1414086772', 'no'),
(179, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(206, 'category_children', 'a:1:{i:2;a:3:{i:0;i:4;i:1;i:5;i:2;i:6;}}', 'yes'),
(210, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(211, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(212, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(213, 'widget_widget_twentyfourteen_ephemera', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(214, 'theme_mods_twentyfourteen', 'a:8:{s:16:"header_textcolor";s:3:"fff";s:16:"background_color";s:6:"f5f5f5";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:6:"scroll";s:23:"featured_content_layout";s:6:"slider";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(218, 'WPLANG', '', 'yes'),
(223, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(236, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1414116626', 'no'),
(237, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(243, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(244, '_transient_is_multi_author', '0', 'yes'),
(245, '_transient_twentyfourteen_category_count', '5', 'yes'),
(247, '_site_transient_timeout_theme_roots', '1414133792', 'yes'),
(248, '_site_transient_theme_roots', 'a:3:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_edit_last', '1'),
(3, 6, '_edit_lock', '1414001972:1'),
(4, 7, '_wp_attached_file', '2014/10/acer-e1414002071126.jpg'),
(5, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:409;s:4:"file";s:31:"2014/10/acer-e1414002071126.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"acer-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"acer-e1414002071126-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:31:"acer-e1414002071126-600x372.jpg";s:5:"width";i:600;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(8, 7, '_wp_attachment_backup_sizes', 'a:3:{s:9:"full-orig";a:3:{s:5:"width";i:600;s:6:"height";i:409;s:4:"file";s:8:"acer.jpg";}s:11:"medium-orig";a:4:{s:4:"file";s:16:"acer-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:16:"acer-600x372.jpg";s:5:"width";i:600;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}'),
(9, 6, '_thumbnail_id', '7'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1414002507:1'),
(13, 10, '_wp_attached_file', '2014/10/hp_probook_455_f0x96es_12401865.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:435;s:4:"file";s:43:"2014/10/hp_probook_455_f0x96es_12401865.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"hp_probook_455_f0x96es_12401865-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"hp_probook_455_f0x96es_12401865-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:43:"hp_probook_455_f0x96es_12401865-600x372.jpg";s:5:"width";i:600;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(15, 9, '_thumbnail_id', '10'),
(17, 12, '_edit_last', '1'),
(18, 12, '_edit_lock', '1414003806:1'),
(19, 13, '_wp_attached_file', '2014/10/apple_macbook_pro_retina_13_me866ua_a_12324525.jpg'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:351;s:4:"file";s:58:"2014/10/apple_macbook_pro_retina_13_me866ua_a_12324525.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"apple_macbook_pro_retina_13_me866ua_a_12324525-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:58:"apple_macbook_pro_retina_13_me866ua_a_12324525-300x175.jpg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(21, 12, '_thumbnail_id', '13'),
(23, 15, '_menu_item_type', 'post_type'),
(24, 15, '_menu_item_menu_item_parent', '0'),
(25, 15, '_menu_item_object_id', '2'),
(26, 15, '_menu_item_object', 'page'),
(27, 15, '_menu_item_target', ''),
(28, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 15, '_menu_item_xfn', ''),
(30, 15, '_menu_item_url', ''),
(31, 15, '_menu_item_orphaned', '1414003759'),
(32, 16, '_menu_item_type', 'custom'),
(33, 16, '_menu_item_menu_item_parent', '0'),
(34, 16, '_menu_item_object_id', '16'),
(35, 16, '_menu_item_object', 'custom'),
(36, 16, '_menu_item_target', ''),
(37, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 16, '_menu_item_xfn', ''),
(39, 16, '_menu_item_url', 'http://wp.home/'),
(41, 17, '_menu_item_type', 'taxonomy'),
(42, 17, '_menu_item_menu_item_parent', '0'),
(43, 17, '_menu_item_object_id', '4'),
(44, 17, '_menu_item_object', 'category'),
(45, 17, '_menu_item_target', ''),
(46, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 17, '_menu_item_xfn', ''),
(48, 17, '_menu_item_url', ''),
(50, 18, '_menu_item_type', 'taxonomy'),
(51, 18, '_menu_item_menu_item_parent', '0'),
(52, 18, '_menu_item_object_id', '5'),
(53, 18, '_menu_item_object', 'category'),
(54, 18, '_menu_item_target', ''),
(55, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 18, '_menu_item_xfn', ''),
(57, 18, '_menu_item_url', ''),
(59, 19, '_menu_item_type', 'taxonomy'),
(60, 19, '_menu_item_menu_item_parent', '0'),
(61, 19, '_menu_item_object_id', '6'),
(62, 19, '_menu_item_object', 'category'),
(63, 19, '_menu_item_target', ''),
(64, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 19, '_menu_item_xfn', ''),
(66, 19, '_menu_item_url', ''),
(67, 21, '_edit_last', '1'),
(68, 21, '_edit_lock', '1414073440:1'),
(69, 21, '_thumbnail_id', '10'),
(70, 21, '_wp_page_template', 'page-templates/full-width.php'),
(71, 22, '_menu_item_type', 'post_type'),
(72, 22, '_menu_item_menu_item_parent', '0'),
(73, 22, '_menu_item_object_id', '21'),
(74, 22, '_menu_item_object', 'page'),
(75, 22, '_menu_item_target', ''),
(76, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 22, '_menu_item_xfn', ''),
(78, 22, '_menu_item_url', ''),
(79, 24, '_edit_last', '1'),
(80, 24, '_edit_lock', '1414073624:1'),
(81, 24, '_thumbnail_id', '7'),
(82, 24, '_wp_page_template', 'default'),
(83, 25, '_menu_item_type', 'post_type'),
(84, 25, '_menu_item_menu_item_parent', '0'),
(85, 25, '_menu_item_object_id', '24'),
(86, 25, '_menu_item_object', 'page'),
(87, 25, '_menu_item_target', ''),
(88, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 25, '_menu_item_xfn', ''),
(90, 25, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-10-15 18:20:44', '2014-10-15 18:20:44', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-10-15 18:20:44', '2014-10-15 18:20:44', '', 0, 'http://wp.home/?p=1', 0, 'post', '', 1),
(2, 1, '2014-10-15 18:20:44', '2014-10-15 18:20:44', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wp.home/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-10-15 18:20:44', '2014-10-15 18:20:44', '', 0, 'http://wp.home/?page_id=2', 0, 'page', '', 0),
(5, 1, '2014-10-22 17:52:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-22 17:52:50', '0000-00-00 00:00:00', '', 0, 'http://wp.home/?p=5', 0, 'post', '', 0),
(6, 1, '2014-10-22 18:18:00', '2014-10-22 18:18:00', '<b>Aspire E1-570</b> — это представитель серии ноутбуков Aspire E от <b>Acer</b>, который предоставляет мощные и полезные функции за разумную цену.\r\n\r\nВысокая производительность, широкие мультимедийные возможности и удобное подключение превращают ежедневную работу на компьютере в непрерывное удовольствие. Этот ноутбук с практичным, но стильным дизайном поставляется с экраном 15.6".\r\n\r\n<b>Особенности:</b>\r\n<ul>\r\n	<li><b>Повышенная мощность</b></li>\r\n</ul>\r\nДоступный ноутбук Aspire E с современным процессором Intel Core i3-3227U (1.9 ГГц) позволит выходить в интернет, поддерживать связь и играть в игры на ходу. Насладитесь удобством управления Windows 8.1 на 15.6" экране высокого разрешения. Жесткий диск большого объема (750 ГБ) позволит хранить больше медиа-контента.\r\n<ul>\r\n	<li><b>Красивый и тонкий</b></li>\r\n</ul>\r\nНесмотря на свою небольшую толщину 25 мм, Aspire E вмещает в себя полноценный привод DVD Super Multi. Ноутбук обладает высокой производительностью, чтобы справиться с вашей работой и достаточно компактный, чтобы можно было не задумываясь брать его с собой в дорогу.\r\n<ul>\r\n	<li><b>Море развлечений</b></li>\r\n</ul>\r\nБлагодаря великолепному экрану WXGA Acer ComfyView, кинофильмы и видеоролики будут выглядеть потрясающе. Воспользуйтесь кабелем HDMI, чтобы просматривать фильмы на большом экране, а дискретная графика от nVidia сделает процесс игры максимально увлекательным.', 'Acer Aspire E1-570G-33224G75Mnkk ', '', 'publish', 'open', 'open', '', 'acer-aspire-e1-570g-33224g75mnkk', '', '', '2014-10-22 18:21:26', '2014-10-22 18:21:26', '', 0, 'http://wp.home/?p=6', 0, 'post', '', 0),
(7, 1, '2014-10-22 18:16:52', '2014-10-22 18:16:52', '', 'acer', '', 'inherit', 'open', 'open', '', 'acer', '', '', '2014-10-22 18:16:52', '2014-10-22 18:16:52', '', 6, 'http://wp.home/wp-content/uploads/2014/10/acer.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2014-10-22 18:18:00', '2014-10-22 18:18:00', '<b>Aspire E1-570</b> — это представитель серии ноутбуков Aspire E от <b>Acer</b>, который предоставляет мощные и полезные функции за разумную цену.\r\n\r\nВысокая производительность, широкие мультимедийные возможности и удобное подключение превращают ежедневную работу на компьютере в непрерывное удовольствие. Этот ноутбук с практичным, но стильным дизайном поставляется с экраном 15.6".\r\n\r\n<b>Особенности:</b>\r\n<ul>\r\n	<li><b>Повышенная мощность</b></li>\r\n</ul>\r\nДоступный ноутбук Aspire E с современным процессором Intel Core i3-3227U (1.9 ГГц) позволит выходить в интернет, поддерживать связь и играть в игры на ходу. Насладитесь удобством управления Windows 8.1 на 15.6" экране высокого разрешения. Жесткий диск большого объема (750 ГБ) позволит хранить больше медиа-контента.\r\n<ul>\r\n	<li><b>Красивый и тонкий</b></li>\r\n</ul>\r\nНесмотря на свою небольшую толщину 25 мм, Aspire E вмещает в себя полноценный привод DVD Super Multi. Ноутбук обладает высокой производительностью, чтобы справиться с вашей работой и достаточно компактный, чтобы можно было не задумываясь брать его с собой в дорогу.\r\n<ul>\r\n	<li><b>Море развлечений</b></li>\r\n</ul>\r\nБлагодаря великолепному экрану WXGA Acer ComfyView, кинофильмы и видеоролики будут выглядеть потрясающе. Воспользуйтесь кабелем HDMI, чтобы просматривать фильмы на большом экране, а дискретная графика от nVidia сделает процесс игры максимально увлекательным.', 'Acer Aspire E1-570G-33224G75Mnkk ', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-10-22 18:18:00', '2014-10-22 18:18:00', '', 6, 'http://wp.home/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-10-22 18:30:42', '2014-10-22 18:30:42', 'С легкостью выполняйте свои должностные обязанности. Работайте более продуманно и выглядите при этом стильно — устройство HP ProBook обеспечит эффективность вашей работы, где бы вы ни оказались. Положитесь на прочность наружной конструкции и внутренних компонентов, которые дополняются встроенной защитой и водостойкой температурой. Кроме того, взяв с собой это устройство, вы не почувствуете никакой тяжести из-за тонкой и стильной конструкции.\r\n\r\n<b>Создано для эффективной работы</b>\r\n<ul>\r\n	<li>Привлекательный и ощутимый стиль. Используйте технологию HP, которой вы доверяете, а также ультрасовременный стиль, который представляет собой именно то, что вам нужно.</li>\r\n	<li>Мощь и эффективность HP ProBook дополняются надежностью конструкции и элегантностью покрытия.</li>\r\n	<li>Сверхскорость. Передача данных стала как никогда быстрой. С использованием USB 3.0 вы получите более быстрые скорости передачи и повышенную пропускную способность.</li>\r\n	<li>Пользуйтесь всеми преимуществами виртуальных конференций. Технология DTS Sound+ и веб-камера HD сделает вашу работу живой и интересной, обогатив ее звуком и видео.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Защитите свои труды</b>\r\n<ul>\r\n	<li>Держитесь на шаг впереди хакеров и злоумышленников. Встроенные средства безопасности защищают ваше устройство HP ProBook от вирусов, определяют возможное повреждение и предупреждают о несанкционированных изменениях.</li>\r\n	<li>Программное обеспечение HP Client Security позволяет шифровать ваш жесткий диск, окончательно удалять нежелательные или устаревшие данные, ограничивать несанкционированный доступ и многое другое.</li>\r\n	<li>Постоянная работоспособность. HP BIOS Protection обеспечивает дополнительную защиту от вирусных атак и других угроз безопасности, и предназначается для предотвращения потери данных и снижения времени простоев.</li>\r\n	<li>Больше не нужно запоминать пароли. Диспетчер паролей HP Password Manager позволяет быстро выполнять вход в различные сетевые учетные записи. Теперь ваши пароли будут более длинными и безопасными.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Надежность в любой работе</b>\r\n<ul>\r\n	<li>Устройства HP ProBook проходят всестороннее тестирование, так что вы можете быть спокойны за их работоспособность. В ходе тестирования HP Total Test Process компьютеры проходят около 115000 часов интенсивной работы, так что они смогут выдержать даже самые жесткие рабочие условия.</li>\r\n	<li>Всегда есть риск удара своего устройства. Технология HP 3D DriveGuard обеспечивает защиту данных, когда вы находитесь в пути. Она определяет внезапные движения и защищает жесткий диск.</li>\r\n	<li>Справляйтесь со своей рабочей нагрузкой благодаря технологии, которая с самого начала отличалась надежностью. Это устройство HP ProBook выполнено с использованием оптоволокна, которое и служит причиной его легкости и прочности.</li>\r\n	<li>Водостойкая клавиатура защищает чувствительную электронику и ключевые компоненты ноутбука от попадания жидкости в небольших количествах благодаря тонкой майларовой пленке под клавишами.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Все дело в подключениях</b>\r\n<ul>\r\n	<li>Благодаря беспроводной точке доступа HP Wireless Hotspot вы без труда предоставите доступ к своему интернет-подключению, помогая своим коллегам быстро выйти в Интернет и повысить эффективность работы.</li>\r\n	<li>Не давайте рабочему месту вас ограничивать. Работайте в разных местах, используя возможность высокоскоростных беспроводных подключений.</li>\r\n	<li>Демонстрируйте презентации, видеоролики и прочие материалы на экране ТВ.</li>\r\n	<li>Уделяйте больше времени личному общению. Вы готовы для веб-чатов и конференций, так как это практически общение вживую.</li>\r\n</ul>', 'HP ProBook 455 (F0X96ES) ', '', 'publish', 'open', 'open', '', 'hp-probook-455-f0x96es', '', '', '2014-10-22 18:30:43', '2014-10-22 18:30:43', '', 0, 'http://wp.home/?p=9', 0, 'post', '', 0),
(10, 1, '2014-10-22 18:30:28', '2014-10-22 18:30:28', '', 'hp_probook_455_f0x96es_12401865', '', 'inherit', 'open', 'open', '', 'hp_probook_455_f0x96es_12401865', '', '', '2014-10-22 18:30:28', '2014-10-22 18:30:28', '', 9, 'http://wp.home/wp-content/uploads/2014/10/hp_probook_455_f0x96es_12401865.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2014-10-22 18:30:43', '2014-10-22 18:30:43', 'С легкостью выполняйте свои должностные обязанности. Работайте более продуманно и выглядите при этом стильно — устройство HP ProBook обеспечит эффективность вашей работы, где бы вы ни оказались. Положитесь на прочность наружной конструкции и внутренних компонентов, которые дополняются встроенной защитой и водостойкой температурой. Кроме того, взяв с собой это устройство, вы не почувствуете никакой тяжести из-за тонкой и стильной конструкции.\r\n\r\n<b>Создано для эффективной работы</b>\r\n<ul>\r\n	<li>Привлекательный и ощутимый стиль. Используйте технологию HP, которой вы доверяете, а также ультрасовременный стиль, который представляет собой именно то, что вам нужно.</li>\r\n	<li>Мощь и эффективность HP ProBook дополняются надежностью конструкции и элегантностью покрытия.</li>\r\n	<li>Сверхскорость. Передача данных стала как никогда быстрой. С использованием USB 3.0 вы получите более быстрые скорости передачи и повышенную пропускную способность.</li>\r\n	<li>Пользуйтесь всеми преимуществами виртуальных конференций. Технология DTS Sound+ и веб-камера HD сделает вашу работу живой и интересной, обогатив ее звуком и видео.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Защитите свои труды</b>\r\n<ul>\r\n	<li>Держитесь на шаг впереди хакеров и злоумышленников. Встроенные средства безопасности защищают ваше устройство HP ProBook от вирусов, определяют возможное повреждение и предупреждают о несанкционированных изменениях.</li>\r\n	<li>Программное обеспечение HP Client Security позволяет шифровать ваш жесткий диск, окончательно удалять нежелательные или устаревшие данные, ограничивать несанкционированный доступ и многое другое.</li>\r\n	<li>Постоянная работоспособность. HP BIOS Protection обеспечивает дополнительную защиту от вирусных атак и других угроз безопасности, и предназначается для предотвращения потери данных и снижения времени простоев.</li>\r\n	<li>Больше не нужно запоминать пароли. Диспетчер паролей HP Password Manager позволяет быстро выполнять вход в различные сетевые учетные записи. Теперь ваши пароли будут более длинными и безопасными.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Надежность в любой работе</b>\r\n<ul>\r\n	<li>Устройства HP ProBook проходят всестороннее тестирование, так что вы можете быть спокойны за их работоспособность. В ходе тестирования HP Total Test Process компьютеры проходят около 115000 часов интенсивной работы, так что они смогут выдержать даже самые жесткие рабочие условия.</li>\r\n	<li>Всегда есть риск удара своего устройства. Технология HP 3D DriveGuard обеспечивает защиту данных, когда вы находитесь в пути. Она определяет внезапные движения и защищает жесткий диск.</li>\r\n	<li>Справляйтесь со своей рабочей нагрузкой благодаря технологии, которая с самого начала отличалась надежностью. Это устройство HP ProBook выполнено с использованием оптоволокна, которое и служит причиной его легкости и прочности.</li>\r\n	<li>Водостойкая клавиатура защищает чувствительную электронику и ключевые компоненты ноутбука от попадания жидкости в небольших количествах благодаря тонкой майларовой пленке под клавишами.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Все дело в подключениях</b>\r\n<ul>\r\n	<li>Благодаря беспроводной точке доступа HP Wireless Hotspot вы без труда предоставите доступ к своему интернет-подключению, помогая своим коллегам быстро выйти в Интернет и повысить эффективность работы.</li>\r\n	<li>Не давайте рабочему месту вас ограничивать. Работайте в разных местах, используя возможность высокоскоростных беспроводных подключений.</li>\r\n	<li>Демонстрируйте презентации, видеоролики и прочие материалы на экране ТВ.</li>\r\n	<li>Уделяйте больше времени личному общению. Вы готовы для веб-чатов и конференций, так как это практически общение вживую.</li>\r\n</ul>', 'HP ProBook 455 (F0X96ES) ', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2014-10-22 18:30:43', '2014-10-22 18:30:43', '', 9, 'http://wp.home/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-10-22 18:35:47', '2014-10-22 18:35:47', '<b>Такого вы еще не видели. Потому что такого еще не было.</b>\r\nПередовой дисплей Retina. Только флэш-память. Самый быстрый процессор для портативных компьютеров. Всё это в удивительно тонком и лёгком корпусе с диагональю экрана 13 дюймов. Сочетание всех этих инноваций выводит MacBook Pro на принципиально новый уровень. И работая на этом ноутбуке, вы тоже перейдёте на новый уровень.\r\n\r\n<b>Жисплей Retina. Вы видите всю картину — в невиданных деталях.</b>\r\nНа экране Retina изображение такое же яркое и живое, как ваше воображение и исключительно насыщенное, богатое и чёткое. 13-дюймовый MacBook Pro с дисплеем Retina — это ноутбук с самым высоким в мире разрешением экрана.\r\n\r\n<b>Только флеш-память. Все исполняется быстрее.</b>\r\nКогда вы ставите себе целью создание передового высокопроизводительного ноутбука, нужно начать с самого основания. У MacBook Pro с дисплеем Retina — это флэш-память. Ноутбук, использующий исключительно флэш-память, не только надёжнее, долговечнее и экономнее — он ещё и быстрее. Намного быстрее.\r\n\r\n<b>Самый быстрый процессор для портативного компьютера.</b>\r\nНоутбук MacBook Pro с дисплеем Retina оснащен новейшими двухъядерным процессором Intel. Именно благодаря ему высокопроизводительный ноутбук работает с такой скоростью.\r\n\r\n<b>Графика нового поколения. Безупречный показ.</b>\r\nГрафика отличается невероятной быстротой, плавностью и реалистичностью — вы забудете о том, что перед вами экран ноутбука.\r\n\r\n<b>Усовершенствованный дизайн динамиков. Неслыханное качество звука.</b>\r\nЕсли вы не слышали, как звучат динамики нового MacBook Pro, — считайте, что вы ничего не слышали. Для такого тонкого и лёгкого устройства звук просто великолепен. С его широким динамическим диапазоном, оптимальным балансом и чётким выразительным звучанием динамиков звук настолько хорош, что в это невозможно поверить. Всё это благодаря неустанной заботе наших специалистов о качестве каждого децибела, который вы слышите.\r\n\r\n<b>Сдвоенные микрофоны. Вас очень хорошо слышно.</b>\r\nВстроенные сдвоенные микрофоны помогут вам быть услышанными. Например, при видеозвонках FaceTime микрофоны снижают уровень фоновых шумов за ноутбуком. А при использовании Диктовки они создают адаптивный поток звука, который с помощью специального алгоритма выделяет ваш голос из фонового шума.\r\n\r\n<b>Все в Ваших руках. Трекпад Multi-touch.</b>\r\nТехнология Multi-Touch в OS X является очень важной частью работы с Mac. Используя простые, интуитивно понятные жесты, вы можете переключаться между приложениями, работать со своим контентом и использовать экранное пространство по максимуму. MacBook Pro с дисплеем Retina оснащён большим трекпадом Multi-Touch со сплошной стеклянной поверхностью. Поэтому вам будет удобно делать все свои любимые жесты.\r\n\r\n<b>Ваша работа может быть ярче.</b>\r\nТонкий и лёгкий MacBook Pro можно взять куда угодно — в том числе и туда, где мало света. Встроенный датчик освещённости реагирует на изменение условий внешней освещённости и автоматически подстраивает яркость клавиатуры и дисплея. Так что вы никогда не останетесь в темноте.\r\n\r\n<b>Осторожно: гравировка!</b>\r\nДостаточно часто можно встретить компьютеры Apple с кириллическими сим­волами, нанесенными на клавиатуру методом гравирова­ния. Подобные действия рассма­триваются как «несанкцио­нированная модификация оборудования/части обору­дования», <b>что автоматически аннулирует возможность бесплатного обслуживания не только в рамках одногодичной ограниченной гарантии Apple, но и в рамках программ расширенной поддержки</b>.\r\n\r\n*В соответствии с <a href="http://www.apple.com/legal/warranty/" target="_blank">«Положением по ограниченной гарантии Apple»</a>, гарантия Apple сроком один год не распространяется на: ... (g) на изделия или запчасти, у которых были изменены функциональное назначение или возможности без письменного разрешения компании Apple. (стр. 52)\r\n\r\nКроме того, часто в случаях гравировки клавиатуры покупатель получает неполноценный продукт: кириллические символы на гравированных клавиатурах с подсветкой могут либо ее не иметь вообще, либо такая подсветка будет неравномерной, что ухудшает удобство пользования продуктом, а также нарушает его внешний вид и высокое заявленное качество от производителя.\r\n\r\n<b>Заводская клавиатура для продуктов, официально импортированных в Украину:</b>\r\n<ul>\r\n	<li>латинские буквы и буквы кириллицы расположены симметрично по диагонали</li>\r\n	<li>латинские буквы и буквы кириллицы имеют равный размер</li>\r\n	<li>на клавиатурах с подсветкой все символы подсвечены ярко и равномерно</li>\r\n</ul>\r\n&nbsp;', 'Apple MacBook Pro Retina 13" (ME866UA/A)', '', 'publish', 'open', 'open', '', 'apple-macbook-pro-retina-13-me866uaa', '', '', '2014-10-22 18:35:47', '2014-10-22 18:35:47', '', 0, 'http://wp.home/?p=12', 0, 'post', '', 0),
(13, 1, '2014-10-22 18:35:37', '2014-10-22 18:35:37', '', 'apple_macbook_pro_retina_13_me866ua_a_12324525', '', 'inherit', 'open', 'open', '', 'apple_macbook_pro_retina_13_me866ua_a_12324525', '', '', '2014-10-22 18:35:37', '2014-10-22 18:35:37', '', 12, 'http://wp.home/wp-content/uploads/2014/10/apple_macbook_pro_retina_13_me866ua_a_12324525.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2014-10-22 18:35:47', '2014-10-22 18:35:47', '<b>Такого вы еще не видели. Потому что такого еще не было.</b>\r\nПередовой дисплей Retina. Только флэш-память. Самый быстрый процессор для портативных компьютеров. Всё это в удивительно тонком и лёгком корпусе с диагональю экрана 13 дюймов. Сочетание всех этих инноваций выводит MacBook Pro на принципиально новый уровень. И работая на этом ноутбуке, вы тоже перейдёте на новый уровень.\r\n\r\n<b>Жисплей Retina. Вы видите всю картину — в невиданных деталях.</b>\r\nНа экране Retina изображение такое же яркое и живое, как ваше воображение и исключительно насыщенное, богатое и чёткое. 13-дюймовый MacBook Pro с дисплеем Retina — это ноутбук с самым высоким в мире разрешением экрана.\r\n\r\n<b>Только флеш-память. Все исполняется быстрее.</b>\r\nКогда вы ставите себе целью создание передового высокопроизводительного ноутбука, нужно начать с самого основания. У MacBook Pro с дисплеем Retina — это флэш-память. Ноутбук, использующий исключительно флэш-память, не только надёжнее, долговечнее и экономнее — он ещё и быстрее. Намного быстрее.\r\n\r\n<b>Самый быстрый процессор для портативного компьютера.</b>\r\nНоутбук MacBook Pro с дисплеем Retina оснащен новейшими двухъядерным процессором Intel. Именно благодаря ему высокопроизводительный ноутбук работает с такой скоростью.\r\n\r\n<b>Графика нового поколения. Безупречный показ.</b>\r\nГрафика отличается невероятной быстротой, плавностью и реалистичностью — вы забудете о том, что перед вами экран ноутбука.\r\n\r\n<b>Усовершенствованный дизайн динамиков. Неслыханное качество звука.</b>\r\nЕсли вы не слышали, как звучат динамики нового MacBook Pro, — считайте, что вы ничего не слышали. Для такого тонкого и лёгкого устройства звук просто великолепен. С его широким динамическим диапазоном, оптимальным балансом и чётким выразительным звучанием динамиков звук настолько хорош, что в это невозможно поверить. Всё это благодаря неустанной заботе наших специалистов о качестве каждого децибела, который вы слышите.\r\n\r\n<b>Сдвоенные микрофоны. Вас очень хорошо слышно.</b>\r\nВстроенные сдвоенные микрофоны помогут вам быть услышанными. Например, при видеозвонках FaceTime микрофоны снижают уровень фоновых шумов за ноутбуком. А при использовании Диктовки они создают адаптивный поток звука, который с помощью специального алгоритма выделяет ваш голос из фонового шума.\r\n\r\n<b>Все в Ваших руках. Трекпад Multi-touch.</b>\r\nТехнология Multi-Touch в OS X является очень важной частью работы с Mac. Используя простые, интуитивно понятные жесты, вы можете переключаться между приложениями, работать со своим контентом и использовать экранное пространство по максимуму. MacBook Pro с дисплеем Retina оснащён большим трекпадом Multi-Touch со сплошной стеклянной поверхностью. Поэтому вам будет удобно делать все свои любимые жесты.\r\n\r\n<b>Ваша работа может быть ярче.</b>\r\nТонкий и лёгкий MacBook Pro можно взять куда угодно — в том числе и туда, где мало света. Встроенный датчик освещённости реагирует на изменение условий внешней освещённости и автоматически подстраивает яркость клавиатуры и дисплея. Так что вы никогда не останетесь в темноте.\r\n\r\n<b>Осторожно: гравировка!</b>\r\nДостаточно часто можно встретить компьютеры Apple с кириллическими сим­волами, нанесенными на клавиатуру методом гравирова­ния. Подобные действия рассма­триваются как «несанкцио­нированная модификация оборудования/части обору­дования», <b>что автоматически аннулирует возможность бесплатного обслуживания не только в рамках одногодичной ограниченной гарантии Apple, но и в рамках программ расширенной поддержки</b>.\r\n\r\n*В соответствии с <a href="http://www.apple.com/legal/warranty/" target="_blank">«Положением по ограниченной гарантии Apple»</a>, гарантия Apple сроком один год не распространяется на: ... (g) на изделия или запчасти, у которых были изменены функциональное назначение или возможности без письменного разрешения компании Apple. (стр. 52)\r\n\r\nКроме того, часто в случаях гравировки клавиатуры покупатель получает неполноценный продукт: кириллические символы на гравированных клавиатурах с подсветкой могут либо ее не иметь вообще, либо такая подсветка будет неравномерной, что ухудшает удобство пользования продуктом, а также нарушает его внешний вид и высокое заявленное качество от производителя.\r\n\r\n<b>Заводская клавиатура для продуктов, официально импортированных в Украину:</b>\r\n<ul>\r\n	<li>латинские буквы и буквы кириллицы расположены симметрично по диагонали</li>\r\n	<li>латинские буквы и буквы кириллицы имеют равный размер</li>\r\n	<li>на клавиатурах с подсветкой все символы подсвечены ярко и равномерно</li>\r\n</ul>\r\n&nbsp;', 'Apple MacBook Pro Retina 13" (ME866UA/A)', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-10-22 18:35:47', '2014-10-22 18:35:47', '', 12, 'http://wp.home/?p=14', 0, 'revision', '', 0),
(15, 1, '2014-10-22 18:49:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-22 18:49:18', '0000-00-00 00:00:00', '', 0, 'http://wp.home/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2014-10-22 18:50:03', '2014-10-22 18:50:03', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-10-22 18:50:03', '2014-10-22 18:50:03', '', 0, 'http://wp.home/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2014-10-22 18:50:03', '2014-10-22 18:50:03', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2014-10-22 18:50:03', '2014-10-22 18:50:03', '', 2, 'http://wp.home/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2014-10-22 18:50:03', '2014-10-22 18:50:03', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-10-22 18:50:03', '2014-10-22 18:50:03', '', 2, 'http://wp.home/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2014-10-22 18:50:04', '2014-10-22 18:50:04', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2014-10-22 18:50:04', '2014-10-22 18:50:04', '', 2, 'http://wp.home/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2014-10-22 18:51:30', '2014-10-22 18:51:30', '<b>Такого вы еще не видели. Потому что такого еще не было.</b>\r\nПередовой дисплей Retina. Только флэш-память. Самый быстрый процессор для портативных компьютеров. Всё это в удивительно тонком и лёгком корпусе с диагональю экрана 13 дюймов. Сочетание всех этих инноваций выводит MacBook Pro на принципиально новый уровень. И работая на этом ноутбуке, вы тоже перейдёте на новый уровень.\r\n\r\n<b>Жисплей Retina. Вы видите всю картину — в невиданных деталях.</b>\r\nНа экране Retina изображение такое же яркое и живое, как ваше воображение и исключительно насыщенное, богатое и чёткое. 13-дюймовый MacBook Pro с дисплеем Retina — это ноутбук с самым высоким в мире разрешением экрана.\r\n\r\n<b>Только флеш-память. Все исполняется быстрее.</b>\r\nКогда вы ставите себе целью создание передового высокопроизводительного ноутбука, нужно начать с самого основания. У MacBook Pro с дисплеем Retina — это флэш-память. Ноутбук, использующий исключительно флэш-память, не только надёжнее, долговечнее и экономнее — он ещё и быстрее. Намного быстрее.\r\n\r\n<b>Самый быстрый процессор для портативного компьютера.</b>\r\nНоутбук MacBook Pro с дисплеем Retina оснащен новейшими двухъядерным процессором Intel. Именно благодаря ему высокопроизводительный ноутбук работает с такой скоростью.\r\n\r\n<b>Графика нового поколения. Безупречный показ.</b>\r\nГрафика отличается невероятной быстротой, плавностью и реалистичностью — вы забудете о том, что перед вами экран ноутбука.\r\n\r\n<b>Усовершенствованный дизайн динамиков. Неслыханное качество звука.</b>\r\nЕсли вы не слышали, как звучат динамики нового MacBook Pro, — считайте, что вы ничего не слышали. Для такого тонкого и лёгкого устройства звук просто великолепен. С его широким динамическим диапазоном, оптимальным балансом и чётким выразительным звучанием динамиков звук настолько хорош, что в это невозможно поверить. Всё это благодаря неустанной заботе наших специалистов о качестве каждого децибела, который вы слышите.\r\n\r\n<b>Сдвоенные микрофоны. Вас очень хорошо слышно.</b>\r\nВстроенные сдвоенные микрофоны помогут вам быть услышанными. Например, при видеозвонках FaceTime микрофоны снижают уровень фоновых шумов за ноутбуком. А при использовании Диктовки они создают адаптивный поток звука, который с помощью специального алгоритма выделяет ваш голос из фонового шума.\r\n\r\n<b>Все в Ваших руках. Трекпад Multi-touch.</b>\r\nТехнология Multi-Touch в OS X является очень важной частью работы с Mac. Используя простые, интуитивно понятные жесты, вы можете переключаться между приложениями, работать со своим контентом и использовать экранное пространство по максимуму. MacBook Pro с дисплеем Retina оснащён большим трекпадом Multi-Touch со сплошной стеклянной поверхностью. Поэтому вам будет удобно делать все свои любимые жесты.\r\n\r\n<b>Ваша работа может быть ярче.</b>\r\nТонкий и лёгкий MacBook Pro можно взять куда угодно — в том числе и туда, где мало света. Встроенный датчик освещённости реагирует на изменение условий внешней освещённости и автоматически подстраивает яркость клавиатуры и дисплея. Так что вы никогда не останетесь в темноте.\r\n\r\n<b>Осторожно: гравировка!</b>\r\nДостаточно часто можно встретить компьютеры Apple с кириллическими сим­волами, нанесенными на клавиатуру методом гравирова­ния. Подобные действия рассма­триваются как «несанкцио­нированная модификация оборудования/части обору­дования», <b>что автоматически аннулирует возможность бесплатного обслуживания не только в рамках одногодичной ограниченной гарантии Apple, но и в рамках программ расширенной поддержки</b>.\r\n\r\n*В соответствии с <a href="http://www.apple.com/legal/warranty/" target="_blank">«Положением по ограниченной гарантии Apple»</a>, гарантия Apple сроком один год не распространяется на: ... (g) на изделия или запчасти, у которых были изменены функциональное назначение или возможности без письменного разрешения компании Apple. (стр. 52)\r\n\r\nКроме того, часто в случаях гравировки клавиатуры покупатель получает неполноценный продукт: кириллические символы на гравированных клавиатурах с подсветкой могут либо ее не иметь вообще, либо такая подсветка будет неравномерной, что ухудшает удобство пользования продуктом, а также нарушает его внешний вид и высокое заявленное качество от производителя.\r\n\r\n<b>Заводская клавиатура для продуктов, официально импортированных в Украину:</b>\r\n<ul>\r\n	<li>латинские буквы и буквы кириллицы расположены симметрично по диагонали</li>\r\n	<li>латинские буквы и буквы кириллицы имеют равный размер</li>\r\n	<li>на клавиатурах с подсветкой все символы подсвечены ярко и равномерно</li>\r\n</ul>\r\n&nbsp;', 'Apple MacBook Pro Retina 13" (ME866UA/A)', '', 'inherit', 'open', 'open', '', '12-autosave-v1', '', '', '2014-10-22 18:51:30', '2014-10-22 18:51:30', '', 12, 'http://wp.home/?p=20', 0, 'revision', '', 0),
(21, 1, '2014-10-23 14:13:02', '2014-10-23 14:13:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2014-10-23 14:13:02', '2014-10-23 14:13:02', '', 0, 'http://wp.home/?page_id=21', 0, 'page', '', 0),
(22, 1, '2014-10-23 14:13:02', '2014-10-23 14:13:02', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2014-10-23 14:13:02', '2014-10-23 14:13:02', '', 0, 'http://wp.home/?p=22', 5, 'nav_menu_item', '', 0),
(23, 1, '2014-10-23 14:13:02', '2014-10-23 14:13:02', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'About', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2014-10-23 14:13:02', '2014-10-23 14:13:02', '', 21, 'http://wp.home/?p=23', 0, 'revision', '', 0),
(24, 1, '2014-10-23 14:15:07', '2014-10-23 14:15:07', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Contact us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2014-10-23 14:16:06', '2014-10-23 14:16:06', '', 0, 'http://wp.home/?page_id=24', 0, 'page', '', 0),
(25, 1, '2014-10-23 14:15:07', '2014-10-23 14:15:07', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2014-10-23 14:15:07', '2014-10-23 14:15:07', '', 0, 'http://wp.home/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2014-10-23 14:15:07', '2014-10-23 14:15:07', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Contact us', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-10-23 14:15:07', '2014-10-23 14:15:07', '', 24, 'http://wp.home/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-10-23 14:23:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-23 14:23:05', '0000-00-00 00:00:00', '', 0, 'http://wp.home/?page_id=27', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Notebook', 'notebook', 0),
(4, 'HP', 'hp', 0),
(5, 'Apple', 'apple', 0),
(6, 'Acer', 'acer', 0),
(7, 'acer', 'acer-2', 0),
(8, 'notebook', 'notebook-2', 0),
(9, 'hp', 'hp-2', 0),
(10, 'apple', 'apple-2', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(6, 6, 0),
(6, 7, 0),
(6, 8, 0),
(9, 2, 0),
(9, 4, 0),
(9, 8, 0),
(9, 9, 0),
(12, 2, 0),
(12, 5, 0),
(12, 8, 0),
(12, 10, 0),
(16, 11, 0),
(17, 11, 0),
(18, 11, 0),
(19, 11, 0),
(22, 11, 0),
(25, 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 3),
(4, 4, 'category', '', 2, 1),
(5, 5, 'category', '', 2, 1),
(6, 6, 'category', '', 2, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 3),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'midnight'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(16, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&imgsize=full'),
(17, 1, 'wp_user-settings-time', '1414003429'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(23, 1, 'session_tokens', 'a:1:{s:64:"0a0cd20c93ecfd5a4a387fec9ce996e0f9485c1521cc0e3e82a6898fdb5b063d";i:1414246224;}'),
(24, 2, 'nickname', 'Roma'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(34, 2, 'wp_user_level', '7'),
(35, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(36, 3, 'nickname', 'Sergey'),
(37, 3, 'first_name', ''),
(38, 3, 'last_name', ''),
(39, 3, 'description', ''),
(40, 3, 'rich_editing', 'true'),
(41, 3, 'comment_shortcuts', 'false'),
(42, 3, 'admin_color', 'fresh'),
(43, 3, 'use_ssl', '0'),
(44, 3, 'show_admin_bar_front', 'true'),
(45, 3, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(46, 3, 'wp_user_level', '2'),
(47, 3, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(48, 4, 'nickname', 'Vlad'),
(49, 4, 'first_name', ''),
(50, 4, 'last_name', ''),
(51, 4, 'description', ''),
(52, 4, 'rich_editing', 'true'),
(53, 4, 'comment_shortcuts', 'false'),
(54, 4, 'admin_color', 'fresh'),
(55, 4, 'use_ssl', '0'),
(56, 4, 'show_admin_bar_front', 'true'),
(57, 4, 'wp_capabilities', 'a:1:{s:11:"contributor";b:1;}'),
(58, 4, 'wp_user_level', '1'),
(59, 4, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BY7EBvaALtg/77GFBqYJ04xi1YcJyj.', 'admin', 'admin@wp.home', '', '2014-10-15 18:20:43', '', 0, 'admin'),
(2, 'Roma', '$P$BWcSXCavLlStzWtxcD.qILnz2yRykt0', 'roma', 'roma@wp.home', '', '2014-10-23 14:20:13', '', 0, 'Roma'),
(3, 'Sergey', '$P$BlSXy64d8b1zGOh8O7n1Pnjb4qmXbj.', 'sergey', 'sergey@wp.home', '', '2014-10-23 14:21:02', '', 0, 'Sergey'),
(4, 'Vlad', '$P$BDrO/F1gbAQEYGEfdip5N9dd5nV77R1', 'vlad', 'vlad@wp.home', '', '2014-10-23 14:21:47', '', 0, 'Vlad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
