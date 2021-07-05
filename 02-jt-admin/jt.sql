-- MySQL dump 10.14  Distrib 5.5.47-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jt
-- ------------------------------------------------------
-- Server version	5.5.47-MariaDB

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
-- Table structure for table `sys_depts`
--
DROP DATABASE IF EXISTS `jt-cloud`;
CREATE DATABASE  `jt-cloud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
USE `jt-cloud`
DROP TABLE IF EXISTS `sys_depts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `parentId` int(11) DEFAULT NULL COMMENT '上级部门',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_depts`
--

LOCK TABLES `sys_depts` WRITE;
/*!40000 ALTER TABLE `sys_depts` DISABLE KEYS */;
INSERT INTO `sys_depts` VALUES (2,'集团教研部',NULL,1,'集团教学和研发','2018-04-19 18:59:09','2020-01-12 14:13:22','admin',NULL),(4,'课程研发部',2,22,'负责课程研发','2018-04-22 18:10:58','2020-01-12 14:13:56',NULL,NULL),(5,'集团MIS部',NULL,13,'负责集团网络环境运维','2020-01-12 14:14:26','2020-01-12 14:14:26',NULL,NULL),(6,'市场开发部',NULL,7,'A','2020-04-28 15:53:23','2021-02-26 13:36:25',NULL,NULL),(7,'MIS-1部',5,5,'111','2020-04-28 15:53:46','2020-04-28 15:53:46',NULL,NULL),(8,'市场一部',6,11,'11','2021-02-26 13:40:28','2021-02-26 13:40:28',NULL,NULL);
/*!40000 ALTER TABLE `sys_depts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logs`
--

DROP TABLE IF EXISTS `sys_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT '1',
  `error` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs`
--

LOCK TABLES `sys_logs` WRITE;
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
INSERT INTO `sys_logs` VALUES (11,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',1,'0:0:0:0:0:0:0:1','2018-04-17 19:54:36',1,NULL),(12,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',155,'0:0:0:0:0:0:0:1','2018-04-18 15:14:44',1,NULL),(13,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',165,'0:0:0:0:0:0:0:1','2018-04-19 18:52:35',1,NULL),(14,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',75,'0:0:0:0:0:0:0:1','2018-04-19 19:10:36',1,NULL),(15,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-19 19:12:46',1,NULL),(16,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',187,'0:0:0:0:0:0:0:1','2018-04-19 23:27:14',1,NULL),(17,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',103,'0:0:0:0:0:0:0:1','2018-04-20 13:11:37',1,NULL),(18,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',85,'0:0:0:0:0:0:0:1','2018-04-20 13:55:04',1,NULL),(19,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',89,'0:0:0:0:0:0:0:1','2018-04-20 13:57:12',1,NULL),(20,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-20 13:58:32',1,NULL),(21,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',291,'0:0:0:0:0:0:0:1','2018-04-20 15:22:55',1,NULL),(22,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',158,'0:0:0:0:0:0:0:1','2018-04-22 16:20:56',1,NULL),(23,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',94,'0:0:0:0:0:0:0:1','2018-04-22 17:05:34',1,NULL),(24,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',138,'0:0:0:0:0:0:0:1','2018-04-22 17:20:32',1,NULL),(25,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',124,'0:0:0:0:0:0:0:1','2018-04-22 17:24:12',1,NULL),(26,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',75,'0:0:0:0:0:0:0:1','2018-04-22 17:31:51',1,NULL),(27,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',148,'0:0:0:0:0:0:0:1','2018-04-22 17:33:25',1,NULL),(28,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-22 17:39:26',1,NULL),(29,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',120,'0:0:0:0:0:0:0:1','2018-04-22 19:10:28',1,NULL),(39,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',13,'0:0:0:0:0:0:0:1','2020-01-12 08:54:53',1,NULL),(40,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',9,'0:0:0:0:0:0:0:1','2020-01-12 09:29:59',1,NULL),(41,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',6,'0:0:0:0:0:0:0:1','2020-01-12 09:35:25',1,NULL),(42,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"admin\",1]',5,'0:0:0:0:0:0:0:1','2020-01-12 09:35:30',1,NULL),(43,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',7,'0:0:0:0:0:0:0:1','2020-01-12 09:35:44',1,NULL),(44,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',5,'0:0:0:0:0:0:0:1','2020-01-12 09:35:46',1,NULL),(45,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',5,'0:0:0:0:0:0:0:1','2020-01-12 09:36:07',1,NULL),(46,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,0,\"admin\"]',1,'0:0:0:0:0:0:0:1','2020-01-12 09:36:19',1,NULL),(47,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,1,\"admin\"]',1,'0:0:0:0:0:0:0:1','2020-01-12 09:36:55',1,NULL),(48,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,0,\"admin\"]',1,'0:0:0:0:0:0:0:1','2020-01-12 09:37:05',1,NULL),(49,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',25,'0:0:0:0:0:0:0:1','2020-01-12 09:42:35',1,NULL),(50,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,1,\"admin\"]',2,'0:0:0:0:0:0:0:1','2020-01-12 09:42:38',1,NULL),(51,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,0,\"admin\"]',4,'0:0:0:0:0:0:0:1','2020-01-12 09:43:23',1,NULL),(52,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[15,0,\"admin\"]',1,'0:0:0:0:0:0:0:1','2020-01-12 09:45:04',1,NULL),(53,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',25,'0:0:0:0:0:0:0:1','2020-01-12 09:53:54',1,NULL),(54,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,1,\"admin\"]',2,'0:0:0:0:0:0:0:1','2020-01-12 09:53:55',1,NULL),(55,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,0,\"admin\"]',1,'0:0:0:0:0:0:0:1','2020-01-12 09:54:18',1,NULL),(56,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',6,'0:0:0:0:0:0:0:1','2020-01-12 09:55:00',1,NULL),(57,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,1,\"admin\"]',4,'0:0:0:0:0:0:0:1','2020-01-12 09:55:01',1,NULL),(58,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16,0,\"admin\"]',2,'0:0:0:0:0:0:0:1','2020-01-12 09:55:04',1,NULL),(59,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',10,'0:0:0:0:0:0:0:1','2020-01-12 09:55:23',1,NULL),(62,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',27,'0:0:0:0:0:0:0:1','2020-01-12 11:04:16',1,NULL),(63,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',9,'0:0:0:0:0:0:0:1','2020-01-12 11:05:58',1,NULL),(64,'admin','用户查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',9,'0:0:0:0:0:0:0:1','2020-01-12 11:07:22',1,NULL),(68,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',30,'192.168.1.112','2020-05-07 09:46:55',1,NULL),(69,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',17,'192.168.1.112','2020-05-07 09:47:10',1,NULL),(70,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',17,'192.168.1.112','2020-05-07 09:47:49',1,NULL),(71,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16, 1]',72,'192.168.1.112','2020-05-07 09:47:58',1,NULL),(72,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',16,'192.168.1.112','2020-05-07 09:52:18',1,NULL),(73,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',16,'192.168.1.112','2020-05-07 09:52:27',1,NULL),(74,'admin','operation','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[16, 0]',66,'192.168.1.112','2020-05-07 09:52:34',1,NULL),(75,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',16,'192.168.1.112','2020-05-07 09:57:52',1,NULL),(76,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',14,'192.168.1.112','2020-05-07 09:58:01',1,NULL),(77,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[17, 0]',73,'192.168.1.112','2020-05-07 09:58:06',1,NULL),(78,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',19,'0:0:0:0:0:0:0:1','2020-05-07 10:02:14',1,NULL),(79,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',12,'192.168.2.101','2020-05-07 10:02:55',1,NULL),(81,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',20,'192.168.2.101','2020-05-07 10:29:19',1,NULL),(82,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',15,'192.168.2.101','2020-05-07 10:34:32',1,NULL),(83,'admin','添加用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.saveObject','[SysUser(id=19, username=liqiang, password=302b67d0710e887cf8164426cd59da28, salt=4ddeb5b4-96dc-4def-a2d7-c6c924701b76, email=lq@t.com, mobile=1111111111111, valid=1, deptId=6, createdTime=null, modifiedTime=null, createdUser=null, modifiedUser=null), [Ljava.lang.Integer;@38d5aa5d]',536,'192.168.2.101','2020-05-07 10:35:08',1,NULL),(84,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[, 1]',11,'192.168.2.101','2020-05-07 10:35:11',1,NULL),(85,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',23,'192.168.2.101','2020-05-07 10:38:48',1,NULL),(87,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 10:39:22',1,NULL),(88,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',20,'192.168.2.101','2020-05-07 10:58:43',1,NULL),(89,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',10,'192.168.2.101','2020-05-07 10:59:06',1,NULL),(90,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',12,'192.168.2.101','2020-05-07 11:13:09',1,NULL),(91,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',10,'192.168.2.101','2020-05-07 11:13:26',1,NULL),(92,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',15,'192.168.2.101','2020-05-07 11:14:45',1,NULL),(93,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',475,'192.168.2.101','2020-05-07 11:15:13',1,NULL),(94,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[20,0]',198111,'192.168.2.101','2020-05-07 11:18:37',1,NULL),(95,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',35,'192.168.2.101','2020-05-07 11:51:08',1,NULL),(96,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',21,'192.168.2.101','2020-05-07 11:51:09',1,NULL),(97,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',23,'192.168.2.101','2020-05-07 11:51:10',1,NULL),(98,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',20,'192.168.2.101','2020-05-07 11:51:11',1,NULL),(99,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',14,'192.168.2.101','2020-05-07 11:51:11',1,NULL),(100,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',15,'192.168.2.101','2020-05-07 11:51:12',1,NULL),(101,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',17,'192.168.2.101','2020-05-07 11:59:32',1,NULL),(102,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 11:59:34',1,NULL),(103,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',12,'192.168.2.101','2020-05-07 11:59:35',1,NULL),(104,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',18,'192.168.2.101','2020-05-07 11:59:36',1,NULL),(105,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 11:59:39',1,NULL),(106,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',13,'192.168.2.101','2020-05-07 14:01:25',1,NULL),(107,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 14:01:34',1,NULL),(108,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',17,'192.168.2.101','2020-05-07 14:03:46',1,NULL),(109,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 14:04:57',1,NULL),(110,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',133,'192.168.2.101','2020-05-07 14:06:50',1,NULL),(111,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',17,'192.168.2.101','2020-05-07 14:06:59',1,NULL),(112,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',17,'192.168.2.101','2020-05-07 14:07:47',1,NULL),(113,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',26,'192.168.2.101','2020-05-07 14:07:52',1,NULL),(114,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',14,'192.168.2.101','2020-05-07 14:17:59',1,NULL),(115,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',14,'192.168.2.101','2020-05-07 14:21:45',1,NULL),(116,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',16,'192.168.2.101','2020-05-07 14:23:40',1,NULL),(117,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',13,'192.168.2.101','2020-05-07 14:32:09',1,NULL),(118,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',164,'192.168.2.101','2020-05-07 15:39:35',1,NULL),(119,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',16,'192.168.2.101','2020-05-07 15:39:53',1,NULL),(120,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',16,'192.168.2.101','2020-05-07 15:39:54',1,NULL),(121,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',18,'192.168.2.101','2020-05-07 15:39:54',1,NULL),(122,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',31,'192.168.2.101','2020-05-07 15:39:55',1,NULL),(123,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 15:39:55',1,NULL),(124,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',11,'192.168.2.101','2020-05-07 15:39:56',1,NULL),(125,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',14,'192.168.2.101','2020-05-07 15:39:56',1,NULL),(126,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',17,'192.168.2.101','2020-05-07 15:39:57',1,NULL),(127,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',19,'192.168.2.101','2020-05-07 15:39:57',1,NULL),(128,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',10,'192.168.2.101','2020-05-07 15:39:58',1,NULL),(129,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',204,'192.168.2.101','2020-05-07 15:46:18',1,NULL),(131,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',24,'0:0:0:0:0:0:0:1','2020-05-08 15:35:44',1,NULL),(132,'admin','禁用启用','com.cy.pj.sys.service.impl.SysUserServiceImpl.validById','[20,1]',6,'0:0:0:0:0:0:0:1','2020-05-08 15:36:12',1,NULL),(133,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',21,'0:0:0:0:0:0:0:1','2020-05-08 17:21:26',1,NULL),(134,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"admin\",1]',10,'0:0:0:0:0:0:0:1','2020-05-08 17:21:36',1,NULL),(136,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"admin\",1]',12,'0:0:0:0:0:0:0:1','2020-05-09 09:51:16',1,NULL),(137,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',12,'0:0:0:0:0:0:0:1','2020-05-09 10:23:55',1,NULL),(162,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',28,'127.0.0.1','2020-05-11 13:03:18',1,NULL),(163,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',24,'0:0:0:0:0:0:0:1','2020-05-11 14:34:10',1,NULL),(164,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',20,'0:0:0:0:0:0:0:1','2020-05-11 17:50:48',1,NULL),(165,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",2]',20,'0:0:0:0:0:0:0:1','2020-05-11 17:50:52',1,NULL),(166,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",1]',13,'0:0:0:0:0:0:0:1','2020-05-11 17:50:53',1,NULL),(167,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",2]',23,'0:0:0:0:0:0:0:1','2020-05-11 17:50:55',1,NULL),(168,'admin','查询用户','com.cy.pj.sys.service.impl.SysUserServiceImpl.findPageObjects','[\"\",6]',10,'0:0:0:0:0:0:0:1','2020-05-11 17:50:57',1,NULL),(175,'cgb','日志分页查询','com.cy.pj.sys.service.impl.SysUserServiceImpl.findUsers','[{\"id\":null,\"username\":null,\"password\":null,\"salt\":null,\"mobile\":null,\"email\":null,\"valid\":1,\"deptId\":null,\"deptName\":null,\"roleIds\":null,\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null}]',69,'0:0:0:0:0:0:0:1','2021-02-04 00:47:41',1,NULL),(176,'Jason','删除公告','com.cy.pj.notice.service.impl.SysNoticeServiceImpl.deleteById','[1,2,3,4]',1000,'192.168.11.19','2021-03-16 10:40:54',1,NULL),(177,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',78,'192.168.100.11','2021-03-17 17:13:24',1,''),(178,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',7,'192.168.100.11','2021-03-17 17:13:34',1,''),(179,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-17 17:13:38',1,''),(180,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-17 17:14:18',1,''),(181,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-17 17:14:23',1,''),(182,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',7,'192.168.100.11','2021-03-17 17:14:43',1,''),(183,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-17 17:14:52',1,''),(184,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',9,'192.168.100.11','2021-03-17 17:14:59',1,''),(185,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findById','[10]',3,'192.168.100.11','2021-03-18 11:44:41',1,''),(186,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',85,'192.168.100.11','2021-03-18 14:07:03',1,''),(187,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',84,'192.168.100.11','2021-03-18 14:17:03',1,''),(188,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 14:17:22',1,''),(189,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',84,'192.168.100.11','2021-03-18 14:24:16',1,''),(190,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',9,'192.168.100.11','2021-03-18 14:32:09',1,''),(191,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',84,'192.168.100.11','2021-03-18 14:35:08',1,''),(192,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 14:35:08',1,''),(193,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 14:35:09',1,''),(194,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 14:35:10',1,''),(195,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 14:35:11',1,''),(196,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 14:35:11',1,''),(197,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:17',1,''),(198,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 14:35:20',1,''),(199,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 14:35:21',1,''),(200,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:22',1,''),(201,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 14:35:23',1,''),(202,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:24',1,''),(203,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',4,'192.168.100.11','2021-03-18 14:35:24',1,''),(204,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',4,'192.168.100.11','2021-03-18 14:35:25',1,''),(205,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',4,'192.168.100.11','2021-03-18 14:35:25',1,''),(206,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:26',1,''),(207,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',4,'192.168.100.11','2021-03-18 14:35:32',1,''),(208,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:48',1,''),(209,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 14:35:51',1,''),(210,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',88,'192.168.100.11','2021-03-18 14:50:46',1,''),(211,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 14:50:49',1,''),(212,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',85,'192.168.100.11','2021-03-18 15:23:01',1,''),(213,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',124,'192.168.100.11','2021-03-18 15:23:01',0,'org.springframework.util.concurrent.ListenableFutureTask cannot be cast to org.springframework.scheduling.annotation.AsyncResult'),(214,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',84,'192.168.100.11','2021-03-18 15:28:34',1,''),(215,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 15:28:35',1,''),(216,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',7,'192.168.100.11','2021-03-18 15:28:36',1,''),(217,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 15:28:37',1,''),(218,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',87,'192.168.100.11','2021-03-18 16:08:13',1,''),(219,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',7,'192.168.100.11','2021-03-18 16:08:14',1,''),(220,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 16:08:14',1,''),(221,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 16:08:14',1,''),(222,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 16:08:14',1,''),(223,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',8,'192.168.100.11','2021-03-18 16:08:14',1,''),(224,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 16:09:36',1,''),(225,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',6,'192.168.100.11','2021-03-18 16:09:48',1,''),(226,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 16:09:48',1,''),(227,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 16:09:48',1,''),(228,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',4,'192.168.100.11','2021-03-18 16:09:49',1,''),(229,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',16,'192.168.100.11','2021-03-18 16:09:49',1,''),(230,'tony','查询日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.findLogs','[{\"id\":null,\"ip\":null,\"username\":null,\"operation\":null,\"method\":null,\"params\":null,\"time\":null,\"status\":null,\"error\":null,\"createdTime\":null}]',5,'192.168.100.11','2021-03-18 16:09:48',1,''),(234,'tony','删除日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.deleteById','[[232,233]]',47,'192.168.100.11','2021-03-18 17:18:44',0,'删除失败'),(235,'tony','删除日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.deleteById','[[231,234]]',66,'192.168.100.11','2021-03-19 09:46:51',0,'删除失败'),(236,'tony','删除日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.deleteById','[[234,235]]',52,'192.168.100.11','2021-03-19 09:51:09',0,'删除失败'),(237,'tony','删除日志','com.cy.pj.sys.service.impl.SysLogServiceImpl.deleteById','[[234,235]]',54755,'192.168.100.11','2021-03-19 10:18:03',0,'删除失败');
/*!40000 ALTER TABLE `sys_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menus`
--

DROP TABLE IF EXISTS `sys_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='资源管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menus`
--

LOCK TABLES `sys_menus` WRITE;
/*!40000 ALTER TABLE `sys_menus` DISABLE KEYS */;
INSERT INTO `sys_menus` VALUES (8,'系统管理','请求路径',1,8,NULL,NULL,'','2017-07-12 15:15:59','2020-01-12 14:11:15','admin',NULL),(25,'日志管理','/page/sys/log_list',1,25,NULL,8,'sys:log:view','2017-07-12 15:15:59','2021-02-06 10:05:18','admin',NULL),(45,'用户管理','/page/sys/user_list',1,45,NULL,8,'sys:user:view','2017-07-12 15:15:59','2021-02-06 10:06:31','admin',NULL),(46,'菜单管理','/page/sys/menu_list',1,46,NULL,8,'sys:menu:view','2017-07-12 15:15:59','2020-01-12 14:10:28','admin',NULL),(47,'角色管理','/page/sys/role_list',1,47,NULL,8,'sys:role:view','2017-07-12 15:15:59','2020-01-12 14:10:48','admin',NULL),(115,'查询','/menu/',2,1,NULL,46,'sys:menu:view','2017-07-13 16:33:41','2020-01-12 14:21:29',NULL,NULL),(116,'添加','/menu/',2,2,NULL,46,'sys:menu:add','2017-07-13 16:34:02','2020-01-12 14:21:56',NULL,NULL),(117,'修改','/menu/',2,3,NULL,46,'sys:menu:update','2017-07-13 16:34:25','2020-01-12 14:22:12',NULL,NULL),(118,'删除','/menu/{id}',2,4,NULL,46,'sys:menu:delete','2017-07-13 16:34:46','2020-01-12 14:22:41',NULL,NULL),(119,'查询','/user/',2,1,NULL,45,'sys:user:view','2017-07-13 16:35:05','2020-01-12 14:20:28',NULL,NULL),(120,'查询','/role/',2,1,NULL,47,'sys:role:view','2017-07-13 16:35:26','2020-01-12 14:23:05',NULL,NULL),(126,'新增','/user/',2,2,NULL,45,'sys:user:add','2017-07-21 11:11:34','2020-01-12 14:20:45',NULL,NULL),(127,'修改','/user/',2,3,NULL,45,'sys:user:update','2017-07-21 11:11:56','2020-01-12 14:21:05',NULL,NULL),(128,'添加','/role/',2,2,NULL,47,'sys:role:add','2017-07-21 11:14:24','2020-01-12 14:23:29',NULL,NULL),(129,'修改','/role/',2,3,NULL,47,'sys:role:update','2017-07-21 11:14:48','2020-01-12 14:23:44',NULL,NULL),(130,'删除','/role/{id}',2,4,NULL,47,'sys:role:delete','2017-07-21 11:15:09','2020-01-12 14:24:05',NULL,NULL),(131,'删除','/log/{id}',2,27,NULL,25,'sys:log:delete','2020-01-10 17:34:31','2020-01-10 17:34:31',NULL,NULL),(137,'禁用启用','/user/{id}/{valid}',2,123,NULL,45,'sys:user:update','2020-01-12 09:34:58','2020-01-12 09:34:58',NULL,NULL),(143,'查询','/log/',2,210,NULL,25,'sys:log:view','2020-01-12 14:20:02','2020-01-12 14:20:02',NULL,NULL),(145,'修改密码','/page/sys/pwd_edit',1,17,NULL,8,'sys_pwd_edit','2020-05-09 14:35:48','2020-05-09 14:35:48',NULL,NULL),(146,'商品管理','',1,19,NULL,NULL,'sys:goods:view','2020-05-09 14:38:32','2020-05-09 14:38:32',NULL,NULL),(147,'属性管理','/page/goods/attrlist',1,22,NULL,146,'sys:attr:view','2020-05-09 14:39:46','2021-02-20 00:29:13',NULL,NULL),(148,'类目管理','/page/category/category_list',1,23,NULL,146,'goods:category:view','2020-05-09 14:40:34','2020-05-09 14:40:34',NULL,NULL),(149,'添加','goods/attr/',2,23,NULL,147,'goods:attr:save','2021-02-20 00:31:51','2021-02-20 00:31:51',NULL,NULL),(150,'公告管理','/modules/sys/notice',1,19,NULL,8,'sys:notice:view','2021-02-20 22:52:50','2021-02-20 22:53:29',NULL,NULL),(151,'添加分类','/category/',2,15,NULL,148,'sys:category:add','2021-02-26 11:45:43','2021-02-26 13:14:29',NULL,NULL),(152,'修改分类','/category/',2,16,NULL,148,'sys:category:update','2021-02-26 11:54:18','2021-02-26 11:54:18',NULL,NULL),(155,'品牌管理','/brand/',1,126,'非常棒',146,'goods:brand:view','2021-03-22 17:06:21','2021-03-22 17:41:52',NULL,NULL),(156,'查询','/notice/',2,15,NULL,150,'sys:notice:view','2021-03-23 17:15:06','2021-03-23 17:15:06',NULL,NULL);
/*!40000 ALTER TABLE `sys_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notices`
--

DROP TABLE IF EXISTS `sys_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notices` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `type` char(1) NOT NULL COMMENT '类型（1 通知 2 公告）',
  `content` varchar(500) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '状态（0 正常 1 关闭）',
  `createdUser` varchar(64) DEFAULT '' COMMENT '创建者',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedUser` varchar(64) DEFAULT '' COMMENT '更新者',
  `modifiedTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notices`
--

LOCK TABLES `sys_notices` WRITE;
/*!40000 ALTER TABLE `sys_notices` DISABLE KEYS */;
INSERT INTO `sys_notices` VALUES (40,'Title-CD','1','Title-CD','0','tony','2021-03-31 14:51:25','tony','2021-03-31 14:51:25','Title-C...'),(41,'Title-CE','1','Title-CE','0','tony','2021-03-31 14:51:35','tony','2021-03-31 14:51:35','Title-C...'),(42,'Title-CF','1','Title-CF','0','tony','2021-03-31 14:51:46','tony','2021-03-31 14:51:46','Title-C...'),(43,'Title-A1111','1','Content-A1111','0',NULL,'2021-03-31 16:39:29',NULL,'2021-03-31 17:46:01',NULL),(44,'Title-A2','2','Content-A2','1',NULL,'2021-03-31 16:42:17',NULL,'2021-03-31 16:42:17',NULL),(45,'Title-D1','2','Content-D1','1',NULL,'2021-03-31 17:15:28',NULL,'2021-03-31 17:47:24',NULL);
/*!40000 ALTER TABLE `sys_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menus`
--

DROP TABLE IF EXISTS `sys_role_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1581 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menus`
--

LOCK TABLES `sys_role_menus` WRITE;
/*!40000 ALTER TABLE `sys_role_menus` DISABLE KEYS */;
INSERT INTO `sys_role_menus` VALUES (1334,NULL,8),(1335,NULL,25),(1336,NULL,131),(1337,NULL,143),(1338,NULL,45),(1339,NULL,119),(1340,NULL,126),(1341,NULL,127),(1342,NULL,137),(1349,49,8),(1350,49,47),(1351,49,120),(1352,49,128),(1353,49,129),(1354,49,130),(1361,47,8),(1362,47,25),(1363,47,131),(1364,47,143),(1365,47,45),(1366,47,119),(1367,47,126),(1368,47,127),(1369,47,137),(1370,47,46),(1371,47,115),(1372,47,116),(1373,47,117),(1374,47,118),(1375,47,47),(1376,47,120),(1377,47,128),(1378,47,129),(1379,47,130),(1380,47,145),(1381,47,146),(1382,47,147),(1383,47,148),(1391,48,8),(1392,48,25),(1393,48,143),(1394,48,47),(1395,48,120),(1396,48,128),(1397,48,129),(1398,48,130),(1399,48,145),(1469,50,8),(1470,50,25),(1471,50,131),(1472,50,143),(1473,50,45),(1474,50,119),(1475,50,126),(1476,50,127),(1477,50,137),(1478,50,46),(1479,50,115),(1480,50,116),(1481,50,117),(1482,50,118),(1483,50,47),(1484,50,120),(1485,50,128),(1486,50,129),(1487,50,130),(1488,50,145),(1489,50,150),(1523,52,8),(1524,52,47),(1525,52,120),(1526,52,128),(1527,52,129),(1528,52,130),(1536,54,8),(1537,54,47),(1538,54,120),(1539,54,128),(1540,54,129),(1541,54,130),(1555,51,8),(1556,51,45),(1557,51,119),(1558,51,145),(1559,51,150),(1560,51,146),(1561,51,147),(1562,51,149),(1563,51,148),(1564,51,151),(1565,51,152),(1570,56,8),(1571,56,25),(1572,56,143),(1573,56,145),(1574,57,8),(1575,57,45),(1576,57,119),(1577,57,146),(1578,57,148),(1579,57,151),(1580,57,152);
/*!40000 ALTER TABLE `sys_role_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles`
--

DROP TABLE IF EXISTS `sys_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles`
--

LOCK TABLES `sys_roles` WRITE;
/*!40000 ALTER TABLE `sys_roles` DISABLE KEYS */;
INSERT INTO `sys_roles` VALUES (47,'超级管理员','负责系统所有模块的管理','2020-04-29 10:59:45','2020-05-09 16:22:24',NULL,NULL),(48,'初级软件工程师','负责代码实现','2020-04-29 11:02:01','2020-05-11 11:29:26',NULL,NULL),(49,'中级软件工程师','负责需求分析，模块设计','2020-04-29 16:05:58','2020-04-29 17:03:20',NULL,NULL),(50,'财务部长','负责公司所有财务规划','2021-02-20 23:32:54','2021-02-26 13:18:37',NULL,NULL),(51,'架构师','负责软件架构设计','2021-02-26 13:15:26','2021-04-01 14:45:55',NULL,NULL),(52,'程序员鼓励师','负责为程序提供咖啡，水果，。。。','2021-03-23 16:23:15','2021-03-23 16:41:21',NULL,NULL),(54,'厨师','负责美味佳肴','2021-03-23 17:10:43','2021-03-23 17:11:19',NULL,NULL),(56,'吐槽师','活跃互联网','2021-04-01 14:54:30','2021-04-01 14:54:30',NULL,NULL),(57,'前端工程师','负责前端设计及编码','2021-04-01 16:59:27','2021-04-01 16:59:27',NULL,NULL);
/*!40000 ALTER TABLE `sys_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_roles`
--

DROP TABLE IF EXISTS `sys_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_roles`
--

LOCK TABLES `sys_user_roles` WRITE;
/*!40000 ALTER TABLE `sys_user_roles` DISABLE KEYS */;
INSERT INTO `sys_user_roles` VALUES (70,18,49),(71,17,48),(72,16,47),(75,1,47),(78,20,48),(79,20,49),(82,21,48),(83,19,49),(84,19,51),(85,22,48),(88,24,51),(89,24,52),(90,26,51),(91,26,52),(92,27,51),(93,27,52),(94,28,56),(95,23,57);
/*!40000 ALTER TABLE `sys_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `deptId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'admin','c4c33035c5d8e840616c128db9f87b25','016a0948-b581-43aa-8a5f-9bb76a80e737','admin@t.cn','13624356789',1,2,NULL,'2020-05-08 17:21:55',NULL,NULL),(2,'zhangli','bdcf69375bdb532e50279b91eb00940d','5e7cbd36-e897-4951-b42b-19809caf3caa','zhangli@t.cn','13678909876',1,3,'2017-07-18 10:01:51','2021-03-26 15:48:28',NULL,'admin'),(3,'wangke','c5dc32ec66041aeddf432b3146bd2257','5e3e1475-1ea9-4a6a-976e-b07545827139','wangke@t.cn','18678900987',1,3,'2017-07-18 11:40:53','2018-04-22 20:48:52',NULL,NULL),(4,'zhangql','+HBpqtPuj9KLBIpneR5X0A==','ed487fac-9952-45c9-acaa-21dab9c689cc','zhangql@t.cn','13678909876',1,2,'2017-07-18 12:17:30','2018-04-22 20:48:04',NULL,NULL),(5,'fanwei','1acab7425d6dfae670f26bd160518902','34fbedb2-e135-4f8d-b595-24360edc348d','fanwei@t.cn','13876545678',1,3,'2017-07-20 17:03:22','2018-04-22 20:47:49',NULL,NULL),(6,'wumei','431ebdcccf3404787a144f9ba669a8e2','8a14f46f-7a17-4dfe-85ab-08e63cb618ce','wumei@t.cn','13567898765',1,2,'2017-07-21 10:57:40','2018-04-22 20:46:49',NULL,NULL),(7,'user-003','689c673a0d8bda7ee795dd45a126ae96','3faa1d2b-a99f-4ffb-9d29-0e71563258af','t@t.com','123',1,3,'2018-01-12 23:19:58','2018-04-22 20:46:07',NULL,'admin'),(9,'user-002','e10adc3949ba59abbe56e057f20f883e',NULL,'t@t.com','123',1,3,'2018-01-12 23:20:31','2018-04-22 20:45:55',NULL,NULL),(12,'user-001','5bf6593afd106aa544000d559f0c2241','9528e727-2901-4746-8558-9010d9607da2','t@t.com','123',1,3,'2018-01-13 01:48:32','2018-04-22 20:45:37',NULL,NULL),(13,'user-c','2630d8bd50c76abf001a9daceeae97e6','30fff766-e245-4a93-9f5e-6eb2c2cec494','t@t.com','123456',1,3,'2018-01-13 02:01:56','2020-04-30 12:02:24',NULL,'admin'),(15,'user-b','2ce586af95c6431112092f653659c85f','eaedbaee-d760-40e4-b71e-ccecf01b6187','t@t.com','123456',1,3,'2018-01-13 02:02:06','2020-04-30 12:01:31',NULL,'admin'),(16,'lifa','710058cf374a38d76510d009f63bf28d','e8e35b96-bbdd-4090-81ee-b71a36141760','lf@t.com','1111111111',0,2,'2018-04-22 19:43:11','2020-05-07 09:52:33',NULL,'admin'),(17,'xiaoli','dd93e70c79e12b5c734080fb9ee91229','e0036733-1378-4ff0-a5c3-8ddc5f8e0db2','xl@t.com','11122222',0,6,'2020-01-12 10:37:47','2020-05-07 09:58:05',NULL,'admin'),(18,'wangzhen','9b12c8e94530a0d95d9e91f4d1429c4b','4d54a593-6da5-44a8-87ca-4db7d92a526c','wz@t.com','1111111111111',1,6,'2020-04-30 14:45:10','2020-05-06 11:19:35',NULL,'admin'),(19,'liqiang','302b67d0710e887cf8164426cd59da28','4ddeb5b4-96dc-4def-a2d7-c6c924701b76','lq@t.com','1111111111111',1,6,'2020-05-07 10:35:07','2021-02-26 13:27:10',NULL,NULL),(20,'guoqing','d16322520b08734174e271e263ace655','65ec8f97-ec0f-45ff-a63d-9a7f8061c6dc','gq@t.com','1111111111',0,2,'2020-05-07 10:39:19','2021-02-20 23:34:42',NULL,'admin'),(21,'xiaosun','bdfad73e1917e4b70953c8db620c8091','a8b820a3-ad78-4e9e-97f6-4d3400f10aea','123','213123123',1,6,'2021-02-20 23:36:14','2021-02-20 23:39:05',NULL,NULL),(22,'laohu','690662a1e33a60ff1910c3cfb0fe2715','d41427ba-9ae6-484c-86b8-462c731c8a2c','laohu@t.com','111111111111',1,4,'2021-02-26 13:28:02','2021-02-26 13:28:02',NULL,NULL),(23,'guodegang','5ed22193249c50d1d0a34b3edc284840','680ade4e-a3f0-4089-99f9-5f2325020487','gdg@t.com','111111111',1,8,'2021-03-23 17:12:28','2021-04-01 17:00:28',NULL,'admin'),(24,'tony','e0f58ff154a9b223633e7b5755207a78','317d0b67-40d0-487b-aeb4-630321095e23','tyg@t.com','2222222',1,8,'2021-03-24 16:07:19','2021-03-24 16:09:14',NULL,NULL),(26,'tedu-tony','7d233db0caf7883d6e17eec37411762c','9db45475-f524-4885-9fc3-52d73cd20d4f','ttyg@t.com','2222222',1,8,'2021-03-24 17:13:35','2021-03-24 17:13:35',NULL,NULL),(27,'tedu-haitao','9f0ab47de94f9a0ddc44aedf4b555f4c','d65ab0be-255f-447c-a130-4d55e60265c9','wht@t.com','2222222',1,8,'2021-03-24 17:20:46','2021-03-24 17:20:46',NULL,NULL),(28,'xiaobao','3206a581fb022cdb3a674ab7bc5a7055','6e1a2218-c6a3-4038-8be2-aa82830332bf','xiaobao@t.com','111111111111',1,6,'2021-04-01 14:56:11','2021-04-01 14:56:11',NULL,NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-02  8:53:21
