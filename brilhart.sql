/*
Navicat MySQL Data Transfer

Source Server         : desenvweb
Source Server Version : 50558
Source Host           : desenvweb:3306
Source Database       : brilhart

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2018-02-09 14:14:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brilhart_assets`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_assets`;
CREATE TABLE `brilhart_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_assets
-- ----------------------------
INSERT INTO `brilhart_assets` VALUES ('1', '0', '0', '111', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `brilhart_assets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `brilhart_assets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `brilhart_assets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `brilhart_assets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `brilhart_assets` VALUES ('8', '1', '17', '20', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}');
INSERT INTO `brilhart_assets` VALUES ('9', '1', '21', '22', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `brilhart_assets` VALUES ('10', '1', '23', '24', '1', 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `brilhart_assets` VALUES ('11', '1', '25', '28', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('12', '1', '29', '30', '1', 'com_login', 'com_login', '{}');
INSERT INTO `brilhart_assets` VALUES ('13', '1', '31', '32', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `brilhart_assets` VALUES ('14', '1', '33', '34', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `brilhart_assets` VALUES ('15', '1', '35', '36', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `brilhart_assets` VALUES ('16', '1', '37', '40', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('17', '1', '41', '42', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('18', '1', '43', '76', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('19', '1', '77', '80', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `brilhart_assets` VALUES ('20', '1', '81', '82', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('21', '1', '83', '84', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('22', '1', '85', '86', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `brilhart_assets` VALUES ('23', '1', '87', '88', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('24', '1', '89', '92', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}');
INSERT INTO `brilhart_assets` VALUES ('26', '1', '93', '94', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `brilhart_assets` VALUES ('27', '8', '18', '19', '2', 'com_content.category.2', 'Uncategorised', '{}');
INSERT INTO `brilhart_assets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Uncategorised', '{}');
INSERT INTO `brilhart_assets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Uncategorised', '{}');
INSERT INTO `brilhart_assets` VALUES ('30', '19', '78', '79', '2', 'com_newsfeeds.category.5', 'Uncategorised', '{}');
INSERT INTO `brilhart_assets` VALUES ('32', '24', '90', '91', '2', 'com_users.category.7', 'Uncategorised', '{}');
INSERT INTO `brilhart_assets` VALUES ('33', '1', '95', '96', '1', 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `brilhart_assets` VALUES ('34', '1', '97', '98', '1', 'com_joomlaupdate', 'com_joomlaupdate', '{}');
INSERT INTO `brilhart_assets` VALUES ('35', '1', '99', '100', '1', 'com_tags', 'com_tags', '{}');
INSERT INTO `brilhart_assets` VALUES ('36', '1', '101', '102', '1', 'com_contenthistory', 'com_contenthistory', '{}');
INSERT INTO `brilhart_assets` VALUES ('37', '1', '103', '104', '1', 'com_ajax', 'com_ajax', '{}');
INSERT INTO `brilhart_assets` VALUES ('38', '1', '105', '106', '1', 'com_postinstall', 'com_postinstall', '{}');
INSERT INTO `brilhart_assets` VALUES ('39', '18', '44', '45', '2', 'com_modules.module.1', 'Main Menu', '{}');
INSERT INTO `brilhart_assets` VALUES ('40', '18', '46', '47', '2', 'com_modules.module.2', 'Login', '{}');
INSERT INTO `brilhart_assets` VALUES ('41', '18', '48', '49', '2', 'com_modules.module.3', 'Popular Articles', '{}');
INSERT INTO `brilhart_assets` VALUES ('42', '18', '50', '51', '2', 'com_modules.module.4', 'Recently Added Articles', '{}');
INSERT INTO `brilhart_assets` VALUES ('43', '18', '52', '53', '2', 'com_modules.module.8', 'Toolbar', '{}');
INSERT INTO `brilhart_assets` VALUES ('44', '18', '54', '55', '2', 'com_modules.module.9', 'Quick Icons', '{}');
INSERT INTO `brilhart_assets` VALUES ('45', '18', '56', '57', '2', 'com_modules.module.10', 'Logged-in Users', '{}');
INSERT INTO `brilhart_assets` VALUES ('46', '18', '58', '59', '2', 'com_modules.module.12', 'Admin Menu', '{}');
INSERT INTO `brilhart_assets` VALUES ('47', '18', '60', '61', '2', 'com_modules.module.13', 'Admin Submenu', '{}');
INSERT INTO `brilhart_assets` VALUES ('48', '18', '62', '63', '2', 'com_modules.module.14', 'User Status', '{}');
INSERT INTO `brilhart_assets` VALUES ('49', '18', '64', '65', '2', 'com_modules.module.15', 'Title', '{}');
INSERT INTO `brilhart_assets` VALUES ('50', '18', '66', '67', '2', 'com_modules.module.16', 'Login Form', '{}');
INSERT INTO `brilhart_assets` VALUES ('51', '18', '68', '69', '2', 'com_modules.module.17', 'Breadcrumbs', '{}');
INSERT INTO `brilhart_assets` VALUES ('52', '18', '70', '71', '2', 'com_modules.module.79', 'Multilanguage status', '{}');
INSERT INTO `brilhart_assets` VALUES ('53', '18', '72', '73', '2', 'com_modules.module.86', 'Joomla Version', '{}');
INSERT INTO `brilhart_assets` VALUES ('54', '16', '38', '39', '2', 'com_menus.menu.1', 'Main Menu', '{}');
INSERT INTO `brilhart_assets` VALUES ('55', '18', '74', '75', '2', 'com_modules.module.87', 'Sample Data', '{}');
INSERT INTO `brilhart_assets` VALUES ('56', '1', '107', '108', '1', 'com_fields', 'com_fields', '{}');
INSERT INTO `brilhart_assets` VALUES ('57', '1', '109', '110', '1', 'com_associations', 'com_associations', '{}');
INSERT INTO `brilhart_assets` VALUES ('58', '11', '26', '27', '2', 'com_languages.language.2', 'Português do Brasil (pt-BR)', '{}');

-- ----------------------------
-- Table structure for `brilhart_associations`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_associations`;
CREATE TABLE `brilhart_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_associations
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_banner_clients`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_banner_clients`;
CREATE TABLE `brilhart_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_banner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_banner_tracks`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_banner_tracks`;
CREATE TABLE `brilhart_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_banner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_banners`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_banners`;
CREATE TABLE `brilhart_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_banners
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_categories`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_categories`;
CREATE TABLE `brilhart_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_categories
-- ----------------------------
INSERT INTO `brilhart_categories` VALUES ('1', '0', '0', '0', '11', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '{}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `brilhart_categories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `brilhart_categories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `brilhart_categories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `brilhart_categories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');
INSERT INTO `brilhart_categories` VALUES ('7', '32', '1', '9', '10', '1', 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '600', '2018-01-23 20:24:59', '0', '0000-00-00 00:00:00', '0', '*', '1');

-- ----------------------------
-- Table structure for `brilhart_contact_details`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_contact_details`;
CREATE TABLE `brilhart_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `suburb` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_contact_details
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_content`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_content`;
CREATE TABLE `brilhart_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_content
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_content_frontpage`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_content_frontpage`;
CREATE TABLE `brilhart_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_content_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_content_rating`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_content_rating`;
CREATE TABLE `brilhart_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_content_types`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_content_types`;
CREATE TABLE `brilhart_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_content_types
-- ----------------------------
INSERT INTO `brilhart_content_types` VALUES ('1', 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `brilhart_content_types` VALUES ('2', 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `brilhart_content_types` VALUES ('3', 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `brilhart_content_types` VALUES ('4', 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', '');
INSERT INTO `brilhart_content_types` VALUES ('5', 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('6', 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('7', 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('8', 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('9', 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `brilhart_content_types` VALUES ('10', 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('11', 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `brilhart_content_types` VALUES ('12', 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `brilhart_content_types` VALUES ('13', 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- ----------------------------
-- Table structure for `brilhart_contentitem_tag_map`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_contentitem_tag_map`;
CREATE TABLE `brilhart_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Maps items from content tables to tags';

-- ----------------------------
-- Records of brilhart_contentitem_tag_map
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_core_log_searches`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_core_log_searches`;
CREATE TABLE `brilhart_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_core_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_extensions`;
CREATE TABLE `brilhart_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_extensions
-- ----------------------------
INSERT INTO `brilhart_extensions` VALUES ('1', '0', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('2', '0', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('3', '0', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('4', '0', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('5', '0', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('6', '0', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('7', '0', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('8', '0', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('9', '0', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10', '0', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('11', '0', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"pt-BR\",\"site\":\"pt-BR\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('12', '0', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('13', '0', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('14', '0', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('15', '0', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('16', '0', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('17', '0', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('18', '0', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('19', '0', 'com_search', 'component', 'com_search', '', '1', '1', '1', '0', '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('20', '0', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('22', '0', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('23', '0', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('24', '0', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('25', '0', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('27', '0', 'com_finder', 'component', 'com_finder', '', '1', '1', '0', '0', '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('28', '0', 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '1', '1', '0', '1', '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('29', '0', 'com_tags', 'component', 'com_tags', '', '1', '1', '1', '1', '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('30', '0', 'com_contenthistory', 'component', 'com_contenthistory', '', '1', '1', '1', '0', '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('31', '0', 'com_ajax', 'component', 'com_ajax', '', '1', '1', '1', '1', '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('32', '0', 'com_postinstall', 'component', 'com_postinstall', '', '1', '1', '1', '1', '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('33', '0', 'com_fields', 'component', 'com_fields', '', '1', '1', '1', '0', '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('34', '0', 'com_associations', 'component', 'com_associations', '', '1', '1', '1', '0', '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('102', '0', 'LIB_PHPUTF8', 'library', 'phputf8', '', '0', '1', '1', '1', '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('103', '0', 'LIB_JOOMLA', 'library', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"ba9f4e4410c35aa8a95c102d38e80b66\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('104', '0', 'LIB_IDNA', 'library', 'idna_convert', '', '0', '1', '1', '1', '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('105', '0', 'FOF', 'library', 'fof', '', '0', '1', '1', '1', '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('106', '0', 'LIB_PHPASS', 'library', 'phpass', '', '0', '1', '1', '1', '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('200', '0', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('201', '0', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('202', '0', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('203', '0', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '0', '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('204', '0', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('205', '0', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('206', '0', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('207', '0', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '0', '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('208', '0', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('209', '0', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('210', '0', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('211', '0', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('212', '0', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('213', '0', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('214', '0', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('215', '0', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('216', '0', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '0', '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('218', '0', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('219', '0', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('220', '0', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('221', '0', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '0', '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('222', '0', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('223', '0', 'mod_finder', 'module', 'mod_finder', '', '0', '1', '0', '0', '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('300', '0', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('301', '0', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('302', '0', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('303', '0', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('304', '0', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('305', '0', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('307', '0', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('308', '0', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('309', '0', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('310', '0', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('311', '0', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('312', '0', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('313', '0', 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '1', '1', '1', '0', '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('314', '0', 'mod_version', 'module', 'mod_version', '', '1', '1', '1', '0', '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('315', '0', 'mod_stats_admin', 'module', 'mod_stats_admin', '', '1', '1', '1', '0', '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('316', '0', 'mod_tags_popular', 'module', 'mod_tags_popular', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('317', '0', 'mod_tags_similar', 'module', 'mod_tags_similar', '', '0', '1', '1', '0', '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('318', '0', 'mod_sampledata', 'module', 'mod_sampledata', '', '1', '1', '1', '0', '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('400', '0', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('401', '0', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('402', '0', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('403', '0', 'plg_content_contact', 'plugin', 'contact', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('404', '0', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('406', '0', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', '0', '2011-09-18 15:22:50', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('407', '0', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `brilhart_extensions` VALUES ('408', '0', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `brilhart_extensions` VALUES ('409', '0', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `brilhart_extensions` VALUES ('410', '0', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.33.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('411', '0', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('412', '0', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '0', '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('413', '0', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('414', '0', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('415', '0', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('416', '0', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `brilhart_extensions` VALUES ('417', '0', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('418', '0', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('419', '0', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('420', '0', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('422', '0', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('423', '0', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('424', '0', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `brilhart_extensions` VALUES ('425', '0', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `brilhart_extensions` VALUES ('426', '0', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `brilhart_extensions` VALUES ('427', '0', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '0', '1', '1', '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `brilhart_extensions` VALUES ('428', '0', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `brilhart_extensions` VALUES ('429', '0', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `brilhart_extensions` VALUES ('430', '0', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('431', '0', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('432', '0', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('433', '0', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '0', '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('434', '0', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('435', '0', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('436', '0', 'plg_system_languagecode', 'plugin', 'languagecode', 'system', '0', '0', '1', '0', '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', '0', '0000-00-00 00:00:00', '10', '0');
INSERT INTO `brilhart_extensions` VALUES ('437', '0', 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('438', '0', 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('439', '0', 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', '0', '0', '1', '0', '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('440', '0', 'plg_system_highlight', 'plugin', 'highlight', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `brilhart_extensions` VALUES ('441', '0', 'plg_content_finder', 'plugin', 'finder', 'content', '0', '0', '1', '0', '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('442', '0', 'plg_finder_categories', 'plugin', 'categories', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('443', '0', 'plg_finder_contacts', 'plugin', 'contacts', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('444', '0', 'plg_finder_content', 'plugin', 'content', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('445', '0', 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `brilhart_extensions` VALUES ('447', '0', 'plg_finder_tags', 'plugin', 'tags', 'finder', '0', '1', '1', '0', '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('448', '0', 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('449', '0', 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', '0', '1', '1', '0', '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('450', '0', 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', '0', '0', '1', '0', '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('451', '0', 'plg_search_tags', 'plugin', 'tags', 'search', '0', '1', '1', '0', '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('452', '0', 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1517493097}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('453', '0', 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('454', '0', 'plg_system_stats', 'plugin', 'stats', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":\"\",\"unique_id\":\"96fc670b41045c138b2a9c252a91471b819dd344\",\"interval\":12}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('455', '0', 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `brilhart_extensions` VALUES ('456', '0', 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `brilhart_extensions` VALUES ('457', '0', 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', '0', '1', '1', '1', '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `brilhart_extensions` VALUES ('458', '0', 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', '0', '1', '1', '1', '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('459', '0', 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('460', '0', 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('461', '0', 'plg_system_fields', 'plugin', 'fields', 'system', '0', '1', '1', '0', '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('462', '0', 'plg_fields_calendar', 'plugin', 'calendar', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('463', '0', 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('464', '0', 'plg_fields_color', 'plugin', 'color', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('465', '0', 'plg_fields_editor', 'plugin', 'editor', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('466', '0', 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('467', '0', 'plg_fields_integer', 'plugin', 'integer', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('468', '0', 'plg_fields_list', 'plugin', 'list', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('469', '0', 'plg_fields_media', 'plugin', 'media', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('470', '0', 'plg_fields_radio', 'plugin', 'radio', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('471', '0', 'plg_fields_sql', 'plugin', 'sql', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('472', '0', 'plg_fields_text', 'plugin', 'text', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('473', '0', 'plg_fields_textarea', 'plugin', 'textarea', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('474', '0', 'plg_fields_url', 'plugin', 'url', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('475', '0', 'plg_fields_user', 'plugin', 'user', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('476', '0', 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', '0', '1', '1', '0', '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('477', '0', 'plg_content_fields', 'plugin', 'fields', 'content', '0', '1', '1', '0', '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('478', '0', 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', '0', '1', '1', '0', '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('479', '0', 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', '0', '1', '1', '0', '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('503', '0', 'beez3', 'template', 'beez3', '', '0', '1', '1', '0', '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('504', '0', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('506', '0', 'protostar', 'template', 'protostar', '', '0', '1', '1', '0', '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('507', '0', 'isis', 'template', 'isis', '', '1', '1', '1', '0', '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('600', '802', 'English (en-GB)', 'language', 'en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"January 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.4\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('601', '802', 'English (en-GB)', 'language', 'en-GB', '', '1', '1', '1', '1', '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"January 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('700', '0', 'files_joomla', 'file', 'joomla', '', '0', '1', '1', '1', '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"January 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('802', '0', 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', '0', '1', '1', '1', '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"January 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10000', '10002', 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', '0', '1', '0', '0', '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"Janeiro 2018\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.4.1\",\"description\":\"pt-BR site language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10001', '10002', 'PortugusdoBrasilpt-BR', 'language', 'pt-BR', '', '1', '1', '0', '0', '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"language\",\"creationDate\":\"Janeiro de 2018\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"Copyright (C) 2005-2018 Open Source Matters. Todos os direitos reservados.\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.8.4.1\",\"description\":\"Brazilian Portuguese Administrator language\",\"group\":\"\",\"filename\":\"install\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10002', '0', 'Português do Brasil (pt-BR)', 'package', 'pkg_pt-BR', '', '0', '1', '1', '0', '{\"name\":\"Portugu\\u00eas do Brasil (pt-BR)\",\"type\":\"package\",\"creationDate\":\"Janeiro 2018\",\"author\":\"Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas do Brasil\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"pt-br@joomlacarioca.com.br\",\"authorUrl\":\"http:\\/\\/brasil.joomla.com\",\"version\":\"3.8.4.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n  <h2>Pacote de Idioma Portugu\\u00eas Brasileiro (pt-BR) completo para Joomla! 3.8.4 instalado com sucesso!<\\/h2>\\n  <h3>Vers\\u00e3o 3.8.4.1 <\\/h3>\\n  <p>Por favor, informe qualquer problema ou assunto relacionado encontrado na p\\u00e1gina <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">Grupo Tradu\\u00e7\\u00f5es Joomla pt-BR<\\/a> no Facebook.<\\/p>\\n  <p>Traduzido pela <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Equipe de Tradu\\u00e7\\u00e3o Portugu\\u00eas Brasileiro<\\/a>.<\\/p>\\n  <h2>Successfully installed the Full Brazilian Portugues (pt-BR) Language Pack for Joomla! 3.8.4 <\\/h2>\\n  <h3>Version 3.8.4.1<\\/h3>\\n  <p>Please report any bugs or issues at the <a href=\\\"https:\\/\\/www.facebook.com\\/groups\\/traduzjoomla\\/\\\" target=\\\"_blank\\\">pt-BR Translation Group<\\/a> Facebook page.<\\/p>\\n  <p>Translated by the <a href=\\\"http:\\/\\/brasil.joomla.com\\/como-participar\\/9-traducao-no-projeto\\\" target=\\\"_blank\\\">Brazilian Portuguese Translation Team<\\/a>.<\\/p>\\n  <\\/div>\",\"group\":\"\",\"filename\":\"pkg_pt-BR\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10003', '0', 'brilhart', 'template', 'brilhart', '', '0', '1', '1', '0', '{\"name\":\"brilhart\",\"type\":\"template\",\"creationDate\":\"31\\/01\\/2018\",\"author\":\"Anderson Isotton\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"Layout brilhart\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `brilhart_extensions` VALUES ('10004', '0', 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', '0', '1', '1', '0', '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"28 April 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2013-2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.1.1\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for `brilhart_fields`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_fields`;
CREATE TABLE `brilhart_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_fields
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_fields_categories`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_fields_categories`;
CREATE TABLE `brilhart_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_fields_categories
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_fields_groups`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_fields_groups`;
CREATE TABLE `brilhart_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_fields_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_fields_values`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_fields_values`;
CREATE TABLE `brilhart_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_fields_values
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_filters`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_filters`;
CREATE TABLE `brilhart_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_filters
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links`;
CREATE TABLE `brilhart_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms0`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms0`;
CREATE TABLE `brilhart_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms0
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms1`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms1`;
CREATE TABLE `brilhart_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms1
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms2`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms2`;
CREATE TABLE `brilhart_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms2
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms3`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms3`;
CREATE TABLE `brilhart_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms3
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms4`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms4`;
CREATE TABLE `brilhart_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms4
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms5`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms5`;
CREATE TABLE `brilhart_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms5
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms6`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms6`;
CREATE TABLE `brilhart_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms6
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms7`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms7`;
CREATE TABLE `brilhart_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms7
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms8`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms8`;
CREATE TABLE `brilhart_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms8
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_terms9`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_terms9`;
CREATE TABLE `brilhart_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_terms9
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termsa`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termsa`;
CREATE TABLE `brilhart_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termsa
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termsb`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termsb`;
CREATE TABLE `brilhart_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termsb
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termsc`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termsc`;
CREATE TABLE `brilhart_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termsc
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termsd`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termsd`;
CREATE TABLE `brilhart_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termsd
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termse`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termse`;
CREATE TABLE `brilhart_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termse
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_links_termsf`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_links_termsf`;
CREATE TABLE `brilhart_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_links_termsf
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_taxonomy`;
CREATE TABLE `brilhart_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_taxonomy
-- ----------------------------
INSERT INTO `brilhart_finder_taxonomy` VALUES ('1', '0', 'ROOT', '0', '0', '0');

-- ----------------------------
-- Table structure for `brilhart_finder_taxonomy_map`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_taxonomy_map`;
CREATE TABLE `brilhart_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_taxonomy_map
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_terms`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_terms`;
CREATE TABLE `brilhart_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_terms_common`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_terms_common`;
CREATE TABLE `brilhart_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_terms_common
-- ----------------------------
INSERT INTO `brilhart_finder_terms_common` VALUES ('a', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('about', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('after', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('ago', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('all', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('am', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('an', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('and', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('any', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('are', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('aren\'t', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('as', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('at', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('be', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('but', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('by', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('for', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('from', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('get', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('go', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('how', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('if', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('in', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('into', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('is', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('isn\'t', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('it', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('its', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('me', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('more', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('most', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('must', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('my', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('new', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('no', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('none', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('not', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('nothing', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('of', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('off', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('often', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('old', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('on', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('onc', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('once', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('only', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('or', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('other', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('our', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('ours', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('out', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('over', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('page', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('she', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('should', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('small', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('so', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('some', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('than', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('thank', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('that', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('the', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('their', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('theirs', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('them', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('then', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('there', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('these', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('they', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('this', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('those', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('thus', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('time', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('times', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('to', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('too', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('true', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('under', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('until', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('up', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('upon', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('use', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('user', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('users', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('version', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('very', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('via', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('want', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('was', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('way', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('were', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('what', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('when', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('where', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('which', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('who', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('whom', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('whose', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('why', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('wide', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('will', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('with', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('within', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('without', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('would', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('yes', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('yet', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('you', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('your', 'en');
INSERT INTO `brilhart_finder_terms_common` VALUES ('yours', 'en');

-- ----------------------------
-- Table structure for `brilhart_finder_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_tokens`;
CREATE TABLE `brilhart_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_tokens_aggregate`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_tokens_aggregate`;
CREATE TABLE `brilhart_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_tokens_aggregate
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_finder_types`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_finder_types`;
CREATE TABLE `brilhart_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brilhart_finder_types
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_languages`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_languages`;
CREATE TABLE `brilhart_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_languages
-- ----------------------------
INSERT INTO `brilhart_languages` VALUES ('1', '0', 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', '1', '1', '2');
INSERT INTO `brilhart_languages` VALUES ('2', '58', 'pt-BR', 'Português do Brasil (pt-BR)', 'Português do Brasil (pt-BR)', 'pt', 'pt_br', '', '', '', '', '0', '1', '1');

-- ----------------------------
-- Table structure for `brilhart_menu`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_menu`;
CREATE TABLE `brilhart_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_menu
-- ----------------------------
INSERT INTO `brilhart_menu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '43', '0', '*', '0');
INSERT INTO `brilhart_menu` VALUES ('2', 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '1', '1', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('3', 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('4', 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', '1', '2', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('5', 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('6', 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '1', '2', '2', '4', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('7', 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', '1', '1', '1', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('8', 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', '1', '7', '2', '8', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('9', 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', '1', '7', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('10', 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', '1', '1', '1', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '20', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('11', 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', '1', '10', '2', '15', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('13', 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', '1', '1', '1', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '21', '26', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('14', 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '1', '13', '2', '17', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '22', '23', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('15', 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '1', '13', '2', '6', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('16', 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', '1', '1', '1', '24', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '27', '28', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('17', 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', '1', '1', '1', '19', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '29', '30', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('18', 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', '1', '1', '1', '27', '0', '0000-00-00 00:00:00', '0', '0', 'class:finder', '0', '', '31', '32', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('19', 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', '1', '1', '1', '28', '0', '0000-00-00 00:00:00', '0', '0', 'class:joomlaupdate', '0', '', '33', '34', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('20', 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', '1', '1', '1', '29', '0', '0000-00-00 00:00:00', '0', '1', 'class:tags', '0', '', '35', '36', '0', '', '1');
INSERT INTO `brilhart_menu` VALUES ('21', 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', '1', '1', '1', '32', '0', '0000-00-00 00:00:00', '0', '1', 'class:postinstall', '0', '', '37', '38', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('22', 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', '1', '1', '1', '34', '0', '0000-00-00 00:00:00', '0', '0', 'class:associations', '0', '', '39', '40', '0', '*', '1');
INSERT INTO `brilhart_menu` VALUES ('101', 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', '1', '1', '1', '22', '0', '0000-00-00 00:00:00', '0', '1', ' ', '0', '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"0\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '41', '42', '1', '*', '0');

-- ----------------------------
-- Table structure for `brilhart_menu_types`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_menu_types`;
CREATE TABLE `brilhart_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_menu_types
-- ----------------------------
INSERT INTO `brilhart_menu_types` VALUES ('1', '0', 'mainmenu', 'Main Menu', 'The main menu for the site', '0');

-- ----------------------------
-- Table structure for `brilhart_messages`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_messages`;
CREATE TABLE `brilhart_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_messages_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_messages_cfg`;
CREATE TABLE `brilhart_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_modules`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_modules`;
CREATE TABLE `brilhart_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_modules
-- ----------------------------
INSERT INTO `brilhart_modules` VALUES ('1', '39', 'Main Menu', '', '', '1', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `brilhart_modules` VALUES ('2', '40', 'Login', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('3', '41', 'Popular Articles', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('4', '42', 'Recently Added Articles', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('8', '43', 'Toolbar', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('9', '44', 'Quick Icons', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('10', '45', 'Logged-in Users', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('12', '46', 'Admin Menu', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('13', '47', 'Admin Submenu', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('14', '48', 'User Status', '', '', '2', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('15', '49', 'Title', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('16', '50', 'Login Form', '', '', '7', 'position-7', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `brilhart_modules` VALUES ('17', '51', 'Breadcrumbs', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `brilhart_modules` VALUES ('79', '52', 'Multilanguage status', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_multilangstatus', '3', '1', '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('86', '53', 'Joomla Version', '', '', '1', 'footer', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_version', '3', '1', '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `brilhart_modules` VALUES ('87', '55', 'Sample Data', '', '', '0', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_sampledata', '6', '1', '{}', '1', '*');

-- ----------------------------
-- Table structure for `brilhart_modules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_modules_menu`;
CREATE TABLE `brilhart_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_modules_menu
-- ----------------------------
INSERT INTO `brilhart_modules_menu` VALUES ('1', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('2', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('3', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('4', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('6', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('7', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('8', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('9', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('10', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('12', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('13', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('14', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('15', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('16', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('17', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('79', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('86', '0');
INSERT INTO `brilhart_modules_menu` VALUES ('87', '0');

-- ----------------------------
-- Table structure for `brilhart_newsfeeds`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_newsfeeds`;
CREATE TABLE `brilhart_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_overrider`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_overrider`;
CREATE TABLE `brilhart_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `string` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_overrider
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_postinstall_messages`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_postinstall_messages`;
CREATE TABLE `brilhart_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_postinstall_messages
-- ----------------------------
INSERT INTO `brilhart_postinstall_messages` VALUES ('1', '700', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', '1', 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', '1');
INSERT INTO `brilhart_postinstall_messages` VALUES ('2', '700', 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', '1', 'message', '', '', '', '', '3.2.0', '1');
INSERT INTO `brilhart_postinstall_messages` VALUES ('3', '700', 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', '1');
INSERT INTO `brilhart_postinstall_messages` VALUES ('4', '700', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', '1', 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', '1');
INSERT INTO `brilhart_postinstall_messages` VALUES ('5', '700', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', '1', 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', '1');
INSERT INTO `brilhart_postinstall_messages` VALUES ('6', '700', 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', '1', 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', '1');

-- ----------------------------
-- Table structure for `brilhart_redirect_links`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_redirect_links`;
CREATE TABLE `brilhart_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_redirect_links
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_schemas`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_schemas`;
CREATE TABLE `brilhart_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_schemas
-- ----------------------------
INSERT INTO `brilhart_schemas` VALUES ('700', '3.8.4-2018-01-16');

-- ----------------------------
-- Table structure for `brilhart_session`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_session`;
CREATE TABLE `brilhart_session` (
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_session
-- ----------------------------
INSERT INTO `brilhart_session` VALUES ('nmv0ln4qagt3t5p8adhs82u1l1rdmbmht1m0gatln21sn68g5ni1', '0', '1', '1517435507', 'EiJUEn55IM1qaosrx3G0_SzaoMtn4w2vwJXYkVhv0BYWCY2XcIk-gLtttvRUMBimZm_ix-v47zhV8js5_CcpFcHDmp5RcTYv1jIc3yQEYH8nF4rNmsAKn1d3jTRDsMSFRl1W2c2vqfnR3G9FigldbpdwOzS4r2YYzgXEDSWquUolh4NDJcN1idAhF4LxUwavcbTy-GYGuJaVLD49poLJ4fvpOKLd4zdupSvcZCMjBrHkOrkdBAJWJIBNroZ8x1GiowY8ZhdwBWn8V7LgbV5zKdxNYFdPQlFDrxAvXQZ_TqCJ2issN_J_88RZ1Efe4XPqoncxcUEjcfkW7QrSjGL25D97kMdg96z_JzlZCLQPGDa9xGlSdj3lusAbugEFTeADKYcv_klaBTs8rGKa2CbUz_SbtF5oiJHR5IWcCH695upVCIys167on5jldSPLkXVipIYcHcY-pRW9xrinn9V3itWJ3AzDBQ4YaMSAwL1DDfnCUk0VV_Wr1K4yq-m3lAG72o3VRatD32ODIZWR955hsG5uhDQ_OgPkUX9PYQCkP2Jt3kOOR6qvowxGyWxtH_mP6BqEBeqnY2fLAUkiFnWs4a7Jyq3tFCL24BaNIp9PXTh8boVOx_32LQ_aUztgzOoTVeiXdTI_h_TArOz4jSg6eyahR2c9koUDAf0t0VjpKRBx6rpAEgb55CZciEDgusmrJ-BVWMvwAocIgsfzNtWFyjMvCIFRVqYW6v1Tw0zf7mNTJIhvW-oTPh3YRpKZYQGvPN5d4GFpr-RMDH39IPK2MhPBy8MDujsSjMPlt5zt55SXlSF4_J23ncO_AM5QPYqvfCexKcOsnSa2iQH4iUDqbmDxNfCwO3rdjQMYzx_LDOS7XQy1iMiL7SOCQ4e9utJn8Xb3E9ffOKhgbvKa8XovRQaJlH8j6kfC6kmBFid2PoJ_P49ZFOAePr15u2rXST4Mr7Yi-sLIlpCzHMYvIRQi52hG3i4J4KA4qecaM_ZpAjw5VPdqgd4MiCk1SCC5P6pt', '0', '');
INSERT INTO `brilhart_session` VALUES ('pb9m4li7454nmrahu50o0q8jf1f4jcogog11gkqjnhg4gab28760', '1', '0', '1517496456', 'HfplGJ300VXqoloV3r49wvzDzMU8sIxNmc8k4PCvrsEbV08wd52E5UxEGes_2OWnPTZA2B-HkL6QsebdvZDk8OiagilJqXFPgrZToJ3LwXVk7O478ZXUwrWYgAsCjEl4fDbm6jPFCi6Cy1a4FaI8_bti57F3uj-HGOhP5TOIH6kkYcqGmmheGIGfNOEfFh0M9J9Rt5mgSoKpRvyQw5KaW5Ck9H1_YLZ4E1VVPkc_q4Yza_KprUMPmNEcgn09x-rA-R2GnjDLivIBxD6JUj3cb7ht_SPnf703IN6b9E0WIF_nAmXeJwzFVpgLrDaA0W8zuKF4l2zXhAtVi3SHICU7ncG5KfrOz3sxmLbbQhZZ9q8hE-zmgVeEHQOCTNuzubLaVrq16TLIDEvmKGQL5CcYdbteG4egsR3BrQR5zuJVtTiwqNsA6W_oR7BLU1Jl_ebOMmezzcj8Yvt36TGy88qDSVh7AHd178pKDC5IbUAr9SkBmak4Bxgk2DODJVtsucWNpHUQPnnMyynqxxaYSDJTTSyWGby0wQIDKvfT4PqpXJ_9Kry9NTFEeHjEAslLyMVEPgHhAti_NEB4Thtne54Oi6FS6EaETY1VCkMSlTzw4YaHhPpxGM7W2oLoDERSUXeI5HrFvgxjoZVHZcGA0y5HBF865IThB866Mur6qSjm1AROfqxj5DKMcc6KwNDwgyGzZJIxzuonLL1SrDy-yH7XisUwz70gI3FOAjsJe0QlxBQ5MFXKLgRAaldwV57dbEdF_FlUSZVy1DL3vfaYTUHPXYMLgdKLkIqEK8eHFc_bXN0jh-rOSNx_EEi88aUYr2vUw0S_z-z0Eb2JorM8yrG8Z6sisWRSsUkNxpGa9pSMp8RIZzN_v-A1fWlcBlg7Q9Dr8Qo7ERppLAxRXaKVKQ-fhiZATvE9acE6_gCqUrbfIYq6nsSTXKY5tOvXSdFBTfyyfnhF1bpkUH3A4E9dwP6wNGw1VXeqpvdupHyR6yD5OlMjZtD87dO0_6_wjKRXudioyrrt7pR42INoaUiPGQU3DMilwAN-Fud1kD-6wYDyIcC_nq6LLimoUF8hjddA4ZGAd2f60lPDu7PVAtD0Lhjl0A6dir2UXS24BQW4FbGNd02z1CqcIq6I28F5jDjiOlHoqgTaYfUkf-pwtjYwC-kTiCuwEA1xjV_AjHjpwO0omzuopLL4XNooHEyVCQuopg5V1IMw161oeZvPdyAWg4EZ0O6ku8cobduywZpnpNTmhdSsHq2D8_Ae8MPLC039qalTTH4_0f7Rf45P70UDQoQIvJ_lO4gDQ5gVstoRZ-7M-wyaEVkctOkuqCAE8Ce5fT6A0XyFLVJntNnvwmTH84la1zvOqzXu0VFPyIq0TyEoocpwbqpnorcKTzbINoYIKFqmd-Aj0k4aU3S-rXtP4MFbOXYKSIUXEdYY4A3B_3wwiEHQSmR-g0YRW6d5pQwUqU6rsfPA23I_wgyFlOLBvaOzTuHPObQIBO6BOLXfHqasxfAEfIAy4A9-NtNA9rFNeTHvZoY69QAq_ZVyEf1HO19YIHgb0AJG86hSOL7OZuzNoXh7Cx6xnR15g5I7i5896zQmpDCAVewXNjtteNgPrKImRtQ7-ibYZsFoUNjz5WH_uddm7GXIA36rPk4xQ98nO6JXa2J8nZI7xiS5IhLJgb_Bf0ePcnZx0__gp2SQnzNfrl6yW86_799gNWlwBfdsQPQuxQvi5wZkYxBM4FaXVsLkSQjQto-6ZLHky9C3-pKASPq6Ev9LNIRfdxW624rt0juUwUq7-w2802-axsIKKuOd3rwrJfqoGG_epIKk4dtFm02ZyxtuWM4rXXMTo75Tm2fI7U1PSIiwCWJSgrqHVagblEVGgpVxPICoj-ZEQuRFkbujTBRJYkTRCOX81QJW9z3ag0ah6EvbJYAxNWZpsauPlRGFLW4VbysT8FMHK1PBpwpe9BTT2N5aAytjUsAYOUqNwbMLCagtYoUqbIXotKbxvnZMZVFTVsop7Rqps_inWRmMxfYrrXA4VCyhb6AZew6qG9lbwy1iTy0zfBKmdDeI275oSWGNc6oJoZNDU6v8i_KPpeoLuOoIkkeCBiWSvCslFLKoWR58jLqqieBy4k5LG2iklIvm5ZHMzkcL0F0V3PBE4ooAeNqQPt0av9uPxHEMW45yP7CzPXODAg_LAezLCL4sdQKHcR6WY4ZDlMfoTe778YJwRmS-d6XylphbBbdHZzIByOaRJVeiLotluvHHj3NRhBybr2wRwb5GTG9WujWH68QXuTYNCg0ODdKkCrU_xpSrWRuCDfIN10VZZuSixA9wgQu-2QsCElVZye-30X0Qp5lpjLRN6v6SAv_6f7sUFqRic7SHA4ObF754xkv2fLU5KB0zQwa-u7gav7fBOuCF9ehwvAnCmyQw5iCbzCJBL0LwX0CkVq3NqNzudBoaeELnSnhilXHVn6YQ-5CSOjKlElynGro08_P3dV5hWHpfJkbDuKK6rDm5YVnRb7RYNr6MMYJh0lC7y7Cld6aZtc31RsL3tIpzKCPZY4qdws1amNBpGLS_n1BUVX-m_1QSqpMPt45gRiAE0BKzYee1ued-23mAY49UkemKSQD9XoicKWGipL_zqq8hBXRQJU2S19ruWHkSv8y8cYPPgirJhb0Sr5OzA8jVpGLGUSlM-hlC7Te-bMkgiQ2lHKpodI6clx91g-XCUrM9Rjo1RU_Vj8G4iPlNy_OQxuhcJD2rMXy0nUxmWz3tms9c4U3cmHCH16dvkorfXFT20Qh-CpZhc4ROp2yylqHtLQIMucZkE_GBF0hEYlcypqbK7o2_jZp1uRtsEUVQ0RbY1exafOHokr6TKMVEvH6bFhf6a5w_Nv_rifu10Q0hEORVhYIwh3ISICu7bE2EcvlKI2f-JHjHOWqnG8Sz8pnMPKtWS8Hc62bEzUhJt3vBHLSks9Rp7LQJ1h0msDAz7Bhew5ElrD1T2sBaRggnCOebN8m7mn-Q2-3suJb3d6gVv1r-lwvx3n5PLkZcFpZJIvJShX8xpIK3JY86iuSqHIXkEb6eSA0XaOJHmzEfcwBNmVfeQas6B0SqIwAJ1L3QtE_1MMbAT9_hBgqh01VcZcyea6-PY8d4dRzj4aw0iBI9tQi5W10K84zIdsLqB9DEOo2EkvOF1VlL4iCLNDvPS91RD5xX5-Nk6U_7MAVxrGdixBPM4xV8UiqkLYvPWngSzTYCk3vRJ0P1P8V78m3lt0WnBBYyQUHQ715SnLhKmYv1F2I-nDnUJJrlcJHUkbnHalmLU4qORcCxjYo7GH44OHE3pCSP1-h2j2PO91vEbCzkSCtulCTiubwskP8Yf0QKOQYFXsrM-CnOUYN8xSQdZfGsS6owj4n4_t97YGhEglbfsPVEdXOhJ0EcHv-zdoXAFti-P9T6idI4zv06vssZpgKo5WZHPa6Tp_F1wjlJCZT7Lxpy0YMzagcTXIU14t7efMlk1vFetyJT2HF7nNbQZ1e2jR3vuidIjG8G1VLWYifOJ2odrZxywEwz8DqJbZIRO3_ujXPuHLV9AfvHqyxmFpbC6-HXcvBPSavSbCwPvdmnA8x79TAnFMDm8O3yMPvC4J1OodRC7tHKP5x-lqhyRrM6IhOOvcbuzX52ruItnNT1hFKpEVk-3wvIy3GTl8BH6Rm0fdsic4uxRciFSKSypdRWM0j9zuK-aeF2xk4kvb37IvStgxopxF751ZGk5Hr3TCI_IR8ndsHD8XPT05_Ix5B68owfR50IZ10J8AoNpanuATCHwh0isepa2UA4W9KKu8WkbfyypO3eVTBlSWu4sAvhCpYRi-Qac5WA_1fR5WB9UMYMXbqVT7U1UK7-atNZzLXy9fObHBVtp4NBlgdi15E4P5AOYJJApJi7qzhqPNHMGhNtAoVcdZjpIYyYjGuQedCsedsccNy1-1JISu7MXKKKrBfysTsaozyLzgwVGqVxU4IoZGpuiDFnCOJ3jGR9XxoZd9o_jAnwP78JAevTZpjvgX2MaFAOQN8bDs01HrMm1g29oalVzEJgPmQimfu6oGDWusR0CXZYqgBKP_ZIrpoNW57Km7Kk8JplSHKUcgdS5TeOajEMgtphnLlZXF1zWq-LiHH8sK7flfAyQLousNDx3QzK3Bm8R_Ec97lTINzvTTYP3522t0-Q86PGz_IGNILTARSEfrlF94LHZDg90Tea4qhTMsDSLh05HOX8sz540NvimU-jAY1IGaCrY3PL0bF99dIRDEKkKJ-IN6xOcN6uueBJq1Y5r1_euEPVKlYpTOuJS1xw7KM8Fq1mjsGNhgeyqm5EFwjxmD0L4zrVTrKoWFS0YiF8_yTJ-D29K4WpqbXGhZ6IgF60cRat22x914Z_XQZ1OtVMAyFLhFSo4fKZWAizVGnIwMFIrK6D2rhiQxeEsgjJF17AaDJJKir7KlyiwKKN1-Gi12o5vEhl0gDOgWpUOKEtx2MUzkT5Uz8W0v0CaE2AEMfNtRbO-pTGxwxONmrN0V7_8L6QOu_mjqBAStzTzQT6mU3DwIZ33PH-ENXLnlncNc5unFWdfVYMFHVjwFjOc2NfMPbqcXqmzYRTCuBnJohM4G2aT1Cpyw2yhDvL_NGSLNdu6HUKN-FkyUYU2-VxVQy-sy3mj7poI5I9D-hBG3DskK5-Qbfy4ieXnvnW6nAMIUtRrml1YJaxrq2sQhApeZrxOjx1PzgxRffuKG5h-DPGCTH2ZiJx4gGxoAmC7oK1Va-J3wDeGKowYSIqPUqJdbUsWeHrZZ-7uMGbhpHIOyEnL_0mxSvcpTuFRD30CdmZi-rL56GuWnq1svIzzvrc0YpHNwQ9xScyzecMAFLVlep8ne8fCrdgls1jyuzNNN-ksnu6Fj3O6GUkrGn7yz2xZOfvVsF7zBkyjVP-o6dVM3X1Au4x8jZczo5enjwqTQ2u-n8A6s5wcO7CaOBWD9_A5YMw10Xac6LmrjujgKk2_P8DxcSL9xzWzI5p0a9zYZzWKp7lgqPECet-cQlUEEj2TXncKgvB5hQpQ72VTGbis3BawlTVsywxJBjQRX9BjvE7P7tNI2a4A-pzEnlEOEoHberqxBvCepZW2d0W4ng2cq6fZB2zbwzfoyvEOpbHf0R9wRcVeSMmhTLg3Rr8ND-XlrPCpDCD9JUefJWwrSQIrOgPF-7vhqv97wP9QYPuWdM5oL-eFb88hyPhTiKwQSw3gz9LJD0oErYyPUFRsVVxzofxBwFsUnr7Rl3WAoCJjIoJGzDFUOR1eK2M-hyNffC0TQw0PcWCLm6JRewP9W3gAwye02VNwds-awHHwBK_6iF21Ti2x4PanLpP3n596KFe928_qszW7e1jmyzqJp4MeCVpGrW6PcZE33ie7tYZOAYlGFp8vV8Na2VD3ibnI9sOUKzxBlxwZcRi6g6bav7xBtzLnvj5c0qDMAwPtBpkKHd5EUrPKdkXT1Wt2Nh_jVaqeNMfhMVrmUhPOXudlMsOE0D34iTIIMDyflZmCEKdVy466mFc4tDNZznrD0hC4SPREaA209EK5WWN7V8X6VtxLoHpaz0wqFVDY7iBh8jTcWJEN-doxeI38aelPbzMZwBTcro3dAK0Pao1jJ9P30UoFIhJjSbkZtL3nWFP2MO2NCEBqoZLQRX1sSnTKib9sBif3dvutU7Oo0kQIL9JXyxw6ml3BlVmnHdeUxAx_QMOFIh5yO5RnOQeLsDqdM5CFUGzRPkB1318znDFvf93juIj6x5yfBCgu8l7naq8uEHP12-AAc4WmaBKe0XbOg8HVl8X-nolDgw_ZXi8LuW7d8RcGSerPylJicM2E3ERTfndgQdPZl7iV752mnPk2bBLONbudhx0L28W8yXS6gwrn9_VMIjxJwXPgj4n21ksgK9_BPopIe_ZAn03Ln2ZDy3fCNXATNnm3S6o4Tnmmubl_ODZr3bV12u3GcPDgSZvqpbcTA6PXQjIAiAI9VzzMjb-I269VSTYgpMrP82aLN_zO5AYi3Kw2t14GbyItXoV6mEOfHMEu3VXtmCxiquGx61X-fqQ8LmOWO-VSCClpoYddrwfxV35ERH7r97ShPJsCmSJP2SzXgSPzqFNRN1-mE8u1w485QUykMyVDJwg0nWU50sMPCgq0Yv9PJ8au3eDyDH4QnfuSdXiJIYAgHwdt9Ow52-M5zTeh8CvrbNxpLEYVhPI6PaLz0l0XfFuOdADTYOBIelscA3B8u-kwOcSZseADW_HU53XNvrFeoNcVt0Kn3pCxm3KHqjYFQD9NQBvtOPvMxXe7lKttQhNunPt8zv5ynOnwqgYnIPBoE05XFmaDcoRu1MQvc0_MtqR_wC_y235ygI78Le2EvtbeD4iLZdgiRUkJ6ZSYxTIY6BEIz_pXZn3hrwXcLcwVT8TP5yHXM0Sy0GAxig_KAgpT7PxmPccAfrBhloGKAXfkDRQDJ24l2QKYX0226qPbD_-koUyGbHtgrWa9PUrMyJTh-NjpAv39kwWnTrB2jmFmpQuDsj83TYcP7BYjKIndOTIbvU2LN5rqv9KmHxGNHOaBPK0fZKFDeAMcMJRgF2rq2OMrqAMkhNNjVj01oRRkV4HFLj8AvPtPO_L2MskdFmBYheF-nSxxdHeOKnDjxpBLV08yq3TuAdhk0fm-ncH8nOsBRT-K96-Zxzqcjip0FeUkIYvThPMj3ABUF0-ge-hmIkK-XoJDosxpCHrjxYvL1kx38x9LZPa5SvGEGlYUPvbm_WSvIAeqrCLQypcbVTJCP8IYZxXPp-7-_4rLYK9rIbT69XLdd7vU1yk2UAoTzVoRXfPd23Rr9vXhf4VGDlKXUKVOvv7DFVn2NgTl7gSwjTZt2QKv4KLFbpdXg1XptSLLd6aIqU2aSRbvkvmnUXI8KgDREikwAQjXWo9mKlw88O66mgXkYzFUs2QcS_lhi2g7yiIiPHGYG6_H6LRQrY4mSBZu7co8kB0GWISlBdkvyMFthQfVFx3nSboSdfIgm2t6ZYePqdeLRSU1n-8gUmxJWTpbytvLVHiRnZQoS09_euPYlyTn5lhDgQpQtDYPBV5QA3luZVpXn-BQaHc0bt95OrnoxRWtIVpo4nYMEFXAwFw4lyP4iOCk2jqUmdBhQCbmkbHnGMm0u1v8e-MZPtJzutlvuXF4EtFT20SAHFWXuQO_sqBeqrtOIOiU-7wzkpbrm7DxsYi8B-SmY7jwpvTZKzWQIFpvzu08-YxraGRhsZWhgmmK9h22xJgVdRQRQihFA5Dv3ZBX3jm4sOg7Mny0h9QQv8dVA9IX556OfF8B_LbJ074EXq8s4_plmAevr7H-fVFqidj4gplxCgnyM5v9-M3pkbfjP8b_4U8SjmptxVbOFGDV4-Ow0NKFSM6vvinMUjaR3iMYIu7sT1D_9Hdqxve0YuoBklOOjq6mcPGRrSk9_-n8frg1hcvgKwohoQTG5WwBgiN2gfbsBsMcD4Dc7rSil7RqO1GoUnvA6Yvtpjd_oRSahfWH1c2K3ychGKFYG9ZreZtvUkR_2jHLiEj7kM0_Pn_GXIptyL45cfIEFlCaF8okbKDOBvAdKwkP1ennNyvSUPTZgGNa1cXr0Y-J8bPuNudM9cV7F5cQ6rs6_lFtL3OTdQ4zzeLIfs2Zt2NDN2llKVLM-WubLJLQg1zsQEQBusYzf99w2BpIaR29MH976XhK7RmtriB-YI-ppH4xfUEZTahFX-sZoKW0mS8noG9Vz_20rPX1zhggdY9YERc8bOdqmcKcJa9K7RBqYI1sBzKWnxTK2ja6hX89t2Kr6zDB0U2WjLTmQmQm3yDVMNNPuEdz04hl8_4OhiEUZl7POXGJ6pVM7BjPofyhO2eelqvfUedMH_S3zR9J_K8qNJuDOFzjugC7Au66kauwdQ_-DEj06wJNrgPvrlXEmQd4JTKrAfq66lA1xyzzS25iqwYO8lrxbYdRfUJ2qa4LwLyM8Ew1Dq2vwraEpULC5XoRzlcmHPFNwRdaBKvC3YfQIC0Cg_cbFuDkV62nc-PYFu4lgMB2qmGHRjKzcn7Ikp9WEmZF8HctxmLr7X837ddBmO_ikdGbZn0EWKxsuUrfny-D4vLmWWRIYBKClbF39CavZvSLt3f_Uxa6Zp8IifygEIRK2PPoCh5jcOjfLSM0mvuyY7q4u5HLxYANaD8lY6bGC6F1dyRr3RMkrg7ucKrb8yAo_9NDJM3W6TVUINVdWkBrGwJtVX2goQhtJ03vFSrk56h0BhwoS4XpJf3ftF9ZWZUn00wXuFd5mVmwbmUs_LZW33fiPgNRG3RX85WHHOPtrhspPbxcXVCsc547uqrJVNCjmZw1SsCxdLazykt7ClVK1nfMolkKse4q_rVd6muDE4tinbuGRGj-KuHyNqdTuiuyv4UJ4zPST2G4QzVIhW-YGX9_RBH1LNhvmQLPNj1cUAcfzZYDBYs7eyd0h2veXX_FYA5wyMeDTkPRrruX5rqx7PJvvh3fx3Sl9GxdOVSq4ghg8pEpIH_sXFiGd-oSkmAOjQ4pm1aOzJr1rRfzcsJmev8QMQm688fVrotJr2kLD78pjBq86oP6d7LtXOFxPN-rsaCgL0sn5l0-N9NMWtxPjAr8-iArKNlyRuVDIGdXWnNPL91V3207nrXOeE9M6i3TkGkeYjQgCdbUG35LZ3pKBY1DYKZtGzToQ8LORoH3YR79_ffcqgvdjJqF4irEKj9ufYQQTqEOgfPNA23wHRRlydXkkQrd8Kn6TG0GJvWrPRhtoTz2lIMFjw-2OpHKexu5XLqYpcd4LPwm3cXZFWG8EH8U6dm4z3WUNFp7EYA_UBmoXrMV-cbscRBg1FaZ5HpqFiReS-ohtwcRpfoDG914GL8enXSXAk8I424KyX8HvjwM9PeO5PrczJXRsryRGwjnLQLC6JR6m6MjpJEf9GXgZ0igVX56nxAb-z4bpwljbnMy__nN_Idv-bBw3z_ovf8YDiUG1kK3pM8ea8DIiko85fV1YhNVp9EfeG-VBizigh7bg--CA8JhA1rjVvASPJfwk3Lppm08eVNBSgDommoGCDmQhdhrkvGfvMwM2wHbabSWNTUM6WKPuFr5tJuRdCaU9o6SPhRmmUJDLwphd8Ylxg2uW36qKb2B_YuOfgBttoUSBqa7N_-g0T8oNmFa57PvefKFrQu2RI_72KYqaboCMeuJDRpNXYcxmtH-kFhm6ajtneqEI27rcykkb3rYv0n-q9kMFv5qYCprfCArzZg4n711Q2exfwNHJnxsoFAEYiks3ZmopYowthsKNLLHdEMb1tnq4I3NLOcUbJ5v2Xltnp_XBOntRf2JiFMiEapzlL6sD4aw_DJQKC4lq2aTtdVxXQgYi3vpZPm16ymzFMklII7BfHvQw12eE4viHLwcyTBTsgskxv3C6jsTnxLtjVpjphiUumKFG3hB5W-2bBTzy6SlnNeIebEsWI4eil8AgxY19rHUk-FU1YoBiP8KFdgtofDwNu_m4kuUmRrPaY53zKuIJsWnBweRnnNs6d7OdqI3Ms1RHJ35IPxv-cMYLDxVJ8IFYukPeTt0fsQPeCk9f1p1WqrzVjcdGbhNknsPvuYrqcKATnPs7e3kPe6pS8wnqyPrLzGR3OwzbxzJca4XakyH9k80ZAf7XNmI8llMH0rbd2y5VwL_Il88JWrYqXjYTZdcWP-JUaReB0J7fTifujkLTzRrkem1uLjnW3zqYUS04HH8FDCLvsKvYDE6wtVISzICL_H6Mw1IYIkoOuasP59_zGRtQ6YEWbFZuO3ngSZqhLkTOIIFbNgWVG4KWhnp6Ygg8y1efc3M0dd2e6Bniuf6i6iydnScOjdXGp8sfesNObhllPj75GqJ2K116PkxX9dCh8aVGlkSF66R1goXnCDm6413nzychx1b0cuu6eNM3Faz34b-kFQXnj9Ax07HAPIcXeP2bj7xWieLwoxVOufB0oZWghEvMw-fD43BKTCAJSWlz4iyMv_uz2UxLvEXGBZ4Wecpfj6T2YlgQSjkQSQFTM35LZ58r2ZtES36uYrVjWAezxtw9u9g0cDEFPRPMtT3fmvK_gk-lVybwSklhfXx69pmeXX9gTfGOF7zuueIEq9Q_YA_tFvbXg53EHxxHC5a--yjoF8sc48wKj5WawRGBCFVJicrYFSSPXTIoCzUxiKbQ8iIBSUhY_3sQkgBSwzpWzuvDybmj7SDdkxQA9MdKmSiy0_AU0qhkftew94smSddPVQkFqD_FIQCiPVwStbG8IyQd9jjXflAMfdOLF4Hd6OB_R6s1whNnFZXY63-YmGwC80TKbnrWhQZ_JQHIqL9GD5cOUp7FTNjqzs2oqgIcHx38urfI7BbklWUZA9VT9uq7ly87ouogrX7mJ9_sB_W5tYgdk8ljU-JnF4_xJYWdIQ3N3EBsfCfli5gyX1rxJrltEtwwAEsX_cNkk4hhPU_02m72FrNa2KkGo-05_ud5jjlEj3Q3aLsrD4jVTRePm_2G1V7smmeb69A2vuyW99TWK4zllANOb6lld7c5pxVzU-7eQSAHkRFvoY_gUXn6QJ3su09Ge4QptioaRsnTd5ZjnYBmWzDAJK8BhA4xMfz7AceTIPu1WWjDA.', '600', 'anisotton');

-- ----------------------------
-- Table structure for `brilhart_tags`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_tags`;
CREATE TABLE `brilhart_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `urls` text COLLATE utf8_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_tags
-- ----------------------------
INSERT INTO `brilhart_tags` VALUES ('1', '0', '0', '1', '0', '', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '', '', '', '', '600', '2018-01-23 20:24:59', '', '0', '0000-00-00 00:00:00', '', '', '0', '*', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `brilhart_template_styles`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_template_styles`;
CREATE TABLE `brilhart_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_template_styles
-- ----------------------------
INSERT INTO `brilhart_template_styles` VALUES ('4', 'beez3', '0', '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `brilhart_template_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `brilhart_template_styles` VALUES ('7', 'protostar', '0', '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `brilhart_template_styles` VALUES ('8', 'isis', '1', '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `brilhart_template_styles` VALUES ('9', 'brilhart', '0', '1', 'brilhart - Padrão', '{}');

-- ----------------------------
-- Table structure for `brilhart_ucm_base`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_ucm_base`;
CREATE TABLE `brilhart_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_ucm_base
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_ucm_content`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_ucm_content`;
CREATE TABLE `brilhart_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- ----------------------------
-- Records of brilhart_ucm_content
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_ucm_history`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_ucm_history`;
CREATE TABLE `brilhart_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_ucm_history
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_update_sites`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_update_sites`;
CREATE TABLE `brilhart_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Update Sites';

-- ----------------------------
-- Records of brilhart_update_sites
-- ----------------------------
INSERT INTO `brilhart_update_sites` VALUES ('1', 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', '1', '1517493097', '');
INSERT INTO `brilhart_update_sites` VALUES ('2', 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', '1', '0', '');
INSERT INTO `brilhart_update_sites` VALUES ('3', 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', '1', '0', '');
INSERT INTO `brilhart_update_sites` VALUES ('4', 'WebInstaller Update Site', 'extension', 'https://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', '1', '1517430074', '');

-- ----------------------------
-- Table structure for `brilhart_update_sites_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_update_sites_extensions`;
CREATE TABLE `brilhart_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Links extensions to update sites';

-- ----------------------------
-- Records of brilhart_update_sites_extensions
-- ----------------------------
INSERT INTO `brilhart_update_sites_extensions` VALUES ('1', '700');
INSERT INTO `brilhart_update_sites_extensions` VALUES ('2', '802');
INSERT INTO `brilhart_update_sites_extensions` VALUES ('2', '10002');
INSERT INTO `brilhart_update_sites_extensions` VALUES ('3', '28');
INSERT INTO `brilhart_update_sites_extensions` VALUES ('4', '10004');

-- ----------------------------
-- Table structure for `brilhart_updates`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_updates`;
CREATE TABLE `brilhart_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Available Updates';

-- ----------------------------
-- Records of brilhart_updates
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_user_keys`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_user_keys`;
CREATE TABLE `brilhart_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_user_keys
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_user_notes`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_user_notes`;
CREATE TABLE `brilhart_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_user_notes
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_user_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_user_profiles`;
CREATE TABLE `brilhart_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Simple user profile storage table';

-- ----------------------------
-- Records of brilhart_user_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `brilhart_user_usergroup_map`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_user_usergroup_map`;
CREATE TABLE `brilhart_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_user_usergroup_map
-- ----------------------------
INSERT INTO `brilhart_user_usergroup_map` VALUES ('600', '8');

-- ----------------------------
-- Table structure for `brilhart_usergroups`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_usergroups`;
CREATE TABLE `brilhart_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_usergroups
-- ----------------------------
INSERT INTO `brilhart_usergroups` VALUES ('1', '0', '1', '18', 'Public');
INSERT INTO `brilhart_usergroups` VALUES ('2', '1', '8', '15', 'Registered');
INSERT INTO `brilhart_usergroups` VALUES ('3', '2', '9', '14', 'Author');
INSERT INTO `brilhart_usergroups` VALUES ('4', '3', '10', '13', 'Editor');
INSERT INTO `brilhart_usergroups` VALUES ('5', '4', '11', '12', 'Publisher');
INSERT INTO `brilhart_usergroups` VALUES ('6', '1', '4', '7', 'Manager');
INSERT INTO `brilhart_usergroups` VALUES ('7', '6', '5', '6', 'Administrator');
INSERT INTO `brilhart_usergroups` VALUES ('8', '1', '16', '17', 'Super Users');
INSERT INTO `brilhart_usergroups` VALUES ('9', '1', '2', '3', 'Guest');

-- ----------------------------
-- Table structure for `brilhart_users`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_users`;
CREATE TABLE `brilhart_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_users
-- ----------------------------
INSERT INTO `brilhart_users` VALUES ('600', 'Super User', 'anisotton', 'anderson@brilhart.com.br', '$2y$10$76TprfOgCNGm/qWiY9kyLunF/csg9d22gqRSK0yKg3wL3b3sKnCAS', '0', '1', '2018-01-23 20:25:00', '2018-01-31 19:58:09', '0', '', '0000-00-00 00:00:00', '0', '', '', '0');

-- ----------------------------
-- Table structure for `brilhart_utf8_conversion`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_utf8_conversion`;
CREATE TABLE `brilhart_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_utf8_conversion
-- ----------------------------
INSERT INTO `brilhart_utf8_conversion` VALUES ('1');

-- ----------------------------
-- Table structure for `brilhart_viewlevels`
-- ----------------------------
DROP TABLE IF EXISTS `brilhart_viewlevels`;
CREATE TABLE `brilhart_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brilhart_viewlevels
-- ----------------------------
INSERT INTO `brilhart_viewlevels` VALUES ('1', 'Public', '0', '[1]');
INSERT INTO `brilhart_viewlevels` VALUES ('2', 'Registered', '2', '[6,2,8]');
INSERT INTO `brilhart_viewlevels` VALUES ('3', 'Special', '3', '[6,3,8]');
INSERT INTO `brilhart_viewlevels` VALUES ('5', 'Guest', '1', '[9]');
INSERT INTO `brilhart_viewlevels` VALUES ('6', 'Super Users', '4', '[8]');
