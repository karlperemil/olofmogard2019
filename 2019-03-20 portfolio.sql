# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Värd: 127.0.0.1 (MySQL 5.6.35)
# Databas: portfolio2018
# Genereringstid: 2019-03-20 14:33:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabelldump wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Tabelldump wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2018-10-24 14:26:14','2018-10-24 14:26:14','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Tabelldump wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost:8888','yes'),
	(2,'home','http://localhost:8888','yes'),
	(3,'blogname','Portfolio 2018','yes'),
	(4,'blogdescription','Just another WordPress site','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','karlperemil@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=11&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:0:{}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','twentyseventeen','yes'),
	(41,'stylesheet','twentyseventeen','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','page','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:0:{}','yes'),
	(80,'widget_rss','a:0:{}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','11','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'wp_page_for_privacy_policy','3','yes'),
	(92,'show_comments_cookies_opt_in','0','yes'),
	(93,'initial_db_version','38590','yes'),
	(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(95,'fresh_site','0','yes'),
	(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),
	(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(111,'cron','a:5:{i:1553095574;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1553135174;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1553178480;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1553178494;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(112,'theme_mods_twentyseventeen','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-8.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-8.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.8\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1553091979;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}','no'),
	(125,'can_compress_scripts','1','no'),
	(207,'category_children','a:0:{}','yes'),
	(323,'_site_transient_timeout_browser_7939674abe8607f2875b0db315c93ce4','1553260171','no'),
	(324,'_site_transient_browser_7939674abe8607f2875b0db315c93ce4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
	(335,'_transient_is_multi_author','0','yes'),
	(342,'_transient_twentyseventeen_categories','2','yes'),
	(344,'_site_transient_timeout_theme_roots','1553092446','no'),
	(345,'_site_transient_theme_roots','a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
	(348,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1553091980;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.4.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}','no'),
	(349,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1553091981;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(2,3,'_wp_page_template','default'),
	(3,5,'_edit_last','1'),
	(4,5,'_edit_lock','1542974768:1'),
	(5,6,'_wp_attached_file','2018/10/Skärmklipp-2018-10-24-16.29.08.png'),
	(6,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1716;s:4:\"file\";s:44:\"2018/10/Skärmklipp-2018-10-24-16.29.08.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Skärmklipp-2018-10-24-16.29.08-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Skärmklipp-2018-10-24-16.29.08-300x179.png\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Skärmklipp-2018-10-24-16.29.08-768x458.png\";s:5:\"width\";i:768;s:6:\"height\";i:458;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"Skärmklipp-2018-10-24-16.29.08-1024x610.png\";s:5:\"width\";i:1024;s:6:\"height\";i:610;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:46:\"Skärmklipp-2018-10-24-16.29.08-2000x1200.png\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:44:\"Skärmklipp-2018-10-24-16.29.08-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(7,5,'_thumbnail_id','48'),
	(10,8,'_edit_last','1'),
	(11,8,'_edit_lock','1542974809:1'),
	(12,9,'_wp_attached_file','2018/10/indonesia_sulawesi_171067.jpg'),
	(13,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:37:\"2018/10/indonesia_sulawesi_171067.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"indonesia_sulawesi_171067-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"indonesia_sulawesi_171067-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"indonesia_sulawesi_171067-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"indonesia_sulawesi_171067-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:39:\"indonesia_sulawesi_171067-1920x1200.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:37:\"indonesia_sulawesi_171067-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(14,8,'_thumbnail_id','46'),
	(17,11,'_edit_last','1'),
	(18,11,'_edit_lock','1540574581:1'),
	(19,11,'_wp_page_template','page-startpage.php'),
	(23,15,'_edit_last','1'),
	(24,15,'_edit_lock','1540574790:1'),
	(25,15,'_wp_page_template','template-styles.php'),
	(26,18,'_edit_last','1'),
	(27,18,'_edit_lock','1542967376:1'),
	(28,18,'_wp_page_template','template-work.php'),
	(31,20,'_edit_last','1'),
	(32,20,'_wp_page_template','template-services.php'),
	(33,20,'_edit_lock','1552658757:1'),
	(34,22,'_edit_last','1'),
	(35,22,'_edit_lock','1542974628:1'),
	(36,22,'_thumbnail_id','43'),
	(45,43,'_wp_attached_file','2018/11/nespresso.png'),
	(46,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1265;s:6:\"height\";i:712;s:4:\"file\";s:21:\"2018/11/nespresso.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"nespresso-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"nespresso-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"nespresso-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"nespresso-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"nespresso-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(49,44,'_wp_attached_file','2018/10/sture.png'),
	(50,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1265;s:6:\"height\";i:844;s:4:\"file\";s:17:\"2018/10/sture.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sture-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"sture-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"sture-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"sture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(53,46,'_wp_attached_file','2018/10/sture-high-res.png'),
	(54,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1534;s:4:\"file\";s:26:\"2018/10/sture-high-res.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"sture-high-res-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"sture-high-res-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"sture-high-res-768x409.png\";s:5:\"width\";i:768;s:6:\"height\";i:409;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"sture-high-res-1024x545.png\";s:5:\"width\";i:1024;s:6:\"height\";i:545;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:28:\"sture-high-res-2000x1200.png\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"sture-high-res-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(59,48,'_wp_attached_file','2018/10/gun-fitness.png'),
	(60,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1265;s:6:\"height\";i:844;s:4:\"file\";s:23:\"2018/10/gun-fitness.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"gun-fitness-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"gun-fitness-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"gun-fitness-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"gun-fitness-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"gun-fitness-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(67,1,'_edit_lock','1542974959:1');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2018-10-24 14:26:14','2018-10-24 14:26:14','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2018-10-24 14:26:14','2018-10-24 14:26:14','',0,'http://localhost:8888/?p=1',0,'post','',1),
	(3,1,'2018-10-24 14:26:14','2018-10-24 14:26:14','<h2>Who we are</h2><p>Our website address is: http://localhost:8888.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>','Privacy Policy','','draft','closed','open','','privacy-policy','','','2018-10-24 14:26:14','2018-10-24 14:26:14','',0,'http://localhost:8888/?page_id=3',0,'page','',0),
	(5,1,'2018-10-24 14:29:50','2018-10-24 14:29:50','A fitness VR Experience with three different game modes.','Gun Fitness','','publish','open','open','','portfolio-post','','','2018-11-23 12:08:18','2018-11-23 12:08:18','',0,'http://localhost:8888/?p=5',0,'post','',0),
	(6,1,'2018-10-24 14:29:29','2018-10-24 14:29:29','','Skärmklipp 2018-10-24 16.29.08','','inherit','open','closed','','ska%cc%88rmklipp-2018-10-24-16-29-08','','','2018-10-24 14:29:29','2018-10-24 14:29:29','',5,'http://localhost:8888/wp-content/uploads/2018/10/Skärmklipp-2018-10-24-16.29.08.png',0,'attachment','image/png',0),
	(7,1,'2018-10-24 14:29:50','2018-10-24 14:29:50','Brödtext','Portfolio post','','inherit','closed','closed','','5-revision-v1','','','2018-10-24 14:29:50','2018-10-24 14:29:50','',5,'http://localhost:8888/2018/10/24/5-revision-v1/',0,'revision','',0),
	(8,1,'2018-10-24 14:31:05','2018-10-24 14:31:05','bördtext personal project','Sturekvarteret','','publish','open','open','','personal-project-post','','','2018-11-23 12:08:57','2018-11-23 12:08:57','',0,'http://localhost:8888/?p=8',0,'post','',0),
	(9,1,'2018-10-24 14:30:51','2018-10-24 14:30:51','','indonesia_sulawesi_171067','','inherit','open','closed','','indonesia_sulawesi_171067','','','2018-10-24 14:30:51','2018-10-24 14:30:51','',8,'http://localhost:8888/wp-content/uploads/2018/10/indonesia_sulawesi_171067.jpg',0,'attachment','image/jpeg',0),
	(10,1,'2018-10-24 14:31:05','2018-10-24 14:31:05','bördtext personal project','Personal project post','','inherit','closed','closed','','8-revision-v1','','','2018-10-24 14:31:05','2018-10-24 14:31:05','',8,'http://localhost:8888/2018/10/24/8-revision-v1/',0,'revision','',0),
	(11,1,'2018-10-24 14:35:04','2018-10-24 14:35:04','start page','startpage','','publish','closed','closed','','start-page','','','2018-10-24 14:45:18','2018-10-24 14:45:18','',0,'http://localhost:8888/?page_id=11',0,'page','',0),
	(12,1,'2018-10-24 14:35:04','2018-10-24 14:35:04','start page','Start page','','inherit','closed','closed','','11-revision-v1','','','2018-10-24 14:35:04','2018-10-24 14:35:04','',11,'http://localhost:8888/2018/10/24/11-revision-v1/',0,'revision','',0),
	(13,1,'2018-10-24 14:44:12','2018-10-24 14:44:12','start page','startpage','','inherit','closed','closed','','11-revision-v1','','','2018-10-24 14:44:12','2018-10-24 14:44:12','',11,'http://localhost:8888/2018/10/24/11-revision-v1/',0,'revision','',0),
	(15,1,'2018-10-26 17:25:49','2018-10-26 17:25:49','','styles','','publish','closed','closed','','styles','','','2018-10-26 17:26:29','2018-10-26 17:26:29','',0,'http://localhost:8888/?page_id=15',0,'page','',0),
	(16,1,'2018-10-26 17:25:49','2018-10-26 17:25:49','','styles','','inherit','closed','closed','','15-revision-v1','','','2018-10-26 17:25:49','2018-10-26 17:25:49','',15,'http://localhost:8888/2018/10/26/15-revision-v1/',0,'revision','',0),
	(18,1,'2018-11-02 16:05:59','2018-11-02 16:05:59','','work','','publish','closed','closed','','work','','','2018-11-23 10:01:33','2018-11-23 10:01:33','',0,'http://localhost:8888/?page_id=18',0,'page','',0),
	(19,1,'2018-11-02 16:05:59','2018-11-02 16:05:59','work brödtext','work','','inherit','closed','closed','','18-revision-v1','','','2018-11-02 16:05:59','2018-11-02 16:05:59','',18,'http://localhost:8888/2018/11/02/18-revision-v1/',0,'revision','',0),
	(20,1,'2018-11-02 16:24:23','2018-11-02 16:24:23','','Services','','publish','closed','closed','','services','','','2019-03-15 13:29:22','2019-03-15 13:29:22','',0,'http://localhost:8888/?page_id=20',0,'page','',0),
	(21,1,'2018-11-02 16:24:23','2018-11-02 16:24:23','about text','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-02 16:24:23','2018-11-02 16:24:23','',20,'http://localhost:8888/2018/11/02/20-revision-v1/',0,'revision','',0),
	(22,1,'2018-11-02 16:24:55','2018-11-02 16:24:55','text about post','Nespresso VR','','publish','open','open','','portfolio-post-2','','','2018-11-23 12:04:22','2018-11-23 12:04:22','',0,'http://localhost:8888/?p=22',0,'post','',0),
	(23,1,'2018-11-02 16:24:55','2018-11-02 16:24:55','text about post','portfolio post 2','','inherit','closed','closed','','22-revision-v1','','','2018-11-02 16:24:55','2018-11-02 16:24:55','',22,'http://localhost:8888/2018/11/02/22-revision-v1/',0,'revision','',0),
	(24,1,'2018-11-09 14:05:38','2018-11-09 14:05:38','<h1>I’m a Swedish fullstack developer\nbased in Stockholm. After touring\ndifferent full service agencies around\nScandinavia I started freelancing with\na focus on 3D, VR &amp; Game design.</h1>\n<h3>Services</h3>\nUnity\nVR &amp; Game applications\nThree.js/WebGL\nFront-end development\nBack-end development\nWebsites &amp; Apps\n\n&nbsp;','about','','inherit','closed','closed','','20-autosave-v1','','','2018-11-09 14:05:38','2018-11-09 14:05:38','',20,'http://localhost:8888/2018/11/09/20-autosave-v1/',0,'revision','',0),
	(25,1,'2018-11-09 14:06:24','2018-11-09 14:06:24','<h1>I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.</h1>\r\n<h3>Services</h3>\r\nUnity\r\nVR &amp; Game applications\r\nThree.js/WebGL\r\nFront-end development\r\nBack-end development\r\nWebsites &amp; Apps\r\n\r\n&nbsp;','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-09 14:06:24','2018-11-09 14:06:24','',20,'http://localhost:8888/2018/11/09/20-revision-v1/',0,'revision','',0),
	(26,1,'2018-11-09 14:12:44','2018-11-09 14:12:44','<h1>I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.</h1>','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-09 14:12:44','2018-11-09 14:12:44','',20,'http://localhost:8888/2018/11/09/20-revision-v1/',0,'revision','',0),
	(27,1,'2018-11-09 14:19:39','2018-11-09 14:19:39','<h2>I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.</h2>','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-09 14:19:39','2018-11-09 14:19:39','',20,'http://localhost:8888/2018/11/09/20-revision-v1/',0,'revision','',0),
	(28,1,'2018-11-09 14:19:54','2018-11-09 14:19:54','<h3>I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.</h3>','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-09 14:19:54','2018-11-09 14:19:54','',20,'http://localhost:8888/2018/11/09/20-revision-v1/',0,'revision','',0),
	(29,1,'2018-11-09 14:20:02','2018-11-09 14:20:02','<h1>I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.</h1>','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-09 14:20:02','2018-11-09 14:20:02','',20,'http://localhost:8888/2018/11/09/20-revision-v1/',0,'revision','',0),
	(31,1,'2018-11-21 13:33:44','2018-11-21 13:33:44','I’m a Swedish fullstack developer\r\nbased in Stockholm. After touring\r\ndifferent full service agencies around\r\nScandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.','work','','inherit','closed','closed','','18-revision-v1','','','2018-11-21 13:33:44','2018-11-21 13:33:44','',18,'http://localhost:8888/2018/11/21/18-revision-v1/',0,'revision','',0),
	(32,1,'2018-11-21 13:34:45','2018-11-21 13:34:45','I’m a Swedish fullstack developer\nbased in Stockholm. After working\n\nat different full service agencies around\nScandinavia I started freelancing with\na focus on 3D, VR &amp; Game design.','work','','inherit','closed','closed','','18-autosave-v1','','','2018-11-21 13:34:45','2018-11-21 13:34:45','',18,'http://localhost:8888/2018/11/21/18-autosave-v1/',0,'revision','',0),
	(33,1,'2018-11-21 13:34:59','2018-11-21 13:34:59','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different full service agencies around\r\n</span>Scandinavia I started freelancing with\r\na focus on 3D, VR &amp; Game design.','work','','inherit','closed','closed','','18-revision-v1','','','2018-11-21 13:34:59','2018-11-21 13:34:59','',18,'http://localhost:8888/2018/11/21/18-revision-v1/',0,'revision','',0),
	(34,1,'2018-11-21 13:35:44','2018-11-21 13:35:44','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different full service agencies in\r\n</span>Sweden and Norway I started\r\nfreelancing with a focus on\r\n3D, VR &amp; Game design.','work','','inherit','closed','closed','','18-revision-v1','','','2018-11-21 13:35:44','2018-11-21 13:35:44','',18,'http://localhost:8888/2018/11/21/18-revision-v1/',0,'revision','',0),
	(35,1,'2018-11-21 13:36:28','2018-11-21 13:36:28','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different full service agencies in\r\n</span>Sweden and Norway I started\r\nfreelancing with a focus on\r\n3D, VR &amp; Game design.','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 13:36:28','2018-11-21 13:36:28','',20,'http://localhost:8888/2018/11/21/20-revision-v1/',0,'revision','',0),
	(36,1,'2018-11-21 13:36:57','2018-11-21 13:36:57','<h2>I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different full service agencies in\r\n</span>Sweden and Norway I started\r\nfreelancing with a focus on\r\n3D, VR &amp; Game design.</h2>','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 13:36:57','2018-11-21 13:36:57','',20,'http://localhost:8888/2018/11/21/20-revision-v1/',0,'revision','',0),
	(37,1,'2018-11-21 13:37:07','2018-11-21 13:37:07','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different full service agencies in\r\n</span>Sweden and Norway I started\r\nfreelancing with a focus on\r\n3D, VR &amp; Game design.','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-21 13:37:07','2018-11-21 13:37:07','',20,'http://localhost:8888/2018/11/21/20-revision-v1/',0,'revision','',0),
	(38,1,'2018-11-23 09:49:20','2018-11-23 09:49:20','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different agencies in </span>Sweden\r\nand Norway I started freelancing\r\nwith a focus on 3D, VR &amp; Game design.','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-23 09:49:20','2018-11-23 09:49:20','',20,'http://localhost:8888/2018/11/23/20-revision-v1/',0,'revision','',0),
	(39,1,'2018-11-23 10:00:47','2018-11-23 10:00:47','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\n<span style=\"font-size: 1rem;\">at different advertising agencies in\r\n</span>Sweden and Norway I started freelancing\r\nwith a focus on 3D, VR &amp; Game design.','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-23 10:00:47','2018-11-23 10:00:47','',20,'http://localhost:8888/2018/11/23/20-revision-v1/',0,'revision','',0),
	(40,1,'2018-11-23 10:01:33','2018-11-23 10:01:33','','work','','inherit','closed','closed','','18-revision-v1','','','2018-11-23 10:01:33','2018-11-23 10:01:33','',18,'http://localhost:8888/2018/11/23/18-revision-v1/',0,'revision','',0),
	(41,1,'2018-11-23 10:05:36','2018-11-23 10:05:36','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\nat different advertising agencies in\r\nSweden and Norway I started freelancing\r\nwith a focus on 3D, VR &amp; Game design.','about','','inherit','closed','closed','','20-revision-v1','','','2018-11-23 10:05:36','2018-11-23 10:05:36','',20,'http://localhost:8888/2018/11/23/20-revision-v1/',0,'revision','',0),
	(42,1,'2018-11-23 11:00:39','2018-11-23 11:00:39','text about post','Sturekvarteret','','inherit','closed','closed','','22-revision-v1','','','2018-11-23 11:00:39','2018-11-23 11:00:39','',22,'http://localhost:8888/2018/11/23/22-revision-v1/',0,'revision','',0),
	(43,1,'2018-11-23 11:15:33','2018-11-23 11:15:33','','nespresso','','inherit','open','closed','','nespresso','','','2018-11-23 11:15:33','2018-11-23 11:15:33','',22,'http://localhost:8888/wp-content/uploads/2018/11/nespresso.png',0,'attachment','image/png',0),
	(44,1,'2018-11-23 11:55:43','2018-11-23 11:55:43','','sture','','inherit','open','closed','','sture','','','2018-11-23 11:55:43','2018-11-23 11:55:43','',8,'http://localhost:8888/wp-content/uploads/2018/10/sture.png',0,'attachment','image/png',0),
	(45,1,'2018-11-23 11:55:50','2018-11-23 11:55:50','bördtext personal project','Sturekvarteret','','inherit','closed','closed','','8-revision-v1','','','2018-11-23 11:55:50','2018-11-23 11:55:50','',8,'http://localhost:8888/2018/11/23/8-revision-v1/',0,'revision','',0),
	(46,1,'2018-11-23 12:02:18','2018-11-23 12:02:18','','sture-high-res','','inherit','open','closed','','sture-high-res','','','2018-11-23 12:02:18','2018-11-23 12:02:18','',8,'http://localhost:8888/wp-content/uploads/2018/10/sture-high-res.png',0,'attachment','image/png',0),
	(47,1,'2018-11-23 12:04:22','2018-11-23 12:04:22','text about post','Nespresso VR','','inherit','closed','closed','','22-revision-v1','','','2018-11-23 12:04:22','2018-11-23 12:04:22','',22,'http://localhost:8888/2018/11/23/22-revision-v1/',0,'revision','',0),
	(48,1,'2018-11-23 12:07:05','2018-11-23 12:07:05','','gun-fitness','','inherit','open','closed','','gun-fitness','','','2018-11-23 12:07:05','2018-11-23 12:07:05','',5,'http://localhost:8888/wp-content/uploads/2018/10/gun-fitness.png',0,'attachment','image/png',0),
	(49,1,'2018-11-23 12:07:14','2018-11-23 12:07:14','A fitness VR Experience with three different game modes.','Gun Fitness','','inherit','closed','closed','','5-revision-v1','','','2018-11-23 12:07:14','2018-11-23 12:07:14','',5,'http://localhost:8888/2018/11/23/5-revision-v1/',0,'revision','',0),
	(50,1,'2019-03-15 13:09:31','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-03-15 13:09:31','0000-00-00 00:00:00','',0,'http://localhost:8888/?p=50',0,'post','',0),
	(51,1,'2019-03-15 13:09:53','2019-03-15 13:09:53','I’m a Swedish fullstack developer\r\nbased in Stockholm. After working\r\nat different advertising agencies in\r\nSweden and Norway I started freelancing\r\nwith a focus on 3D, VR &amp; Game design.','Services','','inherit','closed','closed','','20-revision-v1','','','2019-03-15 13:09:53','2019-03-15 13:09:53','',20,'http://localhost:8888/2019/03/15/20-revision-v1/',0,'revision','',0),
	(52,1,'2019-03-15 13:29:22','2019-03-15 13:29:22','','Services','','inherit','closed','closed','','20-revision-v1','','','2019-03-15 13:29:22','2019-03-15 13:29:22','',20,'http://localhost:8888/2019/03/15/20-revision-v1/',0,'revision','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(5,2,0),
	(5,4,0),
	(5,7,0),
	(5,9,0),
	(8,2,0),
	(8,3,0),
	(8,4,0),
	(8,5,0),
	(8,6,0),
	(8,10,0),
	(22,2,0),
	(22,4,0),
	(22,7,0),
	(22,8,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'category','',0,3),
	(3,3,'category','',0,1),
	(4,4,'post_tag','',0,3),
	(5,5,'post_tag','',0,1),
	(6,6,'post_tag','',0,1),
	(7,7,'post_tag','',0,2),
	(8,8,'post_tag','',0,1),
	(9,9,'post_tag','',0,1),
	(10,10,'post_tag','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Tabelldump wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Uncategorized','uncategorized',0),
	(2,'work','work',0),
	(3,'personal','personal',0),
	(4,'3D','3d',0),
	(5,'ThreeJS','threejs',0),
	(6,'Front-end','front-end',0),
	(7,'Unity','unity',0),
	(8,'Game Dev','game-dev',0),
	(9,'VR','vr',0),
	(10,'Web','web',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'wp_user_level','10'),
	(14,1,'dismissed_wp_pointers','wp496_privacy'),
	(15,1,'show_welcome_panel','1'),
	(16,1,'session_tokens','a:1:{s:64:\"7e693c93332b67e3e14be4016327b8381702746bf9d8326455280c172b73e75c\";a:4:{s:10:\"expiration\";i:1552828170;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1552655370;}}'),
	(17,1,'wp_user-settings','libraryContent=browse&mfold=o&hidetb=0&editor=html'),
	(18,1,'wp_user-settings-time','1542967531'),
	(19,1,'wp_dashboard_quick_press_last_post_id','50'),
	(20,1,'closedpostboxes_page','a:0:{}'),
	(21,1,'metaboxhidden_page','a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BOftYOeaBTY86W7NZoG5oMtxTbXBwO1','admin','karlperemil@gmail.com','','2018-10-24 14:26:14','',0,'admin');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
