/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wl-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wl-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wl-ssmj`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1z8hn/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm1z8hn/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm1z8hn/upload/picture3.jpg'),(4,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-01-25 11:41:54'),(2,'sex_types','性别',1,'女',NULL,'2021-01-25 11:41:54'),(3,'wlzt_types','物流状态',3,'已收货',NULL,'2021-01-25 11:41:54'),(4,'wlzt_types','物流状态',2,'未发货',NULL,'2021-01-25 11:41:54'),(5,'wlzt_types','物流状态',1,'运输中',NULL,'2021-01-25 11:41:54'),(6,'kdzt_types','快递状态',1,'运输中',NULL,'2021-01-25 11:41:54'),(7,'kdzt_types','快递状态',2,'未发货',NULL,'2021-01-25 11:41:54'),(8,'kdzt_types','快递状态',3,'已收货',NULL,'2021-01-25 11:41:54');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`name`,`account`,`password`,`sex_types`,`img_photo`,`role`) values (1,'小札','111','111',1,'http://localhost:8080/wl-ssmj/file/download?fileName=1614219362085.jpg','客户'),(2,'小站','222','222',2,'http://localhost:8080/wl-ssmj/file/download?fileName=1614219356653.jpg','客户'),(3,'123','123','123456',2,'http://localhost:8080/wl-ssmj/file/download?fileName=1614230909194.jpg','客户');

/*Table structure for table `kuaidi` */

DROP TABLE IF EXISTS `kuaidi`;

CREATE TABLE `kuaidi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '快递单号 Search',
  `vehicle` varchar(200) DEFAULT NULL COMMENT '快递名称 Search',
  `ship` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `shipr` varchar(200) DEFAULT NULL COMMENT '发件人',
  `take` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `taker` varchar(200) DEFAULT NULL COMMENT '收件人',
  `kd_types` tinyint(4) DEFAULT NULL COMMENT '快递公司 Search',
  `kdzt_types` tinyint(4) DEFAULT NULL COMMENT '快递状态 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='快递表';

/*Data for the table `kuaidi` */

insert  into `kuaidi`(`id`,`serial`,`vehicle`,`ship`,`shipr`,`take`,`taker`,`kd_types`,`kdzt_types`) values (1,'快递单号1','快递名称1','发货地址1','发件人1','收货地址1','收件人1',3,2),(2,'快递单号2','快递名称2','发货地址2','发件人2','收货地址2','收件人2',2,3),(3,'快递单号3','快递名称3','发货地址3','发件人3','收货地址3','收件人3',1,3);

/*Table structure for table `kuaidigongshi` */

DROP TABLE IF EXISTS `kuaidigongshi`;

CREATE TABLE `kuaidigongshi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '快递公司名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

/*Data for the table `kuaidigongshi` */

insert  into `kuaidigongshi`(`id`,`name`) values (1,'快递公司1'),(2,'快递公司2'),(3,'快递公司3');

/*Table structure for table `kuaidixiangqing` */

DROP TABLE IF EXISTS `kuaidixiangqing`;

CREATE TABLE `kuaidixiangqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '快递单号 Search',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '详情信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='快递详情';

/*Data for the table `kuaidixiangqing` */

insert  into `kuaidixiangqing`(`id`,`serial`,`notice_content`,`create_time`) values (1,'快递单号1','物流详情1\r\n','2021-02-25 11:59:22'),(2,'快递单号2','物流详情2\r\n','2021-02-25 11:59:31'),(3,'快递单号3','物流详情3\r\n','2021-02-25 11:59:40');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-03 17:15:28','只有管理员可以回复','admin','2021-02-03 17:15:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','eoyzhyxovrtlukah9jx80ea920akdtdt','2021-02-22 17:46:59','2021-02-25 14:27:16'),(2,1,'小札','users','学生','q1k636xfz0983kk7zon9on596uoz3zrl','2021-02-22 21:15:53','2021-02-23 16:23:55'),(3,2,'小站','users','学生','gldb8pkjb3ktgumulw1ka2rlp7ynkqt0','2021-02-22 21:19:14','2021-02-22 22:19:15'),(4,4,'123','users','学生','416fq4b3f5wh5z02mxscd78g0sqjay5h','2021-02-23 15:27:23','2021-02-23 16:27:23'),(5,1,'小札','users','客户','9uh7zm02yb3oyclgk21gh6k5v2dalwjf','2021-02-25 11:25:57','2021-02-25 12:58:24'),(6,3,'123','users','客户','4tp40yqtisnsecuwqc37iprvborg16lw','2021-02-25 13:28:19','2021-02-25 14:28:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `wuliu` */

DROP TABLE IF EXISTS `wuliu`;

CREATE TABLE `wuliu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '物流单号 Search',
  `vehicle` varchar(200) DEFAULT NULL COMMENT '运送车辆 Search',
  `ship` varchar(200) DEFAULT NULL COMMENT '发货地址',
  `take` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `wl_types` tinyint(4) DEFAULT NULL COMMENT '物流公司 Search',
  `wlzt_types` tinyint(4) DEFAULT NULL COMMENT '物流状态 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='物流表';

/*Data for the table `wuliu` */

insert  into `wuliu`(`id`,`serial`,`vehicle`,`ship`,`take`,`wl_types`,`wlzt_types`) values (1,'物流单号1','运送车辆1','发货地址1','收货地址1',1,2),(2,'物流单号2','运送车辆2','发货地址2','收货地址2',2,3),(3,'物流单号3','运送车辆3','发货地址3','收货地址3',3,3);

/*Table structure for table `wuliugongshi` */

DROP TABLE IF EXISTS `wuliugongshi`;

CREATE TABLE `wuliugongshi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '物流公司名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='物流公司表';

/*Data for the table `wuliugongshi` */

insert  into `wuliugongshi`(`id`,`name`) values (1,'物流公司1'),(2,'物流公司2'),(3,'物流公司3');

/*Table structure for table `wuliuxiangqing` */

DROP TABLE IF EXISTS `wuliuxiangqing`;

CREATE TABLE `wuliuxiangqing` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '物流单号 Search',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '详情信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='物流详情';

/*Data for the table `wuliuxiangqing` */

insert  into `wuliuxiangqing`(`id`,`serial`,`notice_content`,`create_time`) values (1,'物流单号1','123\r\n','2021-02-25 11:19:40'),(2,'物流单号2','123\r\n','2021-02-25 11:58:57'),(3,'物流单号3','qwe\r\n','2021-02-25 11:59:02');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2020-12-17 17:35:20','2020/12/17日常公告','日常公告','公告信息','2020-12-17 17:34:43'),(2,'2020-12-17 17:35:40','2020/12/17紧急公告','紧急公告','公告信息','2020-12-17 17:35:22'),(3,'2020-12-17 17:36:13','2020/12/17其他公告','其他公告','公告信息','2020-12-17 17:35:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
