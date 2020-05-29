-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: mt
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) DEFAULT NULL,
  `path` varchar(64) DEFAULT NULL,
  `componentDir` varchar(64) DEFAULT NULL,
  `component` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `iconCls` varchar(64) DEFAULT NULL,
  `keepAlive` tinyint(1) DEFAULT NULL,
  `requireAuth` tinyint(1) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `undeletable` tinyint(1) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `tenantId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentId`),
  KEY `menu_tenant` (`tenantId`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_tenant` FOREIGN KEY (`tenantId`) REFERENCES `tenant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'/',NULL,NULL,NULL,'所有',NULL,NULL,NULL,1,NULL,NULL,1),(2,'/','/home',NULL,'Home','员工资料','fa fa-user-circle-o',NULL,1,1,NULL,1,NULL),(3,'/','/home',NULL,'Home','人事管理','fa fa-address-card-o',NULL,1,1,NULL,1,NULL),(4,'/','/home',NULL,'Home','薪资管理','fa fa-money',NULL,1,1,NULL,1,NULL),(5,'/','/home',NULL,'Home','统计管理','fa fa-bar-chart',NULL,1,1,NULL,1,NULL),(6,'/','/home',NULL,'Home','系统管理','fa fa-windows',NULL,1,1,NULL,1,NULL),(7,'/employee/basic/**','/emp/basic','emp','EmpBasic','基本资料',NULL,NULL,1,1,NULL,2,NULL),(8,'/employee/advanced/**','/emp/adv','emp','EmpAdv','高级资料',NULL,NULL,1,0,NULL,2,NULL),(9,'/personnel/emp/**','/per/emp','per','PerEmp','员工资料',NULL,NULL,1,0,NULL,3,NULL),(10,'/personnel/ec/**','/per/ec','per','PerEc','员工奖惩',NULL,NULL,1,1,NULL,3,NULL),(11,'/personnel/train/**','/per/train','per','PerTrain','员工培训',NULL,NULL,1,1,NULL,3,NULL),(12,'/personnel/salary/**','/per/salary','per','PerSalary','员工调薪',NULL,NULL,1,1,NULL,3,NULL),(13,'/personnel/remove/**','/per/mv','per','PerMv','员工调动',NULL,NULL,1,1,NULL,3,NULL),(14,'/salary/sob/**','/sal/sob','sal','SalSob','工资账套管理',NULL,NULL,1,1,NULL,4,NULL),(15,'/salary/sobcfg/**','/sal/sobcfg','sal','SalSobCfg','员工账套设置',NULL,NULL,1,1,NULL,4,NULL),(16,'/salary/table/**','/sal/table','sal','SalTable','工资表管理',NULL,NULL,1,1,NULL,4,NULL),(17,'/salary/month/**','/sal/month','sal','SalMonth','月末处理',NULL,NULL,1,1,NULL,4,NULL),(18,'/salary/search/**','/sal/search','sal','SalSearch','工资表查询',NULL,NULL,1,1,NULL,4,NULL),(19,'/statistics/all/**','/sta/all','sta','StaAll','综合信息统计',NULL,NULL,1,1,NULL,5,NULL),(20,'/statistics/score/**','/sta/score','sta','StaScore','员工积分统计',NULL,NULL,1,1,NULL,5,NULL),(21,'/statistics/personnel/**','/sta/pers','sta','StaPers','人事信息统计',NULL,NULL,1,1,NULL,5,NULL),(22,'/statistics/recored/**','/sta/record','sta','StaRecord','人事记录统计',NULL,NULL,1,1,NULL,5,NULL),(23,'/system/basic/**','/sys/basic','sys','SysBasic','基础信息设置',NULL,NULL,1,1,NULL,6,NULL),(24,'/system/cfg/**','/sys/cfg','sys','SysCfg','系统管理',NULL,NULL,1,1,NULL,6,NULL),(25,'/system/log/**','/sys/log','sys','SysLog','操作日志管理',NULL,NULL,1,1,NULL,6,NULL),(26,'/system/hr/**','/sys/hr','sys','SysHr','操作员管理',NULL,NULL,1,1,NULL,6,NULL),(27,'/system/data/**','/sys/data','sys','SysData','备份恢复数据库',NULL,NULL,1,1,NULL,6,NULL),(28,'/system/init/**','/sys/init','sys','SysInit','初始化数据库',NULL,NULL,1,1,NULL,6,NULL),(29,'/','/home',NULL,'Home','系统接入','el-icon-magic-stick',NULL,NULL,1,1,1,2),(31,'/','/home',NULL,'Home','菜单管理','el-icon-menu',NULL,NULL,1,1,1,2),(32,'/tenant/**','/tenant','tenant','Tenant','平台管理','el-icon-office-building',NULL,NULL,1,1,29,2),(33,'/menu/preview/**','/menu/preview','menu','MenuPreview','菜单预览1111','el-icon-view',NULL,NULL,1,1,31,2),(34,'/menu/management/**','/menu/mngm','menu','MenuMngm','菜单设置','el-icon-edit',NULL,NULL,1,1,31,2);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant` varchar(64) DEFAULT NULL,
  `alias` varchar(64) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `contactName` varchar(64) DEFAULT NULL,
  `contactPhone` varchar(64) DEFAULT NULL,
  `contactEmail` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES (1,'All','所有',NULL,NULL,NULL,NULL),(2,'MT','统一菜单管理平台',NULL,'ChkingLee','13061370929','lilinzhen1415@foxmail.com'),(3,'UIM','统一用户管理平台',NULL,'ChkingLee2','13061370920','lilinzhen1416@foxmail');
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29 16:09:47
