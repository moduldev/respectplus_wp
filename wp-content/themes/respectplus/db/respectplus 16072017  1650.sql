-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 16 2017 г., 16:52
-- Версия сервера: 5.6.31
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `respectplus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
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
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://respectplus', 'yes'),
(2, 'home', 'http://respectplus', 'yes'),
(3, 'blogname', 'Агенство недвижимости Respect plus', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'an.respectplus@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.respectplus.com', 'yes'),
(15, 'mailserver_login', 'wordpress@respectplus.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:195:{s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:9:"obekty/?$";s:27:"index.php?post_type=product";s:39:"obekty/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"obekty/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:26:"obekty/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:34:"obekty/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"obekty/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"obekty/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"obekty/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"obekty/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"obekty/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"obekty/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:27:"obekty/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:47:"obekty/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:42:"obekty/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:35:"obekty/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:42:"obekty/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:32:"obekty/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:38:"obekty/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"obekty/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"obekty/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:23:"obekty/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"obekty/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"obekty/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"obekty/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"obekty/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"obekty/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=53&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:22:"cyr3lat/cyr-to-lat.php";i:2;s:48:"woocommerce-ajax-filters/woocommerce-filters.php";i:3;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'respectplus', 'yes'),
(41, 'stylesheet', 'respectplus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:7:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:34:"Наши преимущества:";s:4:"text";s:588:"<ul>\r\n                        <li class="">Обеспечивается надежность, качественная и прозрачная операция с недвижимостью:</li>\r\n                        <li class="">Сделки (свыше 30%) осуществляются по рекомендации клиентов</li>\r\n                        <li class="">Юридическое квалифицированное сопровождение</li>\r\n                        <li class="">Финансовая безопасность</li>\r\n                    </ul>";s:6:"filter";b:0;}i:3;a:3:{s:5:"title";s:37:"Выгодно для клиента:";s:4:"text";s:392:"<ul>\r\n                        <li class="">Бесплатная рыночная оценка объекта недвижимости</li>\r\n                        <li class="">Бесплатная реклама объекта недвижимости</li>\r\n                        <li class="">Экономия времени и средств клиента</li>\r\n                    </ul>";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:34:"Удобно для клиента";s:4:"text";s:590:"<ul>\r\n                        <li class="">Сопровождение специалиста АН «РЕСПЕКТ+» на всех этапах сделки,\r\n\r\nоперации с недвижимостью</li>\r\n                        <li class="">Формирование пакета необходимых документов для осуществления\r\n\r\nсделки, операции с недвижимостью</li>\r\n                        <li class="">Услуга -<strong> срочный выкуп недвижимости.</strong></li>\r\n                    </ul>";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:0:"";s:4:"text";s:717:" <ul>\r\n                    <li><i class="fa fa-phone" aria-hidden="true"></i> Телефоны</li>\r\n                    <li>098-557-92-92</li>\r\n                    <li>063-557-92-92</li>\r\n                    <li><i class="fa fa-envelope" aria-hidden="true"></i> E-mail</li>\r\n                    <li><a href="mailto:an.respectplus@gmail.com">an.respectplus@gmail.com</a></li>\r\n                    <li><i class="fa fa-skype" aria-hidden="true"></i> Skype</li>\r\n                    <li>an.respectplus@gmail.com</li>\r\n\r\n                    <li><i class="fa fa-facebook" aria-hidden="true"></i> Мы в фейсбуке</li>\r\n                    <li><a href="#">facebook.com/an.respectplus</a></li>\r\n                </ul>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:0:"";s:4:"text";s:554:" <h5>Наши контакты</h5>\r\n                <p><i class="fa fa-phone" aria-hidden="true"></i> 098-557-92-92</p>\r\n                <p><i class="fa fa-phone" aria-hidden="true"></i> 063-557-92-92</p>\r\n                <a href="mailto:an.respectplus@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i></a>\r\n                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>\r\n                <a href="http://respectplus/konsultatsiya/otpravit-zayavku/" class="btn btn-default sidebar_page_btn">Оставить заявку</a>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";a:2:{i:0;s:13:"BeRocket_AAPF";i:1;s:24:"br_delete_plugin_options";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '53', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:133:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:36:"wpml_manage_woocommerce_multilingual";b:1;s:37:"wpml_operate_woocommerce_multilingual";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:111:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:37:"wpml_operate_woocommerce_multilingual";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-5";}s:9:"sidebar-3";a:1:{i:0;s:6:"text-6";}s:9:"sidebar-4";a:4:{i:0;s:22:"berocket_aapf_widget-4";i:1;s:22:"berocket_aapf_widget-5";i:2;s:22:"berocket_aapf_widget-6";i:3;s:22:"berocket_aapf_widget-3";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'cron', 'a:9:{i:1500214006;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1500222515;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1500222532;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1500228438;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1500236287;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1500260400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1500279487;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1501804800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', 'dgr-K(?F!X0n0N}u([Z7t[V|T>GM_5r~f;cn3%mM<qSt!E;_B0c6y<I.CKJYXkw5', 'no'),
(107, 'nonce_salt', 'pyeCJt=g45$SwjS3g!OXzjyC+_^/g{ZdQ%V+.g=]^Rdf+qm4A1s6dFvf^-B^KUsB', 'no'),
(108, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489854538;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(111, 'auth_key', 'PPzL`7Tk/UpKV[c7Ep-0^mXP!7 jIZ4P&Ou*x_Mq4^bXWn@EZ4)ZCKQ e@g0vd9=', 'no'),
(112, 'auth_salt', 'ak1E(x*x`}SEB|}Yz(dNQm;RoMhpF9sfU_It.{:|Wl(.RJ`lr SwK.%1*J}Ex;Uh', 'no'),
(113, 'logged_in_key', 'r9N6>c&>#SL3mf/g/G/*wS=j/$R1!t-0~S>)NMwrx+i}}IHBbYc%W9&G6$kiQ!!`', 'no'),
(114, 'logged_in_salt', '>2g1s5Cmc@t3G4R&bpo8:8(5W*G?T,|I~P?=/#yQ|Bu w)?^0ho@WqPl&~f{f5_d', 'no'),
(122, '_site_transient_timeout_browser_e6c1a15f8427769605a8fb40d5d7a194', '1490459321', 'no'),
(123, '_site_transient_browser_e6c1a15f8427769605a8fb40d5d7a194', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'respectplus', 'yes'),
(141, 'theme_mods_respectplus', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:6:"Footer";i:4;}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(148, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(196, 'recently_activated', 'a:0:{}', 'yes'),
(237, 'category_children', 'a:0:{}', 'yes'),
(358, 'woocommerce_default_country', 'UA', 'yes'),
(359, 'woocommerce_allowed_countries', 'all', 'yes'),
(360, 'woocommerce_all_except_countries', '', 'yes'),
(361, 'woocommerce_specific_allowed_countries', '', 'yes'),
(362, 'woocommerce_ship_to_countries', 'disabled', 'yes'),
(363, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(364, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(365, 'woocommerce_calc_taxes', 'no', 'yes'),
(366, 'woocommerce_demo_store', 'no', 'yes'),
(367, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(368, 'woocommerce_currency', 'GBP', 'yes'),
(369, 'woocommerce_currency_pos', 'left', 'yes'),
(370, 'woocommerce_price_thousand_sep', ',', 'yes'),
(371, 'woocommerce_price_decimal_sep', '.', 'yes'),
(372, 'woocommerce_price_num_decimals', '2', 'yes'),
(373, 'woocommerce_weight_unit', 'kg', 'yes'),
(374, 'woocommerce_dimension_unit', 'cm', 'yes'),
(375, 'woocommerce_enable_review_rating', 'no', 'yes'),
(376, 'woocommerce_review_rating_required', 'yes', 'no'),
(377, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(378, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(379, 'woocommerce_shop_page_id', '122', 'yes'),
(380, 'woocommerce_shop_page_display', '', 'yes'),
(381, 'woocommerce_category_archive_display', '', 'yes'),
(382, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(383, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(384, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(385, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(386, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(387, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(388, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(389, 'woocommerce_manage_stock', 'yes', 'yes'),
(390, 'woocommerce_hold_stock_minutes', '60', 'no'),
(391, 'woocommerce_notify_low_stock', 'yes', 'no'),
(392, 'woocommerce_notify_no_stock', 'yes', 'no'),
(393, 'woocommerce_stock_email_recipient', 'an.respectplus@gmail.com', 'no'),
(394, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(395, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(396, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(397, 'woocommerce_stock_format', '', 'yes'),
(398, 'woocommerce_file_download_method', 'force', 'no'),
(399, 'woocommerce_downloads_require_login', 'no', 'no'),
(400, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(401, 'woocommerce_prices_include_tax', 'no', 'yes'),
(402, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(403, 'woocommerce_shipping_tax_class', '', 'yes'),
(404, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(405, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(406, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(407, 'woocommerce_tax_display_cart', 'excl', 'no'),
(408, 'woocommerce_price_display_suffix', '', 'yes'),
(409, 'woocommerce_tax_total_display', 'itemized', 'no'),
(410, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(411, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(412, 'woocommerce_ship_to_destination', 'billing', 'no'),
(413, 'woocommerce_enable_coupons', 'yes', 'yes'),
(414, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(415, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(416, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(417, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(418, 'woocommerce_cart_page_id', '127', 'yes'),
(419, 'woocommerce_checkout_page_id', '128', 'yes'),
(420, 'woocommerce_terms_page_id', '', 'no'),
(421, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(422, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(423, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(424, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(425, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(426, 'woocommerce_myaccount_page_id', '129', 'yes'),
(427, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(428, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(429, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(430, 'woocommerce_registration_generate_username', 'yes', 'no'),
(431, 'woocommerce_registration_generate_password', 'no', 'no'),
(432, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(433, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(434, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(435, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(436, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(437, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(438, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(439, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(440, 'woocommerce_email_from_name', 'Агенство недвижимости Respect plus', 'no'),
(441, 'woocommerce_email_from_address', 'an.respectplus@gmail.com', 'no'),
(442, 'woocommerce_email_header_image', '', 'no'),
(443, 'woocommerce_email_footer_text', 'Агенство недвижимости Respect plus - Powered by WooCommerce', 'no'),
(444, 'woocommerce_email_base_color', '#557da1', 'no'),
(445, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(446, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(447, 'woocommerce_email_text_color', '#505050', 'no'),
(448, 'woocommerce_api_enabled', 'yes', 'yes'),
(454, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(456, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(457, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(458, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(459, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(460, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(461, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(462, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(463, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(464, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(465, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(466, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(467, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(471, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(473, '_transient_timeout_geoip_127.0.0.1', '1491463233', 'no'),
(474, '_transient_geoip_127.0.0.1', '', 'no'),
(477, '_transient_timeout_geoip_94.179.59.222', '1491463234', 'no'),
(478, '_transient_geoip_94.179.59.222', 'UA', 'no'),
(479, 'woocommerce_allow_tracking', 'no', 'yes'),
(488, '_transient_product_query-transient-version', '1490979469', 'yes'),
(489, '_transient_product-transient-version', '1490979469', 'yes'),
(492, 'pa_город_children', 'a:0:{}', 'yes'),
(494, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(500, '_transient_timeout_wc_related_116', '1490947396', 'no'),
(501, '_transient_wc_related_116', 'a:0:{}', 'no'),
(503, '_transient_shipping-transient-version', '1490860270', 'yes'),
(504, '_transient_timeout_wc_shipping_method_count_0_1490860270', '1493452270', 'no'),
(505, '_transient_wc_shipping_method_count_0_1490860270', '0', 'no'),
(506, 'woocommerce_permalinks', 'a:5:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:6:"obekty";s:12:"product_base";s:7:"/obekty";s:22:"use_verbose_page_rules";b:1;}', 'yes'),
(545, '_transient_timeout_wc_related_119', '1490948310', 'no'),
(546, '_transient_wc_related_119', 'a:0:{}', 'no'),
(561, 'woocommerce_db_version', '2.6.14', 'yes'),
(562, 'woocommerce_version', '2.6.14', 'yes'),
(572, '_transient_timeout_wc_addons_sections', '1491468571', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(573, '_transient_wc_addons_sections', 'O:8:"stdClass":10:{s:8:"featured";O:8:"stdClass":2:{s:5:"title";s:8:"Featured";s:8:"endpoint";s:59:"https://d3t0oesq8995hv.cloudfront.net/section/featured.json";}s:7:"popular";O:8:"stdClass":2:{s:5:"title";s:7:"Popular";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/popular.json";}s:16:"payment_gateways";O:8:"stdClass":2:{s:5:"title";s:16:"Payment Gateways";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/payment_gateways.json";}s:16:"shipping_methods";O:8:"stdClass":2:{s:5:"title";s:16:"Shipping Methods";s:8:"endpoint";s:67:"https://d3t0oesq8995hv.cloudfront.net/section/shipping_methods.json";}s:13:"import_export";O:8:"stdClass":2:{s:5:"title";s:13:"Import/Export";s:8:"endpoint";s:64:"https://d3t0oesq8995hv.cloudfront.net/section/import_export.json";}s:10:"accounting";O:8:"stdClass":2:{s:5:"title";s:10:"Accounting";s:8:"endpoint";s:61:"https://d3t0oesq8995hv.cloudfront.net/section/accounting.json";}s:9:"marketing";O:8:"stdClass":2:{s:5:"title";s:9:"Marketing";s:8:"endpoint";s:60:"https://d3t0oesq8995hv.cloudfront.net/section/marketing.json";}s:7:"product";O:8:"stdClass":2:{s:5:"title";s:8:"Products";s:8:"endpoint";s:58:"https://d3t0oesq8995hv.cloudfront.net/section/product.json";}s:4:"free";O:8:"stdClass":2:{s:5:"title";s:4:"Free";s:8:"endpoint";s:55:"https://d3t0oesq8995hv.cloudfront.net/section/free.json";}s:11:"third_party";O:8:"stdClass":2:{s:5:"title";s:11:"Third-party";s:8:"endpoint";s:62:"https://d3t0oesq8995hv.cloudfront.net/section/third_party.json";}}', 'no'),
(574, '_transient_timeout_wc_addons_featured', '1491468571', 'no'),
(575, '_transient_wc_addons_featured', 'O:8:"stdClass":1:{s:8:"sections";a:10:{i:0;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:50:"Take your store beyond the typical - sell anything";s:11:"description";s:83:"From services to content, there’s no limit to what you can sell with WooCommerce.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:118:"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Subscriptions";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png";s:11:"description";s:98:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.";s:6:"button";s:10:"From: $199";s:6:"plugin";s:55:"woocommerce-subscriptions/woocommerce-subscriptions.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:113:"https://woocommerce.com/products/woocommerce-bookings/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:8:"Bookings";s:5:"image";s:66:"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png";s:11:"description";s:76:"Allow customers to book appointments for services without leaving your site.";s:6:"button";s:10:"From: $249";s:6:"plugin";s:45:"woocommerce-bookings/woocommerce-bookings.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:116:"https://woocommerce.com/products/woocommerce-memberships/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:11:"Memberships";s:5:"image";s:69:"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png";s:11:"description";s:76:"Give members access to restricted content or products, for a fee or for free";s:6:"button";s:10:"From: $149";s:6:"plugin";s:51:"woocommerce-memberships/woocommerce-memberships.php";}}}i:1;O:8:"stdClass":2:{s:6:"module";s:12:"column_start";s:9:"container";s:22:"column_container_start";}i:2;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:46:"Improve the main features of your online store";s:11:"description";s:71:"Sell more by helping customers find the products and options they want.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:108:"https://woocommerce.com/products/product-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:15:"Product Add-ons";s:5:"image";s:73:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png";s:11:"description";s:82:"Give your customers the option to customize their purchase or add personalization.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-addons/woocommerce-product-addons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:119:"https://woocommerce.com/products/woocommerce-product-search/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:14:"Product Search";s:5:"image";s:72:"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png";s:11:"description";s:67:"Make sure customers find what they want when they search your site.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:57:"woocommerce-product-search/woocommerce-product-search.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:121:"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Checkout Add-ons";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png";s:11:"description";s:89:"Highlight relevant products, offers like free shipping and other upsells during checkout.";s:6:"button";s:9:"From: $49";s:6:"plugin";s:61:"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php";}}}i:3;O:8:"stdClass":5:{s:6:"module";s:17:"small_light_block";s:5:"title";s:34:"Get the official WooCommerce theme";s:11:"description";s:128:"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png";s:7:"buttons";a:2:{i:0;O:8:"stdClass":2:{s:4:"href";s:44:"/wp-admin/theme-install.php?theme=storefront";s:4:"text";s:7:"Install";}i:1;O:8:"stdClass":2:{s:4:"href";s:94:"https://woocommerce.com/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:4:"text";s:9:"Read More";}}}i:4;O:8:"stdClass":1:{s:6:"module";s:10:"column_end";}i:5;O:8:"stdClass":1:{s:6:"module";s:12:"column_start";}i:6;O:8:"stdClass":4:{s:6:"module";s:16:"small_dark_block";s:5:"title";s:20:"Square + WooCommerce";s:11:"description";s:176:"Keep your WooCommerce and brick-and-mortar stores in sync. Use Square to take payments both online and offline, keep inventory updated between the two and sync product changes.";s:5:"items";a:1:{i:0;O:8:"stdClass":2:{s:4:"href";s:99:"https://woocommerce.com/products/square/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:6:"button";s:9:"From: $79";}}}i:7;O:8:"stdClass":4:{s:6:"module";s:12:"column_block";s:5:"title";s:19:"Get deeper insights";s:11:"description";s:58:"Learn how your store is performing with enhanced reporting";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:121:"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Google Analytics";s:5:"image";s:60:"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png";s:11:"description";s:93:"Understand your customers and increase revenue with the world’s leading analytics platform.";s:6:"button";s:4:"Free";s:6:"plugin";s:85:"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:117:"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:12:"Cart reports";s:5:"image";s:70:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png";s:11:"description";s:66:"Get real-time reports on what customers are leaving in their cart.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:53:"woocommerce-cart-reports/woocommerce-cart-reports.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:118:"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Cost of Goods";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png";s:11:"description";s:64:"Easily track profit by including  cost of goods in your reports.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:55:"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php";}}}i:8;O:8:"stdClass":2:{s:6:"module";s:10:"column_end";s:9:"container";s:20:"column_container_end";}i:9;O:8:"stdClass":4:{s:6:"module";s:12:"banner_block";s:5:"title";s:40:"Promote your products and increase sales";s:11:"description";s:77:"From coupons to emails, these extensions can power up your marketing efforts.";s:5:"items";a:3:{i:0;O:8:"stdClass":6:{s:4:"href";s:106:"https://woocommerce.com/products/smart-coupons/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:13:"Smart Coupons";s:5:"image";s:71:"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png";s:11:"description";s:106:"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:55:"woocommerce-smart-coupons/woocommerce-smart-coupons.php";}i:1;O:8:"stdClass":6:{s:4:"href";s:109:"https://woocommerce.com/products/follow-up-emails/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:16:"Follow Up Emails";s:5:"image";s:74:"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png";s:11:"description";s:140:"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.";s:6:"button";s:9:"From: $99";s:6:"plugin";s:61:"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php";}i:2;O:8:"stdClass":6:{s:4:"href";s:112:"https://woocommerce.com/products/google-product-feed/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons";s:5:"title";s:19:"Google Product Feed";s:5:"image";s:77:"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png";s:11:"description";s:61:"Let customers find you when shopping for products via Google.";s:6:"button";s:9:"From: $79";s:6:"plugin";s:45:"woocommerce-product-feeds/woocommerce-gpf.php";}}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(597, 'wp_installer_settings', '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', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(598, '_wcml_version', '4.1.2', 'yes'),
(631, '_site_transient_timeout_browser_88337cd9fed317d029aaa03191c0be0b', '1491505736', 'no'),
(632, '_site_transient_browser_88337cd9fed317d029aaa03191c0be0b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(640, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(641, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(642, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:24:"an.respectplus@gmail.com";}', 'yes'),
(643, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(644, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(645, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(655, 'product_cat_children', 'a:0:{}', 'yes'),
(660, 'br_filters_options', 'a:6:{s:19:"no_products_message";s:43:"There are no products meeting your criteria";s:17:"no_products_class";s:0:"";s:15:"control_sorting";s:1:"0";s:18:"products_holder_id";s:11:"ul.products";s:16:"filters_turn_off";s:1:"0";s:17:"seo_friendly_urls";s:1:"0";}', 'yes'),
(661, 'widget_berocket_aapf_widget', 'a:5:{i:3;a:12:{s:11:"widget_type";s:13:"update_button";s:5:"title";s:10:"Найти";s:9:"attribute";s:5:"price";s:4:"type";s:6:"slider";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:0:"";s:16:"text_after_price";s:0:"";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}i:4;a:12:{s:11:"widget_type";s:6:"filter";s:5:"title";s:10:"Город";s:9:"attribute";s:8:"pa_gorod";s:4:"type";s:6:"select";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:0:"";s:16:"text_after_price";s:0:"";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}i:5;a:12:{s:11:"widget_type";s:6:"filter";s:5:"title";s:23:"Тип операции";s:9:"attribute";s:16:"pa_tip-operatsii";s:4:"type";s:6:"select";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:0:"";s:16:"text_after_price";s:0:"";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}i:6;a:12:{s:11:"widget_type";s:6:"filter";s:5:"title";s:31:"Вид недвижимости";s:9:"attribute";s:20:"pa_vid-nedvizhimosti";s:4:"type";s:6:"select";s:11:"product_cat";s:0:"";s:12:"scroll_theme";s:4:"dark";s:15:"cat_propagation";i:0;s:9:"css_class";s:0:"";s:17:"text_before_price";s:0:"";s:16:"text_after_price";s:0:"";s:6:"height";s:4:"auto";s:8:"operator";s:3:"AND";}s:12:"_multiwidget";i:1;}', 'yes'),
(671, 'pa_gorod_children', 'a:0:{}', 'yes'),
(674, 'pa_tip-operatsii_children', 'a:0:{}', 'yes'),
(679, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"1";s:14:"attribute_name";s:5:"gorod";s:15:"attribute_label";s:10:"Город";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:1;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"2";s:14:"attribute_name";s:13:"tip-operatsii";s:15:"attribute_label";s:23:"Тип операции";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}i:2;O:8:"stdClass":6:{s:12:"attribute_id";s:1:"3";s:14:"attribute_name";s:17:"vid-nedvizhimosti";s:15:"attribute_label";s:31:"Вид недвижимости";s:14:"attribute_type";s:6:"select";s:17:"attribute_orderby";s:10:"menu_order";s:16:"attribute_public";s:1:"0";}}', 'yes'),
(684, 'pa_vid-nedvizhimosti_children', 'a:0:{}', 'yes'),
(695, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:5:"p=127";i:1;s:6:"/cart/";i:2;s:5:"p=128";i:3;s:10:"/checkout/";i:4;s:5:"p=129";i:5;s:12:"/my-account/";}', 'yes'),
(754, '_transient_timeout_wc_products_will_display_27_1490979469', '1493648103', 'no'),
(755, '_transient_wc_products_will_display_27_1490979469', '1', 'no'),
(780, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1491067681', 'no'),
(781, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4321;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2464;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2352;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:1966;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1812;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1570;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1528;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1417;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1321;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1315;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1299;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1266;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1250;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1075;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1036;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1020;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:978;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:900;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:808;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:775;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:773;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:756;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:747;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:661;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:649;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:642;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:637;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:632;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:632;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:603;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:591;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:583;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:583;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:565;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:563;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:563;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:557;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:551;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:535;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:526;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:519;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:516;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:497;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:494;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:486;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:485;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:477;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:472;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:460;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:458;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:451;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:450;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:428;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:425;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:418;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:414;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:404;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:398;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:397;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:394;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:393;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:389;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:388;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:388;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:371;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:365;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:358;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:354;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:342;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:331;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:329;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:328;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:324;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:319;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:317;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:317;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:313;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:304;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:289;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:281;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:281;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:279;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:278;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:277;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:277;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:275;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:269;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:267;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:263;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:261;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:260;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:260;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:260;}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";i:260;}}', 'no'),
(785, '_site_transient_timeout_available_translations', '1491068291', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(786, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-27 04:32:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-23 04:36:52";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.3/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 09:18:57";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 11:34:47";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-28 00:33:54";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 13:57:53";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 13:57:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-30 00:08:09";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-15 12:53:17";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-18 16:05:09";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-07 18:47:03";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-03 12:18:25";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 13:34:22";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 16:02:41";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-16 13:36:46";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-17 11:59:56";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-29 14:23:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:24";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:39:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-30 09:46:13";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-24 06:52:11";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.16/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-27 06:25:26";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-21 11:39:51";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-29 09:34:25";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.16/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-16 03:50:08";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-24 10:09:34";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 22:32:58";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-13 19:43:03";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-24 12:22:25";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 18:17:50";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-29 17:39:00";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-17 11:46:52";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 21:21:58";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-27 07:08:07";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-22 15:46:29";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-29 06:46:22";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-28 12:03:30";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-20 03:14:21";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(895, '_site_transient_timeout_browser_ec09c1f205a8c9a567166203a7884107', '1494855510', 'no'),
(896, '_site_transient_browser_ec09c1f205a8c9a567166203a7884107', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"52.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(964, '_transient_timeout_wc_term_counts', '1501585788', 'no'),
(965, '_transient_wc_term_counts', 'a:4:{i:27;s:1:"2";i:15;s:1:"1";i:28;s:1:"2";i:14;s:1:"3";}', 'no'),
(981, '_site_transient_timeout_browser_8ce1bea2f653ca2ce71bdf6183bef333', '1499598760', 'no'),
(982, '_site_transient_browser_8ce1bea2f653ca2ce71bdf6183bef333', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(987, '_transient_timeout_wc_low_stock_count', '1501585960', 'no'),
(988, '_transient_wc_low_stock_count', '0', 'no'),
(989, '_transient_timeout_wc_outofstock_count', '1501585960', 'no'),
(990, '_transient_wc_outofstock_count', '0', 'no'),
(1004, '_transient_timeout_wc_upgrade_notice_2.6.14', '1499080409', 'no'),
(1005, '_transient_wc_upgrade_notice_2.6.14', '', 'no'),
(1008, '_transient_timeout_wc_related_125', '1499095436', 'no'),
(1009, '_transient_wc_related_125', 'a:2:{i:0;s:3:"120";i:1;s:3:"133";}', 'no'),
(1014, '_site_transient_timeout_browser_cc75d7392f9d8bd819fbfacf05f70081', '1499617733', 'no'),
(1015, '_site_transient_browser_cc75d7392f9d8bd819fbfacf05f70081', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"54.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(1071, '_transient_timeout_external_ip_address_127.0.0.1', '1500537795', 'no'),
(1072, '_transient_external_ip_address_127.0.0.1', '193.176.251.185', 'no'),
(1086, '_site_transient_timeout_theme_roots', '1500205015', 'no'),
(1087, '_site_transient_theme_roots', 'a:4:{s:11:"respectplus";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1090, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.5.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.5.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.5";s:7:"version";s:5:"4.7.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1500203220;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-04-20 10:13:53";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ru_RU.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(1091, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1500203225;s:7:"checked";a:4:{s:11:"respectplus";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:2:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.8.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.3";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.3.zip";}}s:12:"translations";a:0:{}}', 'no'),
(1092, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1500203223;s:8:"response";a:3:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";O:8:"stdClass":8:{s:2:"id";s:38:"w.org/plugins/woocommerce-ajax-filters";s:4:"slug";s:24:"woocommerce-ajax-filters";s:6:"plugin";s:48:"woocommerce-ajax-filters/woocommerce-filters.php";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:55:"https://wordpress.org/plugins/woocommerce-ajax-filters/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/woocommerce-ajax-filters.1.2.1.zip";s:6:"tested";s:5:"4.7.5";s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.3.zip";s:6:"tested";s:3:"4.8";s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":8:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.1.1.zip";s:6:"tested";s:3:"4.8";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"ru_RU";s:7:"version";s:6:"2.6.14";s:7:"updated";s:19:"2017-03-23 11:26:08";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/woocommerce/2.6.14/ru_RU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:22:"cyr3lat/cyr-to-lat.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/cyr3lat";s:4:"slug";s:7:"cyr3lat";s:6:"plugin";s:22:"cyr3lat/cyr-to-lat.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:38:"https://wordpress.org/plugins/cyr3lat/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(1093, '_transient_timeout_wc_related_120', '1500290130', 'no'),
(1094, '_transient_wc_related_120', 'a:3:{i:0;s:3:"125";i:1;s:3:"133";i:2;s:3:"130";}', 'no'),
(1095, '_site_transient_timeout_browser_912d4caad105ecb891dc503c980be1d3', '1500811430', 'no'),
(1096, '_site_transient_browser_912d4caad105ecb891dc503c980be1d3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(1097, '_transient_timeout_wc_report_sales_by_date', '1500293030', 'no'),
(1098, '_transient_wc_report_sales_by_date', 'a:7:{s:32:"a3dd1300a1f531079a63c6a6fdd19d96";a:0:{}s:32:"7451d07b4361add06d1dcbba2c1e26cc";a:0:{}s:32:"cb4b83f097146f9ed298bb924a349a69";a:0:{}s:32:"48b0f0dce4279f87ebe7fa6ee67718ec";N;s:32:"52191ea9fe81d8ede1aee44feba098a4";a:0:{}s:32:"8cea13ba8500de6c8b629c938b620112";a:0:{}s:32:"08f7e42c07d423624999bff33f310f54";a:0:{}}', 'no'),
(1099, '_transient_timeout_wc_admin_report', '1500293030', 'no'),
(1100, '_transient_wc_admin_report', 'a:1:{s:32:"2cdf7d24f1ff1c1bf783d52b6dff3be6";a:0:{}}', 'no'),
(1101, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1500249836', 'no'),
(1102, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1500249836', 'no'),
(1103, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1500206636', 'no'),
(1104, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1500249838', 'no'),
(1105, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1500249838', 'no'),
(1106, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1500206638', 'no'),
(1107, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1500249842', 'no'),
(1108, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1500249842', 'no'),
(1109, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1500206642', 'no'),
(1110, '_transient_timeout_plugin_slugs', '1500293042', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1111, '_transient_plugin_slugs', 'a:5:{i:0;s:48:"woocommerce-ajax-filters/woocommerce-filters.php";i:1;s:19:"akismet/akismet.php";i:2;s:22:"cyr3lat/cyr-to-lat.php";i:3;s:9:"hello.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'no'),
(1112, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1500249842', 'no'),
(1113, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/''>The Month in WordPress: June 2017</a> <span class="rss-date">03.07.2017</span><div class="rssSummary">We’re starting a new regular feature on this blog today. We’d like to keep everyone up-to-date about the happenings all across the WordPress open source project and highlight how you can get involved, so we’ll be posting a roundup of all the major WordPress news at the end of every month. Aside from other general [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/gutenberg-0-5-0-adds-new-verse-block-for-poetry-and-a-new-display-for-recent-blocks''>WPTavern: Gutenberg 0.5.0 Adds New Verse Block for Poetry and a New Display for Recent Blocks</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/jetpack-professional-plan-introduces-unlimited-access-to-200-commercial-themes''>WPTavern: Jetpack Professional Plan Introduces Unlimited Access to 200+ Commercial Themes</a></li><li><a class=''rsswidget'' href=''https://buddypress.org/2017/07/buddypress-2-9-0-release-candidate-1/''>BuddyPress: BuddyPress 2.9.0 Release Candidate 1</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Популярный плагин:</span> Jetpack by WordPress.com&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=jetpack&amp;_wpnonce=26c54dbd08&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Установить Jetpack by WordPress.com">(Установить)</a></li></ul></div>', 'no'),
(1115, '_transient_timeout_wc_related_130', '1500296194', 'no'),
(1116, '_transient_wc_related_130', 'a:1:{i:0;s:3:"120";}', 'no'),
(1117, '_transient_timeout_wc_related_133', '1500296197', 'no'),
(1118, '_transient_wc_related_133', 'a:2:{i:0;s:3:"120";i:1;s:3:"125";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=948 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(341, 53, '_edit_last', '1'),
(342, 53, '_wp_page_template', 'default'),
(343, 53, '_edit_lock', '1499529812:1'),
(344, 55, '_edit_last', '1'),
(345, 55, '_wp_page_template', 'default'),
(346, 55, '_edit_lock', '1490980393:1'),
(407, 76, '_edit_last', '1'),
(408, 76, '_edit_lock', '1490801695:1'),
(409, 77, '_wp_attached_file', '2017/03/estate.jpg'),
(410, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:18:"2017/03/estate.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"estate-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"estate-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"estate-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"estate-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(411, 76, '_thumbnail_id', '77'),
(436, 84, '_edit_last', '1'),
(437, 84, '_edit_lock', '1490801685:1'),
(438, 84, '_thumbnail_id', '77'),
(453, 87, '_menu_item_type', 'custom'),
(454, 87, '_menu_item_menu_item_parent', '0'),
(455, 87, '_menu_item_object_id', '87'),
(456, 87, '_menu_item_object', 'custom'),
(457, 87, '_menu_item_target', ''),
(458, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(459, 87, '_menu_item_xfn', ''),
(460, 87, '_menu_item_url', 'http://respectplus/category/novosti/'),
(461, 89, '_edit_last', '1'),
(462, 89, '_edit_lock', '1490801675:1'),
(463, 89, '_thumbnail_id', '77'),
(466, 91, '_edit_last', '1'),
(467, 91, '_edit_lock', '1490801649:1'),
(470, 93, '_edit_last', '1'),
(471, 93, '_edit_lock', '1490884735:1'),
(476, 93, '_thumbnail_id', '77'),
(505, 103, '_edit_last', '1'),
(506, 103, '_wp_page_template', 'page.php'),
(507, 103, '_edit_lock', '1490984840:1'),
(596, 119, '_edit_last', '1'),
(597, 119, '_edit_lock', '1490861503:1'),
(598, 119, '_product_attributes', 'a:1:{s:8:"pa_gorod";a:6:{s:4:"name";s:8:"pa_gorod";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(599, 119, '_visibility', 'visible'),
(600, 119, '_stock_status', 'instock'),
(601, 119, 'total_sales', '0'),
(602, 119, '_downloadable', 'no'),
(603, 119, '_virtual', 'no'),
(604, 119, '_purchase_note', ''),
(605, 119, '_featured', 'no'),
(606, 119, '_weight', ''),
(607, 119, '_length', ''),
(608, 119, '_width', ''),
(609, 119, '_height', ''),
(610, 119, '_sku', ''),
(611, 119, '_regular_price', ''),
(612, 119, '_sale_price', ''),
(613, 119, '_sale_price_dates_from', ''),
(614, 119, '_sale_price_dates_to', ''),
(615, 119, '_price', ''),
(616, 119, '_sold_individually', ''),
(617, 119, '_manage_stock', 'no'),
(618, 119, '_backorders', 'no'),
(619, 119, '_stock', ''),
(620, 119, '_upsell_ids', 'a:0:{}'),
(621, 119, '_crosssell_ids', 'a:0:{}'),
(622, 119, '_product_version', '2.6.14'),
(623, 119, '_product_image_gallery', '77'),
(624, 119, '_wc_rating_count', 'a:0:{}'),
(625, 119, '_wc_average_rating', '0'),
(626, 119, '_wc_review_count', '0'),
(627, 120, '_product_attributes', 'a:3:{s:8:"pa_gorod";a:6:{s:4:"name";s:8:"pa_gorod";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:16:"pa_tip-operatsii";a:6:{s:4:"name";s:16:"pa_tip-operatsii";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:20:"pa_vid-nedvizhimosti";a:6:{s:4:"name";s:20:"pa_vid-nedvizhimosti";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(628, 120, '_edit_lock', '1490902525:1'),
(629, 120, '_edit_last', '1'),
(630, 120, '_visibility', 'visible'),
(631, 120, '_stock_status', 'instock'),
(632, 120, 'total_sales', '0'),
(633, 120, '_downloadable', 'no'),
(634, 120, '_virtual', 'no'),
(635, 120, '_purchase_note', ''),
(636, 120, '_featured', 'no'),
(637, 120, '_weight', ''),
(638, 120, '_length', ''),
(639, 120, '_width', ''),
(640, 120, '_height', ''),
(641, 120, '_sku', ''),
(642, 120, '_regular_price', ''),
(643, 120, '_sale_price', ''),
(644, 120, '_sale_price_dates_from', ''),
(645, 120, '_sale_price_dates_to', ''),
(646, 120, '_price', ''),
(647, 120, '_sold_individually', ''),
(648, 120, '_manage_stock', 'no'),
(649, 120, '_backorders', 'no'),
(650, 120, '_stock', ''),
(651, 120, '_upsell_ids', 'a:0:{}'),
(652, 120, '_crosssell_ids', 'a:0:{}'),
(653, 120, '_product_version', '2.6.14'),
(654, 120, '_product_image_gallery', '77'),
(655, 120, '_wc_rating_count', 'a:0:{}'),
(656, 120, '_wc_average_rating', '0'),
(657, 120, '_wc_review_count', '0'),
(670, 122, '_edit_last', '1'),
(671, 122, '_edit_lock', '1490890721:1'),
(672, 122, '_wp_page_template', 'default'),
(681, 120, '_thumbnail_id', '77'),
(682, 125, '_edit_last', '1'),
(683, 125, '_edit_lock', '1490902511:1'),
(684, 126, '_wp_attached_file', '2017/03/1868094.jpg'),
(685, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:516;s:4:"file";s:19:"2017/03/1868094.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"1868094-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"1868094-300x242.jpg";s:5:"width";i:300;s:6:"height";i:242;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"1868094-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"1868094-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"1868094-600x516.jpg";s:5:"width";i:600;s:6:"height";i:516;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(686, 125, '_visibility', 'visible'),
(687, 125, '_stock_status', 'instock'),
(688, 125, '_thumbnail_id', '126'),
(689, 125, 'total_sales', '0'),
(690, 125, '_downloadable', 'no'),
(691, 125, '_virtual', 'no'),
(692, 125, '_purchase_note', ''),
(693, 125, '_featured', 'no'),
(694, 125, '_weight', ''),
(695, 125, '_length', ''),
(696, 125, '_width', ''),
(697, 125, '_height', ''),
(698, 125, '_sku', ''),
(699, 125, '_product_attributes', 'a:3:{s:8:"pa_gorod";a:6:{s:4:"name";s:8:"pa_gorod";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:16:"pa_tip-operatsii";a:6:{s:4:"name";s:16:"pa_tip-operatsii";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:20:"pa_vid-nedvizhimosti";a:6:{s:4:"name";s:20:"pa_vid-nedvizhimosti";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(700, 125, '_regular_price', ''),
(701, 125, '_sale_price', ''),
(702, 125, '_sale_price_dates_from', ''),
(703, 125, '_sale_price_dates_to', ''),
(704, 125, '_price', ''),
(705, 125, '_sold_individually', ''),
(706, 125, '_manage_stock', 'no'),
(707, 125, '_backorders', 'no'),
(708, 125, '_stock', ''),
(709, 125, '_upsell_ids', 'a:0:{}'),
(710, 125, '_crosssell_ids', 'a:0:{}'),
(711, 125, '_product_version', '2.6.14'),
(712, 125, '_product_image_gallery', '126,77'),
(713, 125, '_wc_rating_count', 'a:0:{}'),
(714, 125, '_wc_average_rating', '0'),
(715, 125, '_wc_review_count', '0'),
(716, 130, '_edit_last', '1'),
(717, 130, '_edit_lock', '1490903748:1'),
(718, 130, '_visibility', 'visible'),
(719, 130, '_stock_status', 'instock'),
(720, 130, '_thumbnail_id', '126'),
(721, 130, 'total_sales', '0'),
(722, 130, '_downloadable', 'no'),
(723, 130, '_virtual', 'no'),
(724, 130, '_purchase_note', ''),
(725, 130, '_featured', 'no'),
(726, 130, '_weight', ''),
(727, 130, '_length', ''),
(728, 130, '_width', ''),
(729, 130, '_height', ''),
(730, 130, '_sku', ''),
(731, 130, '_product_attributes', 'a:3:{s:8:"pa_gorod";a:6:{s:4:"name";s:8:"pa_gorod";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:16:"pa_tip-operatsii";a:6:{s:4:"name";s:16:"pa_tip-operatsii";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:20:"pa_vid-nedvizhimosti";a:6:{s:4:"name";s:20:"pa_vid-nedvizhimosti";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(732, 130, '_regular_price', ''),
(733, 130, '_sale_price', ''),
(734, 130, '_sale_price_dates_from', ''),
(735, 130, '_sale_price_dates_to', ''),
(736, 130, '_price', ''),
(737, 130, '_sold_individually', ''),
(738, 130, '_manage_stock', 'no'),
(739, 130, '_backorders', 'no'),
(740, 130, '_stock', ''),
(741, 130, '_upsell_ids', 'a:0:{}'),
(742, 130, '_crosssell_ids', 'a:0:{}'),
(743, 130, '_product_version', '2.6.14'),
(744, 130, '_product_image_gallery', '77'),
(745, 130, '_wc_rating_count', 'a:0:{}'),
(746, 130, '_wc_average_rating', '0'),
(747, 130, '_wc_review_count', '0'),
(748, 133, '_edit_last', '1'),
(749, 133, '_edit_lock', '1490979434:1'),
(750, 133, '_product_attributes', 'a:3:{s:8:"pa_gorod";a:6:{s:4:"name";s:8:"pa_gorod";s:5:"value";s:0:"";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:16:"pa_tip-operatsii";a:6:{s:4:"name";s:16:"pa_tip-operatsii";s:5:"value";s:0:"";s:8:"position";s:1:"1";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}s:20:"pa_vid-nedvizhimosti";a:6:{s:4:"name";s:20:"pa_vid-nedvizhimosti";s:5:"value";s:0:"";s:8:"position";s:1:"2";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:1;}}'),
(751, 133, '_visibility', 'visible'),
(752, 133, '_stock_status', 'instock'),
(753, 133, '_thumbnail_id', '77'),
(754, 133, 'total_sales', '0'),
(755, 133, '_downloadable', 'no'),
(756, 133, '_virtual', 'no'),
(757, 133, '_purchase_note', ''),
(758, 133, '_featured', 'no'),
(759, 133, '_weight', ''),
(760, 133, '_length', ''),
(761, 133, '_width', ''),
(762, 133, '_height', ''),
(763, 133, '_sku', ''),
(764, 133, '_regular_price', ''),
(765, 133, '_sale_price', ''),
(766, 133, '_sale_price_dates_from', ''),
(767, 133, '_sale_price_dates_to', ''),
(768, 133, '_price', ''),
(769, 133, '_sold_individually', ''),
(770, 133, '_manage_stock', 'no'),
(771, 133, '_backorders', 'no'),
(772, 133, '_stock', ''),
(773, 133, '_upsell_ids', 'a:0:{}'),
(774, 133, '_crosssell_ids', 'a:0:{}'),
(775, 133, '_product_version', '2.6.14'),
(776, 133, '_product_image_gallery', '77,126'),
(777, 133, '_wc_review_count', '0'),
(778, 139, '_edit_last', '1'),
(779, 139, '_edit_lock', '1491246014:1'),
(780, 139, '_wp_page_template', 'page -contact.php'),
(815, 145, '_edit_last', '1'),
(816, 145, '_edit_lock', '1499018454:1'),
(817, 145, '_wp_page_template', 'page-sendorder.php'),
(835, 151, '_menu_item_type', 'post_type'),
(836, 151, '_menu_item_menu_item_parent', '0'),
(837, 151, '_menu_item_object_id', '139'),
(838, 151, '_menu_item_object', 'page'),
(839, 151, '_menu_item_target', ''),
(840, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(841, 151, '_menu_item_xfn', ''),
(842, 151, '_menu_item_url', ''),
(844, 152, '_menu_item_type', 'post_type'),
(845, 152, '_menu_item_menu_item_parent', '0'),
(846, 152, '_menu_item_object_id', '122'),
(847, 152, '_menu_item_object', 'page'),
(848, 152, '_menu_item_target', ''),
(849, 152, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(850, 152, '_menu_item_xfn', ''),
(851, 152, '_menu_item_url', ''),
(853, 153, '_menu_item_type', 'post_type'),
(854, 153, '_menu_item_menu_item_parent', '0'),
(855, 153, '_menu_item_object_id', '103'),
(856, 153, '_menu_item_object', 'page'),
(857, 153, '_menu_item_target', ''),
(858, 153, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(859, 153, '_menu_item_xfn', ''),
(860, 153, '_menu_item_url', ''),
(862, 154, '_menu_item_type', 'post_type'),
(863, 154, '_menu_item_menu_item_parent', '153'),
(864, 154, '_menu_item_object_id', '145'),
(865, 154, '_menu_item_object', 'page'),
(866, 154, '_menu_item_target', ''),
(867, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(868, 154, '_menu_item_xfn', ''),
(869, 154, '_menu_item_url', ''),
(871, 155, '_menu_item_type', 'post_type'),
(872, 155, '_menu_item_menu_item_parent', '0'),
(873, 155, '_menu_item_object_id', '55'),
(874, 155, '_menu_item_object', 'page'),
(875, 155, '_menu_item_target', ''),
(876, 155, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(877, 155, '_menu_item_xfn', ''),
(878, 155, '_menu_item_url', ''),
(880, 156, '_menu_item_type', 'post_type'),
(881, 156, '_menu_item_menu_item_parent', '0'),
(882, 156, '_menu_item_object_id', '53'),
(883, 156, '_menu_item_object', 'page'),
(884, 156, '_menu_item_target', ''),
(885, 156, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(886, 156, '_menu_item_xfn', ''),
(887, 156, '_menu_item_url', ''),
(889, 157, '_menu_item_type', 'post_type'),
(890, 157, '_menu_item_menu_item_parent', '0'),
(891, 157, '_menu_item_object_id', '122'),
(892, 157, '_menu_item_object', 'page'),
(893, 157, '_menu_item_target', ''),
(894, 157, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(895, 157, '_menu_item_xfn', ''),
(896, 157, '_menu_item_url', ''),
(898, 158, '_menu_item_type', 'post_type'),
(899, 158, '_menu_item_menu_item_parent', '0'),
(900, 158, '_menu_item_object_id', '103'),
(901, 158, '_menu_item_object', 'page'),
(902, 158, '_menu_item_target', ''),
(903, 158, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(904, 158, '_menu_item_xfn', ''),
(905, 158, '_menu_item_url', ''),
(907, 159, '_menu_item_type', 'post_type'),
(908, 159, '_menu_item_menu_item_parent', '0'),
(909, 159, '_menu_item_object_id', '55'),
(910, 159, '_menu_item_object', 'page'),
(911, 159, '_menu_item_target', ''),
(912, 159, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(913, 159, '_menu_item_xfn', ''),
(914, 159, '_menu_item_url', ''),
(916, 160, '_menu_item_type', 'post_type'),
(917, 160, '_menu_item_menu_item_parent', '0'),
(918, 160, '_menu_item_object_id', '53'),
(919, 160, '_menu_item_object', 'page'),
(920, 160, '_menu_item_target', ''),
(921, 160, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(922, 160, '_menu_item_xfn', ''),
(923, 160, '_menu_item_url', ''),
(934, 166, '_edit_last', '1'),
(935, 166, '_edit_lock', '1499013052:1'),
(936, 169, '_edit_last', '1'),
(937, 169, '_wp_page_template', 'page-sendorder.php'),
(938, 169, '_edit_lock', '1499012977:1'),
(939, 171, '_menu_item_type', 'post_type'),
(940, 171, '_menu_item_menu_item_parent', '0'),
(941, 171, '_menu_item_object_id', '145'),
(942, 171, '_menu_item_object', 'page'),
(943, 171, '_menu_item_target', ''),
(944, 171, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(945, 171, '_menu_item_xfn', ''),
(946, 171, '_menu_item_url', ''),
(947, 171, '_menu_item_orphaned', '1499013146');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(53, 1, '2017-03-23 17:46:33', '2017-03-23 14:46:33', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'domoj', '', '', '2017-07-08 19:02:57', '2017-07-08 16:02:57', '', 0, 'http://respectplus/?page_id=53', 0, 'page', '', 0),
(54, 1, '2017-03-23 17:46:33', '2017-03-23 14:46:33', '', 'Домой', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-03-23 17:46:33', '2017-03-23 14:46:33', '', 53, 'http://respectplus/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-03-23 17:46:47', '2017-03-23 14:46:47', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам  приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n\r\nАН «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nВо время индивидуальных показов при покупке недвижимости мы Вам поможем:\r\n\r\n1. Покажем Вам объекты недвижимости и поясним плюсы и минусы,\r\n\r\n2. Выбрать подходящую недвижимость,\r\n\r\n3. Предупредим от возможных ошибок:\r\n\r\n- в выборе расположения недвижимости;\r\n\r\n- в выборе объекта недвижимости;\r\n\r\n- в процессе переговоров с продавцом;\r\n\r\n- в процессе оформления документов.\r\n\r\n4. Являясь официальным  агентством недвижимости, мы без дополнительных посредников будем представлять Ваши интересы в процессе купли/продажи недвижимости и проследим все формальности в оформлении документов на передачу прав собственности.\r\n\r\n&nbsp;', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2017-03-31 20:14:53', '2017-03-31 17:14:53', '', 0, 'http://respectplus/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-03-23 17:46:47', '2017-03-23 14:46:47', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 17:46:47', '2017-03-23 14:46:47', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-03-23 17:50:20', '2017-03-23 14:50:20', 'asdasdasdasdasd', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 17:50:20', '2017-03-23 14:50:20', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-03-23 18:24:42', '2017-03-23 15:24:42', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам\r\n\r\nприобрести недвижимость в г. Днепре и Днепропетровской области, а также\r\n\r\nвыгодно инвестировать деньги в эту недвижимость. Наши специалисты\r\n\r\nагентства прекрасно знают процедуру оформления документов на\r\n\r\nкуплю/продажу, аренду недвижимости, а также особенности\r\n\r\nзаконодательства Украины.', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 18:24:42', '2017-03-23 15:24:42', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-03-23 18:25:24', '2017-03-23 15:25:24', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 18:25:24', '2017-03-23 15:25:24', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-03-23 18:48:48', '2017-03-23 15:48:48', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 18:48:48', '2017-03-23 15:48:48', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-23 20:12:19', '2017-03-23 17:12:19', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 20:12:19', '2017-03-23 17:12:19', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-03-23 20:15:13', '2017-03-23 17:15:13', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет довольно\r\n\r\nширокий спектр услуг с недвижимостью в различных сферах, в\r\n\r\nчастности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n 	<li>Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.</li>\r\n</ul>\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 20:15:13', '2017-03-23 17:15:13', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-03-23 20:15:35', '2017-03-23 17:15:35', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет довольно широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n 	<li>Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.</li>\r\n</ul>\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 20:15:35', '2017-03-23 17:15:35', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-03-23 20:20:30', '2017-03-23 17:20:30', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n 	<li>Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.</li>\r\n</ul>\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 20:20:30', '2017-03-23 17:20:30', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-03-23 20:23:54', '2017-03-23 17:23:54', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nАгентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-23 20:23:54', '2017-03-23 17:23:54', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-03-24 15:51:14', '2017-03-24 12:51:14', 'Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость', 'Тестовая новость', 'Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость', 'publish', 'open', 'open', '', 'testovaya-novost', '', '', '2017-03-29 18:34:53', '2017-03-29 15:34:53', '', 0, 'http://respectplus/?p=76', 0, 'post', '', 0),
(77, 1, '2017-03-24 15:51:03', '2017-03-24 12:51:03', '', 'estate', '', 'inherit', 'open', 'closed', '', 'estate', '', '', '2017-03-24 15:51:03', '2017-03-24 12:51:03', '', 76, 'http://respectplus/wp-content/uploads/2017/03/estate.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-03-24 15:51:14', '2017-03-24 12:51:14', 'Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость', 'Тестовая новость', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-03-24 15:51:14', '2017-03-24 12:51:14', '', 76, 'http://respectplus/76-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-03-24 17:02:16', '2017-03-24 14:02:16', 'Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость', 'Тестовая новость', 'Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость Тестовая новость', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-03-24 17:02:16', '2017-03-24 14:02:16', '', 76, 'http://respectplus/76-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-03-24 17:28:19', '2017-03-24 14:28:19', 'Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2', 'Тестовая новость 2', 'Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестова', 'publish', 'open', 'open', '', 'testovaya-novost-2', '', '', '2017-03-29 18:34:44', '2017-03-29 15:34:44', '', 0, 'http://respectplus/?p=84', 0, 'post', '', 0),
(85, 1, '2017-03-24 17:28:19', '2017-03-24 14:28:19', 'Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2', 'Тестовая новость 2', 'Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестовая новость 2Тестова', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2017-03-24 17:28:19', '2017-03-24 14:28:19', '', 84, 'http://respectplus/84-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-03-24 17:40:23', '2017-03-24 14:40:23', '', 'Новости', '', 'publish', 'closed', 'closed', '', 'novosti-2', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=87', 5, 'nav_menu_item', '', 0),
(89, 1, '2017-03-27 14:45:07', '2017-03-27 11:45:07', 'Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3', 'Тестовая новость 3', '', 'publish', 'open', 'open', '', 'testovaya-novost-3', '', '', '2017-03-29 18:34:33', '2017-03-29 15:34:33', '', 0, 'http://respectplus/?p=89', 0, 'post', '', 0),
(90, 1, '2017-03-27 14:45:07', '2017-03-27 11:45:07', 'Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3Тестовая новость 3', 'Тестовая новость 3', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-03-27 14:45:07', '2017-03-27 11:45:07', '', 89, 'http://respectplus/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-03-27 14:45:37', '2017-03-27 11:45:37', 'Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4', 'Тестовая новость 4', '', 'publish', 'open', 'open', '', 'testovaya-novost-4', '', '', '2017-03-29 18:34:08', '2017-03-29 15:34:08', '', 0, 'http://respectplus/?p=91', 0, 'post', '', 0),
(92, 1, '2017-03-27 14:45:37', '2017-03-27 11:45:37', 'Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4Тестовая новость 4', 'Тестовая новость 4', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-27 14:45:37', '2017-03-27 11:45:37', '', 91, 'http://respectplus/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-03-27 14:50:01', '2017-03-27 11:50:01', '<center><iframe src="https://www.youtube.com/embed/2KDZg1-7KsE" width="100%" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe></center>\r\nТестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', 'естовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость ', 'publish', 'open', 'open', '', 'testovaya-novost-5', '', '', '2017-03-29 18:34:19', '2017-03-29 15:34:19', '', 0, 'http://respectplus/?p=93', 0, 'post', '', 0),
(94, 1, '2017-03-27 14:50:01', '2017-03-27 11:50:01', '<a href="https://youtu.be/2KDZg1-7KsE">https://youtu.be/2KDZg1-7KsE</a>\r\n\r\nТестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-03-27 14:50:01', '2017-03-27 11:50:01', '', 93, 'http://respectplus/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-03-27 14:51:05', '2017-03-27 11:51:05', 'Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', '', 'inherit', 'closed', 'closed', '', '93-autosave-v1', '', '', '2017-03-27 14:51:05', '2017-03-27 11:51:05', '', 93, 'http://respectplus/93-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2017-03-27 14:52:02', '2017-03-27 11:52:02', '<center><iframe width="560" height="315" src="https://www.youtube.com/embed/2KDZg1-7KsE" frameborder="0" allowfullscreen></iframe></center>\r\nТестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-03-27 14:52:02', '2017-03-27 11:52:02', '', 93, 'http://respectplus/93-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-03-27 14:55:47', '2017-03-27 11:55:47', '<center><iframe src="https://www.youtube.com/embed/2KDZg1-7KsE" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe></center>\r\nТестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', 'естовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость ', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-03-27 14:55:47', '2017-03-27 11:55:47', '', 93, 'http://respectplus/93-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-03-27 15:50:09', '2017-03-27 12:50:09', '<center><iframe src="https://www.youtube.com/embed/2KDZg1-7KsE" width="100%" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe></center>\nТестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5', 'Тестовая новость 5', 'естовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость 5Тестовая новость ', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-03-27 15:50:09', '2017-03-27 12:50:09', '', 93, 'http://respectplus/93-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2017-03-29 20:01:03', '2017-03-29 17:01:03', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет довольно широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li> Покупка-продажа, аренда недвижимости.</li>\r\n 	<li> Поиск продавцов и покупателей.</li>\r\n 	<li> Юридическое сопровождение сделки.</li>\r\n 	<li> Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li> Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li> Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li> Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nПочему именно агентство недвижимости «РЕСПЕКТ+»?\r\n<ul>\r\n 	<li> АН «РЕСПЕКТ+» предоставляет полный спектр услуг по недвижимости, что дает возможность решать сложные вопросы со всеми объектами недвижимости.</li>\r\n</ul>\r\n<ul>\r\n 	<li>АН «РЕСПЕКТ+» имеет доступ ко всем платным и бесплатным базам недвижимости.</li>\r\n</ul>\r\n<ul>\r\n 	<li> АН «РЕСПЕКТ+» оказывает поддержку по недвижимости после сделки.</li>\r\n</ul>', 'Услуги', '', 'publish', 'closed', 'closed', '', 'konsultatsiya', '', '', '2017-03-31 20:19:13', '2017-03-31 17:19:13', '', 0, 'http://respectplus/?page_id=103', 0, 'page', '', 0),
(104, 1, '2017-03-29 20:01:03', '2017-03-29 17:01:03', '', 'Консультация', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-03-29 20:01:03', '2017-03-29 17:01:03', '', 103, 'http://respectplus/103-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-03-29 23:02:10', '2017-03-29 20:02:10', 'Виды предоставляемых услуг или Услуги\r\n\r\nАгентство недвижимости «РЕСПЕКТ+» предоставляет довольно\r\n\r\nширокий спектр услуг с недвижимостью в различных сферах, в\r\n\r\nчастности:\r\n\r\n Покупка-продажа, аренда недвижимости.\r\n\r\n Поиск продавцов и покупателей.\r\n\r\n Юридическое сопровождение сделки.\r\n\r\n Регистрация или иное оформление в государственных или иных органах\r\n\r\nобъекта по сделке.\r\n\r\n Консультации по вопросам сделок с недвижимостью.\r\n\r\n Узаконивание изменений в объекте недвижимости.\r\n\r\n Консультации по определению рыночной стоимости объектов\r\n\r\nнедвижимости (дом, коттедж, квартира, гараж, земельный участок,\r\n\r\nздание, помещение, офис и т. д.)\r\n\r\n Проведение комплекса рекламных мероприятий по продвижению объекта\r\n\r\nна рынке недвижимости.\r\n\r\n Подготовка, получение и регистрация полного пакета документов для\r\n\r\nвсех видов сделок с недвижимостью.\r\n\r\n Срочный выкуп недвижимости.', 'Консультация', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-03-29 23:02:10', '2017-03-29 20:02:10', '', 103, 'http://respectplus/103-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-03-30 11:21:42', '2017-03-30 08:21:42', 'Продажа однокомнатной квартиры в ДнепреПродажа однокомнатной квартиры в ДнепреПродажа однокомнатной квартиры в ДнепреПродажа однокомнатной квартиры в Днепре', 'Продажа однокомнатной квартиры в Днепре', 'Продажа однокомнатной квартиры в Днепре СРОЧНО', 'publish', 'closed', 'closed', '', 'prodazha-odnokomnatnoj-kvartiry-v-dnepre', '', '', '2017-03-30 22:37:45', '2017-03-30 19:37:45', '', 0, 'http://respectplus/?post_type=product&#038;p=120', 0, 'product', '', 0),
(122, 1, '2017-03-30 11:47:30', '2017-03-30 08:47:30', '', 'Объекты', '', 'publish', 'closed', 'closed', '', 'obekty', '', '', '2017-03-30 19:13:26', '2017-03-30 16:13:26', '', 0, 'http://respectplus/?page_id=122', 0, 'page', '', 0),
(123, 1, '2017-03-30 11:47:30', '2017-03-30 08:47:30', '', 'Объекты', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2017-03-30 11:47:30', '2017-03-30 08:47:30', '', 122, 'http://respectplus/122-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2017-03-30 17:42:20', '2017-03-30 14:42:20', 'Продажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа домаПродажа дома Продажа дома', 'Продажа дома', 'Продажа дома Продажа дома Продажа дома Продажа дома', 'publish', 'closed', 'closed', '', 'prodazha-doma', '', '', '2017-03-30 22:37:31', '2017-03-30 19:37:31', '', 0, 'http://respectplus/?post_type=product&#038;p=125', 0, 'product', '', 0),
(126, 1, '2017-03-30 17:41:56', '2017-03-30 14:41:56', '', '1868094', '', 'inherit', 'open', 'closed', '', '1868094', '', '', '2017-03-30 17:41:56', '2017-03-30 14:41:56', '', 125, 'http://respectplus/wp-content/uploads/2017/03/1868094.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2017-03-30 22:09:27', '2017-03-30 19:09:27', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-03-30 22:09:27', '2017-03-30 19:09:27', '', 0, 'http://respectplus/cart/', 0, 'page', '', 0),
(128, 1, '2017-03-30 22:09:27', '2017-03-30 19:09:27', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-03-30 22:09:27', '2017-03-30 19:09:27', '', 0, 'http://respectplus/checkout/', 0, 'page', '', 0),
(129, 1, '2017-03-30 22:09:27', '2017-03-30 19:09:27', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-03-30 22:09:27', '2017-03-30 19:09:27', '', 0, 'http://respectplus/my-account/', 0, 'page', '', 0),
(130, 1, '2017-03-30 22:14:55', '2017-03-30 19:14:55', 'Аренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартирыАренда квартирыАренда квартиры Аренда квартиры', 'Аренда квартиры', 'Аренда квартирыАренда квартиры Аренда квартиры СРОЧНО', 'publish', 'closed', 'closed', '', 'arenda-kvartiry', '', '', '2017-03-30 22:55:47', '2017-03-30 19:55:47', '', 0, 'http://respectplus/?post_type=product&#038;p=130', 0, 'product', '', 0),
(132, 1, '2017-03-31 19:54:56', '2017-03-31 16:54:56', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет довольно широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li> Покупка-продажа, аренда недвижимости.</li>\r\n 	<li> Поиск продавцов и покупателей.</li>\r\n 	<li> Юридическое сопровождение сделки.</li>\r\n 	<li> Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li> Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li> Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li> Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>', 'Услуги', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-03-31 19:54:56', '2017-03-31 16:54:56', '', 103, 'http://respectplus/103-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2017-03-31 19:57:49', '2017-03-31 16:57:49', 'Продажа двухкомнатной квартиры в Каменском Продажа двухкомнатной квартиры в Каменском Продажа двухкомнатной квартиры в Каменском Продажа двухкомнатной квартиры в Каменском мывп цуая Продажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в КаменскомПродажа двухкомнатной квартиры в Каменском', 'Продажа двухкомнатной квартиры в Каменском', 'Продажа двухкомнатной квартиры в Каменском СРОЧНО', 'publish', 'open', 'closed', '', 'prodazha-dvuhkomnatnoj-kvartiry-v-kamenskom', '', '', '2017-03-31 19:57:49', '2017-03-31 16:57:49', '', 0, 'http://respectplus/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2017-03-31 20:03:14', '2017-03-31 17:03:14', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам  приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n\r\nАН «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nАгентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-31 20:03:14', '2017-03-31 17:03:14', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2017-03-31 20:04:56', '2017-03-31 17:04:56', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам  приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n\r\nАН «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\n<blockquote>То что, мы досконально разбираемся в конъюнктуре рынка, позволяет точно определить реальную стоимость объекта. Агентство недвижимости «РЕСПЕКТ+» располагает широкими рекламными возможностями. Соблюдение правовых норм при проведении сделок обеспечивают консультации высококвалифицированных юристов.</blockquote>', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-31 20:04:56', '2017-03-31 17:04:56', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2017-03-31 20:14:53', '2017-03-31 17:14:53', 'Агентство недвижимости «РЕСПЕКТ +» помогает нашим клиентам  приобрести недвижимость в г. Днепре и Днепропетровской области, а также выгодно инвестировать деньги в эту недвижимость. Наши специалисты агентства прекрасно знают процедуру оформления документов на куплю/продажу, аренду недвижимости, а также особенности законодательства Украины.\r\n\r\nАН «РЕСПЕКТ+» предоставляет широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li>Покупка-продажа, аренда недвижимости.</li>\r\n 	<li>Поиск продавцов и покупателей.</li>\r\n 	<li>Юридическое сопровождение сделки.</li>\r\n 	<li>Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li>Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li>Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li>Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nВо время индивидуальных показов при покупке недвижимости мы Вам поможем:\r\n\r\n1. Покажем Вам объекты недвижимости и поясним плюсы и минусы,\r\n\r\n2. Выбрать подходящую недвижимость,\r\n\r\n3. Предупредим от возможных ошибок:\r\n\r\n- в выборе расположения недвижимости;\r\n\r\n- в выборе объекта недвижимости;\r\n\r\n- в процессе переговоров с продавцом;\r\n\r\n- в процессе оформления документов.\r\n\r\n4. Являясь официальным  агентством недвижимости, мы без дополнительных посредников будем представлять Ваши интересы в процессе купли/продажи недвижимости и проследим все формальности в оформлении документов на передачу прав собственности.\r\n\r\n&nbsp;', 'О нас', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-03-31 20:14:53', '2017-03-31 17:14:53', '', 55, 'http://respectplus/55-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2017-03-31 20:19:13', '2017-03-31 17:19:13', 'Агентство недвижимости «РЕСПЕКТ+» предоставляет довольно широкий спектр услуг с недвижимостью в различных сферах, в частности:\r\n<ul>\r\n 	<li> Покупка-продажа, аренда недвижимости.</li>\r\n 	<li> Поиск продавцов и покупателей.</li>\r\n 	<li> Юридическое сопровождение сделки.</li>\r\n 	<li> Регистрация или иное оформление в государственных или иных органах объекта по сделке.</li>\r\n 	<li> Консультации по вопросам сделок с недвижимостью.</li>\r\n 	<li> Узаконивание изменений в объекте недвижимости.</li>\r\n 	<li> Консультации по определению рыночной стоимости объектов недвижимости (дом, коттедж, квартира, гараж, земельный участок, здание, помещение, офис и т. д.)</li>\r\n 	<li>Проведение комплекса рекламных мероприятий по продвижению объекта на рынке недвижимости.</li>\r\n 	<li>Подготовка, получение и регистрация полного пакета документов для всех видов сделок с недвижимостью.</li>\r\n 	<li>Срочный выкуп недвижимости.</li>\r\n</ul>\r\nПочему именно агентство недвижимости «РЕСПЕКТ+»?\r\n<ul>\r\n 	<li> АН «РЕСПЕКТ+» предоставляет полный спектр услуг по недвижимости, что дает возможность решать сложные вопросы со всеми объектами недвижимости.</li>\r\n</ul>\r\n<ul>\r\n 	<li>АН «РЕСПЕКТ+» имеет доступ ко всем платным и бесплатным базам недвижимости.</li>\r\n</ul>\r\n<ul>\r\n 	<li> АН «РЕСПЕКТ+» оказывает поддержку по недвижимости после сделки.</li>\r\n</ul>', 'Услуги', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2017-03-31 20:19:13', '2017-03-31 17:19:13', '', 103, 'http://respectplus/103-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2017-04-01 17:27:01', '2017-04-01 14:27:01', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2017-04-03 19:51:32', '2017-04-03 16:51:32', '', 0, 'http://respectplus/?page_id=139', 0, 'page', '', 0),
(140, 1, '2017-04-01 17:27:01', '2017-04-01 14:27:01', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2017-04-01 17:27:01', '2017-04-01 14:27:01', '', 139, 'http://respectplus/139-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2017-04-01 17:30:01', '2017-04-01 14:30:01', '[contact-form-7 id="142" title="Contact form 1"]', 'Контакты', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2017-04-01 17:30:01', '2017-04-01 14:30:01', '', 139, 'http://respectplus/139-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2017-04-01 23:07:21', '2017-04-01 20:07:21', '', 'Оставить заявку', '', 'publish', 'closed', 'closed', '', 'otpravit-zayavku', '', '', '2017-07-02 19:51:41', '2017-07-02 16:51:41', '', 103, 'http://respectplus/?page_id=145', 0, 'page', '', 0),
(146, 1, '2017-04-01 23:07:21', '2017-04-01 20:07:21', '', 'Отправить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-04-01 23:07:21', '2017-04-01 20:07:21', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2017-04-03 15:22:15', '2017-04-03 12:22:15', '', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-04-03 15:22:15', '2017-04-03 12:22:15', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=151', 6, 'nav_menu_item', '', 0),
(152, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=152', 2, 'nav_menu_item', '', 0),
(153, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=153', 3, 'nav_menu_item', '', 0),
(154, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 103, 'http://respectplus/?p=154', 4, 'nav_menu_item', '', 0),
(155, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=155', 7, 'nav_menu_item', '', 0),
(156, 1, '2017-04-03 15:35:37', '2017-04-03 12:35:37', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2017-04-03 15:36:32', '2017-04-03 12:36:32', '', 0, 'http://respectplus/?p=156', 1, 'nav_menu_item', '', 0),
(157, 1, '2017-04-03 15:36:57', '2017-04-03 12:36:57', ' ', '', '', 'publish', 'closed', 'closed', '', '157', '', '', '2017-04-03 15:37:12', '2017-04-03 12:37:12', '', 0, 'http://respectplus/?p=157', 2, 'nav_menu_item', '', 0),
(158, 1, '2017-04-03 15:36:57', '2017-04-03 12:36:57', ' ', '', '', 'publish', 'closed', 'closed', '', '158', '', '', '2017-04-03 15:37:12', '2017-04-03 12:37:12', '', 0, 'http://respectplus/?p=158', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(159, 1, '2017-04-03 15:36:57', '2017-04-03 12:36:57', ' ', '', '', 'publish', 'closed', 'closed', '', '159', '', '', '2017-04-03 15:37:12', '2017-04-03 12:37:12', '', 0, 'http://respectplus/?p=159', 4, 'nav_menu_item', '', 0),
(160, 1, '2017-04-03 15:36:57', '2017-04-03 12:36:57', ' ', '', '', 'publish', 'closed', 'closed', '', '160', '', '', '2017-04-03 15:37:12', '2017-04-03 12:37:12', '', 0, 'http://respectplus/?p=160', 1, 'nav_menu_item', '', 0),
(162, 1, '2017-04-03 16:28:31', '2017-04-03 13:28:31', '<pre>&lt;form id="new_call"&gt;\r\n    &lt;div&gt;\r\n        &lt;p&gt;Меня зовут: &lt;input type="text" name="name" placeholder="Введите свое имя" required&gt;&lt;/p&gt;\r\n        &lt;p&gt;Мой контактный номер: &lt;input type="text" name="phone" placeholder="Введите номер телефона" required&gt;&lt;/p&gt;\r\n        &lt;div class="col-xs-4"&gt;\r\n            &lt;span&gt;Я хочу :&lt;/span&gt;\r\n            &lt;div&gt;\r\n                &lt;p&gt;&lt;label&gt;продать &lt;input name="sell" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;купить &lt;input name="buy" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;снять &lt;input name="snyat" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;сдать &lt;input name="sdat" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class="col-xs-4"&gt;\r\n\r\n            &lt;div&gt;\r\n                &lt;p&gt;&lt;label&gt;1-к квартиру  &lt;input name="1-k" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;2-к квартиру &lt;input name="2-k" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;3-к квартиру &lt;input name="3-k" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;4-к квартиру &lt;input name="4-k" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;5-к и более квартиру &lt;input name="5-k" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;гараж &lt;input name="garage" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;дом &lt;input name="house" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;участок &lt;input name="lot" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class="col-xs-4"&gt;\r\n            &lt;span&gt;В :&lt;/span&gt;\r\n            &lt;div&gt;\r\n                &lt;p&gt;&lt;label&gt;Днепре: &lt;input name="dnepr" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;Каменском: &lt;input name="kanyanskoe" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n                &lt;p&gt;&lt;label&gt;Другой регион: &lt;input name="other_region" type="checkbox"&gt;&lt;/label&gt;&lt;/p&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;input type="submit" value="Отправить" class="btn btn-default btn_read_more"&gt;\r\n    &lt;/div&gt;\r\n&lt;/form&gt;</pre>', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-04-03 16:28:31', '2017-04-03 13:28:31', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2017-04-03 16:28:54', '2017-04-03 13:28:54', '<form id="new_call">\r\n    <div>\r\n        <p>Меня зовут: <input type="text" name="name" placeholder="Введите свое имя" required></p>\r\n        <p>Мой контактный номер: <input type="text" name="phone" placeholder="Введите номер телефона" required></p>\r\n        <div class="col-xs-4">\r\n            <span>Я хочу :</span>\r\n            <div>\r\n                <p><label>продать <input name="sell" type="checkbox"></label></p>\r\n                <p><label>купить <input name="buy" type="checkbox"></label></p>\r\n                <p><label>снять <input name="snyat" type="checkbox"></label></p>\r\n                <p><label>сдать <input name="sdat" type="checkbox"></label></p>\r\n            </div>\r\n        </div>\r\n        <div class="col-xs-4">\r\n\r\n            <div>\r\n                <p><label>1-к квартиру  <input name="1-k" type="checkbox"></label></p>\r\n                <p><label>2-к квартиру <input name="2-k" type="checkbox"></label></p>\r\n                <p><label>3-к квартиру <input name="3-k" type="checkbox"></label></p>\r\n                <p><label>4-к квартиру <input name="4-k" type="checkbox"></label></p>\r\n                <p><label>5-к и более квартиру <input name="5-k" type="checkbox"></label></p>\r\n                <p><label>гараж <input name="garage" type="checkbox"></label></p>\r\n                <p><label>дом <input name="house" type="checkbox"></label></p>\r\n                <p><label>участок <input name="lot" type="checkbox"></label></p>\r\n            </div>\r\n        </div>\r\n        <div class="col-xs-4">\r\n            <span>В :</span>\r\n            <div>\r\n                <p><label>Днепре: <input name="dnepr" type="checkbox"></label></p>\r\n                <p><label>Каменском: <input name="kanyanskoe" type="checkbox"></label></p>\r\n                <p><label>Другой регион: <input name="other_region" type="checkbox"></label></p>\r\n            </div>\r\n        </div>\r\n        <input type="submit" value="Отправить" class="btn btn-default btn_read_more">\r\n    </div>\r\n</form>', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-04-03 16:28:54', '2017-04-03 13:28:54', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2017-04-03 19:40:47', '2017-04-03 16:40:47', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2017-04-03 19:40:47', '2017-04-03 16:40:47', '', 139, 'http://respectplus/139-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2017-07-02 19:29:40', '0000-00-00 00:00:00', '', 'Отправить заявку', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-02 19:29:40', '2017-07-02 16:29:40', '', 0, 'http://respectplus/?page_id=166', 0, 'page', '', 0),
(169, 1, '2017-07-02 19:31:46', '2017-07-02 16:31:46', 'asdasdasd', 'Отправить заявку', '', 'publish', 'closed', 'closed', '', 'otpravit-zayavku', '', '', '2017-07-02 19:31:46', '2017-07-02 16:31:46', '', 0, 'http://respectplus/?page_id=169', 0, 'page', '', 0),
(170, 1, '2017-07-02 19:31:46', '2017-07-02 16:31:46', 'asdasdasd', 'Отправить заявку', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2017-07-02 19:31:46', '2017-07-02 16:31:46', '', 169, 'http://respectplus/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2017-07-02 19:32:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-02 19:32:26', '0000-00-00 00:00:00', '', 103, 'http://respectplus/?p=171', 1, 'nav_menu_item', '', 0),
(172, 1, '2017-07-02 19:48:59', '2017-07-02 16:48:59', '<form action="" class="form-control">\r\n    <div class="col-xs-12">\r\n        <label for="">Меня зовут:<input type="text" required></label>\r\n        <label for="">Мой контактный номерЖ<input type="text" required></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">продать<input name="estate_type[]" type="checkbox" value="sell"></label>\r\n        <label for="">купить<input name="estate_type[]" type="checkbox" value="buy"></label>\r\n        <label for="">снять<input name="estate_type[]" type="checkbox" value="lease"></label>\r\n        <label for="">сдать<input name="estate_type[]" type="checkbox" value="rent"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <label for="">1-к квартиру<input name="estate_type[]" type="checkbox" value="1-k"></label>\r\n        <label for="">2-к квартиру<input name="estate_type[]" type="checkbox" value="2-k"></label>\r\n        <label for="">3-к квартиру<input name="estate_type[]" type="checkbox" value="3-k"></label>\r\n        <label for="">4-к квартиру<input name="estate_type[]" type="checkbox" value="4-k"></label>\r\n        <label for="">5-к квартиру<input name="estate_type[]" type="checkbox" value="5-k"></label>\r\n        <label for="">гараж<input name="estate_type[]" type="checkbox" value="garage"></label>\r\n        <label for="">дом<input name="estate_type[]" type="checkbox" value="house"></label>\r\n        <label for="">участок<input name="estate_type[]" type="checkbox" value="area"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">Днепре<input name="estate_type[]" type="checkbox" value="dnepr"></label>\r\n        <label for="">Каменском<input name="estate_type[]" type="checkbox" value="kamenskom"></label>\r\n        <label for="">Другой регион<input name="estate_type[]" type="text" value=""></label>\r\n    </div>\r\n    <button class="btn btn-default" type="submit">Отправить</button>\r\n</form>', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-07-02 19:48:59', '2017-07-02 16:48:59', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2017-07-02 19:49:31', '2017-07-02 16:49:31', '<form action="" class="">\r\n    <div class="col-xs-12">\r\n        <label for="">Меня зовут:<input type="text" required></label>\r\n        <label for="">Мой контактный номерЖ<input type="text" required></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">продать<input name="estate_type[]" type="checkbox" value="sell"></label>\r\n        <label for="">купить<input name="estate_type[]" type="checkbox" value="buy"></label>\r\n        <label for="">снять<input name="estate_type[]" type="checkbox" value="lease"></label>\r\n        <label for="">сдать<input name="estate_type[]" type="checkbox" value="rent"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <label for="">1-к квартиру<input name="estate_type[]" type="checkbox" value="1-k"></label>\r\n        <label for="">2-к квартиру<input name="estate_type[]" type="checkbox" value="2-k"></label>\r\n        <label for="">3-к квартиру<input name="estate_type[]" type="checkbox" value="3-k"></label>\r\n        <label for="">4-к квартиру<input name="estate_type[]" type="checkbox" value="4-k"></label>\r\n        <label for="">5-к квартиру<input name="estate_type[]" type="checkbox" value="5-k"></label>\r\n        <label for="">гараж<input name="estate_type[]" type="checkbox" value="garage"></label>\r\n        <label for="">дом<input name="estate_type[]" type="checkbox" value="house"></label>\r\n        <label for="">участок<input name="estate_type[]" type="checkbox" value="area"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">Днепре<input name="estate_type[]" type="checkbox" value="dnepr"></label>\r\n        <label for="">Каменском<input name="estate_type[]" type="checkbox" value="kamenskom"></label>\r\n        <label for="">Другой регион<input name="estate_type[]" type="text" value=""></label>\r\n    </div>\r\n    <button class="btn btn-default" type="submit">Отправить</button>\r\n</form>', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-07-02 19:49:31', '2017-07-02 16:49:31', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2017-07-02 19:49:52', '2017-07-02 16:49:52', '<form action="" class="">\r\n    <div class="col-xs-12">\r\n        <label for="">Меня зовут:<input type="text" required></label>\r\n        <label for="">Мой контактный номер:<input type="text" required></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">продать<input name="estate_type[]" type="checkbox" value="sell"></label>\r\n        <label for="">купить<input name="estate_type[]" type="checkbox" value="buy"></label>\r\n        <label for="">снять<input name="estate_type[]" type="checkbox" value="lease"></label>\r\n        <label for="">сдать<input name="estate_type[]" type="checkbox" value="rent"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <label for="">1-к квартиру<input name="estate_type[]" type="checkbox" value="1-k"></label>\r\n        <label for="">2-к квартиру<input name="estate_type[]" type="checkbox" value="2-k"></label>\r\n        <label for="">3-к квартиру<input name="estate_type[]" type="checkbox" value="3-k"></label>\r\n        <label for="">4-к квартиру<input name="estate_type[]" type="checkbox" value="4-k"></label>\r\n        <label for="">5-к квартиру<input name="estate_type[]" type="checkbox" value="5-k"></label>\r\n        <label for="">гараж<input name="estate_type[]" type="checkbox" value="garage"></label>\r\n        <label for="">дом<input name="estate_type[]" type="checkbox" value="house"></label>\r\n        <label for="">участок<input name="estate_type[]" type="checkbox" value="area"></label>\r\n    </div>\r\n    <div class="col-xs-4">\r\n        <p>Я хочу:</p>\r\n        <label for="">Днепре<input name="estate_type[]" type="checkbox" value="dnepr"></label>\r\n        <label for="">Каменском<input name="estate_type[]" type="checkbox" value="kamenskom"></label>\r\n        <label for="">Другой регион<input name="estate_type[]" type="text" value=""></label>\r\n    </div>\r\n    <button class="btn btn-default" type="submit">Отправить</button>\r\n</form>', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-07-02 19:49:52', '2017-07-02 16:49:52', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2017-07-02 19:51:41', '2017-07-02 16:51:41', '', 'Оставить заявку', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-07-02 19:51:41', '2017-07-02 16:51:41', '', 145, 'http://respectplus/145-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2017-07-08 19:02:57', '2017-07-08 16:02:57', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-07-08 19:02:57', '2017-07-08 16:02:57', '', 53, 'http://respectplus/53-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2017-07-16 15:03:50', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-16 15:03:50', '0000-00-00 00:00:00', '', 0, 'http://respectplus/?p=177', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 11, 'order_pa_город', '0'),
(4, 14, 'order', '0'),
(5, 14, 'product_count_product_cat', '3'),
(6, 15, 'order', '0'),
(7, 15, 'product_count_product_cat', '1'),
(9, 17, 'order_pa_gorod', '0'),
(10, 18, 'order_pa_gorod', '0'),
(11, 19, 'order_pa_gorod', '0'),
(12, 20, 'order_pa_tip-operatsii', '0'),
(13, 21, 'order_pa_tip-operatsii', '0'),
(14, 22, 'order_pa_vid-nedvizhimosti', '0'),
(15, 23, 'order_pa_vid-nedvizhimosti', '0'),
(16, 24, 'order_pa_vid-nedvizhimosti', '0'),
(17, 25, 'order_pa_vid-nedvizhimosti', '0'),
(18, 26, 'order_pa_vid-nedvizhimosti', '0'),
(19, 27, 'product_count_product_tag', '2'),
(20, 28, 'product_count_product_tag', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', 'bez-rubriki', 0),
(3, 'primary', 'primary', 0),
(4, 'Footer Navigation', 'footer-navigation', 0),
(5, 'Новости', 'novosti', 0),
(6, 'post-format-image', 'post-format-image', 0),
(7, 'simple', 'simple', 0),
(8, 'grouped', 'grouped', 0),
(9, 'variable', 'variable', 0),
(10, 'external', 'external', 0),
(11, 'Днепр', 'dnepr', 0),
(14, 'Продажа', 'prodazha', 0),
(15, 'Аренда', 'arenda', 0),
(17, 'Днепр', 'dnepr', 0),
(18, 'Камянское', 'kamyanskoe', 0),
(19, 'Кривой Рог', 'krivoj-rog', 0),
(20, 'Продажа', 'prodazha', 0),
(21, 'Аренда', 'arenda', 0),
(22, 'Однокомнатная квартира', 'odnokomnatnaya-kvartira', 0),
(23, 'Двухкомнатная квартира', 'dvuhkomnatnaya-kvartira', 0),
(24, 'Трехкомнатная квартира', 'trehkomnatnaya-kvartira', 0),
(25, 'Четырехкомнатная квартира', 'chetyrehkomnatnaya-kvartira', 0),
(26, 'Дом', 'dom', 0),
(27, 'Днепр', 'dnepr', 0),
(28, 'Камянское', 'kamyanskoe', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(76, 5, 0),
(76, 6, 0),
(84, 5, 0),
(84, 6, 0),
(87, 3, 0),
(89, 5, 0),
(89, 6, 0),
(91, 5, 0),
(93, 5, 0),
(93, 6, 0),
(116, 11, 0),
(119, 7, 0),
(120, 7, 0),
(120, 14, 0),
(120, 19, 0),
(120, 20, 0),
(120, 22, 0),
(120, 27, 0),
(125, 7, 0),
(125, 14, 0),
(125, 18, 0),
(125, 20, 0),
(125, 26, 0),
(125, 28, 0),
(130, 7, 0),
(130, 15, 0),
(130, 17, 0),
(130, 21, 0),
(130, 22, 0),
(130, 27, 0),
(133, 7, 0),
(133, 14, 0),
(133, 18, 0),
(133, 20, 0),
(133, 23, 0),
(133, 28, 0),
(151, 3, 0),
(152, 3, 0),
(153, 3, 0),
(154, 3, 0),
(155, 3, 0),
(156, 3, 0),
(157, 4, 0),
(158, 4, 0),
(159, 4, 0),
(160, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'category', '', 0, 5),
(6, 6, 'post_format', '', 0, 4),
(7, 7, 'product_type', '', 0, 4),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'pa_город', '', 0, 1),
(14, 14, 'product_cat', '', 0, 3),
(15, 15, 'product_cat', '', 0, 1),
(17, 17, 'pa_gorod', '', 0, 1),
(18, 18, 'pa_gorod', '', 0, 2),
(19, 19, 'pa_gorod', '', 0, 1),
(20, 20, 'pa_tip-operatsii', '', 0, 3),
(21, 21, 'pa_tip-operatsii', '', 0, 1),
(22, 22, 'pa_vid-nedvizhimosti', '', 0, 2),
(23, 23, 'pa_vid-nedvizhimosti', '', 0, 1),
(24, 24, 'pa_vid-nedvizhimosti', '', 0, 0),
(25, 25, 'pa_vid-nedvizhimosti', '', 0, 0),
(26, 26, 'pa_vid-nedvizhimosti', '', 0, 1),
(27, 27, 'product_tag', '', 0, 2),
(28, 28, 'product_tag', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lion2212'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '177'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:3:{i:0;s:10:"postcustom";i:1;s:11:"commentsdiv";i:2;s:9:"authordiv";}'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=html'),
(24, 1, 'wp_user-settings-time', '1491226129'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:9:"authordiv";}'),
(27, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(28, 1, 'session_tokens', 'a:1:{s:64:"c1590ff79f28bc50c65f791785ca027cff44ade3e44f7c22a8059588bf2d3237";a:4:{s:10:"expiration";i:1500379428;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:132:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36 OPR/46.0.2597.39";s:5:"login";i:1500206628;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lion2212', '$P$BwMPEKrTu3xtkQiXNI6knA4/sOJLbT0', 'lion2212', 'an.respectplus@gmail.com', '', '2017-03-18 16:28:34', '', 0, 'lion2212');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_520_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'gorod', 'Город', 'select', 'menu_order', 0),
(2, 'tip-operatsii', 'Тип операции', 'select', 'menu_order', 0),
(3, 'vid-nedvizhimosti', 'Вид недвижимости', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1120;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=948;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
