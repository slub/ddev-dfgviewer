-- MySQL dump 10.19  Distrib 10.3.30-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.3.30-MariaDB-1:10.3.30+maria~focal-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_news_categorymounts` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lfeditor_change_editing_modes` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1645107375,1616020928,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$clBET1VodjV1bUlSZ1dkOQ$OM2ExbH4Q7HZZvpuZeRq6taZBgW9VC5FNfH6pFCF4Ec',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,'',0),(2,0,1616021342,1616021342,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$QmpPTWtDbWFRVHNIRENjRQ$JBuvuV7UpBRCIZAOY4G9Fzwfzj+yFNyeLcgVup3nWJ0',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL,'',0);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache`
--

LOCK TABLES `cf_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache_tags`
--

LOCK TABLES `cf_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'a341977e40078ac89538934c8436cc57',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a328e976dab15166dfc3cdbdaad9b3da\";}'),(2,'8a9f0568ebeb7dab8f6a43b222254343',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a328e976dab15166dfc3cdbdaad9b3da\";}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'a341977e40078ac89538934c8436cc57','ident_userTS_TSconfig'),(2,'8a9f0568ebeb7dab8f6a43b222254343','ident_userTS_TSconfig');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category`
--

DROP TABLE IF EXISTS `cf_cache_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category`
--

LOCK TABLES `cf_cache_news_category` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_news_category_tags`
--

DROP TABLE IF EXISTS `cf_cache_news_category_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_news_category_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_news_category_tags`
--

LOCK TABLES `cf_cache_news_category_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_news_category_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_lfeditor_select_options_cache`
--

DROP TABLE IF EXISTS `cf_lfeditor_select_options_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_lfeditor_select_options_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_lfeditor_select_options_cache`
--

LOCK TABLES `cf_lfeditor_select_options_cache` WRITE;
/*!40000 ALTER TABLE `cf_lfeditor_select_options_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_lfeditor_select_options_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_lfeditor_select_options_cache_tags`
--

DROP TABLE IF EXISTS `cf_lfeditor_select_options_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_lfeditor_select_options_cache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_lfeditor_select_options_cache_tags`
--

LOCK TABLES `cf_lfeditor_select_options_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_lfeditor_select_options_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_lfeditor_select_options_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (85,0,1628603526,1628603526,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'a:1:{s:8:\"shortcut\";N;}',0,0,'',0,0,0,0,0,0,1,0,31,9,0,'DFG-Viewer','/',1,'TCEMAIN.permissions.groupid = 10',1,0,'',106,0,'',0,'',0,0,'',0,'',0,'',0,1635324343,'','',0,'','','',0,0,0,0,'',0,0,'','','EXT:dfgviewer/Configuration/TsConfig/Page.tsconfig',0,4,'',0,0,'',NULL,0,'',NULL,0,'',0),(86,85,1628603526,1628603526,1,0,0,0,0,'',768,'',0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'News Folder','/1',254,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,50,'',0,0,'','',0,'','',0,'',0),(87,85,1628603526,1628603526,1,0,0,0,0,'',640,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Kitodo Configuration','/kitodo-configuration-1',254,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,47,'',0,0,'',NULL,0,'',NULL,0,'',0),(88,85,1628603526,1628603526,1,0,0,0,0,'',576,NULL,0,0,0,0,NULL,57,'',0,0,'',0,0,0,0,0,0,1,10,31,0,0,'Fehler: 404 (Seite nicht gefunden)','/fehler-404-seite-nicht-gefunden',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',1,0,'','',0,'','','',1,0,0,0,'',0,0,'0','0','',0,8,'',0,0,'',NULL,0,'',NULL,0,'',0),(89,85,1628603526,1628603526,1,0,0,0,0,'',544,NULL,0,0,0,0,NULL,0,'a:46:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Viewer','/show',1,'',0,0,'',0,0,'',0,'',0,0,'',900,'',0,'',0,1628603526,'','',0,'','','',1,0,0,0,'',0,0,'','','',0,9,'',1,1,'',NULL,0,'',NULL,0,'',0),(93,85,1628603526,1628603526,1,0,0,0,0,'',514,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,31,0,'Meta','/meta',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','',0,13,'',0,0,'',NULL,0,'',NULL,0,'',0),(94,93,1628603526,1628603526,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Kontakt','/kontakt',1,'TCEFORM.tt_content.pi_flexform.PAGE_TSCONFIG_ID = 9731',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,14,'',0,0,'',NULL,0,'',NULL,0,'',0),(96,93,1628603526,1628603526,1,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Impressum','/impressum',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',0,0,0,0,'',0,0,'0','0','',0,17,'',0,0,'',NULL,0,'',NULL,0,'',0),(97,93,1628603526,1628603526,1,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,31,0,'Datenschutzerklärung','/datenschutzerklaerung',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,18,'',0,0,'',NULL,0,'',NULL,0,'',0),(98,93,1628603526,1628603526,1,0,0,0,0,'',32,'',0,0,0,0,NULL,0,'a:47:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Status','/status',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,49,'',0,0,'','',0,'','',0,'',0),(99,98,1628603526,1628603526,1,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:1:{s:5:\"title\";N;}',0,0,'',0,0,0,0,0,0,1,10,31,27,0,'Detail','/status/details',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',1,0,0,0,'',0,0,'','','',0,51,'',0,0,'','',0,'','',0,'',0),(105,85,1628603526,1628603526,1,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,25,0,'Demo','/demo',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,24,'',0,0,'',NULL,0,'',NULL,0,'',0),(106,85,1628603526,1628603526,1,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,25,0,'Das Projekt','/das-projekt',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,0,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,25,'',0,0,'',NULL,0,'',NULL,0,'',0),(111,106,1628603526,1628603526,1,0,0,0,0,'',16,NULL,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,10,31,31,0,'Was ist der DFG-Viewer?','/das-projekt/was-ist-der-dfg-viewer',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1628603526,'','',0,'','','',0,0,0,0,'',0,0,'0','0','',0,30,'',0,0,'',NULL,0,'',NULL,0,'',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `images` int(10) unsigned DEFAULT 0,
  `single_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut` int(11) NOT NULL DEFAULT 0,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `import` (`import_id`,`import_source`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES (3,86,1628603526,1628603526,1,0,0,0,0,256,'',0,0,NULL,0,'a:1:{s:5:\"items\";N;}',0,0,'',0,0,0,0,0,0,'Changelog',0,5,'0',0,0,0,'','','','','','','changelog');
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES (1,8,'tx_news_domain_model_news','categories',2,1),(1,9,'tx_news_domain_model_news','categories',3,1),(1,10,'tx_news_domain_model_news','categories',1,1),(1,11,'tx_news_domain_model_news','categories',4,1),(1,12,'tx_news_domain_model_news','categories',5,1),(1,13,'tx_news_domain_model_news','categories',0,1),(1,14,'tx_news_domain_model_news','categories',0,1),(1,15,'tx_news_domain_model_news','categories',0,1),(1,16,'tx_news_domain_model_news','categories',0,1),(1,17,'tx_news_domain_model_news','categories',0,1),(2,15,'tx_news_domain_model_news','categories',1,0),(2,13,'tx_news_domain_model_news','categories',2,0),(2,14,'tx_news_domain_model_news','categories',3,0),(2,16,'tx_news_domain_model_news','categories',4,0),(2,17,'tx_news_domain_model_news','categories',5,0),(1,18,'tx_news_domain_model_news','categories',0,1),(1,19,'tx_news_domain_model_news','categories',0,1),(1,20,'tx_news_domain_model_news','categories',0,1),(1,21,'tx_news_domain_model_news','categories',0,1),(1,22,'tx_news_domain_model_news','categories',0,1),(3,20,'tx_news_domain_model_news','categories',1,0),(3,18,'tx_news_domain_model_news','categories',2,0),(3,19,'tx_news_domain_model_news','categories',3,0),(3,21,'tx_news_domain_model_news','categories',4,0),(3,22,'tx_news_domain_model_news','categories',5,0);
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `domainName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
INSERT INTO `sys_domain` VALUES (3,85,1628603526,1628603526,1,0,256,'sdvtypo3dfgviewer.slub-dresden.de');
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1616022451,0,0,0,'2',0,'/typo3conf/ext/news/Resources/Public/Images/dummy-preview-image.png','9f596bc172c8537a3ddc2d6efbb7e3212094e837','e70c7d8d1f511f7ac68ed0154b9a7ded896e72f2','png','image/png','dummy-preview-image.png','b069aa085f06da6743b904400b0e412c3b0b5b07',25896,1616021754,1610473610),(2,0,1620388749,1620388749,0,1,'1',0,'/user_upload/_temp_/importexport/dfgviewer-5.2__2_.xml','47a329b41a22460103e1f6303e8a3b70cfd7435b','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','dfgviewer-5.2__2_.xml','43647a62a73a8824c2e88be6f93eca10b4116d36',526634,1620388749,1620388749),(3,0,1620395218,1620395218,0,1,'1',0,'/user_upload/_temp_/importexport/dfgviewer-5.2__3_.xml','1d31a9341781cb9ec9c3f04420663841a04e2e94','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','dfgviewer-5.2__3_.xml','26e1f29cc470b911455a9f3d0a8c8036dbe61e7c',566683,1620395217,1620395217),(4,0,1620395810,1620395810,0,1,'1',0,'/user_upload/_temp_/importexport/dfg-viewer-5.2.xml','fde610a303d6b50d930a7cc3d532478d561036af','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','dfg-viewer-5.2.xml','ea0a8db9c7159327ce24f18b7650a3a00066f490',567115,1620395810,1620395810),(5,0,1628602075,1628602075,0,1,'1',0,'/user_upload/_temp_/importexport/all.xml','9384930decdcc165e7bc0c3a59609cecf3a3dc7d','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','all.xml','d0bd8ed1e8e3da0fed055b39195b2321e43a9327',136992,1628602075,1628602075),(6,0,1628602987,1628602987,0,1,'1',0,'/user_upload/_temp_/importexport/T3D_tree_PID4_L4_2021-08-10_15-42.xml','68a21bf4934e749626727ac918f7528606774fa7','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','T3D_tree_PID4_L4_2021-08-10_15-42.xml','87cfcd8c04e7021f28340159200b7ed327789066',12315316,1628602987,1628602987),(7,0,1628603215,1628603215,0,1,'5',0,'/user_upload/_temp_/importexport/T3D_tree_PID4_L4_2021-08-10_15-46-z.t3d','394c4d7b9b357a56710973e3b363727af3986bdf','0795cf796b4fc959be0ec00b183c0f47609dd9a5','t3d','application/octet-stream','T3D_tree_PID4_L4_2021-08-10_15-46-z.t3d','19c1db19f7f41cf5572db425f1950eaac3f8e30c',6478437,1628603215,1628603215),(8,0,1628603221,1628603221,0,1,'1',0,'/form_definitions/kontaktDFG-Viewer.form.yaml','0edb3e6cb58b0fdb57e3633af6fd8ef934e6764e','c62e3e70a526a59f0f0b7687864947eab72d7d3f','yaml','text/plain','kontaktDFG-Viewer.form.yaml','efd63d98864e2c50453770fa09ef7b97bcf00f65',3094,1628603221,1628603221),(9,0,1628603221,1628603221,0,1,'5',0,'/groups/dfgviewer/METS-Anwendungsprofil_2.3.1.pdf','f4f89934d83192da6ec5653a00064e6f7d844af2','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','METS-Anwendungsprofil_2.3.1.pdf','13101765e8511744022ac52daf5f49814c7f2f01',1124071,1628603221,1628603221),(10,0,1628603221,1628603221,0,1,'5',0,'/groups/dfgviewer/MODS-Anwendungsprofil_2.3.1.pdf','0e1424f8fd9b1471c26c49eadb8f1e774896a7f9','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','MODS-Anwendungsprofil_2.3.1.pdf','89190eb73bbfa0023e35364654565be04433445f',1418891,1628603221,1628603221),(11,0,1628603221,1628603221,0,1,'5',0,'/groups/dfgviewer/TEI-Anwendungsprofil_1.0.pdf','ef0806a197dd57ab9eac2b9827519ba357b19bf7','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','TEI-Anwendungsprofil_1.0.pdf','d3ddd1f1ca43b3429458005624b59330de52b0c4',963985,1628603221,1628603221),(12,0,1628603222,1628603222,0,1,'5',0,'/groups/dfgviewer/SRU-ALTO-Anwendungsprofil_1.0.pdf','6e246f503b1dca8709a41e4bbba7db8fcfb637dd','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','SRU-ALTO-Anwendungsprofil_1.0.pdf','567c6cf16f438007e19386a1ee9dd73bb5d34b90',917507,1628603221,1628603221),(13,0,1628603222,1628603222,0,1,'5',0,'/groups/dfgviewer/METS_application_profile_2.3.1.pdf','fdc856f8059e1fe89f74e4fc0af625b46596a4c5','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','METS_application_profile_2.3.1.pdf','5a8aa0d95046e8fca908797c2f605bf3b534bd74',1066951,1628603222,1628603222),(14,0,1628603222,1628603222,0,1,'5',0,'/groups/dfgviewer/MODS_application_profile_2.3.1.pdf','47c44d8ae31690acef286f41bd1a68c15134d4f5','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','MODS_application_profile_2.3.1.pdf','463ab16ca38b1dc019e215ea75dddd6120d6ed90',1330166,1628603222,1628603222),(15,0,1628603222,1628603223,0,1,'5',0,'/groups/dfgviewer/TEI_application_profile_1.0.pdf','b21167c77499d9df65991c4d447ed4a887cbf95c','e3a8402ebd6b1a51b4f579723b39cc9db930e302','pdf','application/pdf','TEI_application_profile_1.0.pdf','705016bfc021b9ca4af2d73ae753ad3cca4f15c3',954388,1628603222,1628603222),(16,0,1628603452,1628603452,0,1,'5',0,'/user_upload/_temp_/importexport/T3D_tree_PID4_L4_2021-08-10_15-50-z.t3d','3509ae7b8c38052af6a7938fa5e0238f393c3c19','0795cf796b4fc959be0ec00b183c0f47609dd9a5','t3d','application/octet-stream','T3D_tree_PID4_L4_2021-08-10_15-50-z.t3d','97e1ec98700be72c5dd0f272ae87f44d53c2ddd5',6478184,1628603451,1628603451),(17,0,1628608433,1628608433,0,1,'0',0,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','inode/x-empty','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',0,1616020802,1616020802);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1616022451,1616022451,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,1,NULL,128,128,NULL,NULL,0),(2,0,1620388749,1620388749,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,2,NULL,0,0,NULL,NULL,0),(3,0,1620395218,1620392029,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,3,NULL,0,0,NULL,NULL,0),(4,0,1620395810,1620395810,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,4,NULL,0,0,NULL,NULL,0),(5,0,1628602075,1628602075,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,5,NULL,0,0,NULL,NULL,0),(6,0,1628602987,1628602987,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,6,NULL,0,0,NULL,NULL,0),(7,0,1628603215,1628603215,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,7,NULL,0,0,NULL,NULL,0),(8,0,1628603526,1568798380,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,8,NULL,0,0,NULL,NULL,0),(9,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,9,NULL,0,0,NULL,NULL,0),(10,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,10,NULL,0,0,NULL,NULL,0),(11,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,11,NULL,0,0,NULL,NULL,0),(12,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,12,NULL,0,0,NULL,NULL,0),(13,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,13,NULL,0,0,NULL,NULL,0),(14,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,14,NULL,0,0,NULL,NULL,0),(15,0,1628603526,1594996934,1,0,0,NULL,0,'a:1:{s:4:\"file\";N;}',0,0,'',0,0,0,0,0,0,15,NULL,0,0,NULL,NULL,0),(16,0,1628603452,1628603451,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,16,NULL,0,0,NULL,NULL,0),(17,0,1628608433,1628608432,1,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,17,NULL,0,0,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  `showinpreview` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1616021444,1616021444,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1620399664,0,256,'Englisch','gb','en',0);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),(30,'installUpdateRows','rowUpdatersDone','a:3:{i:0;s:52:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L10nModeUpdater\";i:1;s:53:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\ImageCropUpdater\";i:2;s:57:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\RteLinkSyntaxUpdater\";}'),(31,'core','formProtectionSessionToken:1',NULL),(32,'languagePacks','baseUrl','s:44:\"https://extensions.typo3.org/fileadmin/l10n/\";'),(33,'languagePacks','de','i:1616021040;'),(34,'extensionDataImport','typo3conf/ext/dlf/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3conf/ext/news/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3conf/ext/lfeditor/ext_tables_static+adt.sql','s:0:\"\";'),(39,'extensionDataImport','typo3conf/ext/dfgviewer/ext_tables_static+adt.sql','s:0:\"\";'),(41,'extensionDataImport','typo3conf/ext/dfgviewer/Initialisation/dataImported','i:1;'),(42,'tx_scheduler','lastRun','a:3:{s:5:\"start\";i:1645107723;s:3:\"end\";i:1645107723;s:4:\"type\";s:6:\"manual\";}');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nextLevel` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `basedOn` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (18,98,1628603526,1628603526,1,0,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'+ext','',0,0,'','config.news.storagePid = 50\r\nconfig.news.listPid = 49\r\nconfig.news.detailPid = 51','plugin.tx_news.features.skipDefaultArguments = 0\nplugin.tx_news.settings.link.hrDate = 1','','',0,0,11),(19,94,1628603526,1628603526,1,0,0,0,0,256,'',0,0,0,'',0,0,0,0,0,0,'+ext Forms','',0,0,'EXT:form/Configuration/TypoScript/','','','','',0,0,8),(20,89,1628603526,1628603526,1,0,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'+ext','',0,0,'',NULL,'# viewer does not run stable if cached\r\nconfig.no_cache=1\r\n','','',0,0,10),(21,85,1645107341,1628603526,1,0,0,0,0,256,'',0,0,0,'',0,0,0,0,0,0,'SLUB.DFGVIEWER','DFG-Viewer',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:news/Configuration/TypoScript,EXT:dfgviewer/Configuration/TypoScript','config.storagePid = 87\r\nconfig.rootPid = 85\r\nconfig.headNavPid = 93\r\nconfig.viewerNavPids = 30,28,17,18\r\nconfig.kitodoPageView = 89\r\nconfig.piwik_hostname = \r\nconfig.piwik_idsite = \r\nconfig.piwik_domains = \r\n','# set same piwik code as in master template...\r\n#config.disableWrapInBaseClass=1\r\n\r\nconfig.contentObjectExceptionHandler = 0\r\n','','',0,0,9);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT 0,
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  `tx_news_related_news` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`),
  KEY `index_newscontent` (`tx_news_related_news`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (172,NULL,111,1628603526,1628603526,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:1:{s:8:\"bodytext\";N;}',0,0,'',0,0,0,0,0,0,'text','','','Der DFG-Viewer ist die Referenzimplementierung für die Digitalisierungsstandards, die die <LINK http://www.dfg.de/ - external>Deutsche Forschungsgemeinschaft (DFG)</link> in ihren <LINK http://www.dfg.de/formulare/12_151/index.jsp - external>Praxisregeln &quot;Digitalisierung&quot;</link> jedem Projektnehmer als verpflichtend auferlegt. Dies sind insbesondere die Datenformate METS/MODS und METS/TEI sowie die Austauschschnittstelle OAI-PMH. Da es sich dabei jedoch gleichzeitig um international gebräuchliche Standards handelt, kann der DFG-Viewer auch von Projekten eingesetzt werden, die keine Förderung durch die DFG erfahren haben. Einzige Voraussetzung sind die <LINK 28>Einhaltung der genannten Standards</link> und die uneingeschränkte Erreichbarkeit der Digitalisate im Internet. Darüber hinaus muss ein Anbieter keine eigene Präsentationssoftware installieren oder betreiben. Das Angebot ist zudem für den Datenanbieter wie auch die Nutzer kostenfrei.\r\n<h3>Wie funktionierts?</h3>\r\nDie <LINK 27>Implementierung des DFG-Viewers</link> ist denkbar einfach: Beim Aufruf des DFG-Viewers wird ein Link auf die technische Kodierung des anzuzeigenden Digitalisats im <LINK 23>METS-Format</link> als URL-Parameter übergeben. Der Webdienst ruft die referenzierte METS-Datei daraufhin beim Anbieter ab und entnimmt ihr alle notwendigen Informationen für die Anzeige des Digitalisats und gegebenenfalls weitere Zusatzfunktionen. Da die Links auf die METS-Dateien in der Regel unveränderlich sind, können die resultierenden DFG-Viewer-Aufrufe problemlos auf Webseiten oder in Nachweissystemen wie z.B. Bibliothekskatalogen abgelegt werden, um Nutzern per Klick die Ansicht eines Digitalisats zu ermöglichen.\r\n<h3>Grundfunktionen</h3>\r\nDabei bietet der DFG-Viewer abhängig von der verfügbaren Datenqualität der METS-Datei und dem anzuzeigenden Dokumenttyp einen dynamischen Funktionsumfang. Mindestens kann der Nutzer im Digitalisat blättern, einen stufenlosen Zoom verwenden sowie zwischen einer Einzel- und Doppelseitenansicht (wahlweise im Vollbildmodus)&nbsp;umschalten. Außerdem erhält er einen Basissatz an Metadaten, die das Digitalisat beschreiben (i.d.R. Titel, Autor, Erscheinungsort und Erscheinungsdatum), sowie Angaben zum Anbieter des Digitalisats. Sind darüber hinaus weitere Angaben in der METS-Datei vorhanden, werden automatisch die folgenden Funktionen zusätzlich angeboten:\r\n<h3>Inhaltsverzeichnis</h3>\r\nVerfügt die METS-Datei über sogenannte <LINK 22>Strukturdaten</link>, also eine inhaltliche Gliederung des Digitalisats, zeigt der DFG-Viewer diese als Inhaltsverzeichnis an und erlaubt dem Nutzer, darüber im Digitalisat zu navigieren. Ist zudem die Paginierung erfasst, zeigt der DFG-Viewer sowohl im Inhaltsverzeichnis als auch der Seitenauswahl die entsprechenden Seitenzahlen an (bei Handschriften entsprechend der Foliierung auch die Blattzählung).\r\n<h3>Weitere Metadaten</h3>\r\nWurden neben den bibliographischen Titeldaten weitere deskriptive Metadaten (etwa Artikelüberschriften und -autoren) erfasst, so werden diese zusätzlich angezeigt, sobald der Nutzer die entsprechenden Strukturelemente öffnet. Die Anzeige erfolgt in einer ausklappbaren Box, so dass dem Nutzer überlassen bleibt, wie viel Platz er den Metadaten einräumen will.\r\nDie Metadaten können medientypabhängig sowohl im <LINK 23>MODS- wie auch im TEI-Format</link> kodiert werden. Während ersteres überwiegend für Druckwerke verwendet wird, ist letzteres für mittelalterliche und frühneuzeitliche Handschriften gebräuchlich.\r\n<h3>Permalinks und Download</h3>\r\nSofern der Datenanbieter für das Digitalisat Permalinks zur wissenschaftlichen Zitation zur Verfügung stellt und diese in der METS-Datei angegeben sind, zeigt auch der DFG-Viewer diese Referenzen an und erlaubt dem Nutzer somit die werks- und seitengenaue Adressierung des Digitalisats auch im wissenschaftlichen Kontext.\r\nWahlweise kann der Datenanbieter auch einen PDF-Download des Digitalisats (als ganzes Werk oder Einzelseiten) erlauben. Der DFG-Viewer zeigt in diesem Fall entsprechende Buttons an, über die der Download ausgelöst werden kann.\r\n<h3>Kalenderansicht</h3>\r\nInsbesondere Zeitungen, aber auch andere Periodika mit langem Erscheinungsverlauf werden klassischerweise chronologisch erschlossen und über eine Kalenderansicht präsentiert. Der DFG-Viewer erkennt solche Digitalisate anhand ihrer auf drei separate METS-Dateien verteilten&nbsp;chronologischen Struktur automatisch und bietet eine dreistufige Navigation über die Auswahl eines Jahrgangs, gefolgt von einer Übersicht des Erscheinungsverlauf innerhalb dieses Jahrgangs bis hin zur Anzeige einer konkreten Ausgabe. Natürlich ist auch die umgekehrte Navigation von der Ausgabe zum Jahrgang bzw. zur Übersicht des Gesamttitels jederzeit möglich. Innerhalb einer Ausgabe stehen dem Nutzer wiederum alle übrigen Funktionen des DFG-Viewers wie gewohnt zur Verfügung, inklusive einer möglichen weiteren inhaltlichen Untergliederung der Ausgabe anhand eines Inhaltsverzeichnisses.\r\n<h3>Volltexte</h3>\r\nLiegen für das Digitalisat Volltexte im ALTO-Format mit Wortkoordinaten vor, so können diese auch vom DFG-Viewer zur Anzeige gebracht werden. Dabei ermittelt der DFG-Viewer anhand der Wortkoordinaten und abhängig von der vom Nutzer gewählten Zoomstufe die exakte Position der Worte auf dem Scan. Wählt der Nutzer nun einen Bildausschnitt aus, wird der dort befindliche Text in einer separaten Ansicht eingeblendet und kann beispielsweise als Zitat einfach kopiert werden. Aber auch schwer erkennbare Textstellen oder etwa ungewohnte Frakturschriften können auf diese Weise flüssig gelesen werden.\r\nVerfügt der Datenanbieter darüber hinaus über einen Volltext-Index mit öffentlicher SRU-Schnittstelle, bietet der DFG-Viewer dem Nutzer sogar einen Suchschlitz zur Volltextrecherche an. Darüber kann der Nutzer wahlweise innerhalb des aktuellen Digitalisats oder sogar in größeren Beständen des Anbieters recherchieren. Die Ergebnisse werden wiederum direkt im DFG-Viewer angezeigt, so dass der Nutzer dazu nicht zwischen mehreren Systemen und Anbietern wechseln muss.\r\n<h3>Nachhaltigkeit</h3>\r\nDie Entwicklung des DFG-Viewers wurde und wird von der DFG gefördert, während die <LINK http://www.slub-dresden.de/ - external>SLUB Dresden</link> in Eigenleistung den dauerhaften Betrieb in einem leistungsfähigen Server-Cluster gewährleistet. Auch der Quellcode des DFG-Viewers ist frei und kann unter der Open Source-Lizenz GPL3 auf <LINK https://github.com/slub/dfg-viewer - external>GitHub</link> bezogen und kostenfrei&nbsp;nachgenutzt werden. Über die Plattform können auch eigene Weiterentwicklungen in das Projekt eingebracht werden.',0,0,0,0,0,0,0,1,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,1,0,0),(181,NULL,106,1628603526,1628603526,1,0,0,0,0,'',256,0,1,182,0,NULL,1,'a:4:{s:11:\"l18n_parent\";N;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:11:\"pi_flexform\";s:3927:\"<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listOrderBy\">\n                    <value index=\"vDEF\">datetime</value>\n                </field>\n                <field index=\"ascDesc\">\n                    <value index=\"vDEF\">desc</value>\n                </field>\n                <field index=\"categoryMode\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categorySelection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"useSubCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"archive\">\n                    <value index=\"vDEF\">-1</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template\">\n            <language index=\"lDEF\">\n                <field index=\"template_file\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"alternatingLayouts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"croppingLenght\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_category\">\n            <language index=\"lDEF\">\n                <field index=\"catImageMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatImages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catTextMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatTexts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_misc\">\n            <language index=\"lDEF\">\n                <field index=\"PIDitemDisplay\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"firstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"forceFirstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"listStartId\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listLimit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"noPageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"maxWordsInSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\";}',0,0,'',0,0,0,0,0,0,'text','','','The <LINK 25 - - \"Start the demonstrator!\"><i><acronym title=\"(dt.) Deutsche Forschungsgemeinschaft; (engl.) German Research Foundation\">DFG</acronym> Viewer</i></link> is a browser web service for displaying digital representations from decentralised library repositories. It has an <acronym title=\"extensible markup language\">XML</acronym> interface for exchanging meta- and structural data in the <LINK 23 - - \"metadata encoding and transmission standard\"><acronym title=\"metadata encoding and transmission standard\">METS</acronym>/<acronym title=\"metadata object description schema\">MODS</acronym> and <acronym title=\"metadata encoding and transmission standard\">METS</acronym>/<acronym title=\"text encoding initiative\">TEI</acronym> format</link>. Displaying of a digital representation is enriched and supplemented with additional functions, if applicable, with the help of these data.\r\nAs a result, users are provided with a uniform interface for viewing digitised media. They can browse documents, view and download the individual digital representations in various resolutions and switch to the respective web presentation of the library involved upon a request to that end in order to use further possibilities there.\r\nThe <i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym> Viewer</i> is based on the free <acronym title=\"content management system\">CMS</acronym> <LINK http://www.typo3.org/ - - TYPO3>TYPO3</link>&nbsp;as well as the open source digitization software <LINK http://www.goobi.org/en/ - external>Goobi</link>&nbsp;and can be used free of charge by anyone interested. This can either be done centrally via the web service operated here or by means of a local implementation. In this context, connection is optionally provided via a native <acronym title=\"extensible markup language\">XML</acronym> interface or via the standardised <acronym title=\"open archives initiative\">OAI</acronym> protocol. You can find comprehensive documentations, examples and useful tips regarding both application scenarios there.\r\n<p class=\"abstract\"><span class=\"information\">Moreover, this web service is intended to start a <LINK 14>discussion</link> regarding metadata standards for mass digitisation projects sponsored by <acronym title=\"(dt.) Deutsche Forschungsgemeinschaft; (engl.) German Research Foundation\">DFG</acronym> and their applicability, which should be as broad as possible, and to put the sample application, such as the <i>Viewer</i>, to the test.</span></p>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listOrderBy\">\n                    <value index=\"vDEF\">datetime</value>\n                </field>\n                <field index=\"ascDesc\">\n                    <value index=\"vDEF\">desc</value>\n                </field>\n                <field index=\"categoryMode\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categorySelection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"useSubCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"archive\">\n                    <value index=\"vDEF\">-1</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template\">\n            <language index=\"lDEF\">\n                <field index=\"template_file\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"alternatingLayouts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"croppingLenght\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_category\">\n            <language index=\"lDEF\">\n                <field index=\"catImageMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatImages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catTextMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatTexts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_misc\">\n            <language index=\"lDEF\">\n                <field index=\"PIDitemDisplay\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"firstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"forceFirstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"listStartId\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listLimit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"noPageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"maxWordsInSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','','',NULL,0,0,0,0,10,0,0),(182,NULL,106,1628603526,1628603526,1,0,0,0,0,'',128,0,0,0,0,NULL,0,'a:1:{s:11:\"pi_flexform\";N;}',0,0,'',0,0,0,0,0,0,'text','','','Der <LINK 25><i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym>-Viewer</i></link> ist ein Browser-Webdienst zur Anzeige von Digitalisaten aus dezentralen Bibliotheksrepositorien. Er verfügt über eine <acronym title=\"(engl.) open archives initiative protocol for metadata harvesting; (dt.) Protokoll zur Metadatensammlung der Initiative zum freien Datenaustausch\">OAI-PMH</acronym>-Schnittstelle zum Austausch von Meta- und Strukturdaten im <LINK 23><acronym title=\"(engl.) metadata encoding and transmission standard; (dt.) Metadatenkodierungs- und -übertragungsstandard\">METS</acronym>/<acronym title=\"(engl.) metadata object description schema; (dt.) Schema zur Beschreibung von Objektmetadaten\">MODS</acronym>- und <acronym title=\"(engl.) metadata encoding and transmission standard; (dt.) Metadatenkodierungs- und -übertragungsstandard\">METS</acronym>/<acronym title=\"(engl.) text encoding initiative; (dt.) Textkodierungsinitiative\">TEI</acronym>-Format</link>. Mit Hilfe dieser Daten wird die Anzeige eines Digitalisats angereichert und gegebenenfalls um zusätzliche Funktionen ergänzt.\r\nBenutzer finden somit eine vereinheitlichte Oberfläche zur Ansicht von digitalisierten Medien vor. Sie können in einem Werk blättern, die einzelnen Digitalisate in mehreren Auflösungen betrachten und herunterladen sowie auf Wunsch zur jeweiligen Webpräsentation der beteiligten Bibliothek wechseln, um dort weitergehende Möglichkeiten zu nutzen.\r\nDer <i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym>-Viewer</i> basiert auf dem freien <acronym title=\"(engl.) content management system; (dt.) Redaktionssystem\">CMS</acronym> <LINK http://www.typo3.org/ - external TYPO3>TYPO3</link>&nbsp;sowie der quelloffenen Digitalisierungssoftware <LINK http://kitodo.org - external>Kitodo</link>&nbsp;und kann von jedem Interessierten kostenlos genutzt werden. Dies kann entweder zentral über den hier laufenden Webdienst erfolgen oder durch eine lokale Implementierung. Die Anbindung erfolgt dabei wahlweise über eine native <acronym title=\"(engl.) extensible markup language; (dt.) erweiterbare Auszeichnungssprache\">XML</acronym>-Schnittstelle oder über das standardisierte <acronym title=\"(engl.) open archives initiative; (dt.) Initiative zum freien Datenaustausch\">OAI</acronym>-Protokoll. Hier finden Sie zu beiden Anwendungsszenarien ausführliche Dokumentationen, Beispiele und hilfreiche Tipps.\r\nEine ausführlichere Beschreibung der Funktionen und Möglichkeiten des DFG-Viewers finden Sie auf der <LINK 31>entsprechenden Unterseite</link>.\r\n<p class=\"abstract\"><span class=\"information\">Dieses Webangebot soll zudem eine möglichst breite <LINK 14>Diskussion</link> über Metadatenstandards für <acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym>-geförderte Massendigitalisierungsprojekte und ihre Anwendbarkeit anregen sowie Musterapplikation wie den <i>Viewer</i> erproben.</span></p>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listOrderBy\">\n                    <value index=\"vDEF\">datetime</value>\n                </field>\n                <field index=\"ascDesc\">\n                    <value index=\"vDEF\">desc</value>\n                </field>\n                <field index=\"categoryMode\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"categorySelection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"useSubCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"archive\">\n                    <value index=\"vDEF\">-1</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template\">\n            <language index=\"lDEF\">\n                <field index=\"template_file\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"imageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"alternatingLayouts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"croppingLenght\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_category\">\n            <language index=\"lDEF\">\n                <field index=\"catImageMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catImageMaxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatImages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"catTextMode\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"maxCatTexts\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_misc\">\n            <language index=\"lDEF\">\n                <field index=\"PIDitemDisplay\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"firstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"forceFirstImageIsPreview\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"listStartId\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"listLimit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"noPageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"maxWordsInSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','','',NULL,0,0,0,0,11,0,0),(183,NULL,105,1628603526,1628603526,1,0,0,0,0,'',256,0,0,186,0,NULL,259,'a:1:{s:11:\"l18n_parent\";N;}',0,0,'',0,0,0,0,0,0,'html','','','<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nfunction getLink() {\r\nbaseUrls = new Object();\r\nbaseUrls[\"slub\"] = \"http://digital.slub-dresden.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"hab\"] = \"http://dbs.hab.de/oai/wdb?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"ulb\"] = \"http://digitale.bibliothek.uni-halle.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"bsb\"] = \"http://daten.digitale-sammlungen.de/~db/mets/\";\r\nbaseUrls[\"sub\"] = \"http://gdz.sub.uni-goettingen.de/mets_export.php?PPN=\";\r\ndocument.getElementById(\"mets\").value = baseUrls[document.getElementById(\"org\").value] + document.getElementById(\"id\").value;\r\nif(document.getElementById(\"org\").value==\"bsb\") { document.getElementById(\"mets\").value = document.getElementById(\"mets\").value + \"_mets.xml\"; }\r\nreturn true;\r\n}\r\n/* ]]> */\r\n</script>\r\n<div class=\"abstract\">\r\n<noscript><p><strong>Bitte aktivieren Sie Javascript, um diese Funktion nutzen zu können!</strong></p></noscript>\r\n<div class=\"example\">\r\n<h4>Beispiele</h4>\r\n<p><strong><acronym title=\"Sächsische Landesbibliothek - Staats- und Universitätsbibliothek\">SLUB</acronym> Dresden</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[0].selected=true;\">oai:de:slub-dresden:db:id-263566811</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[0].selected=true;\">oai:de:slub-dresden:db:id-274591448</a><br />\r\n<strong><acronym title=\"Herzog August Bibliothek\">HAB</acronym> Wolfenbüttel</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[1].selected=true;\">oai:diglib.hab.de:ppn_549837965</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[1].selected=true;\">oai:diglib.hab.de:ppn_549836969</a><br />\r\n<strong><acronym title=\"Universitäts- und Landesbibliothek\">ULB</acronym> Halle</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[2].selected=true;\">94835</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[2].selected=true;\">9834</a><br />\r\n<strong><acronym title=\"Bayerische Staatsbibliothek\">BSB</acronym> München</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[3].selected=true;\">bsb00020619</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[3].selected=true;\">bsb00020956</a><br />\r\n<strong><acronym title=\"Staats- und Universitätsbibliothek\">SUB</acronym> Göttingen</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[4].selected=true;\">PPN574841571</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[4].selected=true;\">PPN574578609</a></p>\r\n</div>\r\n<form method=\"get\" action=\"/show/\" onsubmit=\"return getLink();\"><div>\r\n<label for=\"id\">Identifikator</label><br />\r\n<input type=\"text\" class=\"text\" value=\"\" id=\"id\" required=\"required\" /><br />\r\n<label for=\"org\">Bibliothek</label><br />\r\n<select id=\"org\"><option value=\"slub\" selected=\"selected\">SLUB Dresden</option><option value=\"hab\">HAB Wolfenbüttel</option><option value=\"ulb\">ULB Halle</option><option value=\"bsb\">BSB München</option><option value=\"sub\">SUB Göttingen</option></select><br />\r\n<input type=\"hidden\" name=\"tx_dlf[id]\" id=\"mets\" value=\"\" />\r\n<input type=\"submit\" class=\"submit\" value=\"Demonstrator aufrufen!\" />\r\n</div></form>\r\n<br style=\"clear:both;\" />\r\n</div>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,12,0,0),(184,NULL,105,1628603526,1628603526,1,0,0,0,0,'',128,0,1,183,0,NULL,0,'a:3:{s:11:\"l18n_parent\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'html','','','<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nfunction getLink() {\r\nbaseUrls = new Object();\r\nbaseUrls[\"slub\"] = \"http://digital.slub-dresden.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"hab\"] = \"http://dbs.hab.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"ulb\"] = \"http://digitale.bibliothek.uni-halle.de/oai/?verb=GetRecord&metadataPrefix=mets&identifier=\";\r\nbaseUrls[\"bsb\"] = \"http://daten.digitale-sammlungen.de/~db/mets/\";\r\nbaseUrls[\"sub\"] = \"http://gdz.sub.uni-goettingen.de/mets_export.php?PPN=\";\r\ndocument.getElementById(\"mets\").value = baseUrls[document.getElementById(\"org\").value] + document.getElementById(\"id\").value;\r\nif(document.getElementById(\"org\").value==\"bsb\") { document.getElementById(\"mets\").value = document.getElementById(\"mets\").value + \"_mets.xml\"; }\r\nreturn true;\r\n}\r\n/* ]]> */\r\n</script>\r\n<div class=\"abstract\">\r\n<noscript><p><strong>This requires a browser that can handle javascript and has javacript enabled.</strong></p></noscript>\r\n<div class=\"example\">\r\n<h4>Examples</h4>\r\n<p><strong><acronym title=\"Sächsische Landesbibliothek - Staats- und Universitätsbibliothek\">SLUB</acronym> Dresden</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[0].selected=true;\">oai:de:slub-dresden:db:id-263566811</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[0].selected=true;\">oai:de:slub-dresden:db:id-274591448</a><br />\r\n<strong><acronym title=\"Herzog August Bibliothek\">HAB</acronym> Wolfenbüttel</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[1].selected=true;\">oai:diglib.hab.de:ppn_549837965</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[1].selected=true;\">oai:diglib.hab.de:ppn_549836969</a><br />\r\n<strong><acronym title=\"Universitäts- und Landesbibliothek\">ULB</acronym> Halle</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[2].selected=true;\">94835</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[2].selected=true;\">9834</a><br />\r\n<strong><acronym title=\"Bayerische Staatsbibliothek\">BSB</acronym> München</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[3].selected=true;\">bsb00020619</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[3].selected=true;\">bsb00020956</a><br />\r\n<strong><acronym title=\"Staats- und Universitätsbibliothek\">SUB</acronym> Göttingen</strong><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[4].selected=true;\">PPN574841571</a><br />\r\n<a onclick=\"document.getElementById(\'id\').value=this.innerHTML;document.getElementById(\'org\').options[4].selected=true;\">PPN574578609</a></p>\r\n</div>\r\n<form method=\"get\" action=\"/show/\" onsubmit=\"return getLink();\"><div>\r\n<label for=\"id\">Identifier</label><br />\r\n<input type=\"text\" class=\"text\" value=\"\" id=\"id\" required=\"required\" /><br />\r\n<label for=\"org\">Library</label><br />\r\n<select id=\"org\"><option value=\"slub\" selected=\"selected\">SLUB Dresden</option><option value=\"hab\">HAB Wolfenbüttel</option><option value=\"ulb\">ULB Halle</option><option value=\"bsb\">BSB München</option><option value=\"sub\">SUB Göttingen</option></select><br />\r\n<input type=\"hidden\" name=\"tx_dlf[id]\" id=\"mets\" value=\"\" />\r\n<input type=\"submit\" class=\"submit\" value=\"Call Demonstrator!\" />\r\n</div></form>\r\n<br style=\"clear:both;\" />\r\n</div>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,13,0,0),(185,NULL,105,1628603526,1628603526,1,0,0,0,0,'',64,0,1,186,0,NULL,259,'a:3:{s:11:\"l18n_parent\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'text','','','You can also look at works from the digitised stock of the project partners as examples by selecting or entering a corresponding identifier in the following form.',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,14,0,0),(186,NULL,105,1628603526,1628603526,1,0,0,0,0,'',32,0,0,0,0,NULL,0,'a:14:{s:5:\"CType\";N;s:16:\"sys_language_uid\";N;s:6:\"colPos\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:12:\"sectionIndex\";N;s:6:\"hidden\";N;s:9:\"linkToTop\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}',0,0,'',0,0,0,0,0,0,'text','','','Sie können sich auch exemplarisch Werke aus dem digitalisierten Bestand der Projektpartner anschauen, in dem Sie im folgenden Formular einen entsprechenden Identifikator auswählen oder eintragen.',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,15,0,0),(187,NULL,105,1628603526,1628603526,1,0,0,0,0,'',16,0,1,188,0,NULL,257,'a:3:{s:11:\"l18n_parent\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'html','','','<div class=\"abstract\">\r\n<form method=\"get\" action=\"/show/\"><div>\r\n<label for=\"mets\">Insert the link to your <acronym title=\"metadata encoding and transmission standard\">METS</acronym> file or <acronym title=\"open archives initiative\">OAI</acronym> interface here:</label><br />\r\n<input type=\"text\" class=\"url\" name=\"tx_dlf[id]\" value=\"\" /><br />\r\n<label for=\"debug\"><input id=\"debug\" type=\"checkbox\" name=\"set[debug]\" value=\"1\" disabled=\"disabled\" /> <strike>validation mode</strike> (temporarily unavailable)</label><br />\r\n<input type=\"hidden\" name=\"no_cache\" value=\"1\" />\r\n<input type=\"submit\" class=\"submit\" value=\"Call Demonstrator!\" />\r\n</div></form>\r\n</div>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,16,0,0),(188,NULL,105,1628603526,1628603526,1,0,0,0,0,'',8,0,0,0,0,NULL,0,'a:15:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}',0,0,'',0,0,0,0,0,0,'html','','','<div class=\"abstract\">\r\n<form method=\"get\" action=\"/show/\"><div>\r\n<label for=\"mets\">Fügen Sie hier den Link zu Ihrer <acronym title=\"(engl.) metadata encoding and transmission standard; (dt.) Metadatenkodierungs- und -übertragungsstandard\">METS</acronym>-Datei bzw. <acronym title=\"(engl.) open archives initiative; (dt.) Initiative für freien Datenaustausch\">OAI</acronym>-Schnittstelle ein:</label><br />\r\n<input type=\"text\" class=\"url\" name=\"tx_dlf[id]\" value=\"\" /><br />\r\n<label for=\"debug\"><input id=\"debug\" type=\"checkbox\" name=\"set[debug]\" value=\"1\" disabled=\"disabled\" /> <strike>Validator-Modus aktivieren</strike> (vorübergehend nicht verfügbar)</label><br />\r\n<input type=\"hidden\" name=\"no_cache\" value=\"1\" />\r\n<input type=\"submit\" class=\"submit\" value=\"Demonstrator aufrufen!\" />\r\n</div></form>\r\n</div>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,17,0,0),(189,NULL,105,1628603526,1628603526,1,0,0,0,0,'',4,0,1,191,0,NULL,0,'a:3:{s:11:\"l18n_parent\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'text','','','<span class=\"information\">Please do not use the demonstrator but&nbsp;the stable and persistent version specified under <LINK 27>notes regarding implementation</link> to employ the <em><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym> Viewer</em> in the productive environment.</span>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'3','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,18,0,0),(190,NULL,105,1628603526,1628603526,1,0,0,0,0,'',2,0,1,192,0,NULL,205,'a:3:{s:11:\"l18n_parent\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;}',0,0,'',0,0,0,0,0,0,'text','','','The demonstrator presented here constitutes the respective most current stable version of the <i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym> Viewer</i>.',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,19,0,0),(191,NULL,105,1628603526,1628603526,1,0,0,0,0,'',1,0,0,188,0,NULL,257,'a:1:{s:11:\"l18n_parent\";N;}',0,0,'',0,0,0,0,0,0,'text','','','<span class=\"information\">Um den <i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym>-Viewer</i> im produktiven Umfeld einzusetzen, verwenden Sie bitte nicht den Demonstrator, sondern die bei den <LINK 27>Hinweisen zur Implementierung</link> angegebene persistente Version.</span>',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,20,0,0),(192,NULL,105,1628603526,1628603526,1,0,0,0,0,'',0,0,0,0,0,NULL,0,'a:14:{s:5:\"CType\";N;s:16:\"sys_language_uid\";N;s:6:\"colPos\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:12:\"sectionIndex\";N;s:6:\"hidden\";N;s:9:\"linkToTop\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;}',0,0,'',0,0,0,0,0,0,'text','','','Der hier präsentierte Demonstrator stellt jeweils die aktuellste stabile Version des <i><acronym title=\"Deutsche Forschungsgemeinschaft\">DFG</acronym>-Viewers</i> dar.',0,0,0,0,0,0,8,0,0,0,0,'default',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,'','',0,'','','','',NULL,0,0,0,0,21,0,0),(203,'',99,1628603526,1628603526,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:1:{s:11:\"pi_flexform\";N;}',0,0,'',0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','','','',0,'','',0,'3','news_pi1',1,0,'',0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selectedList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.singleNews\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.previewHiddenRecords\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;detail</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\">98</value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','','',NULL,124,0,0,0,88,0,0),(204,'',98,1628603526,1628603526,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:1:{s:11:\"pi_flexform\";N;}',0,0,'',0,0,0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','','','',0,'','',0,'3','news_pi1',1,0,'',0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.orderBy\">\n                    <value index=\"vDEF\">datetime</value>\n                </field>\n                <field index=\"settings.orderDirection\">\n                    <value index=\"vDEF\">desc</value>\n                </field>\n                <field index=\"settings.categoryConjunction\">\n                    <value index=\"vDEF\">or</value>\n                </field>\n                <field index=\"settings.categories\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n                <field index=\"settings.includeSubCategories\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.archiveRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.timeRestrictionHigh\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsRestriction\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.startingpoint\">\n                    <value index=\"vDEF\">86</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.selectedList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"switchableControllerActions\">\n                    <value index=\"vDEF\">News-&gt;list</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"additional\">\n            <language index=\"lDEF\">\n                <field index=\"settings.detailPid\">\n                    <value index=\"vDEF\">99</value>\n                </field>\n                <field index=\"settings.listPid\">\n                    <value index=\"vDEF\">98</value>\n                </field>\n                <field index=\"settings.backPid\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.limit\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.offset\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.tags\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.hidePagination\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.list.paginate.itemsPerPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.topNewsFirst\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.excludeAlreadyDisplayedNews\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.disableOverrideDemand\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"template\">\n            <language index=\"lDEF\">\n                <field index=\"settings.media.maxWidth\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.media.maxHeight\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.cropMaxCharacters\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.templateLayout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','','',NULL,124,0,0,0,87,0,0),(205,'',98,1628603526,1628603526,1,0,0,0,0,'',128,0,0,0,0,NULL,0,'a:1:{s:8:\"bodytext\";N;}',0,0,'',0,0,0,0,0,0,'text','','','<p>Auf dieser Seite dokumentieren wir Änderungen an der DFG-Viewer Webseite und am DFG-Viewer selbst. So können Sie nachvollziehen, ob kürzlich Änderungen vorgenommen wurden.</p>\r\n<p>Wenn Sie Fehler feststellen oder Verbesserungsvorschläge haben, können Sie uns auf den gewohnten Kanälen kontaktieren. Siehe Seite <a class=\"link-internal\" href=\"94\">Kontakt</a>.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','','','',0,'','',0,'3','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,89,0,0),(250,NULL,85,1628603526,1628603526,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:1:{s:8:\"bodytext\";N;}',0,0,'',0,0,0,0,0,0,'text','DFG-Viewer Mailingliste','','<p>Bleiben Sie steht informiert und tauschen Sie sich mit anderen Nutzern und den Entwicklern des DFG-Viewers zu aktuellen Themen und Trends aus.</p>\r\n<p><a class=\"more\" href=\"14\" title=\"Mehr dazu\">In Kontakt bleiben</a></p>',0,0,0,0,0,0,0,2,0,0,101,'mailinglist',0,0,0,'','','','',0,'','',0,'3','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,0,0,0,0,79,0,0),(251,NULL,85,1628608848,1628603526,1,0,0,0,0,'',128,0,0,0,0,NULL,0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,'text','METS, MODS, TEI. Metadaten des DFG-Viewers','','<p>Das verwendete Metadatenformat ist ausführlich dokumentiert und mit Beispielen versehen. Die beschriebene Minimalversion kann sehr leicht aus vorhandenen Metadaten anderer Formate erzeugt werden und genügt bereits, um den DFG-Viewer anzusprechen.</p>\r\n<p><a class=\"link-more\" href=\"t3://page?uid=104\">Mehr erfahren</a></p>',0,0,0,0,0,0,0,2,0,0,101,'metadata',0,0,0,'','','','',0,'','',0,'3','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,0,0,0,0,80,0,0),(252,NULL,85,1628603526,1628603526,1,0,0,0,0,'',64,0,0,0,0,NULL,0,'a:18:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:8:\"bodytext\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,'html','DFG-Viewer Demonstrator','','<h3>DFG-Viewer Demonstrator</h3>\r\n<p>Sehen Sie hier zunächst drei Demonstrationen des DFG-Viewers mit ausgewählten Werken verschiedener Projektpartner.</p>\r\n                    <ul class=\"demo-list\">\r\n                        <li>\r\n                            <a href=\"/show/?tx_dlf%5Bid%5D=http%3A%2F%2Fdigital.slub-dresden.de%2Foai%2F%3Fverb%3DGetRecord%26metadataPrefix%3Dmets%26identifier%3Doai%3Ade%3Aslub-dresden%3Adb%3Aid-263566811\" title=\"\">\r\n                                <img src=\"/typo3conf/ext/dfgviewer/Resources/Public/Images/Demopages/demoSLUB.jpg\" alt=\"demoSLUB\">\r\n                                <span class=\"title\">Der furnembsten, notwendigsten, der gantzen Architectur angehoerigen Mathematischen und…</span>\r\n                                <span class=\"uid\">oai:de:slub-dresden:db:id-263566811</span>\r\n                                <span class=\"institute\">SLUB Dresden</span>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\"/show/?tx_dlf%5Bid%5D=http%3A%2F%2Fdaten.digitale-sammlungen.de%2F~db%2Fmets%2Fbsb00020619_mets.xml\" title=\"\">\r\n                                <img src=\"/typo3conf/ext/dfgviewer/Resources/Public/Images/Demopages/demoBSB.jpg\" alt=\"demoSLUB\">\r\n                                <span class=\"title\">Prima [- Undecima] pars librorum divi Aurelii Augustini…</span>\r\n                                <span class=\"uid\">bsb00020619</span>\r\n                                <span class=\"institute\">BSB München</span>\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href=\"/show/?tx_dlf%5Bid%5D=http%3A%2F%2Fdbs.hab.de%2Foai%2Fwdb%3Fverb%3DGetRecord%26metadataPrefix%3Dmets%26identifier%3Doai%3Adiglib.hab.de%3Appn_549836969\" title=\"\">\r\n                                <img src=\"/typo3conf/ext/dfgviewer/Resources/Public/Images/Demopages/demoHAB.jpg\" alt=\"demoSLUB\">\r\n                                <span class=\"title\">Johannis Michaelis Dilherri, Franci, Disputationum Academicarum, praecipue Philologicarum, Tomus…</span>\r\n                                <span class=\"uid\">oai:diglib.hab.de:ppn_549836969</span>\r\n                                <span class=\"institute\">HAB Wolfenbüttel</span>\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                    <p><a href=\"/demo/\" title=\"Mehr dazu\" class=\"more\">Weitere Beispiele ansehen</a></p>',0,0,0,0,0,0,0,2,0,0,101,'demo',0,0,0,'','','','',0,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,0,0,0,0,81,0,0),(253,NULL,85,1628603526,1628603526,1,0,0,0,0,'',32,0,0,0,0,NULL,0,'a:1:{s:8:\"bodytext\";N;}',0,0,'',0,0,0,0,0,0,'text','','','<p>Der DFG-Viewer ist die Referenzimplementierung für die Digitalisierungsstandards der&nbsp;<a href=\"https://www.dfg.de/\" title=\"Deutsche Forschungsgemeinschaft (DFG)\">Deutschen Forschungsgemeinschaft (DFG)</a>. Das sind insbesondere die Datenformate METS/MODS und METS/TEI sowie die Austauschschnittstelle OAI-PMH.</p>\r\n<p>Das Angebot ist für den Datenanbieter wie auch die Nutzer kostenfrei.</p>\r\n<p><a class=\"more\" href=\"25\" title=\"Mehr dazu\">Mehr erfahren</a></p>',0,0,0,0,0,0,0,2,0,0,101,'mission',0,0,0,'','','','',0,'','',0,'3','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,0,0,0,0,82,0,0),(255,'',85,1645107681,1645107681,1,0,0,0,0,'',16,0,0,0,0,NULL,0,'',0,0,'',0,0,0,0,0,0,'text','DDEV Entwicklungssystem DFG-Viewer','','<p>Dies ist ein DDEV-Entwicklungssystem für die Entwicklung an der DFG-Viewer Webseite.</p>\r\n<p>Alle Inhalte in diesem System dienen nur der Entwicklung. Die maßgeblichen Inhalte finden Sie auf der DFG-Viewer Webseite.</p>\r\n<p>Nützliche Adressen:</p>\r\n<ul> 	<li>DFG-Viewer Extension:&nbsp;<a href=\"https://github.com/slub/dfg-viewer\">https://github.com/slub/dfg-viewer</a></li> 	<li>Kitodo.Presentation:&nbsp;<a href=\"https://github.com/kitodo/kitodo-presentation\">https://github.com/kitodo/kitodo-presentation</a></li> 	<li>DFG-Viewer Webseite:&nbsp;https://dfg-viewer.de/</li> </ul>',0,0,0,0,0,0,0,2,0,0,0,'default',0,0,0,'','',NULL,NULL,0,'','',0,'3','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_actionlog`
--

DROP TABLE IF EXISTS `tx_dlf_actionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_actionlog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `count_pages` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_actionlog`
--

LOCK TABLES `tx_dlf_actionlog` WRITE;
/*!40000 ALTER TABLE `tx_dlf_actionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_basket`
--

DROP TABLE IF EXISTS `tx_dlf_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_basket` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_user_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doc_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_basket`
--

LOCK TABLES `tx_dlf_basket` WRITE;
/*!40000 ALTER TABLE `tx_dlf_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_collections`
--

DROP TABLE IF EXISTS `tx_dlf_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_collections` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_cruser_id` int(11) NOT NULL DEFAULT 0,
  `fe_admin_lock` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_search` text COLLATE utf8_unicode_ci NOT NULL,
  `oai_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `priority` smallint(6) NOT NULL DEFAULT 3,
  `documents` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `oai_name` (`oai_name`),
  KEY `pid_cruser` (`pid`,`fe_cruser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_collections`
--

LOCK TABLES `tx_dlf_collections` WRITE;
/*!40000 ALTER TABLE `tx_dlf_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_documents`
--

DROP TABLE IF EXISTS `tx_dlf_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_documents` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prod_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `opac_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `union_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `urn` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `title_sorting` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `place` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `structure` int(11) NOT NULL DEFAULT 0,
  `partof` int(11) NOT NULL DEFAULT 0,
  `volume` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volume_sorting` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `license` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `restrictions` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `out_of_print` text COLLATE utf8_unicode_ci NOT NULL,
  `rights_info` text COLLATE utf8_unicode_ci NOT NULL,
  `collections` int(11) NOT NULL DEFAULT 0,
  `mets_label` text COLLATE utf8_unicode_ci NOT NULL,
  `mets_orderlabel` text COLLATE utf8_unicode_ci NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `solrcore` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `document_format` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `location` (`location`),
  KEY `record_id` (`record_id`),
  KEY `partof` (`partof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_documents`
--

LOCK TABLES `tx_dlf_documents` WRITE;
/*!40000 ALTER TABLE `tx_dlf_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_formats`
--

DROP TABLE IF EXISTS `tx_dlf_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_formats` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `root` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_formats`
--

LOCK TABLES `tx_dlf_formats` WRITE;
/*!40000 ALTER TABLE `tx_dlf_formats` DISABLE KEYS */;
INSERT INTO `tx_dlf_formats` VALUES (1,0,1621068526,1620399664,2,0,'TEIHDR','teiHeader','http://www.tei-c.org/ns/1.0','Kitodo\\Dlf\\Format\\TeiHeader'),(2,0,1621068513,1620399664,2,0,'MODS','mods','http://www.loc.gov/mods/v3','Kitodo\\Dlf\\Format\\Mods'),(3,0,1620399664,1620399664,2,0,'IIIF3','IIIF3','http://iiif.io/api/presentation/3/context.json',''),(4,0,1620399664,1620399664,2,0,'IIIF2','IIIF2','http://iiif.io/api/presentation/2/context.json',''),(5,0,1620399664,1620399664,2,0,'IIIF1','IIIF1','http://www.shared-canvas.org/ns/context.json',''),(6,0,1620399664,1620399664,2,0,'ALTO','alto','http://www.loc.gov/standards/alto/ns-v2#','Kitodo\\Dlf\\Format\\Alto');
/*!40000 ALTER TABLE `tx_dlf_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_libraries`
--

DROP TABLE IF EXISTS `tx_dlf_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_libraries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oai_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oai_base` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `opac_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `opac_base` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `union_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `union_base` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_libraries`
--

LOCK TABLES `tx_dlf_libraries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_mail`
--

DROP TABLE IF EXISTS `tx_dlf_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_mail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_mail`
--

LOCK TABLES `tx_dlf_mail` WRITE;
/*!40000 ALTER TABLE `tx_dlf_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadata`
--

DROP TABLE IF EXISTS `tx_dlf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `format` int(11) NOT NULL DEFAULT 0,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `wrap` text COLLATE utf8_unicode_ci NOT NULL,
  `index_tokenized` smallint(6) NOT NULL DEFAULT 0,
  `index_stored` smallint(6) NOT NULL DEFAULT 0,
  `index_indexed` smallint(6) NOT NULL DEFAULT 0,
  `index_boost` double NOT NULL DEFAULT 1,
  `is_sortable` smallint(6) NOT NULL DEFAULT 0,
  `is_facet` smallint(6) NOT NULL DEFAULT 0,
  `is_listed` smallint(6) NOT NULL DEFAULT 0,
  `index_autocomplete` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `index_autocomplete` (`index_autocomplete`),
  KEY `is_sortable` (`is_sortable`),
  KEY `is_facet` (`is_facet`),
  KEY `is_listed` (`is_listed`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadata`
--

LOCK TABLES `tx_dlf_metadata` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadata` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadata` VALUES (139,87,1628603526,1628603526,1,0,1,166,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',1,2304,'{\"wrap\":\"parent\"}','Document Type','type0',0,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1,0,0,1,0,0),(140,87,1628603526,1628603526,1,0,1,141,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,2176,'{\"wrap\":\"parent\"}','VD17','vd170',1,'','key.wrap = <dt>|</dt>\r\nvalue.setContentToCurrent = 1\r\nvalue.required = 1\r\nvalue.typolink.parameter.current = 1\r\nvalue.typolink.parameter.rawUrlEncode = 1\r\nvalue.typolink.parameter.prepend = TEXT\r\nvalue.typolink.parameter.prepend.value = http://gso.gbv.de/xslt/DB=1.28/SET=1/TTL=1/CMD?ACT=SRCHA&IKT=8002&TRM=\r\nvalue.wrap = <dd>[|]</dd>',0,1,1,1,0,0,1,0,0),(141,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,2112,NULL,'VD17','vd17',1,'','key.wrap = <dt>|</dt>\r\nvalue.setContentToCurrent = 1\r\nvalue.required = 1\r\nvalue.typolink.parameter.current = 1\r\nvalue.typolink.parameter.rawUrlEncode = 1\r\nvalue.typolink.parameter.prepend = TEXT\r\nvalue.typolink.parameter.prepend.value = http://gso.gbv.de/xslt/DB=1.28/SET=1/TTL=1/CMD?ACT=SRCHA&IKT=8002&TRM=\r\nvalue.wrap = <dd>[|]</dd>',0,1,1,1,0,0,1,0,0),(142,87,1628603526,1628603526,1,0,1,143,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,2080,'{\"wrap\":\"parent\"}','VD16','vd160',1,'','key.wrap = <dt>|</dt>\r\nvalue.setContentToCurrent = 1\r\nvalue.required = 1\r\nvalue.typolink.parameter.current = 1\r\nvalue.typolink.parameter.rawUrlEncode = 1\r\nvalue.typolink.parameter.prepend = TEXT\r\nvalue.typolink.parameter.prepend.value = http://gateway-bayern.bib-bvb.de/aleph-cgi/bvb_suche?sid=VD16&find_code_1=WVD&find_request_1=\r\nvalue.wrap = <dd>[|]</dd>',0,1,1,1,0,0,1,0,0),(143,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,2064,NULL,'VD16','vd16',1,'','key.wrap = <dt>|</dt>\r\nvalue.setContentToCurrent = 1\r\nvalue.required = 1\r\nvalue.typolink.parameter.current = 1\r\nvalue.typolink.parameter.rawUrlEncode = 1\r\nvalue.typolink.parameter.prepend = TEXT\r\nvalue.typolink.parameter.prepend.value = http://gateway-bayern.bib-bvb.de/aleph-cgi/bvb_suche?sid=VD16&find_code_1=WVD&find_request_1=\r\nvalue.wrap = <dd>[|]</dd>',0,1,1,1,0,0,1,0,0),(144,87,1628603526,1628603526,1,0,1,147,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,2056,'{\"wrap\":\"parent\"}','Year of Publication','year0',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(145,87,1628603526,1628603526,1,0,1,148,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,2052,'{\"wrap\":\"parent\"}','Place of Publication','place0',1,'','key.wrap = <dt>|</dt>\r\nvalue.ifEmpty.field = parentPlace\r\nvalue.required = 1\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(146,87,1628603526,1628603526,1,0,1,149,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,2050,'{\"wrap\":\"parent\"}','Physical Form','format0',1,'','key.wrap = <dt>|</dt>\r\nvalue.if.value.field = format\r\nvalue.if.equals = x\r\nvalue.if.negate = 1\r\nvalue.required = 1\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(147,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"hidden\";N;}',0,2049,NULL,'Erscheinungsjahr','year',0,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(148,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,2048,NULL,'Erscheinungsort','place',1,'','key.wrap = <dt>|</dt>\r\nvalue.ifEmpty.field = parentPlace\r\nvalue.required = 1\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(149,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1792,NULL,'Format','format',1,'','key.wrap = <dt>|</dt>\r\nvalue.if.value.field = format\r\nvalue.if.equals = x\r\nvalue.if.negate = 1\r\nvalue.required = 1\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(150,87,1628603526,1628603526,1,0,1,151,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1664,NULL,'Leaves Count','leavesCount',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(151,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1600,NULL,'Blattzahl','leavesCount0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(152,87,1628603526,1628603526,1,0,1,153,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1568,'{\"wrap\":\"parent\"}','Material','material0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(153,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1552,NULL,'Beschreibstoff','material',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(154,87,1628603526,1628603526,1,0,1,155,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1544,'{\"wrap\":\"parent\"}','Issue','issue0',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = issue\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(155,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1540,NULL,'Ausgabe','issue',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = issue\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(156,87,1628603526,1628603526,1,0,1,157,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1538,'{\"wrap\":\"parent\"}','Volume','volume0',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = volume\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(157,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1537,NULL,'Band','volume',1,'','key.wrap = <dt>|</dt>\nvalue.if.value.field = type\nvalue.if.equals = volume\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(158,87,1628603526,1628603526,1,0,1,159,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1536,'{\"wrap\":\"parent\"}','Shelfmark','shelfmark0',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(159,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1280,NULL,'Signatur','shelfmark',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(160,87,1628603526,1628603526,1,0,1,161,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1152,'{\"wrap\":\"parent\"}','Repository','repository0',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(161,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1088,NULL,'Einrichtung','repository',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(162,87,1628603526,1628603526,1,0,1,163,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,1056,'{\"wrap\":\"parent\"}','Place of Publication (Parent)','parentPlace0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(163,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,1040,NULL,'Erscheinungsort (Gesamtheit)','parentPlace',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(164,87,1628603526,1628603526,1,0,1,165,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1032,'{\"wrap\":\"parent\"}','Publication Run','publicationRun0',1,'','key.wrap = <dt>|</dt>\r\nvalue.replacement.1.search = /(\\s)/\r\nvalue.replacement.1.replace = $1-$1\r\nvalue.replacement.1.useRegExp = 1\r\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\r\nvalue.replacement.2.replace = $3.$2.$1\r\nvalue.replacement.2.useRegExp = 1\r\nvalue.required = 1\r\nvalue.noTrimWrap = ||, |\r\nall.substring = 0,-2\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(165,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1028,NULL,'Erscheinungsverlauf','publicationRun',1,'','key.wrap = <dt>|</dt>\r\nvalue.replacement.1.search = /(\\s)/\r\nvalue.replacement.1.replace = $1-$1\r\nvalue.replacement.1.useRegExp = 1\r\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\r\nvalue.replacement.2.replace = $3.$2.$1\r\nvalue.replacement.2.useRegExp = 1\r\nvalue.required = 1\r\nvalue.noTrimWrap = ||, |\r\nall.substring = 0,-2\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(166,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,1026,NULL,'Strukturtyp','type',0,'','key.wrap = <dt class=\"tx-dlf-type\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-type\">|</dd>',0,1,1,1,0,0,1,0,0),(167,87,1628603526,1628603526,1,0,1,168,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,1025,'{\"wrap\":\"parent\"}','Context','context0',1,'','key.wrap = <dt>|</dt><dd>\nvalue.required = 1\nvalue.noTrimWrap = || &gt; |\nall.substring = 0,-6\nall.wrap = |</dd>',0,1,1,1,0,0,1,0,0),(168,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,1024,NULL,'Kontext','context',1,'','key.wrap = <dt>|</dt><dd>\nvalue.required = 1\nvalue.noTrimWrap = || &gt; |\nall.substring = 0,-6\nall.wrap = |</dd>',0,1,1,1,0,0,1,0,0),(169,87,1628603526,1628603526,1,0,1,170,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,768,'{\"wrap\":\"parent\"}','Parent Title','parentTitle0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(170,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,640,NULL,'Gesamttitel','parentTitle',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(171,87,1628603526,1628603526,1,0,1,172,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,576,'{\"wrap\":\"parent\"}','Author (Parent)','parentAuthor0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(172,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,544,NULL,'Autor (Gesamtheit)','parentAuthor',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(173,87,1628603526,1628603526,1,0,1,174,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,528,'{\"wrap\":\"parent\"}','Year of Publication (Parent)','parentYear0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(174,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,520,NULL,'Erscheinungsjahr (Gesamtheit)','parentYear',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(175,87,1628603526,1628603526,1,0,1,176,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,516,'{\"wrap\":\"parent\"}','Creation Date','creationDate0',2,'','key.wrap = <dt>|</dt>\nvalue.replacement.1.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\nvalue.replacement.1.replace = $3.$2.$1\nvalue.replacement.1.useRegExp = 1\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(176,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,514,NULL,'Erstellungsdatum','creationDate',2,'','key.wrap = <dt>|</dt>\nvalue.replacement.1.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\nvalue.replacement.1.replace = $3.$2.$1\nvalue.replacement.1.useRegExp = 1\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(177,87,1628603526,1628603526,1,0,1,178,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',1,513,'{\"wrap\":\"parent\"}','Period','creationDateRun0',1,'','key.wrap = <dt>|</dt>\r\nvalue.replacement.1.search = /(\\s)/\r\nvalue.replacement.1.replace = $1-$1\r\nvalue.replacement.1.useRegExp = 1\r\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\r\nvalue.replacement.2.replace = $3.$2.$1\r\nvalue.replacement.2.useRegExp = 1\r\nvalue.required = 1\r\nvalue.noTrimWrap = ||, |\r\nall.substring = 0,-2\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(178,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',1,512,NULL,'Zeitraum','creationDateRun',1,'','key.wrap = <dt>|</dt>\r\nvalue.replacement.1.search = /(\\s)/\r\nvalue.replacement.1.replace = $1-$1\r\nvalue.replacement.1.useRegExp = 1\r\nvalue.replacement.2.search = /([0-9]{4})-([0-1]?[0-9])-([0-3]?[0-9])/\r\nvalue.replacement.2.replace = $3.$2.$1\r\nvalue.replacement.2.useRegExp = 1\r\nvalue.required = 1\r\nvalue.noTrimWrap = ||, |\r\nall.substring = 0,-2\r\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(179,87,1628603526,1628603526,1,0,1,180,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,256,'{\"wrap\":\"parent\"}','Settlement','settlement0',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(180,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,128,NULL,'Aufbewahrungsort','settlement',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,1,0,0),(181,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,64,NULL,'Autor','author',1,'','key.wrap = <dt>|</dt><dd>\r\nvalue.ifEmpty.field = parentAuthor\r\nvalue.required = 1\r\nvalue.split.token.char = 31\r\nvalue.split.cObjNum = 1\r\nvalue.split.1.1 = CASE\r\nvalue.split.1.1.key.data = register:SPLIT_COUNT\r\nvalue.split.1.1.0 = LOAD_REGISTER\r\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\r\nvalue.split.1.1.1 = LOAD_REGISTER\r\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\r\nvalue.postCObject = TEXT\r\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\r\nvalue.postCObject.value.insertData = 1\r\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\r\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\r\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\r\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\r\nvalue.noTrimWrap = ||; |\r\nall.substring = 0,-2\r\nall.wrap = |</dd>',0,1,1,1,0,0,1,0,0),(182,87,1628603526,1628603526,1,0,0,0,'a:1:{s:6:\"format\";N;}',0,32,NULL,'Titel','title',2,'','key.wrap = <dt class=\"tx-dlf-title\">|</dt>\nvalue.ifEmpty.field = parentTitle\nvalue.ifEmpty.wrap = [|]\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-title\">|</dd>',0,1,1,1,0,0,1,0,0),(183,87,1628603526,1628603526,1,0,1,181,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,16,'{\"wrap\":\"parent\"}','Author','author0',1,'','key.wrap = <dt>|</dt><dd>\r\nvalue.ifEmpty.field = parentAuthor\r\nvalue.required = 1\r\nvalue.split.token.char = 31\r\nvalue.split.cObjNum = 1\r\nvalue.split.1.1 = CASE\r\nvalue.split.1.1.key.data = register:SPLIT_COUNT\r\nvalue.split.1.1.0 = LOAD_REGISTER\r\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\r\nvalue.split.1.1.1 = LOAD_REGISTER\r\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\r\nvalue.postCObject = TEXT\r\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\r\nvalue.postCObject.value.insertData = 1\r\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\r\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\r\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\r\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\r\nvalue.noTrimWrap = ||; |\r\nall.substring = 0,-2\r\nall.wrap = |</dd>',0,1,1,1,0,0,1,0,0),(184,87,1628603526,1628603526,1,0,1,182,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:6:\"format\";N;}',0,8,'{\"wrap\":\"parent\"}','Title','title0',2,'','key.wrap = <dt class=\"tx-dlf-title\">|</dt>\nvalue.ifEmpty.field = parentTitle\nvalue.ifEmpty.wrap = [|]\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-title\">|</dd>',0,1,1,1,0,0,1,0,0);
/*!40000 ALTER TABLE `tx_dlf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadataformat`
--

DROP TABLE IF EXISTS `tx_dlf_metadataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadataformat` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `encoded` int(11) NOT NULL DEFAULT 0,
  `xpath` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xpath_sorting` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mandatory` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadataformat`
--

LOCK TABLES `tx_dlf_metadataformat` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadataformat` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadataformat` VALUES (151,87,1628603526,1628603526,1,0,168,2,'//mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title','',0,0,0,NULL),(152,87,1628603526,1628603526,1,0,170,2,'concat(./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title)','',0,0,0,NULL),(153,87,1628603526,1628603526,1,0,182,2,'concat(./mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:title,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partNumber,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partName)','',0,0,0,NULL),(154,87,1628603526,1628603526,1,0,172,2,'./mods:relatedItem[@type=\"host\"]/mods:name[./mods:role/mods:roleTerm[@authority=\"marcrelator\"][@type=\"code\"]=\"aut\"]/mods:displayForm','',0,0,0,NULL),(155,87,1628603526,1628603526,1,0,174,2,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@keyDate=\"yes\"]','',0,0,0,NULL),(156,87,1628603526,1628603526,1,0,176,2,'./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[not(@point)]','',0,0,0,NULL),(157,87,1628603526,1628603526,1,0,178,2,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[@point=\"start\"],\" \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[@point=\"end\"])','',0,0,0,NULL),(158,87,1628603526,1628603526,1,0,165,2,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"start\"],\" \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"end\"])','',0,0,0,NULL),(159,87,1628603526,1628603526,1,0,163,2,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:place/mods:placeTerm','',0,0,0,NULL),(160,87,1628603526,1628603526,1,0,141,2,'./mods:identifier[@type=\"vd17\"]','',0,0,0,NULL),(161,87,1628603526,1628603526,1,0,143,2,'./mods:identifier[@type=\"vd16\"]','',0,0,0,NULL),(162,87,1628603526,1628603526,1,0,155,2,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(163,87,1628603526,1628603526,1,0,157,2,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(164,87,1628603526,1628603526,1,0,159,2,'./mods:location/mods:shelfLocator','',0,0,0,NULL),(165,87,1628603526,1628603526,1,0,161,2,'./mods:location/mods:physicalLocation','',0,0,0,NULL),(166,87,1628603526,1628603526,1,0,184,2,'concat(./mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:title,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partNumber,\" \",./mods:titleInfo[not(@type=\"alternative\")]/mods:partName)','',0,0,0,NULL),(167,87,1628603526,1628603526,1,0,177,2,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[@point=\"start\"],\" \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[@point=\"end\"])','',0,0,0,NULL),(168,87,1628603526,1628603526,1,0,175,2,'./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateCreated[not(@point)]','',0,0,0,NULL),(169,87,1628603526,1628603526,1,0,173,2,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@keyDate=\"yes\"]','',0,0,0,NULL),(170,87,1628603526,1628603526,1,0,171,2,'./mods:relatedItem[@type=\"host\"]/mods:name[./mods:role/mods:roleTerm[@authority=\"marcrelator\"][@type=\"code\"]=\"aut\"]/mods:displayForm','',0,0,0,NULL),(171,87,1628603526,1628603526,1,0,169,2,'concat(./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:nonSort,\" \",./mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title)','',0,0,0,NULL),(172,87,1628603526,1628603526,1,0,167,2,'//mods:relatedItem[@type=\"host\"]/mods:titleInfo[not(@type=\"alternative\")]/mods:title','',0,0,0,NULL),(173,87,1628603526,1628603526,1,0,164,2,'concat(./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"start\"],\" \",./mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:dateIssued[@point=\"end\"])','',0,0,0,NULL),(174,87,1628603526,1628603526,1,0,162,2,'./mods:relatedItem[@type=\"host\"]/mods:originInfo[@eventType=\"production\" or @eventType=\"publication\" or not(./mods:edition=\"[Electronic ed.]\")]/mods:place/mods:placeTerm','',0,0,0,NULL),(175,87,1628603526,1628603526,1,0,160,2,'./mods:location/mods:physicalLocation','',0,0,0,NULL),(176,87,1628603526,1628603526,1,0,158,2,'./mods:location/mods:shelfLocator','',0,0,0,NULL),(177,87,1628603526,1628603526,1,0,156,2,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(178,87,1628603526,1628603526,1,0,154,2,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(179,87,1628603526,1628603526,1,0,140,2,'./mods:identifier[@type=\"vd17\"]','',0,0,0,NULL),(180,87,1628603526,1628603526,1,0,142,2,'./mods:identifier[@type=\"vd16\"]','',0,0,0,NULL),(181,87,1628603526,1628603526,1,0,182,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:title','',0,0,0,NULL),(182,87,1628603526,1628603526,1,0,181,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:title/teihdr:persName[@role=\"author\"]','',0,0,0,NULL),(183,87,1628603526,1628603526,1,0,176,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origDate/@when',0,0,0,NULL),(184,87,1628603526,1628603526,1,0,148,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origPlace','',0,0,0,NULL),(185,87,1628603526,1628603526,1,0,149,1,'concat(./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/teihdr:width,\"x\",./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/teihdr:height,./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/@unit)','',0,0,0,NULL),(186,87,1628603526,1628603526,1,0,151,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:measure[@type=\"leavesCount\"]','',0,0,0,NULL),(187,87,1628603526,1628603526,1,0,153,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:support','',0,0,0,NULL),(188,87,1628603526,1628603526,1,0,159,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:idno','',0,0,0,NULL),(189,87,1628603526,1628603526,1,0,161,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:repository','',0,0,0,NULL),(190,87,1628603526,1628603526,1,0,180,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:settlement','',0,0,0,NULL),(191,87,1628603526,1628603526,1,0,184,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:title','',0,0,0,NULL),(192,87,1628603526,1628603526,1,0,179,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:settlement','',0,0,0,NULL),(193,87,1628603526,1628603526,1,0,175,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origDate/@when',0,0,0,NULL),(194,87,1628603526,1628603526,1,0,160,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:repository','',0,0,0,NULL),(195,87,1628603526,1628603526,1,0,158,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:idno','',0,0,0,NULL),(196,87,1628603526,1628603526,1,0,152,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:support','',0,0,0,NULL),(197,87,1628603526,1628603526,1,0,150,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:measure[@type=\"leavesCount\"]','',0,0,0,NULL),(198,87,1628603526,1628603526,1,0,146,1,'concat(./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/teihdr:width,\"x\",./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/teihdr:height,./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:physDesc/teihdr:objectDesc/teihdr:supportDesc/teihdr:extent/teihdr:dimensions[@type=\"leaves\"]/@unit)','',0,0,0,NULL),(199,87,1628603526,1628603526,1,0,145,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:history/teihdr:origin/teihdr:origPlace','',0,0,0,NULL),(200,87,1628603526,1628603526,1,0,183,1,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:title/teihdr:persName[@role=\"author\"]','',0,0,0,NULL);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_printer`
--

DROP TABLE IF EXISTS `tx_dlf_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_printer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `print` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_printer`
--

LOCK TABLES `tx_dlf_printer` WRITE;
/*!40000 ALTER TABLE `tx_dlf_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_relations`
--

DROP TABLE IF EXISTS `tx_dlf_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_relations` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `ident` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'An identifier to describe which tables are matched.',
  PRIMARY KEY (`uid`),
  KEY `local_foreign` (`uid_local`,`uid_foreign`,`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_relations`
--

LOCK TABLES `tx_dlf_relations` WRITE;
/*!40000 ALTER TABLE `tx_dlf_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_solrcores`
--

DROP TABLE IF EXISTS `tx_dlf_solrcores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_solrcores` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_solrcores`
--

LOCK TABLES `tx_dlf_solrcores` WRITE;
/*!40000 ALTER TABLE `tx_dlf_solrcores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_solrcores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_structures`
--

DROP TABLE IF EXISTS `tx_dlf_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_structures` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `toplevel` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oai_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_structures`
--

LOCK TABLES `tx_dlf_structures` WRITE;
/*!40000 ALTER TABLE `tx_dlf_structures` DISABLE KEYS */;
INSERT INTO `tx_dlf_structures` VALUES (544,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Zeitung','newspaper','',0,0),(545,87,1628603526,1628603526,1,0,1,634,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Year of Publication','year0','',0,0),(546,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Widmung','dedication','',0,0),(547,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Vorwort','preface','',0,0),(548,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Vorsatz','endsheet','',0,0),(549,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Vorlesung','lecture','',0,0),(550,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Vorgehen','proceeding','',0,0),(551,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Vorderdeckel','cover_front','',0,0),(552,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Vorabdruck','preprint','',0,0),(553,87,1628603526,1628603526,1,0,1,705,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Volume','volume0','',0,0),(554,87,1628603526,1628603526,1,0,1,555,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Verse','verse0','',0,0),(555,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Vers','verse','',0,0),(556,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Urteil','judgement','',0,0),(557,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Urkunde','charter','',0,0),(558,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Unterbestand','subinventory','',0,0),(559,87,1628603526,1628603526,1,0,1,560,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Titlepage','title_page0','',0,0),(560,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Titelseite','title_page','',0,0),(561,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Text','text','',0,0),(562,87,1628603526,1628603526,1,0,1,561,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Text','text0','',0,0),(563,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Tag','day','',0,0),(564,87,1628603526,1628603526,1,0,1,639,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Table of Contents','contents0','',0,0),(565,87,1628603526,1628603526,1,0,1,566,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Table','table0','',0,0),(566,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Tabelle','table','',0,0),(567,87,1628603526,1628603526,1,0,1,558,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Subinventory','subinventory0','',0,0),(568,87,1628603526,1628603526,1,0,1,569,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Study','study0','',0,0),(569,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Studie','study','',0,0),(570,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Stempel','stamp','',0,0),(571,87,1628603526,1628603526,1,0,1,570,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Stamp','stamp0','',0,0),(572,87,1628603526,1628603526,1,0,1,580,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Spine','spine0','',0,0),(573,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Spiegel','paste_down','',0,0),(574,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Siegel','seal','',0,0),(575,87,1628603526,1628603526,1,0,1,724,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Section','section0','',0,0),(576,87,1628603526,1628603526,1,0,1,574,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Seal','seal0','',0,0),(577,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Schnitt','edge','',0,0),(578,87,1628603526,1628603526,1,0,1,579,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Scheme','scheme0','',0,0),(579,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Schema','scheme','',0,0),(580,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Rücken','spine','',0,0),(581,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Rückdeckel','cover_back','',0,0),(582,87,1628603526,1628603526,1,0,1,657,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Research Paper','research_paper0','',0,0),(583,87,1628603526,1628603526,1,0,1,703,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Report','report0','',0,0),(584,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Register','register','',0,0),(585,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Register','index','',0,0),(586,87,1628603526,1628603526,1,0,1,584,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Register','register0','',0,0),(587,87,1628603526,1628603526,1,0,1,702,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Provenance','provenance0','',0,0),(588,87,1628603526,1628603526,1,0,1,550,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Proceeding','proceeding0','',0,0),(589,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Privilegien','privileges','',0,0),(590,87,1628603526,1628603526,1,0,1,589,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Privileges','privileges0','',0,0),(591,87,1628603526,1628603526,1,0,1,672,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Printers Mark','printers_mark0','',0,0),(592,87,1628603526,1628603526,1,0,1,652,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Printed Archives','printed_archives0','',0,0),(593,87,1628603526,1628603526,1,0,1,552,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Preprint','preprint0','',0,0),(594,87,1628603526,1628603526,1,0,1,547,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Preface','preface0','',0,0),(595,87,1628603526,1628603526,1,0,1,598,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Poster','poster0','',0,0),(596,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Plan','plan','',0,0),(597,87,1628603526,1628603526,1,0,1,596,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Plan','plan0','',0,0),(598,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Plakat','poster','',0,0),(599,87,1628603526,1628603526,1,0,1,656,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Photograph','photograph0','',0,0),(600,87,1628603526,1628603526,1,0,1,601,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Periodical','periodical','',0,0),(601,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Periodica','periodical0','',0,0),(602,87,1628603526,1628603526,1,0,1,573,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Paste Down','paste_down0','',0,0),(603,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Papier','paper','',0,0),(604,87,1628603526,1628603526,1,0,1,603,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Paper','paper0','',0,0),(605,87,1628603526,1628603526,1,0,1,695,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Ornament','ornament0','',0,0),(606,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Offizielle Benachrichtigung','official_notification','',0,0),(607,87,1628603526,1628603526,1,0,1,606,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Official Notification','official_notification0','',0,0),(608,87,1628603526,1628603526,1,0,1,717,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Note','note0','',0,0),(609,87,1628603526,1628603526,1,0,1,544,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Newspaper','newspaper0','',0,0),(610,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Musiknotation','musical_notation','',0,0),(611,87,1628603526,1628603526,1,0,1,610,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Musical Notation','musical_notation0','',0,0),(612,87,1628603526,1628603526,1,0,1,617,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Multivolume Work','multivolume_work0','',0,0),(613,87,1628603526,1628603526,1,0,1,616,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Month','month0','',0,0),(614,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Monographie','monograph','',0,0),(615,87,1628603526,1628603526,1,0,1,614,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Monograph','monograph0','',0,0),(616,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Monat','month','',0,0),(617,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Mehrbändiges Werk','multivolume_work','',0,0),(618,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Masterarbeit','master_thesis','',0,0),(619,87,1628603526,1628603526,1,0,1,618,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Master Thesis','master_thesis0','',0,0),(620,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Mappe','folder','',0,0),(621,87,1628603526,1628603526,1,0,1,631,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Map','map0','',0,0),(622,87,1628603526,1628603526,1,0,1,646,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Manuscript','manuscript0','',0,0),(623,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Magisterarbeit','magister_thesis','',0,0),(624,87,1628603526,1628603526,1,0,1,623,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Magister Thesis','magister_thesis0','',0,0),(625,87,1628603526,1628603526,1,0,1,696,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Letter','letter0','',0,0),(626,87,1628603526,1628603526,1,0,1,549,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Lecture','lecture0','',0,0),(627,87,1628603526,1628603526,1,0,1,659,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Leaflet','leaflet0','',0,0),(628,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Kupfertitel','engraved_titlepage','',0,0),(629,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Kopialbuch','cartulary','',0,0),(630,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Kolophon','colophon','',0,0),(631,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Karte','map','',0,0),(632,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Kapitel','chapter','',0,0),(633,87,1628603526,1628603526,1,0,1,556,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Judgement','judgement0','',0,0),(634,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Jahr','year','',0,0),(635,87,1628603526,1628603526,1,0,1,709,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Issue','issue0','',0,0),(636,87,1628603526,1628603526,1,0,1,701,'a:3:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;s:9:\"thumbnail\";N;}',0,NULL,1,'Inventory','inventory','',560,0),(637,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Initialschmuck','initial_decoration','',0,0),(638,87,1628603526,1628603526,1,0,1,637,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Initial Decoration','initial_decoration0','',0,0),(639,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Inhaltsverzeichnis','contents','',0,0),(640,87,1628603526,1628603526,1,0,1,585,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Index','index0','',0,0),(641,87,1628603526,1628603526,1,0,1,642,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Imprint','imprint0','',0,0),(642,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Impressum','imprint','',0,0),(643,87,1628603526,1628603526,1,0,1,700,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Image','image0','',0,0),(644,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Illustration','illustration','',0,0),(645,87,1628603526,1628603526,1,0,1,644,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Illustration','illustration0','',0,0),(646,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Handschrift','manuscript','',0,0),(647,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Habilitationsschrift','habilitation_thesis','',0,0),(648,87,1628603526,1628603526,1,0,1,647,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Habilitation Thesis','habilitation_thesis0','',0,0),(649,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Grundriss','ground_plan','',0,0),(650,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Grundbuch','land_register','',0,0),(651,87,1628603526,1628603526,1,0,1,649,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Ground Plan','ground_plan0','',0,0),(652,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Gedruckte Archive','printed_archives','',0,0),(653,87,1628603526,1628603526,1,0,1,551,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Front Cover','cover_front0','',0,0),(654,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Fragment','fragment','',0,0),(655,87,1628603526,1628603526,1,0,1,654,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Fragment','fragment0','',0,0),(656,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Fotografie','photograph','',0,0),(657,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Forschungsbericht','research_paper','',0,0),(658,87,1628603526,1628603526,1,0,1,620,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Folder','folder0','',0,0),(659,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Flugblatt','leaflet','',0,0),(660,87,1628603526,1628603526,1,0,1,684,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'File','file0','',0,0),(661,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Faszikel','fascicle','',0,0),(662,87,1628603526,1628603526,1,0,1,661,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Fascicle','fascicle0','',0,0),(663,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Exlibris','bookplate','',0,0),(664,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Errata','corrigenda','',0,0),(665,87,1628603526,1628603526,1,0,1,669,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Entry','entry0','',0,0),(666,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Enthaltenes Werk','contained_work','',0,0),(667,87,1628603526,1628603526,1,0,1,628,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Engraved Titlepage','engraved_titlepage0','',0,0),(668,87,1628603526,1628603526,1,0,1,548,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Endsheet','endsheet0','',0,0),(669,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Eintrag','entry','',0,0),(670,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Einband','binding','',0,0),(671,87,1628603526,1628603526,1,0,1,577,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Edge','edge0','',0,0),(672,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Druckermarke','printers_mark','',0,0),(673,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Dossier','dossier','',0,0),(674,87,1628603526,1628603526,1,0,1,673,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Dossier','dossier0','',0,0),(675,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Dokument','document','',0,0),(676,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Doktorarbeit','doctoral_thesis','',0,0),(677,87,1628603526,1628603526,1,0,1,675,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Document','document0','',0,0),(678,87,1628603526,1628603526,1,0,1,676,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Doctoral Thesis','doctoral_thesis0','',0,0),(679,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Diplomarbeit','diploma_thesis','',0,0),(680,87,1628603526,1628603526,1,0,1,679,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Diploma Thesis','diploma_thesis0','',0,0),(681,87,1628603526,1628603526,1,0,1,546,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Dedication','dedication0','',0,0),(682,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Deckel','cover','',0,0),(683,87,1628603526,1628603526,1,0,1,563,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Day','day0','',0,0),(684,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Datei','file','',0,0),(685,87,1628603526,1628603526,1,0,1,682,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Cover','cover0','',0,0),(686,87,1628603526,1628603526,1,0,1,664,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Corrigenda','corrigenda0','',0,0),(687,87,1628603526,1628603526,1,0,1,666,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Contained Work','contained_work0','',0,0),(688,87,1628603526,1628603526,1,0,1,630,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Colophon','colophon0','',0,0),(689,87,1628603526,1628603526,1,0,1,698,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Collation','collation0','',0,0),(690,87,1628603526,1628603526,1,0,1,557,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Charter','charter0','',0,0),(691,87,1628603526,1628603526,1,0,1,632,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Chapter','chapter0','',0,0),(692,87,1628603526,1628603526,1,0,1,629,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Cartulary','cartulary0','',0,0),(693,87,1628603526,1628603526,1,0,1,694,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Bundle','bundle0','',0,0),(694,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Bündel','bundle','',0,0),(695,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Buchschmuck','ornament','',0,0),(696,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Brief','letter','',0,0),(697,87,1628603526,1628603526,1,0,1,663,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Bookplate','bookplate0','',0,0),(698,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Bogensignatur','collation','',0,0),(699,87,1628603526,1628603526,1,0,1,670,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Binding','binding0','',0,0),(700,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Bild','image','',0,0),(701,87,1628603526,1628603526,1,0,0,0,'a:1:{s:9:\"thumbnail\";N;}',0,NULL,1,'Bestand','inventory0','',560,0),(702,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Besitznachweis','provenance','',0,0),(703,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Bericht','report','',0,0),(704,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Beilage','additional','',0,0),(705,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Band','volume','',0,0),(706,87,1628603526,1628603526,1,0,1,581,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Back Cover','cover_back0','',0,0),(707,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Bachelorarbeit','bachelor_thesis','',0,0),(708,87,1628603526,1628603526,1,0,1,707,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Bachelor Thesis','bachelor_thesis0','',0,0),(709,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Ausgabe','issue','',0,0),(710,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Atlas','atlas','',0,0),(711,87,1628603526,1628603526,1,0,1,710,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Atlas','atlas0','',0,0),(712,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Artikel','article','',0,0),(713,87,1628603526,1628603526,1,0,1,712,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Article','article0','',0,0),(714,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Anrede','address','',0,0),(715,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Annotation','annotation','',0,0),(716,87,1628603526,1628603526,1,0,1,715,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Annotation','annotation0','',0,0),(717,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Anmerkung','note','',0,0),(718,87,1628603526,1628603526,1,0,0,0,'a:5:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Album','album','',0,0),(719,87,1628603526,1628603526,1,0,1,718,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Album','album0','',0,0),(720,87,1628603526,1628603526,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Akt','act','',0,0),(721,87,1628603526,1628603526,1,0,1,714,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Address','address0','',0,0),(722,87,1628603526,1628603526,1,0,1,704,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,0,'Additional','additional0','',0,0),(723,87,1628603526,1628603526,1,0,1,720,'a:2:{s:16:\"sys_language_uid\";N;s:11:\"l18n_parent\";N;}',0,NULL,1,'Act','act0','',0,0),(724,87,1628603526,1628603526,1,0,0,0,'a:7:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,0,'Abschnitt','section','',0,0);
/*!40000 ALTER TABLE `tx_dlf_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_tokens`
--

DROP TABLE IF EXISTS `tx_dlf_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_tokens` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0 COMMENT 'Timestamp of the token used to determine if it has expired.',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `options` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ident` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `token` (`token`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_tokens`
--

LOCK TABLES `tx_dlf_tokens` WRITE;
/*!40000 ALTER TABLE `tx_dlf_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_link`
--

DROP TABLE IF EXISTS `tx_news_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_source` int(11) NOT NULL DEFAULT 0,
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_source` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `teaser` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` bigint(20) NOT NULL DEFAULT 0,
  `archive` bigint(20) NOT NULL DEFAULT 0,
  `author` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_email` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  `related` int(11) NOT NULL DEFAULT 0,
  `related_from` int(11) NOT NULL DEFAULT 0,
  `related_files` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `fal_related_files` int(10) unsigned DEFAULT 0,
  `related_links` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` int(11) NOT NULL DEFAULT 0,
  `media` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fal_media` int(10) unsigned DEFAULT 0,
  `internalurl` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `externalurl` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `istopnews` int(11) NOT NULL DEFAULT 0,
  `content_elements` int(11) NOT NULL DEFAULT 0,
  `path_segment` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sitemap_changefreq` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `import_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `sys_language_uid_l10n_parent` (`sys_language_uid`,`l10n_parent`),
  KEY `path_segment` (`path_segment`(185),`uid`),
  KEY `import` (`import_id`,`import_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news` VALUES (18,86,1628603526,1628603526,1,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:1:{s:4:\"tags\";N;}',0,0,0,0,0,'','',NULL,0,'Anzeige des Erscheinungsjahr wieder aktiviert','','<p>Durch ein Nutzer-Hinweis haben wir festgestellt, dass das Erscheinungsjahr in der Metadaten nicht ausgegeben wird. Offenbar besteht der Fehler schon längere Zeit.</p>\r\n<p>Wir haben das Erscheinungsjahr wieder aktiviert und den Fehler auf GitHub in der Initial-Konfiguration behoben.&nbsp;</p>\r\n\r\n',1615589400,0,'','',1,0,0,NULL,0,NULL,'0','','',1,NULL,0,NULL,NULL,0,0,'metadaten-anzeige-des-erscheinungsjahr-wieder-aktiviert','','',0.5,'',''),(19,86,1628603526,1628603526,1,0,0,0,'',0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,'','',NULL,0,'Caching der Viewer-Seite geändert','','<p>Wir haben die Cache-Lifetime der Viewer-Seite geändert. Ziel ist es, die kurzzeitigen Aussetzer der Seite bei hoher Last zu reduzieren.</p>\r\n<p>Seit der Änderung beobachten wir keine Aussetzer mehr.</p>',1621083720,0,'','',1,0,0,NULL,0,NULL,'0','','',0,NULL,0,NULL,NULL,0,0,'caching-der-viewer-seite-geaendert','','',0.5,'',''),(20,86,1628603526,1628603526,1,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:1:{s:8:\"bodytext\";N;}',0,0,0,0,0,'','',NULL,0,'Update DFG-Viewer Version 5.2.0','','<p>Die DFG-Viewer Extension wurde auf <strong>Version 5.2.0</strong> aktualisiert.</p>\r\n<p>Es gibt nur kleine Änderungen in der Version 5.2.0, die hauptsächlich der Pflege der Software dienen:</p>\r\n<ul> 	<li>Update auf Kitodo.Presentation 3.2.0</li> 	<li>Anzeige der Aggregator- und Sponsor-Logos wenn diese angegeben sind</li> 	<li>Aktualisierung der Dokumentation für das Selbst-Hosting des DFG-Viewers</li> </ul>\r\n<p>Eine ausführlichere Änderungsliste&nbsp;finden Sie auf <a class=\"link-external-blank\" href=\"https://github.com/slub/dfg-viewer/releases/tag/v5.2.0\" target=\"_blank\">GitHub unter&nbsp;unter Release 5.2.0</a>.</p>\r\n<h3>Links</h3>\r\n<ul> 	<li>DFG-Viewer auf GitHub:&nbsp;<a class=\"link-external-blank\" href=\"https://github.com/slub/dfg-viewer\" target=\"_blank\">https://github.com/slub/dfg-viewer</a></li> 	<li>DFG-Viewer Extension im TYPO3 Extension Repository:&nbsp;<a class=\"link-external-blank\" href=\"https://extensions.typo3.org/extension/dfgviewer\" target=\"_blank\">https://extensions.typo3.org/extension/dfgviewer</a></li> 	<li>Extension-Dokumentation:&nbsp;<a class=\"link-external-blank\" href=\"https://docs.typo3.org/p/slub/dfgviewer/master/en-us/\" target=\"_blank\">https://docs.typo3.org/p/slub/dfgviewer/master/en-us/</a></li> </ul>',1621370362,0,'','',1,0,0,NULL,0,NULL,'0','','',0,NULL,0,NULL,NULL,0,0,'update-dfg-viewer-version-520','','',0.5,'',''),(21,86,1628603526,1628603526,1,0,0,0,'',0,0,0,0,0,0,0,0,0,'a:1:{s:8:\"bodytext\";N;}',0,0,0,0,0,'','',NULL,0,'Fehler nach Update behoben: Speichern der Zoom Stufe','','<p>Nach dem Update des DFG-Viewers am 19.05.2021 ist ein Fehler von mehreren Nutzern gemeldet worden. Die gewählte Zoom-Stufe wurde beim Blättern nicht erhalten. Bei jeder Seite musste erneut in das Bild gezoomt werden.</p>\r\n<p>Hintergrund war, dass das Speichern der Zoomstufe im Cookie des Besuchers nicht erfolgt ist. Die Ursache dafür wiederum war ein Fehler im JavaScript-Code von Kitodo.Presentation, der auch nur bei Dokumenten ohne Volltexte auftrat.</p>\r\n<p>Der Fehler wurde in Kitodo.Presentation behoben und damit tritt der Fehler auch im DFG-Viewer nicht mehr auf.</p>\r\n<h3>Links</h3>\r\n<ul> 	<li><a href=\"https://github.com/slub/dfg-viewer/issues/187\">https://github.com/slub/dfg-viewer/issues/187</a></li> 	<li><a href=\"https://github.com/kitodo/kitodo-presentation/issues/618\">https://github.com/kitodo/kitodo-presentation/issues/618</a></li> 	<li>&nbsp;</li> </ul>',1621504430,0,'','',1,0,0,NULL,0,NULL,'0','','',0,NULL,0,NULL,NULL,0,0,'fehler-nach-update-behoben-speichern-der-zoom-stufe','','',0.5,'',''),(22,86,1628603526,1628603526,1,0,0,0,'',0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,'','',NULL,0,'Update TYPO3 9.5.28 (Security Patch)','','<p>Das Security Release 9.5.28 wurde ausgerollt. Das sollte keine Auswirkung auf den Betrieb des DFG-Viewers haben.</p>\r\n<p>Details dazu in der Ankündigung von TYPO3: https://typo3.org/article/typo3-1131-10418-9528-8741-7652-security-releases-published</p>',1627297525,0,'','',1,0,0,NULL,0,NULL,'0','','',0,NULL,0,NULL,NULL,0,0,'update-typo3-9528-security-patch','','',0.5,'','');
/*!40000 ALTER TABLE `tx_news_domain_model_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_related_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_related_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_related_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_news_tag_mm` VALUES (1,1,1),(8,2,1),(13,3,1),(18,4,1);
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_ttcontent_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_ttcontent_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_news_ttcontent_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_ttcontent_mm`
--

LOCK TABLES `tx_news_domain_model_news_ttcontent_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_ttcontent_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_news_domain_model_tag` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_source` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seo_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
INSERT INTO `tx_news_domain_model_tag` VALUES (4,86,1628603526,1628603526,1,0,0,0,0,'',0,'',NULL,0,0,0,0,0,'',0,0,0,0,0,'Metadaten','metadaten','','','','');
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastexecution_context` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
INSERT INTO `tx_scheduler_task` VALUES (1,1645107720,0,0,'',1645111305,1645107723,'','BE','O:35:\"TYPO3\\CMS\\Recycler\\Task\\CleanerTask\":11:{s:9:\"\0*\0period\";i:-1;s:12:\"\0*\0tcaTables\";a:33:{i:0;s:16:\"tx_dlf_actionlog\";i:1;s:14:\"backend_layout\";i:2;s:8:\"be_users\";i:3;s:9:\"be_groups\";i:4;s:13:\"tx_dlf_basket\";i:5;s:12:\"sys_category\";i:6;s:18:\"tx_dlf_collections\";i:7;s:14:\"tx_dlf_formats\";i:8;s:16:\"tx_dlf_documents\";i:9;s:11:\"tx_dlf_mail\";i:10;s:18:\"sys_file_reference\";i:11;s:16:\"sys_file_storage\";i:12;s:19:\"sys_file_collection\";i:13;s:14:\"sys_filemounts\";i:14;s:8:\"sys_note\";i:15;s:16:\"tx_dlf_libraries\";i:16;s:21:\"tx_dlf_metadataformat\";i:17;s:15:\"tx_dlf_metadata\";i:18;s:25:\"tx_news_domain_model_link\";i:19;s:24:\"tx_news_domain_model_tag\";i:20;s:25:\"tx_news_domain_model_news\";i:21;s:10:\"tt_content\";i:22;s:5:\"pages\";i:23;s:14:\"tx_dlf_printer\";i:24;s:14:\"sys_collection\";i:25;s:12:\"sys_redirect\";i:26;s:23:\"tx_scheduler_task_group\";i:27;s:16:\"tx_dlf_solrcores\";i:28;s:17:\"tx_dlf_structures\";i:29;s:8:\"sys_news\";i:30;s:12:\"sys_template\";i:31;s:8:\"fe_users\";i:32;s:9:\"fe_groups\";}s:12:\"\0*\0scheduler\";N;s:10:\"\0*\0taskUid\";i:1;s:11:\"\0*\0disabled\";b:0;s:19:\"\0*\0runOnNextCronJob\";b:0;s:12:\"\0*\0execution\";O:29:\"TYPO3\\CMS\\Scheduler\\Execution\":6:{s:8:\"\0*\0start\";i:1645107705;s:6:\"\0*\0end\";s:0:\"\";s:11:\"\0*\0interval\";i:3600;s:11:\"\0*\0multiple\";s:1:\"0\";s:10:\"\0*\0cronCmd\";s:0:\"\";s:23:\"\0*\0isNewSingleExecution\";b:0;}s:16:\"\0*\0executionTime\";i:1645111305;s:14:\"\0*\0description\";s:0:\"\";s:12:\"\0*\0taskGroup\";i:0;s:9:\"\0*\0logger\";N;}','',0);
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
