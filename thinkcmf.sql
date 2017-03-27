-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: thinkcmf
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cmf_ad`
--

DROP TABLE IF EXISTS `cmf_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_ad`
--

LOCK TABLES `cmf_ad` WRITE;
/*!40000 ALTER TABLE `cmf_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_asset`
--

DROP TABLE IF EXISTS `cmf_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_asset`
--

LOCK TABLES `cmf_asset` WRITE;
/*!40000 ALTER TABLE `cmf_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_auth_access`
--

DROP TABLE IF EXISTS `cmf_auth_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_auth_access`
--

LOCK TABLES `cmf_auth_access` WRITE;
/*!40000 ALTER TABLE `cmf_auth_access` DISABLE KEYS */;
INSERT INTO `cmf_auth_access` VALUES (2,'admin/content/default','admin_url'),(2,'api/guestbookadmin/index','admin_url'),(2,'api/guestbookadmin/delete','admin_url'),(2,'comment/commentadmin/index','admin_url'),(2,'comment/commentadmin/delete','admin_url'),(2,'comment/commentadmin/check','admin_url'),(2,'portal/adminpost/index','admin_url'),(2,'portal/adminpost/listorders','admin_url'),(2,'portal/adminpost/top','admin_url'),(2,'portal/adminpost/recommend','admin_url'),(2,'portal/adminpost/move','admin_url'),(2,'portal/adminpost/check','admin_url'),(2,'portal/adminpost/delete','admin_url'),(2,'portal/adminpost/edit','admin_url'),(2,'portal/adminpost/edit_post','admin_url'),(2,'portal/adminpost/add','admin_url'),(2,'portal/adminpost/add_post','admin_url'),(2,'portal/adminpost/copy','admin_url'),(2,'portal/adminterm/index','admin_url'),(2,'portal/adminterm/listorders','admin_url'),(2,'portal/adminterm/delete','admin_url'),(2,'portal/adminterm/edit','admin_url'),(2,'portal/adminterm/edit_post','admin_url'),(2,'portal/adminterm/add','admin_url'),(2,'portal/adminterm/add_post','admin_url'),(2,'portal/adminpage/index','admin_url'),(2,'portal/adminpage/listorders','admin_url'),(2,'portal/adminpage/delete','admin_url'),(2,'portal/adminpage/edit','admin_url'),(2,'portal/adminpage/edit_post','admin_url'),(2,'portal/adminpage/add','admin_url'),(2,'portal/adminpage/add_post','admin_url'),(2,'admin/recycle/default','admin_url'),(2,'portal/adminpost/recyclebin','admin_url'),(2,'portal/adminpost/restore','admin_url'),(2,'portal/adminpost/clean','admin_url'),(2,'portal/adminpage/recyclebin','admin_url'),(2,'portal/adminpage/clean','admin_url'),(2,'portal/adminpage/restore','admin_url'),(2,'admin/menu/default','admin_url'),(2,'admin/navcat/default1','admin_url'),(2,'admin/nav/index','admin_url'),(2,'admin/nav/listorders','admin_url'),(2,'admin/nav/delete','admin_url'),(2,'admin/nav/edit','admin_url'),(2,'admin/nav/edit_post','admin_url'),(2,'admin/nav/add','admin_url'),(2,'admin/nav/add_post','admin_url'),(2,'admin/navcat/index','admin_url'),(2,'admin/navcat/delete','admin_url'),(2,'admin/navcat/edit','admin_url'),(2,'admin/navcat/edit_post','admin_url'),(2,'admin/navcat/add','admin_url'),(2,'admin/navcat/add_post','admin_url'),(2,'admin/menu/index','admin_url'),(2,'admin/menu/add','admin_url'),(2,'admin/menu/add_post','admin_url'),(2,'admin/menu/listorders','admin_url'),(2,'admin/menu/export_menu','admin_url'),(2,'admin/menu/edit','admin_url'),(2,'admin/menu/edit_post','admin_url'),(2,'admin/menu/delete','admin_url'),(2,'admin/menu/lists','admin_url'),(2,'admin/menu/backup_menu','admin_url'),(2,'admin/menu/export_menu_lang','admin_url'),(2,'admin/menu/restore_menu','admin_url'),(2,'admin/menu/getactions','admin_url'),(3,'admin/content/default','admin_url'),(3,'portal/adminpost/index','admin_url'),(3,'portal/adminpost/add','admin_url'),(3,'portal/adminpost/add_post','admin_url');
/*!40000 ALTER TABLE `cmf_auth_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_auth_rule`
--

DROP TABLE IF EXISTS `cmf_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COMMENT='权限规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_auth_rule`
--

LOCK TABLES `cmf_auth_rule` WRITE;
/*!40000 ALTER TABLE `cmf_auth_rule` DISABLE KEYS */;
INSERT INTO `cmf_auth_rule` VALUES (1,'Admin','admin_url','admin/content/default',NULL,'内容管理',1,''),(2,'Api','admin_url','api/guestbookadmin/index',NULL,'所有留言',1,''),(3,'Api','admin_url','api/guestbookadmin/delete',NULL,'删除网站留言',1,''),(4,'Comment','admin_url','comment/commentadmin/index',NULL,'评论管理',1,''),(5,'Comment','admin_url','comment/commentadmin/delete',NULL,'删除评论',1,''),(6,'Comment','admin_url','comment/commentadmin/check',NULL,'评论审核',1,''),(7,'Portal','admin_url','portal/adminpost/index',NULL,'文章管理',1,''),(8,'Portal','admin_url','portal/adminpost/listorders',NULL,'文章排序',1,''),(9,'Portal','admin_url','portal/adminpost/top',NULL,'文章置顶',1,''),(10,'Portal','admin_url','portal/adminpost/recommend',NULL,'文章推荐',1,''),(11,'Portal','admin_url','portal/adminpost/move',NULL,'批量移动',1,''),(12,'Portal','admin_url','portal/adminpost/check',NULL,'文章审核',1,''),(13,'Portal','admin_url','portal/adminpost/delete',NULL,'删除文章',1,''),(14,'Portal','admin_url','portal/adminpost/edit',NULL,'编辑文章',1,''),(15,'Portal','admin_url','portal/adminpost/edit_post',NULL,'提交编辑',1,''),(16,'Portal','admin_url','portal/adminpost/add',NULL,'添加文章',1,''),(17,'Portal','admin_url','portal/adminpost/add_post',NULL,'提交添加',1,''),(18,'Portal','admin_url','portal/adminterm/index',NULL,'分类管理',1,''),(19,'Portal','admin_url','portal/adminterm/listorders',NULL,'文章分类排序',1,''),(20,'Portal','admin_url','portal/adminterm/delete',NULL,'删除分类',1,''),(21,'Portal','admin_url','portal/adminterm/edit',NULL,'编辑分类',1,''),(22,'Portal','admin_url','portal/adminterm/edit_post',NULL,'提交编辑',1,''),(23,'Portal','admin_url','portal/adminterm/add',NULL,'添加分类',1,''),(24,'Portal','admin_url','portal/adminterm/add_post',NULL,'提交添加',1,''),(25,'Portal','admin_url','portal/adminpage/index',NULL,'页面管理',1,''),(26,'Portal','admin_url','portal/adminpage/listorders',NULL,'页面排序',1,''),(27,'Portal','admin_url','portal/adminpage/delete',NULL,'删除页面',1,''),(28,'Portal','admin_url','portal/adminpage/edit',NULL,'编辑页面',1,''),(29,'Portal','admin_url','portal/adminpage/edit_post',NULL,'提交编辑',1,''),(30,'Portal','admin_url','portal/adminpage/add',NULL,'添加页面',1,''),(31,'Portal','admin_url','portal/adminpage/add_post',NULL,'提交添加',1,''),(32,'Admin','admin_url','admin/recycle/default',NULL,'回收站',1,''),(33,'Portal','admin_url','portal/adminpost/recyclebin',NULL,'文章回收',1,''),(34,'Portal','admin_url','portal/adminpost/restore',NULL,'文章还原',1,''),(35,'Portal','admin_url','portal/adminpost/clean',NULL,'彻底删除',1,''),(36,'Portal','admin_url','portal/adminpage/recyclebin',NULL,'页面回收',1,''),(37,'Portal','admin_url','portal/adminpage/clean',NULL,'彻底删除',1,''),(38,'Portal','admin_url','portal/adminpage/restore',NULL,'页面还原',1,''),(39,'Admin','admin_url','admin/extension/default',NULL,'扩展工具',1,''),(40,'Admin','admin_url','admin/backup/default',NULL,'备份管理',1,''),(41,'Admin','admin_url','admin/backup/restore',NULL,'数据还原',1,''),(42,'Admin','admin_url','admin/backup/index',NULL,'数据备份',1,''),(43,'Admin','admin_url','admin/backup/index_post',NULL,'提交数据备份',1,''),(44,'Admin','admin_url','admin/backup/download',NULL,'下载备份',1,''),(45,'Admin','admin_url','admin/backup/del_backup',NULL,'删除备份',1,''),(46,'Admin','admin_url','admin/backup/import',NULL,'数据备份导入',1,''),(47,'Admin','admin_url','admin/plugin/index',NULL,'插件管理',1,''),(48,'Admin','admin_url','admin/plugin/toggle',NULL,'插件启用切换',1,''),(49,'Admin','admin_url','admin/plugin/setting',NULL,'插件设置',1,''),(50,'Admin','admin_url','admin/plugin/setting_post',NULL,'插件设置提交',1,''),(51,'Admin','admin_url','admin/plugin/install',NULL,'插件安装',1,''),(52,'Admin','admin_url','admin/plugin/uninstall',NULL,'插件卸载',1,''),(53,'Admin','admin_url','admin/slide/default',NULL,'幻灯片',1,''),(54,'Admin','admin_url','admin/slide/index',NULL,'幻灯片管理',1,''),(55,'Admin','admin_url','admin/slide/listorders',NULL,'幻灯片排序',1,''),(56,'Admin','admin_url','admin/slide/toggle',NULL,'幻灯片显示切换',1,''),(57,'Admin','admin_url','admin/slide/delete',NULL,'删除幻灯片',1,''),(58,'Admin','admin_url','admin/slide/edit',NULL,'编辑幻灯片',1,''),(59,'Admin','admin_url','admin/slide/edit_post',NULL,'提交编辑',1,''),(60,'Admin','admin_url','admin/slide/add',NULL,'添加幻灯片',1,''),(61,'Admin','admin_url','admin/slide/add_post',NULL,'提交添加',1,''),(62,'Admin','admin_url','admin/slidecat/index',NULL,'幻灯片分类',1,''),(63,'Admin','admin_url','admin/slidecat/delete',NULL,'删除分类',1,''),(64,'Admin','admin_url','admin/slidecat/edit',NULL,'编辑分类',1,''),(65,'Admin','admin_url','admin/slidecat/edit_post',NULL,'提交编辑',1,''),(66,'Admin','admin_url','admin/slidecat/add',NULL,'添加分类',1,''),(67,'Admin','admin_url','admin/slidecat/add_post',NULL,'提交添加',1,''),(68,'Admin','admin_url','admin/ad/index',NULL,'网站广告',1,''),(69,'Admin','admin_url','admin/ad/toggle',NULL,'广告显示切换',1,''),(70,'Admin','admin_url','admin/ad/delete',NULL,'删除广告',1,''),(71,'Admin','admin_url','admin/ad/edit',NULL,'编辑广告',1,''),(72,'Admin','admin_url','admin/ad/edit_post',NULL,'提交编辑',1,''),(73,'Admin','admin_url','admin/ad/add',NULL,'添加广告',1,''),(74,'Admin','admin_url','admin/ad/add_post',NULL,'提交添加',1,''),(75,'Admin','admin_url','admin/link/index',NULL,'友情链接',1,''),(76,'Admin','admin_url','admin/link/listorders',NULL,'友情链接排序',1,''),(77,'Admin','admin_url','admin/link/toggle',NULL,'友链显示切换',1,''),(78,'Admin','admin_url','admin/link/delete',NULL,'删除友情链接',1,''),(79,'Admin','admin_url','admin/link/edit',NULL,'编辑友情链接',1,''),(80,'Admin','admin_url','admin/link/edit_post',NULL,'提交编辑',1,''),(81,'Admin','admin_url','admin/link/add',NULL,'添加友情链接',1,''),(82,'Admin','admin_url','admin/link/add_post',NULL,'提交添加',1,''),(83,'Api','admin_url','api/oauthadmin/setting',NULL,'第三方登陆',1,''),(84,'Api','admin_url','api/oauthadmin/setting_post',NULL,'提交设置',1,''),(85,'Admin','admin_url','admin/menu/default',NULL,'菜单管理',1,''),(86,'Admin','admin_url','admin/navcat/default1',NULL,'前台菜单',1,''),(87,'Admin','admin_url','admin/nav/index',NULL,'菜单管理',1,''),(88,'Admin','admin_url','admin/nav/listorders',NULL,'前台导航排序',1,''),(89,'Admin','admin_url','admin/nav/delete',NULL,'删除菜单',1,''),(90,'Admin','admin_url','admin/nav/edit',NULL,'编辑菜单',1,''),(91,'Admin','admin_url','admin/nav/edit_post',NULL,'提交编辑',1,''),(92,'Admin','admin_url','admin/nav/add',NULL,'添加菜单',1,''),(93,'Admin','admin_url','admin/nav/add_post',NULL,'提交添加',1,''),(94,'Admin','admin_url','admin/navcat/index',NULL,'菜单分类',1,''),(95,'Admin','admin_url','admin/navcat/delete',NULL,'删除分类',1,''),(96,'Admin','admin_url','admin/navcat/edit',NULL,'编辑分类',1,''),(97,'Admin','admin_url','admin/navcat/edit_post',NULL,'提交编辑',1,''),(98,'Admin','admin_url','admin/navcat/add',NULL,'添加分类',1,''),(99,'Admin','admin_url','admin/navcat/add_post',NULL,'提交添加',1,''),(100,'Admin','admin_url','admin/menu/index',NULL,'后台菜单',1,''),(101,'Admin','admin_url','admin/menu/add',NULL,'添加菜单',1,''),(102,'Admin','admin_url','admin/menu/add_post',NULL,'提交添加',1,''),(103,'Admin','admin_url','admin/menu/listorders',NULL,'后台菜单排序',1,''),(104,'Admin','admin_url','admin/menu/export_menu',NULL,'菜单备份',1,''),(105,'Admin','admin_url','admin/menu/edit',NULL,'编辑菜单',1,''),(106,'Admin','admin_url','admin/menu/edit_post',NULL,'提交编辑',1,''),(107,'Admin','admin_url','admin/menu/delete',NULL,'删除菜单',1,''),(108,'Admin','admin_url','admin/menu/lists',NULL,'所有菜单',1,''),(109,'Admin','admin_url','admin/setting/default',NULL,'设置',1,''),(110,'Admin','admin_url','admin/setting/userdefault',NULL,'个人信息',1,''),(111,'Admin','admin_url','admin/user/userinfo',NULL,'修改信息',1,''),(112,'Admin','admin_url','admin/user/userinfo_post',NULL,'修改信息提交',1,''),(113,'Admin','admin_url','admin/setting/password',NULL,'修改密码',1,''),(114,'Admin','admin_url','admin/setting/password_post',NULL,'提交修改',1,''),(115,'Admin','admin_url','admin/setting/site',NULL,'网站信息',1,''),(116,'Admin','admin_url','admin/setting/site_post',NULL,'提交修改',1,''),(117,'Admin','admin_url','admin/route/index',NULL,'路由列表',1,''),(118,'Admin','admin_url','admin/route/add',NULL,'路由添加',1,''),(119,'Admin','admin_url','admin/route/add_post',NULL,'路由添加提交',1,''),(120,'Admin','admin_url','admin/route/edit',NULL,'路由编辑',1,''),(121,'Admin','admin_url','admin/route/edit_post',NULL,'路由编辑提交',1,''),(122,'Admin','admin_url','admin/route/delete',NULL,'路由删除',1,''),(123,'Admin','admin_url','admin/route/ban',NULL,'路由禁止',1,''),(124,'Admin','admin_url','admin/route/open',NULL,'路由启用',1,''),(125,'Admin','admin_url','admin/route/listorders',NULL,'路由排序',1,''),(126,'Admin','admin_url','admin/mailer/default',NULL,'邮箱配置',1,''),(127,'Admin','admin_url','admin/mailer/index',NULL,'SMTP配置',1,''),(128,'Admin','admin_url','admin/mailer/index_post',NULL,'提交配置',1,''),(129,'Admin','admin_url','admin/mailer/active',NULL,'注册邮件模板',1,''),(130,'Admin','admin_url','admin/mailer/active_post',NULL,'提交模板',1,''),(131,'Admin','admin_url','admin/setting/clearcache',NULL,'清除缓存',1,''),(132,'User','admin_url','user/indexadmin/default',NULL,'用户管理',1,''),(133,'User','admin_url','user/indexadmin/default1',NULL,'用户组',1,''),(134,'User','admin_url','user/indexadmin/index',NULL,'本站用户',1,''),(135,'User','admin_url','user/indexadmin/ban',NULL,'拉黑会员',1,''),(136,'User','admin_url','user/indexadmin/cancelban',NULL,'启用会员',1,''),(137,'User','admin_url','user/oauthadmin/index',NULL,'第三方用户',1,''),(138,'User','admin_url','user/oauthadmin/delete',NULL,'第三方用户解绑',1,''),(139,'User','admin_url','user/indexadmin/default3',NULL,'管理组',1,''),(140,'Admin','admin_url','admin/rbac/index',NULL,'角色管理',1,''),(141,'Admin','admin_url','admin/rbac/member',NULL,'成员管理',1,''),(142,'Admin','admin_url','admin/rbac/authorize',NULL,'权限设置',1,''),(143,'Admin','admin_url','admin/rbac/authorize_post',NULL,'提交设置',1,''),(144,'Admin','admin_url','admin/rbac/roleedit',NULL,'编辑角色',1,''),(145,'Admin','admin_url','admin/rbac/roleedit_post',NULL,'提交编辑',1,''),(146,'Admin','admin_url','admin/rbac/roledelete',NULL,'删除角色',1,''),(147,'Admin','admin_url','admin/rbac/roleadd',NULL,'添加角色',1,''),(148,'Admin','admin_url','admin/rbac/roleadd_post',NULL,'提交添加',1,''),(149,'Admin','admin_url','admin/user/index',NULL,'管理员',1,''),(150,'Admin','admin_url','admin/user/delete',NULL,'删除管理员',1,''),(151,'Admin','admin_url','admin/user/edit',NULL,'管理员编辑',1,''),(152,'Admin','admin_url','admin/user/edit_post',NULL,'编辑提交',1,''),(153,'Admin','admin_url','admin/user/add',NULL,'管理员添加',1,''),(154,'Admin','admin_url','admin/user/add_post',NULL,'添加提交',1,''),(155,'Admin','admin_url','admin/plugin/update',NULL,'插件更新',1,''),(156,'Admin','admin_url','admin/storage/index',NULL,'文件存储',1,''),(157,'Admin','admin_url','admin/storage/setting_post',NULL,'文件存储设置提交',1,''),(158,'Admin','admin_url','admin/slide/ban',NULL,'禁用幻灯片',1,''),(159,'Admin','admin_url','admin/slide/cancelban',NULL,'启用幻灯片',1,''),(160,'Admin','admin_url','admin/user/ban',NULL,'禁用管理员',1,''),(161,'Admin','admin_url','admin/user/cancelban',NULL,'启用管理员',1,''),(162,'Demo','admin_url','demo/adminindex/index',NULL,'',1,''),(163,'Demo','admin_url','demo/adminindex/last',NULL,'',1,''),(166,'Admin','admin_url','admin/mailer/test',NULL,'测试邮件',1,''),(167,'Admin','admin_url','admin/setting/upload',NULL,'上传设置',1,''),(168,'Admin','admin_url','admin/setting/upload_post',NULL,'上传设置提交',1,''),(169,'Portal','admin_url','portal/adminpost/copy',NULL,'文章批量复制',1,''),(170,'Admin','admin_url','admin/menu/backup_menu',NULL,'备份菜单',1,''),(171,'Admin','admin_url','admin/menu/export_menu_lang',NULL,'导出后台菜单多语言包',1,''),(172,'Admin','admin_url','admin/menu/restore_menu',NULL,'还原菜单',1,''),(173,'Admin','admin_url','admin/menu/getactions',NULL,'导入新菜单',1,'');
/*!40000 ALTER TABLE `cmf_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_comments`
--

DROP TABLE IF EXISTS `cmf_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_comments`
--

LOCK TABLES `cmf_comments` WRITE;
/*!40000 ALTER TABLE `cmf_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_common_action_log`
--

DROP TABLE IF EXISTS `cmf_common_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_common_action_log`
--

LOCK TABLES `cmf_common_action_log` WRITE;
/*!40000 ALTER TABLE `cmf_common_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_common_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_guestbook`
--

DROP TABLE IF EXISTS `cmf_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL COMMENT '留言者姓名',
  `email` varchar(100) NOT NULL COMMENT '留言者邮箱',
  `title` varchar(255) DEFAULT NULL COMMENT '留言标题',
  `msg` text NOT NULL COMMENT '留言内容',
  `createtime` datetime NOT NULL COMMENT '留言时间',
  `status` smallint(2) NOT NULL DEFAULT '1' COMMENT '留言状态，1：正常，0：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_guestbook`
--

LOCK TABLES `cmf_guestbook` WRITE;
/*!40000 ALTER TABLE `cmf_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_links`
--

DROP TABLE IF EXISTS `cmf_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_links`
--

LOCK TABLES `cmf_links` WRITE;
/*!40000 ALTER TABLE `cmf_links` DISABLE KEYS */;
INSERT INTO `cmf_links` VALUES (1,'http://www.thinkcmf.com','ThinkCMF','','_blank','',1,0,'',0);
/*!40000 ALTER TABLE `cmf_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_menu`
--

DROP TABLE IF EXISTS `cmf_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` varchar(30) NOT NULL DEFAULT '' COMMENT '应用名称app',
  `model` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `data` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_menu`
--

LOCK TABLES `cmf_menu` WRITE;
/*!40000 ALTER TABLE `cmf_menu` DISABLE KEYS */;
INSERT INTO `cmf_menu` VALUES (1,0,'Admin','Content','default','',0,1,'内容管理','th','',30),(2,1,'Api','Guestbookadmin','index','',1,1,'所有留言','','',0),(3,2,'Api','Guestbookadmin','delete','',1,0,'删除网站留言','','',0),(4,1,'Comment','Commentadmin','index','',1,1,'评论管理','','',0),(5,4,'Comment','Commentadmin','delete','',1,0,'删除评论','','',0),(6,4,'Comment','Commentadmin','check','',1,0,'评论审核','','',0),(7,1,'Portal','AdminPost','index','',1,1,'文章管理','','',1),(8,7,'Portal','AdminPost','listorders','',1,0,'文章排序','','',0),(9,7,'Portal','AdminPost','top','',1,0,'文章置顶','','',0),(10,7,'Portal','AdminPost','recommend','',1,0,'文章推荐','','',0),(11,7,'Portal','AdminPost','move','',1,0,'批量移动','','',1000),(12,7,'Portal','AdminPost','check','',1,0,'文章审核','','',1000),(13,7,'Portal','AdminPost','delete','',1,0,'删除文章','','',1000),(14,7,'Portal','AdminPost','edit','',1,0,'编辑文章','','',1000),(15,14,'Portal','AdminPost','edit_post','',1,0,'提交编辑','','',0),(16,7,'Portal','AdminPost','add','',1,0,'添加文章','','',1000),(17,16,'Portal','AdminPost','add_post','',1,0,'提交添加','','',0),(18,1,'Portal','AdminTerm','index','',0,1,'分类管理','','',2),(19,18,'Portal','AdminTerm','listorders','',1,0,'文章分类排序','','',0),(20,18,'Portal','AdminTerm','delete','',1,0,'删除分类','','',1000),(21,18,'Portal','AdminTerm','edit','',1,0,'编辑分类','','',1000),(22,21,'Portal','AdminTerm','edit_post','',1,0,'提交编辑','','',0),(23,18,'Portal','AdminTerm','add','',1,0,'添加分类','','',1000),(24,23,'Portal','AdminTerm','add_post','',1,0,'提交添加','','',0),(25,1,'Portal','AdminPage','index','',1,1,'页面管理','','',3),(26,25,'Portal','AdminPage','listorders','',1,0,'页面排序','','',0),(27,25,'Portal','AdminPage','delete','',1,0,'删除页面','','',1000),(28,25,'Portal','AdminPage','edit','',1,0,'编辑页面','','',1000),(29,28,'Portal','AdminPage','edit_post','',1,0,'提交编辑','','',0),(30,25,'Portal','AdminPage','add','',1,0,'添加页面','','',1000),(31,30,'Portal','AdminPage','add_post','',1,0,'提交添加','','',0),(32,1,'Admin','Recycle','default','',1,1,'回收站','','',4),(33,32,'Portal','AdminPost','recyclebin','',1,1,'文章回收','','',0),(34,33,'Portal','AdminPost','restore','',1,0,'文章还原','','',1000),(35,33,'Portal','AdminPost','clean','',1,0,'彻底删除','','',1000),(36,32,'Portal','AdminPage','recyclebin','',1,1,'页面回收','','',1),(37,36,'Portal','AdminPage','clean','',1,0,'彻底删除','','',1000),(38,36,'Portal','AdminPage','restore','',1,0,'页面还原','','',1000),(39,0,'Admin','Extension','default','',0,1,'扩展工具','cloud','',40),(40,39,'Admin','Backup','default','',1,0,'备份管理','','',0),(41,40,'Admin','Backup','restore','',1,1,'数据还原','','',0),(42,40,'Admin','Backup','index','',1,1,'数据备份','','',0),(43,42,'Admin','Backup','index_post','',1,0,'提交数据备份','','',0),(44,40,'Admin','Backup','download','',1,0,'下载备份','','',1000),(45,40,'Admin','Backup','del_backup','',1,0,'删除备份','','',1000),(46,40,'Admin','Backup','import','',1,0,'数据备份导入','','',1000),(47,39,'Admin','Plugin','index','',1,1,'插件管理','','',0),(48,47,'Admin','Plugin','toggle','',1,0,'插件启用切换','','',0),(49,47,'Admin','Plugin','setting','',1,0,'插件设置','','',0),(50,49,'Admin','Plugin','setting_post','',1,0,'插件设置提交','','',0),(51,47,'Admin','Plugin','install','',1,0,'插件安装','','',0),(52,47,'Admin','Plugin','uninstall','',1,0,'插件卸载','','',0),(53,39,'Admin','Slide','default','',1,1,'幻灯片','','',1),(54,53,'Admin','Slide','index','',1,1,'幻灯片管理','','',0),(55,54,'Admin','Slide','listorders','',1,0,'幻灯片排序','','',0),(56,54,'Admin','Slide','toggle','',1,0,'幻灯片显示切换','','',0),(57,54,'Admin','Slide','delete','',1,0,'删除幻灯片','','',1000),(58,54,'Admin','Slide','edit','',1,0,'编辑幻灯片','','',1000),(59,58,'Admin','Slide','edit_post','',1,0,'提交编辑','','',0),(60,54,'Admin','Slide','add','',1,0,'添加幻灯片','','',1000),(61,60,'Admin','Slide','add_post','',1,0,'提交添加','','',0),(62,53,'Admin','Slidecat','index','',1,1,'幻灯片分类','','',0),(63,62,'Admin','Slidecat','delete','',1,0,'删除分类','','',1000),(64,62,'Admin','Slidecat','edit','',1,0,'编辑分类','','',1000),(65,64,'Admin','Slidecat','edit_post','',1,0,'提交编辑','','',0),(66,62,'Admin','Slidecat','add','',1,0,'添加分类','','',1000),(67,66,'Admin','Slidecat','add_post','',1,0,'提交添加','','',0),(68,39,'Admin','Ad','index','',1,1,'网站广告','','',2),(69,68,'Admin','Ad','toggle','',1,0,'广告显示切换','','',0),(70,68,'Admin','Ad','delete','',1,0,'删除广告','','',1000),(71,68,'Admin','Ad','edit','',1,0,'编辑广告','','',1000),(72,71,'Admin','Ad','edit_post','',1,0,'提交编辑','','',0),(73,68,'Admin','Ad','add','',1,0,'添加广告','','',1000),(74,73,'Admin','Ad','add_post','',1,0,'提交添加','','',0),(75,39,'Admin','Link','index','',0,1,'友情链接','','',3),(76,75,'Admin','Link','listorders','',1,0,'友情链接排序','','',0),(77,75,'Admin','Link','toggle','',1,0,'友链显示切换','','',0),(78,75,'Admin','Link','delete','',1,0,'删除友情链接','','',1000),(79,75,'Admin','Link','edit','',1,0,'编辑友情链接','','',1000),(80,79,'Admin','Link','edit_post','',1,0,'提交编辑','','',0),(81,75,'Admin','Link','add','',1,0,'添加友情链接','','',1000),(82,81,'Admin','Link','add_post','',1,0,'提交添加','','',0),(83,39,'Api','Oauthadmin','setting','',1,1,'第三方登陆','leaf','',4),(84,83,'Api','Oauthadmin','setting_post','',1,0,'提交设置','','',0),(85,0,'Admin','Menu','default','',1,1,'菜单管理','list','',20),(86,85,'Admin','Navcat','default1','',1,1,'前台菜单','','',0),(87,86,'Admin','Nav','index','',1,1,'菜单管理','','',0),(88,87,'Admin','Nav','listorders','',1,0,'前台导航排序','','',0),(89,87,'Admin','Nav','delete','',1,0,'删除菜单','','',1000),(90,87,'Admin','Nav','edit','',1,0,'编辑菜单','','',1000),(91,90,'Admin','Nav','edit_post','',1,0,'提交编辑','','',0),(92,87,'Admin','Nav','add','',1,0,'添加菜单','','',1000),(93,92,'Admin','Nav','add_post','',1,0,'提交添加','','',0),(94,86,'Admin','Navcat','index','',1,1,'菜单分类','','',0),(95,94,'Admin','Navcat','delete','',1,0,'删除分类','','',1000),(96,94,'Admin','Navcat','edit','',1,0,'编辑分类','','',1000),(97,96,'Admin','Navcat','edit_post','',1,0,'提交编辑','','',0),(98,94,'Admin','Navcat','add','',1,0,'添加分类','','',1000),(99,98,'Admin','Navcat','add_post','',1,0,'提交添加','','',0),(100,85,'Admin','Menu','index','',1,1,'后台菜单','','',0),(101,100,'Admin','Menu','add','',1,0,'添加菜单','','',0),(102,101,'Admin','Menu','add_post','',1,0,'提交添加','','',0),(103,100,'Admin','Menu','listorders','',1,0,'后台菜单排序','','',0),(104,100,'Admin','Menu','export_menu','',1,0,'菜单备份','','',1000),(105,100,'Admin','Menu','edit','',1,0,'编辑菜单','','',1000),(106,105,'Admin','Menu','edit_post','',1,0,'提交编辑','','',0),(107,100,'Admin','Menu','delete','',1,0,'删除菜单','','',1000),(108,100,'Admin','Menu','lists','',1,0,'所有菜单','','',1000),(109,0,'Admin','Setting','default','',0,1,'设置','cogs','',0),(110,109,'Admin','Setting','userdefault','',0,1,'个人信息','','',0),(111,110,'Admin','User','userinfo','',1,1,'修改信息','','',0),(112,111,'Admin','User','userinfo_post','',1,0,'修改信息提交','','',0),(113,110,'Admin','Setting','password','',1,1,'修改密码','','',0),(114,113,'Admin','Setting','password_post','',1,0,'提交修改','','',0),(115,109,'Admin','Setting','site','',1,1,'网站信息','','',0),(116,115,'Admin','Setting','site_post','',1,0,'提交修改','','',0),(117,115,'Admin','Route','index','',1,0,'路由列表','','',0),(118,115,'Admin','Route','add','',1,0,'路由添加','','',0),(119,118,'Admin','Route','add_post','',1,0,'路由添加提交','','',0),(120,115,'Admin','Route','edit','',1,0,'路由编辑','','',0),(121,120,'Admin','Route','edit_post','',1,0,'路由编辑提交','','',0),(122,115,'Admin','Route','delete','',1,0,'路由删除','','',0),(123,115,'Admin','Route','ban','',1,0,'路由禁止','','',0),(124,115,'Admin','Route','open','',1,0,'路由启用','','',0),(125,115,'Admin','Route','listorders','',1,0,'路由排序','','',0),(126,109,'Admin','Mailer','default','',1,1,'邮箱配置','','',0),(127,126,'Admin','Mailer','index','',1,1,'SMTP配置','','',0),(128,127,'Admin','Mailer','index_post','',1,0,'提交配置','','',0),(129,126,'Admin','Mailer','active','',1,1,'注册邮件模板','','',0),(130,129,'Admin','Mailer','active_post','',1,0,'提交模板','','',0),(131,109,'Admin','Setting','clearcache','',1,1,'清除缓存','','',1),(132,0,'User','Indexadmin','default','',1,1,'用户管理','group','',10),(133,132,'User','Indexadmin','default1','',1,1,'用户组','','',0),(134,133,'User','Indexadmin','index','',1,1,'本站用户','leaf','',0),(135,134,'User','Indexadmin','ban','',1,0,'拉黑会员','','',0),(136,134,'User','Indexadmin','cancelban','',1,0,'启用会员','','',0),(137,133,'User','Oauthadmin','index','',1,1,'第三方用户','leaf','',0),(138,137,'User','Oauthadmin','delete','',1,0,'第三方用户解绑','','',0),(139,132,'User','Indexadmin','default3','',1,1,'管理组','','',0),(140,139,'Admin','Rbac','index','',1,1,'角色管理','','',0),(141,140,'Admin','Rbac','member','',1,0,'成员管理','','',1000),(142,140,'Admin','Rbac','authorize','',1,0,'权限设置','','',1000),(143,142,'Admin','Rbac','authorize_post','',1,0,'提交设置','','',0),(144,140,'Admin','Rbac','roleedit','',1,0,'编辑角色','','',1000),(145,144,'Admin','Rbac','roleedit_post','',1,0,'提交编辑','','',0),(146,140,'Admin','Rbac','roledelete','',1,1,'删除角色','','',1000),(147,140,'Admin','Rbac','roleadd','',1,1,'添加角色','','',1000),(148,147,'Admin','Rbac','roleadd_post','',1,0,'提交添加','','',0),(149,139,'Admin','User','index','',1,1,'管理员','','',0),(150,149,'Admin','User','delete','',1,0,'删除管理员','','',1000),(151,149,'Admin','User','edit','',1,0,'管理员编辑','','',1000),(152,151,'Admin','User','edit_post','',1,0,'编辑提交','','',0),(153,149,'Admin','User','add','',1,0,'管理员添加','','',1000),(154,153,'Admin','User','add_post','',1,0,'添加提交','','',0),(155,47,'Admin','Plugin','update','',1,0,'插件更新','','',0),(156,109,'Admin','Storage','index','',1,1,'文件存储','','',0),(157,156,'Admin','Storage','setting_post','',1,0,'文件存储设置提交','','',0),(158,54,'Admin','Slide','ban','',1,0,'禁用幻灯片','','',0),(159,54,'Admin','Slide','cancelban','',1,0,'启用幻灯片','','',0),(160,149,'Admin','User','ban','',1,0,'禁用管理员','','',0),(161,149,'Admin','User','cancelban','',1,0,'启用管理员','','',0),(166,127,'Admin','Mailer','test','',1,0,'测试邮件','','',0),(167,109,'Admin','Setting','upload','',1,1,'上传设置','','',0),(168,167,'Admin','Setting','upload_post','',1,0,'上传设置提交','','',0),(169,7,'Portal','AdminPost','copy','',1,0,'文章批量复制','','',0),(174,100,'Admin','Menu','backup_menu','',1,0,'备份菜单','','',0),(175,100,'Admin','Menu','export_menu_lang','',1,0,'导出后台菜单多语言包','','',0),(176,100,'Admin','Menu','restore_menu','',1,0,'还原菜单','','',0),(177,100,'Admin','Menu','getactions','',1,0,'导入新菜单','','',0);
/*!40000 ALTER TABLE `cmf_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_nav`
--

DROP TABLE IF EXISTS `cmf_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='前台导航表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_nav`
--

LOCK TABLES `cmf_nav` WRITE;
/*!40000 ALTER TABLE `cmf_nav` DISABLE KEYS */;
INSERT INTO `cmf_nav` VALUES (1,1,0,'首页','','home','',1,0,'0-1'),(13,1,12,'高层次人才招聘','','home','',1,0,'0-12-13'),(14,1,12,'博士后招聘','','home','',1,0,'0-12-14'),(11,1,0,'师资队伍','','home','',1,0,'0-11'),(12,1,0,'人才招聘','','home','',1,0,'0-12'),(4,1,0,'研究院概况','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"12\";}}','',1,0,'0-4'),(5,1,4,'研究院简介','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"16\";}}','',1,0,'0-4-5'),(6,1,4,'学术顾问委员会','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"13\";}}','',1,0,'0-4-6'),(7,1,4,'组织机构及办事人员','','a:2:{s:6:\"action\";s:17:\"Portal/Page/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"14\";}}','',1,0,'0-4-7'),(8,1,0,'新闻通知','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','',1,0,'0-8'),(9,1,8,'最新资讯','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"4\";}}','',1,0,'0-8-9'),(10,1,8,'通知公告','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"6\";}}','',1,0,'0-8-10'),(15,1,12,'在线应聘','','home','',1,0,'0-12-15'),(16,1,0,'科学研究','','home','',1,0,'0-16'),(17,1,16,'研究中心（所）','','home','',1,0,'0-16-17'),(18,1,16,'学术成果','','home','',1,0,'0-16-18'),(19,1,0,'人才培养','','home','',1,0,'0-19'),(20,1,19,'研究生招生','','home','',1,0,'0-19-20'),(21,1,19,'日常管理','','home','',1,0,'0-19-21'),(22,1,19,'在读研究生','','home','',1,0,'0-19-22'),(23,1,19,'学子风采','','home','',1,0,'0-19-23'),(24,1,0,'国际合作交流','','home','',1,0,'0-24'),(25,1,24,'国际合作','','home','',1,0,'0-24-25'),(26,1,24,'学术论坛','','home','',1,0,'0-24-26'),(27,1,24,'学术来访','','home','',1,0,'0-24-27'),(28,1,24,'因公出访','','home','',1,0,'0-24-28'),(29,1,0,'专题链接','','home','',1,0,'0-29'),(30,1,29,'党建工作','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"20\";}}','',1,0,'0-29-30'),(31,1,29,'工会活动','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"21\";}}','',1,0,'0-29-31'),(32,1,29,'院友之家','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:2:\"22\";}}','',1,0,'0-29-32'),(33,1,0,'办公指南','','home','',1,0,'0-33'),(34,1,33,'办事流程','','home','',1,0,'0-33-34'),(35,1,33,'规章制度','','home','',1,0,'0-33-35'),(36,1,33,'会议室预约','','home','',1,0,'0-33-36'),(37,1,33,'联系我们','','home','',1,0,'0-33-37'),(38,1,11,'院士','','home','',1,0,'0-11-38'),(39,1,11,'诺贝尔奖名誉教授','','home','',1,0,'0-11-39'),(40,1,11,'国家千人计划专家','','home','',1,0,'0-11-40'),(41,1,11,'国家青年千人计划入选者','','home','',1,0,'0-11-41'),(42,1,11,'国家外专短期千人计划专家','','home','',1,0,'0-11-42'),(43,1,11,'国家自然科学基金优秀青年科学基金获得者','','home','',1,0,'0-11-43'),(44,1,11,'教育部长江讲座教授','','home','',1,0,'0-11-44'),(45,1,11,'汤森路透全球高被引科学家','','home','',1,0,'0-11-45'),(46,1,11,'Elsevier中国高被引学者','','home','',1,0,'0-11-46'),(47,1,11,'发达国家院士','','home','',1,0,'0-11-47'),(48,1,11,'博士后','','home','',1,0,'0-11-48');
/*!40000 ALTER TABLE `cmf_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_nav_cat`
--

DROP TABLE IF EXISTS `cmf_nav_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='前台导航分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_nav_cat`
--

LOCK TABLES `cmf_nav_cat` WRITE;
/*!40000 ALTER TABLE `cmf_nav_cat` DISABLE KEYS */;
INSERT INTO `cmf_nav_cat` VALUES (1,'主导航',1,'主导航');
/*!40000 ALTER TABLE `cmf_nav_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_oauth_user`
--

DROP TABLE IF EXISTS `cmf_oauth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_oauth_user`
--

LOCK TABLES `cmf_oauth_user` WRITE;
/*!40000 ALTER TABLE `cmf_oauth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_oauth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_options`
--

DROP TABLE IF EXISTS `cmf_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='全站配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_options`
--

LOCK TABLES `cmf_options` WRITE;
/*!40000 ALTER TABLE `cmf_options` DISABLE KEYS */;
INSERT INTO `cmf_options` VALUES (1,'member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}',1),(6,'site_options','{\"site_name\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_admin_url_password\":\"\",\"site_tpl\":\"iffs\",\"site_adminstyle\":\"flat\",\"site_icp\":\"\",\"site_admin_email\":\"admin@example.com\",\"site_tongji\":\"\",\"site_copyright\":\"\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"urlmode\":\"2\",\"html_suffix\":\"html\",\"comment_time_interval\":\"60\"}',1),(7,'cmf_settings','{\"banned_usernames\":\"\"}',1),(8,'cdn_settings','{\"cdn_static_root\":\"\"}',1);
/*!40000 ALTER TABLE `cmf_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_plugins`
--

DROP TABLE IF EXISTS `cmf_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='插件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_plugins`
--

LOCK TABLES `cmf_plugins` WRITE;
/*!40000 ALTER TABLE `cmf_plugins` DISABLE KEYS */;
INSERT INTO `cmf_plugins` VALUES (3,'Demo','插件演示','插件演示',0,1,'{\"text\":\"hello,ThinkCMF!\",\"password\":\"\",\"select\":\"1\",\"checkbox\":1,\"radio\":\"1\",\"textarea\":\"\\u8fd9\\u91cc\\u662f\\u4f60\\u8981\\u586b\\u5199\\u7684\\u5185\\u5bb9\"}','footer',1,'ThinkCMF','1.0',0,0);
/*!40000 ALTER TABLE `cmf_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_posts`
--

DROP TABLE IF EXISTS `cmf_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post发布日期',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核,3删除',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT '1' COMMENT 'post类型，1文章,2页面',
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Portal文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_posts`
--

LOCK TABLES `cmf_posts` WRITE;
/*!40000 ALTER TABLE `cmf_posts` DISABLE KEYS */;
INSERT INTO `cmf_posts` VALUES (1,1,'置顶推荐新闻关键字','置顶推荐新闻文章来源','2017-03-23 11:26:37','<p>置顶推荐新闻置顶推荐新闻置顶推荐新闻置顶推荐新闻</p><p>置顶推荐新闻置顶推荐新闻置顶推荐新闻</p><p>置顶推荐新闻置顶推荐新闻</p><p>置顶推荐新闻</p>','置顶推荐新闻','置顶推荐新闻摘要',1,1,'2017-03-23 13:12:28',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170323\\/58d35912bfe61.jpg\",\"template\":\"\"}',1,0,1,1),(2,1,'新闻一关键字','新闻一来源','2017-03-23 13:12:31','<p>新闻一新闻一新闻一新闻一新闻一</p><p>新闻一新闻一新闻一新闻一</p><p>新闻一新闻一新闻一</p><p>新闻一新闻一</p><p>新闻一</p>','新闻一标题','新闻一摘要',1,1,'2017-03-23 13:14:47',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170323\\/58d359685edff.jpg\",\"template\":\"\"}',6,0,0,0),(3,1,'新闻二关键字','新闻二来源','2017-03-23 13:13:31','<p>新闻二新闻二新闻二新闻二新闻二新闻二新闻二新闻二</p><p>新闻二新闻二新闻二新闻二新闻二新闻二新闻二</p><p>新闻二新闻二新闻二新闻二新闻二新闻二</p><p>新闻二新闻二新闻二新闻二新闻二</p><p>新闻二新闻二新闻二新闻二</p><p>新闻二新闻二新闻二</p><p>新闻二新闻二</p><p>新闻二</p>','新闻二标题','新闻二摘要',1,1,'2017-03-23 13:14:27',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170323\\/58d359a89d165.jpg\",\"template\":\"\"}',6,0,0,0),(4,1,'置顶推荐新闻二关键字','置顶推荐新闻二来源','2017-03-23 15:12:45','<p>置顶推荐新闻二内容</p><p>置顶推荐新闻二</p><p>置顶推荐新闻二</p><p>置顶推荐新闻二</p>','置顶推荐新闻二标题','置顶推荐新闻二摘要',1,1,'2017-03-23 15:14:11',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170323\\/58d375be8c727.jpg\",\"template\":\"\"}',11,0,1,1),(5,1,'新闻三关键词','新闻三来源','2017-03-23 15:18:52','<p>新闻三内容</p><p>新闻三</p><p>新闻三新闻三新闻三</p><p>新闻三新闻三</p><p>新闻三</p><p><img src=\"/ThinkCMFX/data/upload/ueditor/20170323/58d3d1cfdcbec.jpg\" title=\"08.jpg\" alt=\"08.jpg\"/></p>','新闻三标题','新闻三摘要',1,1,'2017-03-23 21:46:58',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170323\\/58d37704b7620.jpg\",\"template\":\"\"}',27,0,0,0),(6,1,'人事通知一关键字','人事通知一来源','2017-03-23 17:23:12','<p>人事通知一人事通知一人事通知一人事通知一</p><p>人事通知一人事通知一人事通知一</p><p>人事通知一人事通知一</p>','人事通知一标题','人事通知一摘要',1,1,'2017-03-23 17:52:24',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',0,0,0,0),(7,1,'外事通知一关键字','外事通知一来源','2017-03-23 20:46:58','<p>外事通知一外事通知一外事通知一外事通知一</p><p>外事通知一外事通知一</p><p>外事通知一</p><p>外事通知一</p><p>外事通知一</p><p>外事通知一外事通知一外事通知一</p><p>外事通知一外事通知一</p><p>外事通知一</p>','外事通知一标题','外事通知一摘要',1,1,'2017-03-23 21:02:34',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',3,0,0,1),(8,1,'学生工作通知一关键字','学生工作通知一来源','2017-03-23 20:47:55','<p>学生工作通知一学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一学生工作通知一</p><p>学生工作通知一</p>','学生工作通知一标题','学生工作通知一摘要',1,1,'2017-03-23 20:48:30',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',0,0,0,0),(9,1,'科研通知一关键字','科研通知一来源','2017-03-23 20:48:33','<p>科研通知一科研通知一科研通知一科研通知一科研通知一</p><p>科研通知一科研通知一科研通知一科研通知一</p><p>科研通知一科研通知一科研通知一</p><p>科研通知一科研通知一</p><p>科研通知一</p><p>科研通知一科研通知一</p><p>科研通知一科研通知一科研通知一</p><p>科研通知一科研通知一科研通知一科研通知一</p><p>科研通知一科研通知一科研通知一科研通知一科研通知一</p>','科研通知一标题','科研通知一摘要',1,1,'2017-03-23 21:01:56',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',1,0,1,0),(10,1,'使用长标题的人事通知——用于测试文字超出隐藏功能关键字','使用长标题的人事通知——用于测试文字超出隐藏功能来源','2017-03-23 21:06:15','<p>使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能</p>','使用长标题的人事通知——用于测试文字超出隐藏功能','使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能使用长标题的人事通知——用于测试文字超出隐藏功能',1,1,'2017-03-23 21:07:12',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',18,0,0,0),(11,1,'学生工作通知二关键字','学生工作通知二来源','2017-03-23 21:19:53','<p>学生工作通知二学生工作通知二学生工作通知二学生工作通知二</p><p>学生工作通知二学生工作通知二</p><p>学生工作通知二</p><p>学生工作通知二学生工作通知二学生工作通知二</p><p>学生工作通知二学生工作通知二</p><p>学生工作通知二</p>','学生工作通知二标题','学生工作通知二摘要',1,1,'2017-03-24 18:05:32',NULL,0,1,'',0,'{\"template\":\"\",\"thumb\":\"\"}',2,0,0,0),(12,1,'研究院简介,前沿院简介',NULL,'2017-03-24 11:53:18','<p style=\"text-indent: 2em;\">电子科技大学基础与前沿研究院，2014年6月18日成立，旨在加快该校高水平研究型大学建设进程，增强原始创新能力，提高基础研究水平，提升学术影响力，学校决定成立基础与前沿研究院，开展相关学科领域的基础与前沿科学研究、拔尖创新人才培养等工作。</p><p style=\"text-indent: 0em;\"><img src=\"/thinkcmfx/data/upload/ueditor/20170324/58d4982750b62.png\" title=\"02.png\" alt=\"02.png\"/></p><p style=\"text-indent: 2em;\">研究院先期将以基础理论研究为主，研究领域以电子科学与技术、信息与通信工程等传统优势学科的共同基础方向为主，计划五年内建设一支30人左右的专职学术队伍，实行PI制，形成6-10个研究所，在《自然》《科学》等国际顶级期刊上发表一批学术论文，扩大电子科大在世界上的学术声誉。为了鼓励多出成果、出积累性大成果，研究院将在人员考核、学术评价等方面进行改革创新。</p><p><br/></p>','研究院简介','电子科技大学基础与前沿研究院于2014年6月18日成立，研究领域以电子科学与技术、信息与通信工程等传统优势学科的共同基础方向为主。',1,1,'2017-03-24 11:50:00',NULL,0,2,'',0,'{\"template\":\"page\",\"thumb\":\"portal\\/20170324\\/58d4980c26f66.jpg\"}',0,0,0,0),(13,1,'',NULL,'2017-03-25 19:29:52','','学术顾问委员会','',1,1,'2017-03-25 19:29:17',NULL,0,2,'',0,'{\"template\":\"page\",\"thumb\":\"\"}',0,0,0,0),(14,1,'',NULL,'2017-03-25 19:30:11','','组织机构及办事人员','',1,1,'2017-03-25 19:29:53',NULL,0,2,'',0,'{\"template\":\"page\",\"thumb\":\"\"}',0,0,0,0),(15,1,'dfgdfgdf','fgdfsfg','2017-03-25 22:07:12','<p>dfgdgsdgdfgdfg<br/></p>','sdgdfsg','dfgdsfg',3,1,'2017-03-25 22:07:53',NULL,0,1,'',0,'{\"thumb\":\"portal\\/20170325\\/58d679b5568a4.jpg\",\"template\":\"\"}',2,0,0,0),(16,1,'简介,研究院简介,iffs','','2017-03-26 20:33:00','<p style=\"text-indent: 2em;\">电子科技大学基础与前沿研究院，2014年6月18日成立，旨在加快该校高水平研究型大学建设进程，增强原始创新能力，提高基础研究水平，提升学术影响力，学校决定成立基础与前沿研究院，开展相关学科领域的基础与前沿科学研究、拔尖创新人才培养等工作。</p><p style=\"text-indent: 0em;\"><img src=\"http://localhost/thinkcmfx/data/upload/ueditor/20170324/58d4982750b62.png\" title=\"02.png\" alt=\"02.png\"/></p><p style=\"text-indent: 2em;\">研究院先期将以基础理论研究为主，研究领域以电子科学与技术、信息与通信工程等传统优势学科的共同基础方向为主，计划五年内建设一支30人左右的专职学术队伍，实行PI制，形成6-10个研究所，在《自然》《科学》等国际顶级期刊上发表一批学术论文，扩大电子科大在世界上的学术声誉。为了鼓励多出成果、出积累性大成果，研究院将在人员考核、学术评价等方面进行改革创新。</p><p><br/></p><p><br/></p>','研究院简介','电子科技大学基础与前沿研究院，2014年6月18日成立，旨在加快该校高水平研究型大学建设进程，增强原始创新能力，提高基础研究水平，提升学术影响力，学校决定成立基础与前沿研究院，开展相关学科领域的基础与前沿科学研究、拔尖创新人才培养等工作。',1,1,'2017-03-26 20:34:04',NULL,0,1,'',0,'{\"thumb\":\"\",\"template\":\"\"}',0,0,0,0);
/*!40000 ALTER TABLE `cmf_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_role`
--

DROP TABLE IF EXISTS `cmf_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_role`
--

LOCK TABLES `cmf_role` WRITE;
/*!40000 ALTER TABLE `cmf_role` DISABLE KEYS */;
INSERT INTO `cmf_role` VALUES (1,'超级管理员',0,1,'拥有网站最高管理员权限！',1329633709,1329633709,0),(2,'运营',NULL,1,'网站新闻、通知的发布者',1490279927,0,0),(3,'游客',NULL,1,'仅可以浏览网站内容',1490279996,0,0);
/*!40000 ALTER TABLE `cmf_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_role_user`
--

DROP TABLE IF EXISTS `cmf_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_role_user`
--

LOCK TABLES `cmf_role_user` WRITE;
/*!40000 ALTER TABLE `cmf_role_user` DISABLE KEYS */;
INSERT INTO `cmf_role_user` VALUES (3,2);
/*!40000 ALTER TABLE `cmf_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_route`
--

DROP TABLE IF EXISTS `cmf_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='url路由表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_route`
--

LOCK TABLES `cmf_route` WRITE;
/*!40000 ALTER TABLE `cmf_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_slide`
--

DROP TABLE IF EXISTS `cmf_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_slide`
--

LOCK TABLES `cmf_slide` WRITE;
/*!40000 ALTER TABLE `cmf_slide` DISABLE KEYS */;
INSERT INTO `cmf_slide` VALUES (1,1,'首页幻灯片1','admin/20170322/58d25d27cf062.png','','首页幻灯片1描述','首页幻灯片1内容 首页幻灯片1内容 首页幻灯片1内容 首页幻灯片1内容 首页幻灯片1内容',1,0),(2,1,'首页轮播图2','admin/20170322/58d25d5d0389d.jpg','','首页轮播图2标题','首页轮播图2内容 首页轮播图2内容 首页轮播图2内容 首页轮播图2内容 首页轮播图2内容 首页轮播图2内容',1,0),(3,1,'首页轮播图3','admin/20170322/58d25d898871b.jpg','','首页轮播图3标题','首页轮播图3内容 首页轮播图3内容 首页轮播图3内容 首页轮播图3内容 首页轮播图3内容 首页轮播图3内容',1,0);
/*!40000 ALTER TABLE `cmf_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_slide_cat`
--

DROP TABLE IF EXISTS `cmf_slide_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='幻灯片分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_slide_cat`
--

LOCK TABLES `cmf_slide_cat` WRITE;
/*!40000 ALTER TABLE `cmf_slide_cat` DISABLE KEYS */;
INSERT INTO `cmf_slide_cat` VALUES (1,'首页轮播图','main','首页的轮播图，可放置新闻、通知、来访信息等',1);
/*!40000 ALTER TABLE `cmf_slide_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_term_relationships`
--

DROP TABLE IF EXISTS `cmf_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_term_relationships`
--

LOCK TABLES `cmf_term_relationships` WRITE;
/*!40000 ALTER TABLE `cmf_term_relationships` DISABLE KEYS */;
INSERT INTO `cmf_term_relationships` VALUES (1,1,4,0,1),(2,2,4,0,1),(3,3,4,0,1),(4,4,4,0,1),(5,5,4,0,1),(6,6,6,0,1),(7,7,7,0,1),(8,8,8,0,1),(9,9,9,0,1),(10,10,6,0,1),(11,11,8,0,1),(12,15,14,0,1),(13,16,16,0,1);
/*!40000 ALTER TABLE `cmf_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_terms`
--

DROP TABLE IF EXISTS `cmf_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Portal 文章分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_terms`
--

LOCK TABLES `cmf_terms` WRITE;
/*!40000 ALTER TABLE `cmf_terms` DISABLE KEYS */;
INSERT INTO `cmf_terms` VALUES (5,'通知公告','','article','基础与前沿研究院的通知、相关事项公告等',0,0,'0-5','','','','list','article',0,1),(3,'新闻','','article','研究院新闻',0,0,'0-3','','','','list','article',0,1),(4,'前沿院新闻','','article','显示在首页最新资讯、新闻列表页的新闻',3,0,'0-3-4','','','','list','article',0,1),(6,'人事通知','','article','',5,0,'0-5-6','','','','list','article',0,1),(7,'外事通知','','article','',5,0,'0-5-7','','','','list','article',0,1),(8,'学生工作通知','','article','',5,0,'0-5-8','','','','list','article',0,1),(9,'科研通知','','article','',5,0,'0-5-9','','','','list','article',0,1),(11,'前沿讲座','','article','',3,0,'0-3-11','','','','list','article',0,1),(12,'成果展示','','article','',3,0,'0-3-12','','','','list','article',0,1),(13,'走进前沿院','','article','',3,0,'0-3-13','','','','list','article',0,1),(14,'量子专题','','picture','',3,0,'0-3-14','','','','list','article',0,1),(15,'研究院概况','','article','',0,0,'0-15','','','','list','article',0,1),(16,'研究院简介','','article','用于添加基础与前沿研究院基本情况介绍图文，只有一篇文章',15,0,'0-15-16','','','','page','page',0,1),(17,'学术顾问委员会','','article','',15,0,'0-15-17','','','','page','page',0,1),(18,'组织机构及办事人员','','article','',15,0,'0-15-18','','','','page','page',0,1),(19,'专题链接','','article','',0,0,'0-19','','','','list','article',0,1),(20,'党建工作','','article','',19,0,'0-19-20','','','','list','article',0,1),(21,'工会活动','','article','',19,0,'0-19-21','','','','list','article',0,1),(22,'院友之家','','article','',19,0,'0-19-22','','','','list','article',0,1);
/*!40000 ALTER TABLE `cmf_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_user_favorites`
--

DROP TABLE IF EXISTS `cmf_user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL COMMENT '用户 id',
  `title` varchar(255) DEFAULT NULL COMMENT '收藏内容的标题',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) DEFAULT NULL COMMENT '收藏内容的描述',
  `table` varchar(50) DEFAULT NULL COMMENT '收藏实体以前所在表，不带前缀',
  `object_id` int(11) DEFAULT NULL COMMENT '收藏内容原来的主键id',
  `createtime` int(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_user_favorites`
--

LOCK TABLES `cmf_user_favorites` WRITE;
/*!40000 ALTER TABLE `cmf_user_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmf_user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmf_users`
--

DROP TABLE IF EXISTS `cmf_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmf_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT '2000-01-01' COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmf_users`
--

LOCK TABLES `cmf_users` WRITE;
/*!40000 ALTER TABLE `cmf_users` DISABLE KEYS */;
INSERT INTO `cmf_users` VALUES (1,'admin','###a3a142d253f9c7cf9a81247fb49b00d7','admin','admin@example.com','',NULL,0,'2000-01-01',NULL,'127.0.0.1','2017-03-27 10:21:29','2017-03-21 10:16:20','',1,0,1,0,''),(2,'test','###a3a142d253f9c7cf9a81247fb49b00d7','','test@example.com','',NULL,0,'2000-01-01',NULL,'127.0.0.1','2017-03-23 22:42:24','2017-03-23 22:42:05','',1,0,1,0,'');
/*!40000 ALTER TABLE `cmf_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-27 10:42:57
