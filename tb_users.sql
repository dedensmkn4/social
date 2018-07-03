/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.31-MariaDB : Database - smartbook
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smartbook` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smartbook`;

/*Table structure for table `tb_users` */

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'male',
  `bio` text COLLATE utf8_unicode_ci,
  `profile_details` text COLLATE utf8_unicode_ci,
  `privacy_info` text COLLATE utf8_unicode_ci,
  `design_info` text COLLATE utf8_unicode_ci,
  `cover` text COLLATE utf8_unicode_ci,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fully_started` int(11) NOT NULL DEFAULT '0',
  `avatar` text COLLATE utf8_unicode_ci,
  `auth` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auth_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `verified` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `activated` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_active_time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `city` text COLLATE utf8_unicode_ci,
  `original_cover` text COLLATE utf8_unicode_ci,
  `online_status` int(11) NOT NULL DEFAULT '1',
  `banned` int(11) NOT NULL DEFAULT '0',
  `birth_day` int(11) NOT NULL DEFAULT '0',
  `birth_month` int(11) NOT NULL DEFAULT '0',
  `birth_year` int(11) NOT NULL DEFAULT '0',
  `ldap` smallint(1) DEFAULT NULL,
  `jabatan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `band` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loker` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `divisi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_group` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_subgroup` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ethnic_group` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx1_tbusers` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=73624 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tb_users` */

insert  into `tb_users`(`id`,`fullname`,`username`,`email_address`,`password`,`genre`,`bio`,`profile_details`,`privacy_info`,`design_info`,`cover`,`country`,`fully_started`,`avatar`,`auth`,`auth_id`,`verified`,`admin`,`active`,`activated`,`hash`,`remember_token`,`last_active_time`,`created_at`,`updated_at`,`city`,`original_cover`,`online_status`,`banned`,`birth_day`,`birth_month`,`birth_year`,`ldap`,`jabatan`,`band`,`kota`,`loker`,`divisi`,`param1`,`unit`,`param2`,`religion`,`marital_status`,`employee_group`,`employee_subgroup`,`ethnic_group`,`blood_type`) values (1,'Deden Himawan','himawijaya','himawijaya@gmail.com','$2y$12$A9MYIwewpgsMDjwOvSPivu13fvJBvwMPolAFVQuwtyFhDHO1k5p.2','male','Develop','YTo2OntpOjE7czowOiIiO2k6MjtzOjA6IiI7aTozO3M6MDoiIjtpOjQ7czoxNDoiWkVORCBGcmFtZXdvcmsiO2k6NTtzOjU6IklzbGFtIjtpOjc7czowOiIiO30=','YTo1OntzOjEyOiJzZWxmLW9mZmxpbmUiO2k6MDtzOjExOiJhdmF0YXJfdHlwZSI7czoxOiIxIjtzOjExOiJzZWxmLW9ubGluZSI7aTowO3M6MjA6InBvc3QtcHJpdmFjeS1kZWZhdWx0IjtzOjE6IjYiO3M6NDoibGFuZyI7czoyOiJlbiI7fQ==','YToyOntzOjc6InByb2ZpbGUiO2E6MTA6e3M6NDoidHlwZSI7czo3OiJwcm9maWxlIjtzOjU6InRoZW1lIjtzOjk6ImJsYWNrdG9wbyI7czo2OiJlbmFibGUiO3M6Mjoib24iO3M6ODoiYmdfaW1hZ2UiO3M6MDoiIjtzOjg6ImJnX2NvbG9yIjtzOjA6IiI7czoxMToiYmdfcG9zaXRpb24iO3M6MDoiIjtzOjEzOiJiZ19hdHRhY2htZW50IjtzOjY6InNjcm9sbCI7czo5OiJiZ19yZXBlYXQiO3M6OToibm8tcmVwZWF0IjtzOjEwOiJsaW5rX2NvbG9yIjtzOjA6IiI7czoxNjoiY29udGVudF9iZ19jb2xvciI7czowOiIiO31zOjc6InBhZ2UtODAiO2E6MTA6e3M6NDoidHlwZSI7czo3OiJwYWdlLTgwIjtzOjU6InRoZW1lIjtzOjk6ImJsYWNrdG9wbyI7czo2OiJlbmFibGUiO2I6MDtzOjg6ImJnX2ltYWdlIjtzOjA6IiI7czo4OiJiZ19jb2xvciI7czowOiIiO3M6MTE6ImJnX3Bvc2l0aW9uIjtzOjA6IiI7czoxMzoiYmdfYXR0YWNobWVudCI7czo2OiJzY3JvbGwiO3M6OToiYmdfcmVwZWF0IjtzOjk6Im5vLXJlcGVhdCI7czoxMDoibGlua19jb2xvciI7czowOiIiO3M6MTY6ImNvbnRlbnRfYmdfY29sb3IiO3M6MDoiIjt9fQ==','uploads/temp//_1000_a9983d27864da16abd0f1cdf8f4b3c71.jpg','',1,'uploads/users/1/_%d_8570ee9febe49aa09f3235adb0c8fbe6.png','','',0,1,1,1,'','UunTz7jQWKvkJWdmlfy8EbMe0ZoVbBqpvGqcXmc0yaGzBtl6Fv6mySGSpz4L',1501839113,'2016-02-05 04:50:05','2017-08-07 10:08:25','Bandung','uploads/temp//_1000_a9983d27864da16abd0f1cdf8f4b3c71.jpg',0,0,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Telkom User1X','400792','400791@gmail.comX','$2y$12$A9MYIwewpgsMDjwOvSPivu13fvJBvwMPolAFVQuwtyFhDHO1k5p.2','male','User Telkom 1',NULL,'YTo1OntzOjEyOiJzZWxmLW9mZmxpbmUiO2k6MDtzOjExOiJhdmF0YXJfdHlwZSI7czoxOiIxIjtzOjExOiJzZWxmLW9ubGluZSI7aTowO3M6NDoibGFuZyI7czoyOiJlbiI7czoyMDoicG9zdC1wcml2YWN5LWRlZmF1bHQiO3M6MToiMSI7fQ==',NULL,'uploads/temp//_1000_35c2445557a0a7b75bf3772ad0c9d1d0.jpg','indonesia',1,'uploads/users/2/_%d_070a08d3136c3162d0a6748c1ab6d95d.jpg','','',0,0,1,1,'','omp4M8nnadTtoGmhheM7ejfM4LN3xbe9XQ8A5lnKZonzGetKvAYK2DbwPP8l',1501307050,'2016-02-19 00:19:50','2017-07-30 13:35:52','Bandung','uploads/temp//_1000_35c2445557a0a7b75bf3772ad0c9d1d0.jpg',0,0,1,1,1983,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Telkom User2','telkomuser2','user2@gmail.com','$2y$12$A9MYIwewpgsMDjwOvSPivu13fvJBvwMPolAFVQuwtyFhDHO1k5p.2','male',NULL,NULL,'YTozOntzOjEyOiJzZWxmLW9mZmxpbmUiO2k6MDtzOjExOiJhdmF0YXJfdHlwZSI7aToxO3M6MTE6InNlbGYtb25saW5lIjtpOjA7fQ==',NULL,'uploads/users/3/_1000_98c59da5fb374cda45f9d6f95c4d8964.jpg','indonesia',1,'uploads/users/3/_%d_98c59da5fb374cda45f9d6f95c4d8964.jpg','','',0,1,1,1,'','OJxNXMxw7yimhOr20nZ7DLYnZM0bJuPEHbMuXPgf8pAEfGilDWGLbndaqeh9',1465526558,'2016-02-19 02:03:36','2016-06-10 03:25:50',NULL,NULL,0,0,1,8,1982,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Telkom User3','telkomuser3','user3@gmail.com','$2y$12$A9MYIwewpgsMDjwOvSPivu13fvJBvwMPolAFVQuwtyFhDHO1k5p.2','male',NULL,NULL,'YToyOntzOjEyOiJzZWxmLW9mZmxpbmUiO2k6MDtzOjExOiJhdmF0YXJfdHlwZSI7aToxO30=',NULL,'uploads/users/4/_1000_b33ef712729172ab6433a28ddbea2c89.jpg','indonesia',1,'uploads/users/4/_%d_b33ef712729172ab6433a28ddbea2c89.jpg','','',0,0,1,1,'','',1455848857,'2016-02-19 02:26:12','2016-02-19 08:16:40',NULL,NULL,0,0,1,3,1959,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
