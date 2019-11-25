

DROP TABLE IF EXISTS `kg_address`;



CREATE TABLE `kg_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_address` */



/*Table structure for table `kg_affiliate` */



DROP TABLE IF EXISTS `kg_affiliate`;



CREATE TABLE `kg_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_affiliate` */



/*Table structure for table `kg_affiliate_activity` */



DROP TABLE IF EXISTS `kg_affiliate_activity`;



CREATE TABLE `kg_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_affiliate_activity` */



/*Table structure for table `kg_affiliate_login` */



DROP TABLE IF EXISTS `kg_affiliate_login`;



CREATE TABLE `kg_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_affiliate_login` */



/*Table structure for table `kg_affiliate_transaction` */



DROP TABLE IF EXISTS `kg_affiliate_transaction`;



CREATE TABLE `kg_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_affiliate_transaction` */



/*Table structure for table `kg_api` */



DROP TABLE IF EXISTS `kg_api`;



CREATE TABLE `kg_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `kg_api` */



insert  into `kg_api`(`api_id`,`name`,`key`,`status`,`date_added`,`date_modified`) values (1,'Default','eOOJZQAEnf2KK0uJpzswBchEDGtnpletp3pbdYxHcGuTNRhBmBUGxfgM9J6PvghYTneqKemEh7ddxr2MfLACm32OamFaQti3fiOxS53RWpgeKNobo039lz8Q8ZpCN7cABcEX6Py0AsbhfsnT5DEKNQlfyg1WQW1tVgvtOrQd8NmTPnO14HhYQw20QdC4TG5lIUhu2WPp1U0NfyoO7QqBnOa0obfNom26nbV9IioB11lw0jKGxQZsG10ZatOdFR2S',1,'2016-12-22 21:19:35','2016-12-22 21:19:35');



/*Table structure for table `kg_api_ip` */



DROP TABLE IF EXISTS `kg_api_ip`;



CREATE TABLE `kg_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_api_ip` */



/*Table structure for table `kg_api_session` */



DROP TABLE IF EXISTS `kg_api_session`;



CREATE TABLE `kg_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_api_session` */



/*Table structure for table `kg_attribute` */



DROP TABLE IF EXISTS `kg_attribute`;



CREATE TABLE `kg_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;



/*Data for the table `kg_attribute` */



insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (1,6,1);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (2,6,5);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (3,6,3);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (4,3,1);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (5,3,2);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (6,3,3);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (7,3,4);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (8,3,5);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (9,3,6);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (10,3,7);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (11,3,8);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (12,7,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (13,7,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (14,7,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (15,7,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (16,8,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (17,8,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (18,8,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (19,8,0);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (20,9,1);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (21,9,2);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (22,9,3);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (23,9,4);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (24,9,5);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (25,9,6);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (26,10,1);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (27,10,2);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (28,10,3);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (29,10,4);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (30,10,5);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (31,10,6);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (32,10,7);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (33,10,8);

insert  into `kg_attribute`(`attribute_id`,`attribute_group_id`,`sort_order`) values (34,10,9);



/*Table structure for table `kg_attribute_description` */



DROP TABLE IF EXISTS `kg_attribute_description`;



CREATE TABLE `kg_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_attribute_description` */



insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (1,1,'Description');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (2,1,'No. of Cores');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (4,1,'test 1');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (5,1,'test 2');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (6,1,'test 3');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (7,1,'test 4');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (8,1,'test 5');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (9,1,'test 6');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (10,1,'test 7');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (11,1,'test 8');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (3,1,'Clockspeed');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (12,1,'Adidas');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (13,1,'Puma');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (14,1,'Undraw');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (15,1,'Hummel');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (16,1,'Adidas');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (17,1,'Puma');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (18,1,'Undraw');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (19,1,'Hummel');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (20,1,'10-12 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (21,1,'14-16 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (22,1,'18-20 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (23,1,'22-24 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (24,1,'26-28 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (25,1,'30-32 Years');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (26,1,'Black');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (27,1,'Green');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (28,1,'White');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (29,1,'Blue');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (30,1,'Yellow');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (31,1,'Orange');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (32,1,'Pink');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (33,1,'Gold');

insert  into `kg_attribute_description`(`attribute_id`,`language_id`,`name`) values (34,1,'Silver');



/*Table structure for table `kg_attribute_group` */



DROP TABLE IF EXISTS `kg_attribute_group`;



CREATE TABLE `kg_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



/*Data for the table `kg_attribute_group` */



insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (3,2);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (4,1);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (5,3);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (6,4);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (7,0);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (8,0);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (9,0);

insert  into `kg_attribute_group`(`attribute_group_id`,`sort_order`) values (10,0);



/*Table structure for table `kg_attribute_group_description` */



DROP TABLE IF EXISTS `kg_attribute_group_description`;



CREATE TABLE `kg_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_attribute_group_description` */



insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (3,1,'Memory');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (4,1,'Technical');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (5,1,'Motherboard');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (6,1,'Processor');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (7,1,'Model');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (8,1,'Brands');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (9,1,'Sizes');

insert  into `kg_attribute_group_description`(`attribute_group_id`,`language_id`,`name`) values (10,1,'Colors');



/*Table structure for table `kg_banner` */



DROP TABLE IF EXISTS `kg_banner`;



CREATE TABLE `kg_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `kg_banner` */



insert  into `kg_banner`(`banner_id`,`name`,`status`) values (6,'HP Products',1);

insert  into `kg_banner`(`banner_id`,`name`,`status`) values (7,'Home Page Slideshow',1);

insert  into `kg_banner`(`banner_id`,`name`,`status`) values (8,'Manufacturers',1);



/*Table structure for table `kg_banner_image` */



DROP TABLE IF EXISTS `kg_banner_image`;



CREATE TABLE `kg_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;



/*Data for the table `kg_banner_image` */



insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (87,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (94,8,'','catalog/demo/manufacturer/nfl.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (95,8,'','catalog/demo/manufacturer/redbull.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (96,8,'','catalog/demo/manufacturer/sony.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (91,8,'','catalog/demo/manufacturer/cocacola.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (92,8,'','catalog/demo/manufacturer/burgerking.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (93,8,'','catalog/demo/manufacturer/canon.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (88,8,'','catalog/demo/manufacturer/harley.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (89,8,'','catalog/demo/manufacturer/dell.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (90,8,'','catalog/demo/manufacturer/disney.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (102,7,'','catalog/Slide/banner_slide1.jpg',2);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (97,8,'','catalog/demo/manufacturer/starbucks.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (98,8,'','catalog/demo/manufacturer/nintendo.png',0);

insert  into `kg_banner_image`(`banner_image_id`,`banner_id`,`link`,`image`,`sort_order`) values (101,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/Slide/banner_slide1.jpg',1);



/*Table structure for table `kg_banner_image_description` */



DROP TABLE IF EXISTS `kg_banner_image_description`;



CREATE TABLE `kg_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_banner_image_description` */



insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (102,1,7,'Banner2');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (87,1,6,'HP Banner');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (93,1,8,'Canon');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (92,1,8,'Burger King');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (91,1,8,'Coca Cola');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (90,1,8,'Disney');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (89,1,8,'Dell');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (101,1,7,'Banner1');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (88,1,8,'Harley Davidson');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (94,1,8,'NFL');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (95,1,8,'RedBull');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (96,1,8,'Sony');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (97,1,8,'Starbucks');

insert  into `kg_banner_image_description`(`banner_image_id`,`language_id`,`banner_id`,`title`) values (98,1,8,'Nintendo');



/*Table structure for table `kg_cart` */



DROP TABLE IF EXISTS `kg_cart`;



CREATE TABLE `kg_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `kg_cart` */



/*Table structure for table `kg_category` */



DROP TABLE IF EXISTS `kg_category`;



CREATE TABLE `kg_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `is_feature` int(1) DEFAULT '0' COMMENT '1: means will show in front page',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;



/*Data for the table `kg_category` */



insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (61,'catalog/Gloves/glove-banner.jpg','catalog/Gloves/glove.jpg',0,1,1,3,1,1,'2016-12-27 22:35:03','2016-12-29 23:43:37');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (62,'catalog/banner_item.jpg','catalog/s3.jpg',0,1,1,4,1,1,'2016-12-27 22:35:42','2016-12-29 23:48:16');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (60,'catalog/banner_item.jpg','catalog/Boots/feature_sample.jpg',0,1,1,2,1,1,'2016-12-27 22:34:43','2016-12-29 22:03:30');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (63,'catalog/banner_item.jpg','catalog/s1.jpg',0,1,1,5,1,1,'2016-12-27 22:36:15','2016-12-29 23:48:56');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (64,'catalog/banner_item.jpg','catalog/Kids/s4.jpg',0,1,1,6,1,1,'2016-12-27 22:36:38','2016-12-29 23:47:42');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (67,'','http://prokitsoccer.localhost:81/image/cache/no_image-100x100.png',0,1,1,9,0,1,'2016-12-28 22:02:32','2016-12-28 23:51:54');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (65,'catalog/banner_item.jpg','catalog/Boots/feature_sample.jpg',0,1,1,7,1,1,'2016-12-27 22:36:57','2016-12-29 22:06:18');

insert  into `kg_category`(`category_id`,`image`,`photo`,`parent_id`,`top`,`column`,`sort_order`,`is_feature`,`status`,`date_added`,`date_modified`) values (59,'','',0,1,1,1,0,1,'2016-12-27 22:31:13','2016-12-28 23:52:05');



/*Table structure for table `kg_category_description` */



DROP TABLE IF EXISTS `kg_category_description`;



CREATE TABLE `kg_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_category_description` */



insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (61,1,'GLOVES','','GLOVES','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (62,1,'SHIRTS','','SHIRTS','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (63,1,'EQUIPMENTS','','Equipment','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (64,1,'KIDs','','KIDs','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (65,1,'SALES','','SALES','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (67,1,'CONTACT US','','CONTACT US','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (60,1,'BOOTS','&lt;p&gt;Welcome to our store prokit soccer&lt;br&gt;&lt;/p&gt;','BOOTS','','');

insert  into `kg_category_description`(`category_id`,`language_id`,`name`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (59,1,'HOME','','Home','','');



/*Table structure for table `kg_category_filter` */



DROP TABLE IF EXISTS `kg_category_filter`;



CREATE TABLE `kg_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_category_filter` */



/*Table structure for table `kg_category_path` */



DROP TABLE IF EXISTS `kg_category_path`;



CREATE TABLE `kg_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_category_path` */



insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (61,61,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (60,60,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (67,67,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (65,65,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (64,64,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (63,63,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (62,62,0);

insert  into `kg_category_path`(`category_id`,`path_id`,`level`) values (59,59,0);



/*Table structure for table `kg_category_to_layout` */



DROP TABLE IF EXISTS `kg_category_to_layout`;



CREATE TABLE `kg_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_category_to_layout` */



insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (59,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (60,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (61,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (62,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (63,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (64,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (65,0,0);

insert  into `kg_category_to_layout`(`category_id`,`store_id`,`layout_id`) values (67,0,0);



/*Table structure for table `kg_category_to_store` */



DROP TABLE IF EXISTS `kg_category_to_store`;



CREATE TABLE `kg_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_category_to_store` */



insert  into `kg_category_to_store`(`category_id`,`store_id`) values (59,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (60,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (61,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (62,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (63,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (64,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (65,0);

insert  into `kg_category_to_store`(`category_id`,`store_id`) values (67,0);



/*Table structure for table `kg_country` */



DROP TABLE IF EXISTS `kg_country`;



CREATE TABLE `kg_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;



/*Data for the table `kg_country` */



insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (1,'Afghanistan','AF','AFG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (2,'Albania','AL','ALB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (3,'Algeria','DZ','DZA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (4,'American Samoa','AS','ASM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (5,'Andorra','AD','AND','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (6,'Angola','AO','AGO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (7,'Anguilla','AI','AIA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (8,'Antarctica','AQ','ATA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (9,'Antigua and Barbuda','AG','ATG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (10,'Argentina','AR','ARG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (11,'Armenia','AM','ARM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (12,'Aruba','AW','ABW','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (13,'Australia','AU','AUS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (14,'Austria','AT','AUT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (15,'Azerbaijan','AZ','AZE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (16,'Bahamas','BS','BHS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (17,'Bahrain','BH','BHR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (18,'Bangladesh','BD','BGD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (19,'Barbados','BB','BRB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (20,'Belarus','BY','BLR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (22,'Belize','BZ','BLZ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (23,'Benin','BJ','BEN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (24,'Bermuda','BM','BMU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (25,'Bhutan','BT','BTN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (26,'Bolivia','BO','BOL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (27,'Bosnia and Herzegovina','BA','BIH','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (28,'Botswana','BW','BWA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (29,'Bouvet Island','BV','BVT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (30,'Brazil','BR','BRA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (31,'British Indian Ocean Territory','IO','IOT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (32,'Brunei Darussalam','BN','BRN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (33,'Bulgaria','BG','BGR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (34,'Burkina Faso','BF','BFA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (35,'Burundi','BI','BDI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (36,'Cambodia','KH','KHM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (37,'Cameroon','CM','CMR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (38,'Canada','CA','CAN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (39,'Cape Verde','CV','CPV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (40,'Cayman Islands','KY','CYM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (41,'Central African Republic','CF','CAF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (42,'Chad','TD','TCD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (43,'Chile','CL','CHL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (44,'China','CN','CHN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (45,'Christmas Island','CX','CXR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (46,'Cocos (Keeling) Islands','CC','CCK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (47,'Colombia','CO','COL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (48,'Comoros','KM','COM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (49,'Congo','CG','COG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (50,'Cook Islands','CK','COK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (51,'Costa Rica','CR','CRI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (52,'Cote D\'Ivoire','CI','CIV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (53,'Croatia','HR','HRV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (54,'Cuba','CU','CUB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (55,'Cyprus','CY','CYP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (56,'Czech Republic','CZ','CZE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (57,'Denmark','DK','DNK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (58,'Djibouti','DJ','DJI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (59,'Dominica','DM','DMA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (60,'Dominican Republic','DO','DOM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (61,'East Timor','TL','TLS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (62,'Ecuador','EC','ECU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (63,'Egypt','EG','EGY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (64,'El Salvador','SV','SLV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (65,'Equatorial Guinea','GQ','GNQ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (66,'Eritrea','ER','ERI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (67,'Estonia','EE','EST','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (68,'Ethiopia','ET','ETH','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (69,'Falkland Islands (Malvinas)','FK','FLK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (70,'Faroe Islands','FO','FRO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (71,'Fiji','FJ','FJI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (72,'Finland','FI','FIN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (75,'French Guiana','GF','GUF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (76,'French Polynesia','PF','PYF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (77,'French Southern Territories','TF','ATF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (78,'Gabon','GA','GAB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (79,'Gambia','GM','GMB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (80,'Georgia','GE','GEO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (82,'Ghana','GH','GHA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (83,'Gibraltar','GI','GIB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (84,'Greece','GR','GRC','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (85,'Greenland','GL','GRL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (86,'Grenada','GD','GRD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (87,'Guadeloupe','GP','GLP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (88,'Guam','GU','GUM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (89,'Guatemala','GT','GTM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (90,'Guinea','GN','GIN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (91,'Guinea-Bissau','GW','GNB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (92,'Guyana','GY','GUY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (93,'Haiti','HT','HTI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (94,'Heard and Mc Donald Islands','HM','HMD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (95,'Honduras','HN','HND','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (96,'Hong Kong','HK','HKG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (97,'Hungary','HU','HUN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (98,'Iceland','IS','ISL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (99,'India','IN','IND','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (100,'Indonesia','ID','IDN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (101,'Iran (Islamic Republic of)','IR','IRN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (102,'Iraq','IQ','IRQ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (103,'Ireland','IE','IRL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (104,'Israel','IL','ISR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (105,'Italy','IT','ITA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (106,'Jamaica','JM','JAM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (107,'Japan','JP','JPN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (108,'Jordan','JO','JOR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (109,'Kazakhstan','KZ','KAZ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (110,'Kenya','KE','KEN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (111,'Kiribati','KI','KIR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (112,'North Korea','KP','PRK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (113,'South Korea','KR','KOR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (114,'Kuwait','KW','KWT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (115,'Kyrgyzstan','KG','KGZ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (116,'Lao People\'s Democratic Republic','LA','LAO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (117,'Latvia','LV','LVA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (118,'Lebanon','LB','LBN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (119,'Lesotho','LS','LSO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (120,'Liberia','LR','LBR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (121,'Libyan Arab Jamahiriya','LY','LBY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (122,'Liechtenstein','LI','LIE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (123,'Lithuania','LT','LTU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (124,'Luxembourg','LU','LUX','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (125,'Macau','MO','MAC','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (126,'FYROM','MK','MKD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (127,'Madagascar','MG','MDG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (128,'Malawi','MW','MWI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (129,'Malaysia','MY','MYS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (130,'Maldives','MV','MDV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (131,'Mali','ML','MLI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (132,'Malta','MT','MLT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (133,'Marshall Islands','MH','MHL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (134,'Martinique','MQ','MTQ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (135,'Mauritania','MR','MRT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (136,'Mauritius','MU','MUS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (137,'Mayotte','YT','MYT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (138,'Mexico','MX','MEX','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (139,'Micronesia, Federated States of','FM','FSM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (140,'Moldova, Republic of','MD','MDA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (141,'Monaco','MC','MCO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (142,'Mongolia','MN','MNG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (143,'Montserrat','MS','MSR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (144,'Morocco','MA','MAR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (145,'Mozambique','MZ','MOZ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (146,'Myanmar','MM','MMR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (147,'Namibia','NA','NAM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (148,'Nauru','NR','NRU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (149,'Nepal','NP','NPL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (150,'Netherlands','NL','NLD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (151,'Netherlands Antilles','AN','ANT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (152,'New Caledonia','NC','NCL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (153,'New Zealand','NZ','NZL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (154,'Nicaragua','NI','NIC','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (155,'Niger','NE','NER','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (156,'Nigeria','NG','NGA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (157,'Niue','NU','NIU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (158,'Norfolk Island','NF','NFK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (159,'Northern Mariana Islands','MP','MNP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (160,'Norway','NO','NOR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (161,'Oman','OM','OMN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (162,'Pakistan','PK','PAK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (163,'Palau','PW','PLW','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (164,'Panama','PA','PAN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (165,'Papua New Guinea','PG','PNG','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (166,'Paraguay','PY','PRY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (167,'Peru','PE','PER','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (168,'Philippines','PH','PHL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (169,'Pitcairn','PN','PCN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (170,'Poland','PL','POL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (171,'Portugal','PT','PRT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (172,'Puerto Rico','PR','PRI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (173,'Qatar','QA','QAT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (174,'Reunion','RE','REU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (175,'Romania','RO','ROM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (176,'Russian Federation','RU','RUS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (177,'Rwanda','RW','RWA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (178,'Saint Kitts and Nevis','KN','KNA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (179,'Saint Lucia','LC','LCA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (180,'Saint Vincent and the Grenadines','VC','VCT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (181,'Samoa','WS','WSM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (182,'San Marino','SM','SMR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (183,'Sao Tome and Principe','ST','STP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (184,'Saudi Arabia','SA','SAU','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (185,'Senegal','SN','SEN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (186,'Seychelles','SC','SYC','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (187,'Sierra Leone','SL','SLE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (188,'Singapore','SG','SGP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (190,'Slovenia','SI','SVN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (191,'Solomon Islands','SB','SLB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (192,'Somalia','SO','SOM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (193,'South Africa','ZA','ZAF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (195,'Spain','ES','ESP','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (196,'Sri Lanka','LK','LKA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (197,'St. Helena','SH','SHN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (198,'St. Pierre and Miquelon','PM','SPM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (199,'Sudan','SD','SDN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (200,'Suriname','SR','SUR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (202,'Swaziland','SZ','SWZ','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (204,'Switzerland','CH','CHE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (205,'Syrian Arab Republic','SY','SYR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (206,'Taiwan','TW','TWN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (207,'Tajikistan','TJ','TJK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (208,'Tanzania, United Republic of','TZ','TZA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (209,'Thailand','TH','THA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (210,'Togo','TG','TGO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (211,'Tokelau','TK','TKL','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (212,'Tonga','TO','TON','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (213,'Trinidad and Tobago','TT','TTO','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (214,'Tunisia','TN','TUN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (215,'Turkey','TR','TUR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (216,'Turkmenistan','TM','TKM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (217,'Turks and Caicos Islands','TC','TCA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (218,'Tuvalu','TV','TUV','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (219,'Uganda','UG','UGA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (220,'Ukraine','UA','UKR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (221,'United Arab Emirates','AE','ARE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (222,'United Kingdom','GB','GBR','',1,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (224,'United States Minor Outlying Islands','UM','UMI','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (225,'Uruguay','UY','URY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (226,'Uzbekistan','UZ','UZB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (227,'Vanuatu','VU','VUT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (228,'Vatican City State (Holy See)','VA','VAT','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (229,'Venezuela','VE','VEN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (230,'Viet Nam','VN','VNM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (231,'Virgin Islands (British)','VG','VGB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (232,'Virgin Islands (U.S.)','VI','VIR','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (233,'Wallis and Futuna Islands','WF','WLF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (234,'Western Sahara','EH','ESH','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (235,'Yemen','YE','YEM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (237,'Democratic Republic of Congo','CD','COD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (238,'Zambia','ZM','ZMB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (239,'Zimbabwe','ZW','ZWE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (242,'Montenegro','ME','MNE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (243,'Serbia','RS','SRB','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (244,'Aaland Islands','AX','ALA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (246,'Curacao','CW','CUW','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (247,'Palestinian Territory, Occupied','PS','PSE','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (248,'South Sudan','SS','SSD','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (249,'St. Barthelemy','BL','BLM','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (250,'St. Martin (French part)','MF','MAF','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (251,'Canary Islands','IC','ICA','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (252,'Ascension Island (British)','AC','ASC','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (253,'Kosovo, Republic of','XK','UNK','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (254,'Isle of Man','IM','IMN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (255,'Tristan da Cunha','TA','SHN','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (256,'Guernsey','GG','GGY','',0,1);

insert  into `kg_country`(`country_id`,`name`,`iso_code_2`,`iso_code_3`,`address_format`,`postcode_required`,`status`) values (257,'Jersey','JE','JEY','',0,1);



/*Table structure for table `kg_coupon` */



DROP TABLE IF EXISTS `kg_coupon`;



CREATE TABLE `kg_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



/*Data for the table `kg_coupon` */



insert  into `kg_coupon`(`coupon_id`,`name`,`code`,`type`,`discount`,`logged`,`shipping`,`total`,`date_start`,`date_end`,`uses_total`,`uses_customer`,`status`,`date_added`) values (4,'-10% Discount','2222','P','10.0000',0,0,'0.0000','2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03');

insert  into `kg_coupon`(`coupon_id`,`name`,`code`,`type`,`discount`,`logged`,`shipping`,`total`,`date_start`,`date_end`,`uses_total`,`uses_customer`,`status`,`date_added`) values (5,'Free Shipping','3333','P','0.0000',0,1,'100.0000','2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53');

insert  into `kg_coupon`(`coupon_id`,`name`,`code`,`type`,`discount`,`logged`,`shipping`,`total`,`date_start`,`date_end`,`uses_total`,`uses_customer`,`status`,`date_added`) values (6,'-10.00 Discount','1111','F','10.0000',0,0,'10.0000','2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');



/*Table structure for table `kg_coupon_category` */



DROP TABLE IF EXISTS `kg_coupon_category`;



CREATE TABLE `kg_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_coupon_category` */



/*Table structure for table `kg_coupon_history` */



DROP TABLE IF EXISTS `kg_coupon_history`;



CREATE TABLE `kg_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_coupon_history` */



/*Table structure for table `kg_coupon_product` */



DROP TABLE IF EXISTS `kg_coupon_product`;



CREATE TABLE `kg_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_coupon_product` */



/*Table structure for table `kg_currency` */



DROP TABLE IF EXISTS `kg_currency`;



CREATE TABLE `kg_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `kg_currency` */



insert  into `kg_currency`(`currency_id`,`title`,`code`,`symbol_left`,`symbol_right`,`decimal_place`,`value`,`status`,`date_modified`) values (1,'Pound Sterling','GBP','£','','2',0.81660002,1,'2016-12-29 07:04:29');

insert  into `kg_currency`(`currency_id`,`title`,`code`,`symbol_left`,`symbol_right`,`decimal_place`,`value`,`status`,`date_modified`) values (2,'US Dollar','USD','$','','2',1.00000000,1,'2016-12-29 14:01:26');

insert  into `kg_currency`(`currency_id`,`title`,`code`,`symbol_left`,`symbol_right`,`decimal_place`,`value`,`status`,`date_modified`) values (3,'Euro','EUR','','€','2',0.95569998,1,'2016-12-29 07:04:29');



/*Table structure for table `kg_custom_field` */



DROP TABLE IF EXISTS `kg_custom_field`;



CREATE TABLE `kg_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_custom_field` */



/*Table structure for table `kg_custom_field_customer_group` */



DROP TABLE IF EXISTS `kg_custom_field_customer_group`;



CREATE TABLE `kg_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_custom_field_customer_group` */



/*Table structure for table `kg_custom_field_description` */



DROP TABLE IF EXISTS `kg_custom_field_description`;



CREATE TABLE `kg_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_custom_field_description` */



/*Table structure for table `kg_custom_field_value` */



DROP TABLE IF EXISTS `kg_custom_field_value`;



CREATE TABLE `kg_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_custom_field_value` */



/*Table structure for table `kg_custom_field_value_description` */



DROP TABLE IF EXISTS `kg_custom_field_value_description`;



CREATE TABLE `kg_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_custom_field_value_description` */



/*Table structure for table `kg_customer` */



DROP TABLE IF EXISTS `kg_customer`;



CREATE TABLE `kg_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer` */



/*Table structure for table `kg_customer_activity` */



DROP TABLE IF EXISTS `kg_customer_activity`;



CREATE TABLE `kg_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_activity` */



/*Table structure for table `kg_customer_group` */



DROP TABLE IF EXISTS `kg_customer_group`;



CREATE TABLE `kg_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_group` */



insert  into `kg_customer_group`(`customer_group_id`,`approval`,`sort_order`) values (1,0,1);



/*Table structure for table `kg_customer_group_description` */



DROP TABLE IF EXISTS `kg_customer_group_description`;



CREATE TABLE `kg_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_group_description` */



insert  into `kg_customer_group_description`(`customer_group_id`,`language_id`,`name`,`description`) values (1,1,'Default','test');



/*Table structure for table `kg_customer_history` */



DROP TABLE IF EXISTS `kg_customer_history`;



CREATE TABLE `kg_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_history` */



/*Table structure for table `kg_customer_ip` */



DROP TABLE IF EXISTS `kg_customer_ip`;



CREATE TABLE `kg_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_ip` */



/*Table structure for table `kg_customer_login` */



DROP TABLE IF EXISTS `kg_customer_login`;



CREATE TABLE `kg_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_login` */



/*Table structure for table `kg_customer_online` */



DROP TABLE IF EXISTS `kg_customer_online`;



CREATE TABLE `kg_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_online` */



/*Table structure for table `kg_customer_reward` */



DROP TABLE IF EXISTS `kg_customer_reward`;



CREATE TABLE `kg_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_reward` */



/*Table structure for table `kg_customer_transaction` */



DROP TABLE IF EXISTS `kg_customer_transaction`;



CREATE TABLE `kg_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_transaction` */



/*Table structure for table `kg_customer_wishlist` */



DROP TABLE IF EXISTS `kg_customer_wishlist`;



CREATE TABLE `kg_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_customer_wishlist` */



/*Table structure for table `kg_download` */



DROP TABLE IF EXISTS `kg_download`;



CREATE TABLE `kg_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_download` */



/*Table structure for table `kg_download_description` */



DROP TABLE IF EXISTS `kg_download_description`;



CREATE TABLE `kg_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_download_description` */



/*Table structure for table `kg_event` */



DROP TABLE IF EXISTS `kg_event`;



CREATE TABLE `kg_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `kg_event` */



insert  into `kg_event`(`event_id`,`code`,`trigger`,`action`) values (1,'voucher','catalog/model/checkout/order/addHistory/after','total/voucher/send');



/*Table structure for table `kg_extension` */



DROP TABLE IF EXISTS `kg_extension`;



CREATE TABLE `kg_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;



/*Data for the table `kg_extension` */



insert  into `kg_extension`(`extension_id`,`type`,`code`) values (1,'payment','cod');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (2,'total','shipping');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (3,'total','sub_total');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (4,'total','tax');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (5,'total','total');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (6,'module','banner');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (7,'module','carousel');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (8,'total','credit');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (9,'shipping','flat');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (10,'total','handling');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (11,'total','low_order_fee');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (12,'total','coupon');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (13,'module','category');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (14,'module','account');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (15,'total','reward');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (16,'total','voucher');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (17,'payment','free_checkout');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (18,'module','featured');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (19,'module','slideshow');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (20,'theme','theme_default');

insert  into `kg_extension`(`extension_id`,`type`,`code`) values (22,'module','latest');



/*Table structure for table `kg_filter` */



DROP TABLE IF EXISTS `kg_filter`;



CREATE TABLE `kg_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;



/*Data for the table `kg_filter` */



insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (1,1,1);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (2,1,2);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (3,1,3);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (4,1,4);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (5,1,5);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (6,1,6);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (7,2,1);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (8,2,2);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (9,2,3);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (10,2,4);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (11,2,5);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (12,2,6);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (13,3,1);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (14,3,2);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (15,3,3);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (16,3,4);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (17,3,5);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (18,3,6);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (19,4,1);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (20,4,2);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (21,4,3);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (22,4,4);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (23,4,5);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (24,4,6);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (25,4,7);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (26,4,8);

insert  into `kg_filter`(`filter_id`,`filter_group_id`,`sort_order`) values (27,4,9);



/*Table structure for table `kg_filter_description` */



DROP TABLE IF EXISTS `kg_filter_description`;



CREATE TABLE `kg_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_filter_description` */



insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (1,1,1,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (2,1,1,'Puma');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (3,1,1,'Undraw');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (4,1,1,'Hummel');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (5,1,1,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (6,1,1,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (7,1,2,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (8,1,2,'Puma');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (9,1,2,'Undraw');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (10,1,2,'Hummel');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (11,1,2,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (12,1,2,'Adidas');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (13,1,3,'10-12 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (14,1,3,'14-16 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (15,1,3,'18-20 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (16,1,3,'22-24 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (17,1,3,'26-28 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (18,1,3,'30-22 Years');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (19,1,4,'Black');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (20,1,4,'Green');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (21,1,4,'White');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (22,1,4,'Blue');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (23,1,4,'Yellow');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (24,1,4,'Orange');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (25,1,4,'Pink');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (26,1,4,'Gold');

insert  into `kg_filter_description`(`filter_id`,`language_id`,`filter_group_id`,`name`) values (27,1,4,'Silver');



/*Table structure for table `kg_filter_group` */



DROP TABLE IF EXISTS `kg_filter_group`;



CREATE TABLE `kg_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



/*Data for the table `kg_filter_group` */



insert  into `kg_filter_group`(`filter_group_id`,`sort_order`) values (1,1);

insert  into `kg_filter_group`(`filter_group_id`,`sort_order`) values (2,2);

insert  into `kg_filter_group`(`filter_group_id`,`sort_order`) values (3,3);

insert  into `kg_filter_group`(`filter_group_id`,`sort_order`) values (4,4);



/*Table structure for table `kg_filter_group_description` */



DROP TABLE IF EXISTS `kg_filter_group_description`;



CREATE TABLE `kg_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_filter_group_description` */



insert  into `kg_filter_group_description`(`filter_group_id`,`language_id`,`name`) values (1,1,'MODEL');

insert  into `kg_filter_group_description`(`filter_group_id`,`language_id`,`name`) values (2,1,'BRANDS');

insert  into `kg_filter_group_description`(`filter_group_id`,`language_id`,`name`) values (3,1,'SIZES');

insert  into `kg_filter_group_description`(`filter_group_id`,`language_id`,`name`) values (4,1,'COLORS');



/*Table structure for table `kg_geo_zone` */



DROP TABLE IF EXISTS `kg_geo_zone`;



CREATE TABLE `kg_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



/*Data for the table `kg_geo_zone` */



insert  into `kg_geo_zone`(`geo_zone_id`,`name`,`description`,`date_modified`,`date_added`) values (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25');

insert  into `kg_geo_zone`(`geo_zone_id`,`name`,`description`,`date_modified`,`date_added`) values (4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');



/*Table structure for table `kg_information` */



DROP TABLE IF EXISTS `kg_information`;



CREATE TABLE `kg_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



/*Data for the table `kg_information` */



insert  into `kg_information`(`information_id`,`bottom`,`sort_order`,`status`) values (3,1,3,1);

insert  into `kg_information`(`information_id`,`bottom`,`sort_order`,`status`) values (4,1,1,1);

insert  into `kg_information`(`information_id`,`bottom`,`sort_order`,`status`) values (5,1,4,1);

insert  into `kg_information`(`information_id`,`bottom`,`sort_order`,`status`) values (6,1,2,1);



/*Table structure for table `kg_information_description` */



DROP TABLE IF EXISTS `kg_information_description`;



CREATE TABLE `kg_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_information_description` */



insert  into `kg_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','','');

insert  into `kg_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','','');

insert  into `kg_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','','');

insert  into `kg_information_description`(`information_id`,`language_id`,`title`,`description`,`meta_title`,`meta_description`,`meta_keyword`) values (6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');



/*Table structure for table `kg_information_to_layout` */



DROP TABLE IF EXISTS `kg_information_to_layout`;



CREATE TABLE `kg_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_information_to_layout` */



/*Table structure for table `kg_information_to_store` */



DROP TABLE IF EXISTS `kg_information_to_store`;



CREATE TABLE `kg_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_information_to_store` */



insert  into `kg_information_to_store`(`information_id`,`store_id`) values (3,0);

insert  into `kg_information_to_store`(`information_id`,`store_id`) values (4,0);

insert  into `kg_information_to_store`(`information_id`,`store_id`) values (5,0);

insert  into `kg_information_to_store`(`information_id`,`store_id`) values (6,0);



/*Table structure for table `kg_language` */



DROP TABLE IF EXISTS `kg_language`;



CREATE TABLE `kg_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `kg_language` */



insert  into `kg_language`(`language_id`,`name`,`code`,`locale`,`image`,`directory`,`sort_order`,`status`) values (1,'English','en-gb','en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);



/*Table structure for table `kg_layout` */



DROP TABLE IF EXISTS `kg_layout`;



CREATE TABLE `kg_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



/*Data for the table `kg_layout` */



insert  into `kg_layout`(`layout_id`,`name`) values (1,'Home');

insert  into `kg_layout`(`layout_id`,`name`) values (2,'Product');

insert  into `kg_layout`(`layout_id`,`name`) values (3,'Category');

insert  into `kg_layout`(`layout_id`,`name`) values (4,'Default');

insert  into `kg_layout`(`layout_id`,`name`) values (5,'Manufacturer');

insert  into `kg_layout`(`layout_id`,`name`) values (6,'Account');

insert  into `kg_layout`(`layout_id`,`name`) values (7,'Checkout');

insert  into `kg_layout`(`layout_id`,`name`) values (8,'Contact');

insert  into `kg_layout`(`layout_id`,`name`) values (9,'Sitemap');

insert  into `kg_layout`(`layout_id`,`name`) values (10,'Affiliate');

insert  into `kg_layout`(`layout_id`,`name`) values (11,'Information');

insert  into `kg_layout`(`layout_id`,`name`) values (12,'Compare');

insert  into `kg_layout`(`layout_id`,`name`) values (13,'Search');



/*Table structure for table `kg_layout_module` */



DROP TABLE IF EXISTS `kg_layout_module`;



CREATE TABLE `kg_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;



/*Data for the table `kg_layout_module` */



insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (2,4,'0','content_top',0);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (3,4,'0','content_top',1);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (20,5,'0','column_left',2);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (69,10,'affiliate','column_right',1);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (68,6,'account','column_right',1);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (89,1,'featured.28','content_top',2);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (90,1,'latest.32','content_bottom',1);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (87,3,'category','column_left',1);

insert  into `kg_layout_module`(`layout_module_id`,`layout_id`,`code`,`position`,`sort_order`) values (88,1,'slideshow.27','content_top',1);



/*Table structure for table `kg_layout_route` */



DROP TABLE IF EXISTS `kg_layout_route`;



CREATE TABLE `kg_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;



/*Data for the table `kg_layout_route` */



insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (38,6,0,'account/%');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (17,10,0,'affiliate/%');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (63,3,0,'product/category');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (64,1,0,'common/home');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (20,2,0,'product/product');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (24,11,0,'information/information');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (23,7,0,'checkout/%');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (31,8,0,'information/contact');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (32,9,0,'information/sitemap');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (34,4,0,'');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (45,5,0,'product/manufacturer');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (52,12,0,'product/compare');

insert  into `kg_layout_route`(`layout_route_id`,`layout_id`,`store_id`,`route`) values (53,13,0,'product/search');



/*Table structure for table `kg_length_class` */



DROP TABLE IF EXISTS `kg_length_class`;



CREATE TABLE `kg_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `kg_length_class` */



insert  into `kg_length_class`(`length_class_id`,`value`) values (1,'1.00000000');

insert  into `kg_length_class`(`length_class_id`,`value`) values (2,'10.00000000');

insert  into `kg_length_class`(`length_class_id`,`value`) values (3,'0.39370000');



/*Table structure for table `kg_length_class_description` */



DROP TABLE IF EXISTS `kg_length_class_description`;



CREATE TABLE `kg_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_length_class_description` */



insert  into `kg_length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (1,1,'Centimeter','cm');

insert  into `kg_length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (2,1,'Millimeter','mm');

insert  into `kg_length_class_description`(`length_class_id`,`language_id`,`title`,`unit`) values (3,1,'Inch','in');



/*Table structure for table `kg_location` */



DROP TABLE IF EXISTS `kg_location`;



CREATE TABLE `kg_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_location` */



/*Table structure for table `kg_manufacturer` */



DROP TABLE IF EXISTS `kg_manufacturer`;



CREATE TABLE `kg_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;



/*Data for the table `kg_manufacturer` */



insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (5,'HTC','catalog/demo/htc_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (6,'Palm','catalog/demo/palm_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (8,'Apple','catalog/demo/apple_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (9,'Canon','catalog/demo/canon_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (10,'Sony','catalog/demo/sony_logo.jpg',0);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (11,'Adidas','',1);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (12,'Nike','',2);

insert  into `kg_manufacturer`(`manufacturer_id`,`name`,`image`,`sort_order`) values (13,'Cupa','',3);



/*Table structure for table `kg_manufacturer_to_store` */



DROP TABLE IF EXISTS `kg_manufacturer_to_store`;



CREATE TABLE `kg_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_manufacturer_to_store` */



insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (5,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (6,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (7,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (8,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (9,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (10,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (11,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (12,0);

insert  into `kg_manufacturer_to_store`(`manufacturer_id`,`store_id`) values (13,0);



/*Table structure for table `kg_marketing` */



DROP TABLE IF EXISTS `kg_marketing`;



CREATE TABLE `kg_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_marketing` */



/*Table structure for table `kg_modification` */



DROP TABLE IF EXISTS `kg_modification`;



CREATE TABLE `kg_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_modification` */



/*Table structure for table `kg_module` */



DROP TABLE IF EXISTS `kg_module`;



CREATE TABLE `kg_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;



/*Data for the table `kg_module` */



insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (29,'Home Page','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');

insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (28,'Home Page','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1498\",\"height\":\"550\",\"status\":\"1\"}');

insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

insert  into `kg_module`(`module_id`,`name`,`code`,`setting`) values (32,'Lastest Product','latest','{\"name\":\"Lastest Product\",\"limit\":\"9\",\"width\":\"350\",\"height\":\"230\",\"status\":\"1\"}');



/*Table structure for table `kg_option` */



DROP TABLE IF EXISTS `kg_option`;



CREATE TABLE `kg_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;



/*Data for the table `kg_option` */



insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (1,'radio',1);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (2,'checkbox',2);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (4,'text',3);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (5,'select',4);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (6,'textarea',5);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (7,'file',6);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (8,'date',7);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (9,'time',8);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (10,'datetime',9);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (11,'select',10);

insert  into `kg_option`(`option_id`,`type`,`sort_order`) values (12,'date',11);



/*Table structure for table `kg_option_description` */



DROP TABLE IF EXISTS `kg_option_description`;



CREATE TABLE `kg_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_option_description` */



insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (1,1,'Radio');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (2,1,'Checkbox');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (4,1,'Text');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (6,1,'Textarea');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (8,1,'Date');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (7,1,'File');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (5,1,'Select');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (9,1,'Time');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (10,1,'Date &amp; Time');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (12,1,'Delivery Date');

insert  into `kg_option_description`(`option_id`,`language_id`,`name`) values (11,1,'Size');



/*Table structure for table `kg_option_value` */



DROP TABLE IF EXISTS `kg_option_value`;



CREATE TABLE `kg_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;



/*Data for the table `kg_option_value` */



insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (43,1,'',3);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (32,1,'',1);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (45,2,'',4);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (44,2,'',3);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (42,5,'',4);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (41,5,'',3);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (39,5,'',1);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (40,5,'',2);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (31,1,'',2);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (23,2,'',1);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (24,2,'',2);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (46,11,'',1);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (47,11,'',2);

insert  into `kg_option_value`(`option_value_id`,`option_id`,`image`,`sort_order`) values (48,11,'',3);



/*Table structure for table `kg_option_value_description` */



DROP TABLE IF EXISTS `kg_option_value_description`;



CREATE TABLE `kg_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_option_value_description` */



insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (43,1,1,'Large');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (32,1,1,'Small');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (45,1,2,'Checkbox 4');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (44,1,2,'Checkbox 3');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (31,1,1,'Medium');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (42,1,5,'Yellow');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (41,1,5,'Green');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (39,1,5,'Red');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (40,1,5,'Blue');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (23,1,2,'Checkbox 1');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (24,1,2,'Checkbox 2');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (48,1,11,'Large');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (47,1,11,'Medium');

insert  into `kg_option_value_description`(`option_value_id`,`language_id`,`option_id`,`name`) values (46,1,11,'Small');



/*Table structure for table `kg_order` */



DROP TABLE IF EXISTS `kg_order`;



CREATE TABLE `kg_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order` */



/*Table structure for table `kg_order_custom_field` */



DROP TABLE IF EXISTS `kg_order_custom_field`;



CREATE TABLE `kg_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_custom_field` */



/*Table structure for table `kg_order_history` */



DROP TABLE IF EXISTS `kg_order_history`;



CREATE TABLE `kg_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_history` */



/*Table structure for table `kg_order_option` */



DROP TABLE IF EXISTS `kg_order_option`;



CREATE TABLE `kg_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_option` */



/*Table structure for table `kg_order_product` */



DROP TABLE IF EXISTS `kg_order_product`;



CREATE TABLE `kg_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_product` */



/*Table structure for table `kg_order_recurring` */



DROP TABLE IF EXISTS `kg_order_recurring`;



CREATE TABLE `kg_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_recurring` */



/*Table structure for table `kg_order_recurring_transaction` */



DROP TABLE IF EXISTS `kg_order_recurring_transaction`;



CREATE TABLE `kg_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_recurring_transaction` */



/*Table structure for table `kg_order_status` */



DROP TABLE IF EXISTS `kg_order_status`;



CREATE TABLE `kg_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_status` */



insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (2,1,'Processing');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (3,1,'Shipped');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (7,1,'Canceled');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (5,1,'Complete');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (8,1,'Denied');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (9,1,'Canceled Reversal');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (10,1,'Failed');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (11,1,'Refunded');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (12,1,'Reversed');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (13,1,'Chargeback');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (1,1,'Pending');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (16,1,'Voided');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (15,1,'Processed');

insert  into `kg_order_status`(`order_status_id`,`language_id`,`name`) values (14,1,'Expired');



/*Table structure for table `kg_order_total` */



DROP TABLE IF EXISTS `kg_order_total`;



CREATE TABLE `kg_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_total` */



/*Table structure for table `kg_order_voucher` */



DROP TABLE IF EXISTS `kg_order_voucher`;



CREATE TABLE `kg_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_order_voucher` */



/*Table structure for table `kg_product` */



DROP TABLE IF EXISTS `kg_product`;



CREATE TABLE `kg_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product` */



insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (56,'Nike','','','','','','','',100,6,'catalog/Boots/p3.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-12-28 19:21:11','2016-12-29 23:50:03');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (57,'Nike','','','','','','','',5,6,'catalog/Boots/p1.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,5,'2016-12-28 19:21:12','2016-12-29 23:50:10');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (58,'Nike','','','','','','','',1,6,'catalog/Boots/p2.jpg',11,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,21,'2016-12-28 19:21:12','2016-12-29 23:50:14');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (59,'Nike','','','','','','','',100,6,'catalog/Boots/p3.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,25,'2016-12-29 20:29:29','2016-12-29 23:50:20');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (60,'Nike','','','','','','','',5,6,'catalog/Boots/p1.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,2,'2016-12-29 20:29:29','2016-12-29 23:50:25');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (61,'Nike','','','','','','','',1,6,'catalog/Boots/p2.jpg',11,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,49,'2016-12-29 20:29:29','2016-12-29 23:50:30');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (52,'Nike','','','','','','','',100,6,'catalog/Boots/p3.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,17,'2016-12-27 23:06:51','2016-12-29 23:50:38');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (53,'Nike','','','','','','','',100,6,'catalog/Boots/p3.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,9,'2016-12-27 23:43:46','2016-12-29 23:52:27');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (54,'Nike','','','','','','','',5,6,'catalog/Boots/p1.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,12,'2016-12-27 23:43:46','2016-12-29 23:53:08');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (55,'Nike','','','','','','','',1,6,'catalog/Boots/p2.jpg',11,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,42,'2016-12-27 23:43:46','2016-12-29 23:52:35');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (50,'Nike','','','','','','','',5,6,'catalog/Boots/p1.jpg',12,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,14,'2016-12-27 22:57:59','2016-12-29 23:53:02');

insert  into `kg_product`(`product_id`,`model`,`sku`,`upc`,`ean`,`jan`,`isbn`,`mpn`,`location`,`quantity`,`stock_status_id`,`image`,`manufacturer_id`,`shipping`,`price`,`points`,`tax_class_id`,`date_available`,`weight`,`weight_class_id`,`length`,`width`,`height`,`length_class_id`,`subtract`,`minimum`,`sort_order`,`status`,`viewed`,`date_added`,`date_modified`) values (51,'Nike','','','','','','','',1,6,'catalog/Boots/p2.jpg',11,1,'150.0000',0,0,'2016-12-27','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,13,'2016-12-27 22:59:32','2016-12-29 23:52:56');



/*Table structure for table `kg_product_attribute` */



DROP TABLE IF EXISTS `kg_product_attribute`;



CREATE TABLE `kg_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_attribute` */



/*Table structure for table `kg_product_description` */



DROP TABLE IF EXISTS `kg_product_description`;



CREATE TABLE `kg_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_description` */



insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (52,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (53,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (54,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (55,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (56,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (57,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (58,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (59,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (60,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (61,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (50,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');

insert  into `kg_product_description`(`product_id`,`language_id`,`name`,`description`,`tag`,`meta_title`,`meta_description`,`meta_keyword`) values (51,1,'Football boots with sock','&lt;p&gt;Utilising Aerolayer technology to keep you warm, the Nike Repel Strike \r\nDrill Top provides an athletic fit while stretchy raglan sleeves ensure \r\nunrestricted movement.\r\n              &lt;br&gt;&lt;/p&gt;','','Football boots with sock','','');



/*Table structure for table `kg_product_discount` */



DROP TABLE IF EXISTS `kg_product_discount`;



CREATE TABLE `kg_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=449 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_discount` */



insert  into `kg_product_discount`(`product_discount_id`,`product_id`,`customer_group_id`,`quantity`,`priority`,`price`,`date_start`,`date_end`) values (448,59,1,1,1,'10.0000','2016-12-27','2016-12-31');

insert  into `kg_product_discount`(`product_discount_id`,`product_id`,`customer_group_id`,`quantity`,`priority`,`price`,`date_start`,`date_end`) values (447,56,1,1,1,'10.0000','2016-12-27','2016-12-31');



/*Table structure for table `kg_product_filter` */



DROP TABLE IF EXISTS `kg_product_filter`;



CREATE TABLE `kg_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_filter` */



insert  into `kg_product_filter`(`product_id`,`filter_id`) values (50,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (51,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (52,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (53,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (54,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (55,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (56,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (57,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (58,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (59,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (60,7);

insert  into `kg_product_filter`(`product_id`,`filter_id`) values (61,7);



/*Table structure for table `kg_product_image` */



DROP TABLE IF EXISTS `kg_product_image`;



CREATE TABLE `kg_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2367 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_image` */



insert  into `kg_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values (2365,52,'catalog/Boots/p2.jpg',1);

insert  into `kg_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values (2366,53,'catalog/Boots/p2.jpg',1);

insert  into `kg_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values (2363,56,'catalog/Boots/p2.jpg',1);

insert  into `kg_product_image`(`product_image_id`,`product_id`,`image`,`sort_order`) values (2364,59,'catalog/Boots/p2.jpg',1);



/*Table structure for table `kg_product_option` */



DROP TABLE IF EXISTS `kg_product_option`;



CREATE TABLE `kg_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_option` */



/*Table structure for table `kg_product_option_value` */



DROP TABLE IF EXISTS `kg_product_option_value`;



CREATE TABLE `kg_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_option_value` */



/*Table structure for table `kg_product_recurring` */



DROP TABLE IF EXISTS `kg_product_recurring`;



CREATE TABLE `kg_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_recurring` */



/*Table structure for table `kg_product_related` */



DROP TABLE IF EXISTS `kg_product_related`;



CREATE TABLE `kg_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_related` */



insert  into `kg_product_related`(`product_id`,`related_id`) values (50,51);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,52);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,53);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,55);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,56);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,58);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,59);

insert  into `kg_product_related`(`product_id`,`related_id`) values (50,61);

insert  into `kg_product_related`(`product_id`,`related_id`) values (51,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (51,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (51,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (51,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (52,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (52,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (52,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (52,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (53,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (53,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (53,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (53,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,51);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,52);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,53);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,55);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,56);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,58);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,59);

insert  into `kg_product_related`(`product_id`,`related_id`) values (54,61);

insert  into `kg_product_related`(`product_id`,`related_id`) values (55,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (55,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (55,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (55,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (56,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (56,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (56,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (56,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,51);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,52);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,53);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,55);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,56);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,58);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,59);

insert  into `kg_product_related`(`product_id`,`related_id`) values (57,61);

insert  into `kg_product_related`(`product_id`,`related_id`) values (58,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (58,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (58,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (58,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (59,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (59,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (59,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (59,60);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,51);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,52);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,53);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,55);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,56);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,58);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,59);

insert  into `kg_product_related`(`product_id`,`related_id`) values (60,61);

insert  into `kg_product_related`(`product_id`,`related_id`) values (61,50);

insert  into `kg_product_related`(`product_id`,`related_id`) values (61,54);

insert  into `kg_product_related`(`product_id`,`related_id`) values (61,57);

insert  into `kg_product_related`(`product_id`,`related_id`) values (61,60);



/*Table structure for table `kg_product_reward` */



DROP TABLE IF EXISTS `kg_product_reward`;



CREATE TABLE `kg_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_reward` */



/*Table structure for table `kg_product_special` */



DROP TABLE IF EXISTS `kg_product_special`;



CREATE TABLE `kg_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_special` */



insert  into `kg_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (447,59,1,1,'100.0000','2016-12-27','2016-12-31');

insert  into `kg_product_special`(`product_special_id`,`product_id`,`customer_group_id`,`priority`,`price`,`date_start`,`date_end`) values (446,56,1,1,'100.0000','2016-12-27','2016-12-31');



/*Table structure for table `kg_product_to_category` */



DROP TABLE IF EXISTS `kg_product_to_category`;



CREATE TABLE `kg_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_to_category` */



insert  into `kg_product_to_category`(`product_id`,`category_id`) values (50,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (51,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (52,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (53,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (54,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (55,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (56,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (57,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (58,60);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (59,65);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (60,65);

insert  into `kg_product_to_category`(`product_id`,`category_id`) values (61,65);



/*Table structure for table `kg_product_to_download` */



DROP TABLE IF EXISTS `kg_product_to_download`;



CREATE TABLE `kg_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_to_download` */



/*Table structure for table `kg_product_to_layout` */



DROP TABLE IF EXISTS `kg_product_to_layout`;



CREATE TABLE `kg_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_to_layout` */



insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (50,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (51,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (52,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (53,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (54,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (55,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (56,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (57,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (58,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (59,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (60,0,0);

insert  into `kg_product_to_layout`(`product_id`,`store_id`,`layout_id`) values (61,0,0);



/*Table structure for table `kg_product_to_store` */



DROP TABLE IF EXISTS `kg_product_to_store`;



CREATE TABLE `kg_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_product_to_store` */



insert  into `kg_product_to_store`(`product_id`,`store_id`) values (50,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (51,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (52,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (53,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (54,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (55,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (56,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (57,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (58,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (59,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (60,0);

insert  into `kg_product_to_store`(`product_id`,`store_id`) values (61,0);



/*Table structure for table `kg_recurring` */



DROP TABLE IF EXISTS `kg_recurring`;



CREATE TABLE `kg_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_recurring` */



/*Table structure for table `kg_recurring_description` */



DROP TABLE IF EXISTS `kg_recurring_description`;



CREATE TABLE `kg_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_recurring_description` */



/*Table structure for table `kg_return` */



DROP TABLE IF EXISTS `kg_return`;



CREATE TABLE `kg_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_return` */



/*Table structure for table `kg_return_action` */



DROP TABLE IF EXISTS `kg_return_action`;



CREATE TABLE `kg_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `kg_return_action` */



insert  into `kg_return_action`(`return_action_id`,`language_id`,`name`) values (1,1,'Refunded');

insert  into `kg_return_action`(`return_action_id`,`language_id`,`name`) values (2,1,'Credit Issued');

insert  into `kg_return_action`(`return_action_id`,`language_id`,`name`) values (3,1,'Replacement Sent');



/*Table structure for table `kg_return_history` */



DROP TABLE IF EXISTS `kg_return_history`;



CREATE TABLE `kg_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_return_history` */



/*Table structure for table `kg_return_reason` */



DROP TABLE IF EXISTS `kg_return_reason`;



CREATE TABLE `kg_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



/*Data for the table `kg_return_reason` */



insert  into `kg_return_reason`(`return_reason_id`,`language_id`,`name`) values (1,1,'Dead On Arrival');

insert  into `kg_return_reason`(`return_reason_id`,`language_id`,`name`) values (2,1,'Received Wrong Item');

insert  into `kg_return_reason`(`return_reason_id`,`language_id`,`name`) values (3,1,'Order Error');

insert  into `kg_return_reason`(`return_reason_id`,`language_id`,`name`) values (4,1,'Faulty, please supply details');

insert  into `kg_return_reason`(`return_reason_id`,`language_id`,`name`) values (5,1,'Other, please supply details');



/*Table structure for table `kg_return_status` */



DROP TABLE IF EXISTS `kg_return_status`;



CREATE TABLE `kg_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*Data for the table `kg_return_status` */



insert  into `kg_return_status`(`return_status_id`,`language_id`,`name`) values (1,1,'Pending');

insert  into `kg_return_status`(`return_status_id`,`language_id`,`name`) values (3,1,'Complete');

insert  into `kg_return_status`(`return_status_id`,`language_id`,`name`) values (2,1,'Awaiting Products');



/*Table structure for table `kg_review` */



DROP TABLE IF EXISTS `kg_review`;



CREATE TABLE `kg_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_review` */



/*Table structure for table `kg_setting` */



DROP TABLE IF EXISTS `kg_setting`;



CREATE TABLE `kg_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;



/*Data for the table `kg_setting` */



insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (1,0,'shipping','shipping_sort_order','3',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (2,0,'sub_total','sub_total_sort_order','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (3,0,'sub_total','sub_total_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (4,0,'tax','tax_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (5,0,'total','total_sort_order','9',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (6,0,'total','total_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (7,0,'tax','tax_sort_order','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (8,0,'free_checkout','free_checkout_sort_order','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (9,0,'cod','cod_sort_order','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (10,0,'cod','cod_total','0.01',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (11,0,'cod','cod_order_status_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (12,0,'cod','cod_geo_zone_id','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (13,0,'cod','cod_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (14,0,'shipping','shipping_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (15,0,'shipping','shipping_estimator','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (27,0,'coupon','coupon_sort_order','4',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (28,0,'coupon','coupon_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (34,0,'flat','flat_sort_order','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (35,0,'flat','flat_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (36,0,'flat','flat_geo_zone_id','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (37,0,'flat','flat_tax_class_id','9',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (41,0,'flat','flat_cost','5.00',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (42,0,'credit','credit_sort_order','7',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (43,0,'credit','credit_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (53,0,'reward','reward_sort_order','2',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (54,0,'reward','reward_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (146,0,'category','category_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (158,0,'account','account_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (159,0,'affiliate','affiliate_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (491,0,'config','config_compression','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (492,0,'config','config_secure','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (493,0,'config','config_password','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (494,0,'config','config_shared','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (495,0,'config','config_encryption','6AOjGvjbnFldc6w84RrjHeoiW2ccqvqS9Xlrbsa36T4sPeFyCiR6ED2c8jML86jRN5bRgO2pfasJX0jSUljpJlyyMyz9BLJIz5UNjhUEIZlSb1CMD1vwI3Ecn6UQjmt9A8FDCWggOL2SOU9TP8HiC0UthsnpILVa6QdZzkbDVlPStqMRVwszXOIvSz2TOkTkvePEPxlYCrSVIee60dMcOCwmwZwJk6FIYJhzS00a0q2LsP358sGQHyhpX9zHpJRXXWrSNfjrFu4I4UktGDjykLWSuYFj0xl7tCP5bDefNDiSriSZSWP15KKrNyLa0cB8OKezQrQjOwSxQ6fRr6asKMzEh0UkoMje4cTFUUwpSBqGpq1gcYnr6LIwlq3yyzjEbhOqPgHt8aXXbHxL6Lri1vTCNwUMpx7h8kyJOBtciw47JnNp1MShjq2fg4xbI67JrTxjc8NxEtuIl39sR9UEuCVMxOXJjY1VnxuR820fzMKKek6LDsSeAplAammXxvVHE2qzsnOfQFArUTCaeZfhNwq9aITcvH2HHhCNNsMBkAKdoV4Qa8F6YsHMZ6FfEHcLvOh9NJbaZYTxS8kMGknljd5CE5496MJU23zcExp38lmftyMrgOsz6rS4vnfs34iWahW8mRpuMRiUrP0uepA69msvPzv3pidHYDGjCbDMvP7pwoqFPCspbKzZ2H32SCZb0zwwmLgKJ8b4JcbMv3au5oziXMgcjs58s2oNxEyiGCM1jTjF4yAqlD7db7fqCWYQAGTe7HzbXZs2K7DTFZSe81OnKQZIOC9wfqDwWGd6b85C7RDzaCxTFhlOSQGzdZJ5DOf96dS38prd9U2M4Hm6v3WHZy3FCFd1I5kjUp2IU1meTnZ7rb9z9OEhFa44uyKIIGN8n3uf8Jr4zBKPIqfoIs4LMxmDYDL3gPl3vxZglsBqxfkcbne5h43vnCmuL6xud3DE48qB5jtU9yxWmsnKCZR8bntUCcL9Dv1tGw98W70SQbVbpIVXEmBwKXhmEY1p',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (94,0,'voucher','voucher_sort_order','8',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (95,0,'voucher','voucher_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (103,0,'free_checkout','free_checkout_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (104,0,'free_checkout','free_checkout_order_status_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (496,0,'config','config_file_max_size','300000',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (497,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (498,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (490,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (489,0,'config','config_seo_url','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (488,0,'config','config_maintenance','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (487,0,'config','config_mail_alert','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (486,0,'config','config_mail_smtp_timeout','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (485,0,'config','config_mail_smtp_port','25',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (484,0,'config','config_mail_smtp_password','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (483,0,'config','config_mail_smtp_username','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (482,0,'config','config_mail_smtp_hostname','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (481,0,'config','config_mail_parameter','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (480,0,'config','config_mail_protocol','mail',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (476,0,'config','config_ftp_username','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (477,0,'config','config_ftp_password','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (478,0,'config','config_ftp_root','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (479,0,'config','config_ftp_status','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (475,0,'config','config_ftp_port','21',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (474,0,'config','config_ftp_hostname','prokitsoccer.localhost:81',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (473,0,'config','config_icon','catalog/pro-new-logo2.png',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (472,0,'config','config_logo','catalog/pro-new-logo2.png',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (471,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (470,0,'config','config_captcha','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (469,0,'config','config_return_status_id','2',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (468,0,'config','config_return_id','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (467,0,'config','config_affiliate_mail','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (466,0,'config','config_affiliate_id','4',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (465,0,'config','config_affiliate_commission','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (464,0,'config','config_affiliate_auto','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (463,0,'config','config_affiliate_approval','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (462,0,'config','config_stock_checkout','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (461,0,'config','config_stock_warning','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (460,0,'config','config_stock_display','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (459,0,'config','config_api_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (458,0,'config','config_order_mail','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (457,0,'config','config_fraud_status_id','7',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (456,0,'config','config_complete_status','[\"5\",\"3\"]',1);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (455,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (454,0,'config','config_order_status_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (453,0,'config','config_checkout_id','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (452,0,'config','config_checkout_guest','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (451,0,'config','config_cart_weight','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (450,0,'config','config_invoice_prefix','INV-2013-00',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (449,0,'config','config_account_mail','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (448,0,'config','config_account_id','3',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (447,0,'config','config_login_attempts','5',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (446,0,'config','config_customer_price','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (445,0,'config','config_customer_group_display','[\"1\"]',1);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (444,0,'config','config_customer_group_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (443,0,'config','config_customer_online','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (442,0,'config','config_tax_customer','shipping',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (441,0,'config','config_tax_default','shipping',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (440,0,'config','config_tax','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (439,0,'config','config_voucher_max','1000',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (437,0,'config','config_review_mail','0',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (438,0,'config','config_voucher_min','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (290,0,'theme_default','theme_default_product_limit','15',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (291,0,'theme_default','theme_default_product_description_length','100',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (292,0,'theme_default','theme_default_image_thumb_width','850',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (293,0,'theme_default','theme_default_image_thumb_height','350',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (294,0,'theme_default','theme_default_image_popup_width','500',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (295,0,'theme_default','theme_default_image_popup_height','500',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (296,0,'theme_default','theme_default_image_category_width','80',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (297,0,'theme_default','theme_default_image_category_height','40',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (298,0,'theme_default','theme_default_image_product_width','350',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (299,0,'theme_default','theme_default_image_product_height','230',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (300,0,'theme_default','theme_default_image_additional_width','74',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (301,0,'theme_default','theme_default_image_additional_height','74',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (302,0,'theme_default','theme_default_image_related_width','350',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (303,0,'theme_default','theme_default_image_related_height','230',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (304,0,'theme_default','theme_default_image_compare_width','90',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (305,0,'theme_default','theme_default_image_compare_height','90',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (306,0,'theme_default','theme_default_image_wishlist_width','47',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (307,0,'theme_default','theme_default_image_wishlist_height','47',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (308,0,'theme_default','theme_default_image_cart_height','47',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (309,0,'theme_default','theme_default_image_cart_width','47',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (310,0,'theme_default','theme_default_image_location_height','50',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (311,0,'theme_default','theme_default_image_location_width','268',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (312,0,'theme_default','theme_default_directory','default',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (313,0,'theme_default','theme_default_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (426,0,'config','config_zone_id','567',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (427,0,'config','config_language','en-gb',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (428,0,'config','config_admin_language','en-gb',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (429,0,'config','config_currency','USD',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (430,0,'config','config_currency_auto','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (431,0,'config','config_length_class_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (432,0,'config','config_weight_class_id','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (433,0,'config','config_product_count','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (434,0,'config','config_limit_admin','20',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (435,0,'config','config_review_status','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (436,0,'config','config_review_guest','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (423,0,'config','config_open','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (424,0,'config','config_comment','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (425,0,'config','config_country_id','36',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (412,0,'config','config_meta_keyword','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (413,0,'config','config_theme','theme_default',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (414,0,'config','config_layout_id','4',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (415,0,'config','config_name','Prokit Soccer',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (416,0,'config','config_owner','Prokit Soccer',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (417,0,'config','config_address','Address 1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (418,0,'config','config_geocode','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (419,0,'config','config_email','test@test.com',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (420,0,'config','config_telephone','123456789',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (421,0,'config','config_fax','',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (422,0,'config','config_image','catalog/pro-new-logo2.png',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (411,0,'config','config_meta_description','Prokit Soccer',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (410,0,'config','config_meta_title','Prokit Soccer',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (499,0,'config','config_error_display','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (500,0,'config','config_error_log','1',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (501,0,'config','config_error_filename','error.log',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (502,0,'theme_default','theme_default_image_banner_height','460',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (503,0,'theme_default','theme_default_image_banner_width','1500',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (504,0,'theme_default','theme_default_image_photo_height','240',0);

insert  into `kg_setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (505,0,'theme_default','theme_default_image_photo_width','413',0);



/*Table structure for table `kg_stock_status` */



DROP TABLE IF EXISTS `kg_stock_status`;



CREATE TABLE `kg_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `kg_stock_status` */



insert  into `kg_stock_status`(`stock_status_id`,`language_id`,`name`) values (7,1,'In Stock');

insert  into `kg_stock_status`(`stock_status_id`,`language_id`,`name`) values (8,1,'Pre-Order');

insert  into `kg_stock_status`(`stock_status_id`,`language_id`,`name`) values (5,1,'Out Of Stock');

insert  into `kg_stock_status`(`stock_status_id`,`language_id`,`name`) values (6,1,'2-3 Days');



/*Table structure for table `kg_store` */



DROP TABLE IF EXISTS `kg_store`;



CREATE TABLE `kg_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_store` */



/*Table structure for table `kg_tax_class` */



DROP TABLE IF EXISTS `kg_tax_class`;



CREATE TABLE `kg_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



/*Data for the table `kg_tax_class` */



insert  into `kg_tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50');

insert  into `kg_tax_class`(`tax_class_id`,`title`,`description`,`date_added`,`date_modified`) values (10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');



/*Table structure for table `kg_tax_rate` */



DROP TABLE IF EXISTS `kg_tax_rate`;



CREATE TABLE `kg_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;



/*Data for the table `kg_tax_rate` */



insert  into `kg_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values (86,3,'VAT (20%)','20.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29');

insert  into `kg_tax_rate`(`tax_rate_id`,`geo_zone_id`,`name`,`rate`,`type`,`date_added`,`date_modified`) values (87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');



/*Table structure for table `kg_tax_rate_to_customer_group` */



DROP TABLE IF EXISTS `kg_tax_rate_to_customer_group`;



CREATE TABLE `kg_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_tax_rate_to_customer_group` */



insert  into `kg_tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values (86,1);

insert  into `kg_tax_rate_to_customer_group`(`tax_rate_id`,`customer_group_id`) values (87,1);



/*Table structure for table `kg_tax_rule` */



DROP TABLE IF EXISTS `kg_tax_rule`;



CREATE TABLE `kg_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;



/*Data for the table `kg_tax_rule` */



insert  into `kg_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values (121,10,86,'payment',1);

insert  into `kg_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values (120,10,87,'store',0);

insert  into `kg_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values (128,9,86,'shipping',1);

insert  into `kg_tax_rule`(`tax_rule_id`,`tax_class_id`,`tax_rate_id`,`based`,`priority`) values (127,9,87,'shipping',2);



/*Table structure for table `kg_upload` */



DROP TABLE IF EXISTS `kg_upload`;



CREATE TABLE `kg_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_upload` */



/*Table structure for table `kg_url_alias` */



DROP TABLE IF EXISTS `kg_url_alias`;



CREATE TABLE `kg_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=870 DEFAULT CHARSET=utf8;



/*Data for the table `kg_url_alias` */



insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (730,'manufacturer_id=8','apple');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (772,'information_id=4','about_us');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (866,'category_id=67','index.php?route=information/contact');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (828,'manufacturer_id=9','canon');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (829,'manufacturer_id=5','htc');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (830,'manufacturer_id=7','hewlett-packard');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (831,'manufacturer_id=6','palm');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (832,'manufacturer_id=10','sony');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (841,'information_id=6','delivery');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (842,'information_id=3','privacy');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (843,'information_id=5','terms');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (844,'manufacturer_id=11','');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (845,'manufacturer_id=12','');

insert  into `kg_url_alias`(`url_alias_id`,`query`,`keyword`) values (846,'manufacturer_id=13','');



/*Table structure for table `kg_user` */



DROP TABLE IF EXISTS `kg_user`;



CREATE TABLE `kg_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*Data for the table `kg_user` */



insert  into `kg_user`(`user_id`,`user_group_id`,`username`,`password`,`salt`,`firstname`,`lastname`,`email`,`image`,`code`,`ip`,`status`,`date_added`) values (1,1,'admin','cdc86529b3769fb8bf52bbe93ddc090d5c07c1cd','To0I0kmcq','Prokit','Soccer','test@test.com','','','127.0.0.1',1,'2016-12-22 21:19:35');



/*Table structure for table `kg_user_group` */



DROP TABLE IF EXISTS `kg_user_group`;



CREATE TABLE `kg_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



/*Data for the table `kg_user_group` */



insert  into `kg_user_group`(`user_group_id`,`name`,`permission`) values (1,'Administrator','{\"access\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/sagepay_direct_cards\",\"module\\/sagepay_server_cards\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/language\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/setting\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"analytics\\/google_analytics\",\"module\\/latest\"],\"modify\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/sagepay_direct_cards\",\"module\\/sagepay_server_cards\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/language\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/setting\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"analytics\\/google_analytics\",\"module\\/latest\"]}');

insert  into `kg_user_group`(`user_group_id`,`name`,`permission`) values (10,'Demonstration','');



/*Table structure for table `kg_voucher` */



DROP TABLE IF EXISTS `kg_voucher`;



CREATE TABLE `kg_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_voucher` */



/*Table structure for table `kg_voucher_history` */



DROP TABLE IF EXISTS `kg_voucher_history`;



CREATE TABLE `kg_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_voucher_history` */



/*Table structure for table `kg_voucher_theme` */



DROP TABLE IF EXISTS `kg_voucher_theme`;



CREATE TABLE `kg_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;



/*Data for the table `kg_voucher_theme` */



insert  into `kg_voucher_theme`(`voucher_theme_id`,`image`) values (8,'catalog/demo/canon_eos_5d_2.jpg');

insert  into `kg_voucher_theme`(`voucher_theme_id`,`image`) values (7,'catalog/demo/gift-voucher-birthday.jpg');

insert  into `kg_voucher_theme`(`voucher_theme_id`,`image`) values (6,'catalog/demo/apple_logo.jpg');



/*Table structure for table `kg_voucher_theme_description` */



DROP TABLE IF EXISTS `kg_voucher_theme_description`;



CREATE TABLE `kg_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_voucher_theme_description` */



insert  into `kg_voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (6,1,'Christmas');

insert  into `kg_voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (7,1,'Birthday');

insert  into `kg_voucher_theme_description`(`voucher_theme_id`,`language_id`,`name`) values (8,1,'General');



/*Table structure for table `kg_weight_class` */



DROP TABLE IF EXISTS `kg_weight_class`;



CREATE TABLE `kg_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



/*Data for the table `kg_weight_class` */



insert  into `kg_weight_class`(`weight_class_id`,`value`) values (1,'1.00000000');

insert  into `kg_weight_class`(`weight_class_id`,`value`) values (2,'1000.00000000');

insert  into `kg_weight_class`(`weight_class_id`,`value`) values (5,'2.20460000');

insert  into `kg_weight_class`(`weight_class_id`,`value`) values (6,'35.27400000');



/*Table structure for table `kg_weight_class_description` */



DROP TABLE IF EXISTS `kg_weight_class_description`;



CREATE TABLE `kg_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*Data for the table `kg_weight_class_description` */



insert  into `kg_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (1,1,'Kilogram','kg');

insert  into `kg_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (2,1,'Gram','g');

insert  into `kg_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (5,1,'Pound ','lb');

insert  into `kg_weight_class_description`(`weight_class_id`,`language_id`,`title`,`unit`) values (6,1,'Ounce','oz');



/*Table structure for table `kg_zone` */



DROP TABLE IF EXISTS `kg_zone`;



CREATE TABLE `kg_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4232 DEFAULT CHARSET=utf8;



/*Data for the table `kg_zone` */



insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1,1,'Badakhshan','BDS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2,1,'Badghis','BDG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3,1,'Baghlan','BGL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4,1,'Balkh','BAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (5,1,'Bamian','BAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (6,1,'Farah','FRA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (7,1,'Faryab','FYB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (8,1,'Ghazni','GHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (9,1,'Ghowr','GHO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (10,1,'Helmand','HEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (11,1,'Herat','HER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (12,1,'Jowzjan','JOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (13,1,'Kabul','KAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (14,1,'Kandahar','KAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (15,1,'Kapisa','KAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (16,1,'Khost','KHO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (17,1,'Konar','KNR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (18,1,'Kondoz','KDZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (19,1,'Laghman','LAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (20,1,'Lowgar','LOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (21,1,'Nangrahar','NAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (22,1,'Nimruz','NIM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (23,1,'Nurestan','NUR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (24,1,'Oruzgan','ORU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (25,1,'Paktia','PIA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (26,1,'Paktika','PKA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (27,1,'Parwan','PAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (28,1,'Samangan','SAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (29,1,'Sar-e Pol','SAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (30,1,'Takhar','TAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (31,1,'Wardak','WAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (32,1,'Zabol','ZAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (33,2,'Berat','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (34,2,'Bulqize','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (35,2,'Delvine','DL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (36,2,'Devoll','DV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (37,2,'Diber','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (38,2,'Durres','DR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (39,2,'Elbasan','EL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (40,2,'Kolonje','ER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (41,2,'Fier','FR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (42,2,'Gjirokaster','GJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (43,2,'Gramsh','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (44,2,'Has','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (45,2,'Kavaje','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (46,2,'Kurbin','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (47,2,'Kucove','KC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (48,2,'Korce','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (49,2,'Kruje','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (50,2,'Kukes','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (51,2,'Librazhd','LB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (52,2,'Lezhe','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (53,2,'Lushnje','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (54,2,'Malesi e Madhe','MM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (55,2,'Mallakaster','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (56,2,'Mat','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (57,2,'Mirdite','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (58,2,'Peqin','PQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (59,2,'Permet','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (60,2,'Pogradec','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (61,2,'Puke','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (62,2,'Shkoder','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (63,2,'Skrapar','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (64,2,'Sarande','SR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (65,2,'Tepelene','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (66,2,'Tropoje','TP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (67,2,'Tirane','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (68,2,'Vlore','VL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (69,3,'Adrar','ADR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (70,3,'Ain Defla','ADE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (71,3,'Ain Temouchent','ATE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (72,3,'Alger','ALG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (73,3,'Annaba','ANN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (74,3,'Batna','BAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (75,3,'Bechar','BEC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (76,3,'Bejaia','BEJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (77,3,'Biskra','BIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (78,3,'Blida','BLI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (79,3,'Bordj Bou Arreridj','BBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (80,3,'Bouira','BOA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (81,3,'Boumerdes','BMD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (82,3,'Chlef','CHL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (83,3,'Constantine','CON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (84,3,'Djelfa','DJE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (85,3,'El Bayadh','EBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (86,3,'El Oued','EOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (87,3,'El Tarf','ETA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (88,3,'Ghardaia','GHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (89,3,'Guelma','GUE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (90,3,'Illizi','ILL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (91,3,'Jijel','JIJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (92,3,'Khenchela','KHE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (93,3,'Laghouat','LAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (94,3,'Muaskar','MUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (95,3,'Medea','MED',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (96,3,'Mila','MIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (97,3,'Mostaganem','MOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (98,3,'M\'Sila','MSI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (99,3,'Naama','NAA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (100,3,'Oran','ORA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (101,3,'Ouargla','OUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (102,3,'Oum el-Bouaghi','OEB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (103,3,'Relizane','REL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (104,3,'Saida','SAI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (105,3,'Setif','SET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (106,3,'Sidi Bel Abbes','SBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (107,3,'Skikda','SKI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (108,3,'Souk Ahras','SAH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (109,3,'Tamanghasset','TAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (110,3,'Tebessa','TEB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (111,3,'Tiaret','TIA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (112,3,'Tindouf','TIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (113,3,'Tipaza','TIP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (114,3,'Tissemsilt','TIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (115,3,'Tizi Ouzou','TOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (116,3,'Tlemcen','TLE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (117,4,'Eastern','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (118,4,'Manu\'a','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (119,4,'Rose Island','R',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (120,4,'Swains Island','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (121,4,'Western','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (122,5,'Andorra la Vella','ALV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (123,5,'Canillo','CAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (124,5,'Encamp','ENC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (125,5,'Escaldes-Engordany','ESE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (126,5,'La Massana','LMA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (127,5,'Ordino','ORD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (128,5,'Sant Julia de Loria','SJL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (129,6,'Bengo','BGO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (130,6,'Benguela','BGU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (131,6,'Bie','BIE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (132,6,'Cabinda','CAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (133,6,'Cuando-Cubango','CCU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (134,6,'Cuanza Norte','CNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (135,6,'Cuanza Sul','CUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (136,6,'Cunene','CNN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (137,6,'Huambo','HUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (138,6,'Huila','HUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (139,6,'Luanda','LUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (140,6,'Lunda Norte','LNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (141,6,'Lunda Sul','LSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (142,6,'Malange','MAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (143,6,'Moxico','MOX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (144,6,'Namibe','NAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (145,6,'Uige','UIG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (146,6,'Zaire','ZAI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (147,9,'Saint George','ASG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (148,9,'Saint John','ASJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (149,9,'Saint Mary','ASM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (150,9,'Saint Paul','ASL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (151,9,'Saint Peter','ASR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (152,9,'Saint Philip','ASH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (153,9,'Barbuda','BAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (154,9,'Redonda','RED',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (155,10,'Antartida e Islas del Atlantico','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (156,10,'Buenos Aires','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (157,10,'Catamarca','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (158,10,'Chaco','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (159,10,'Chubut','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (160,10,'Cordoba','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (161,10,'Corrientes','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (162,10,'Distrito Federal','DF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (163,10,'Entre Rios','ER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (164,10,'Formosa','FO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (165,10,'Jujuy','JU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (166,10,'La Pampa','LP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (167,10,'La Rioja','LR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (168,10,'Mendoza','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (169,10,'Misiones','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (170,10,'Neuquen','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (171,10,'Rio Negro','RN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (172,10,'Salta','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (173,10,'San Juan','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (174,10,'San Luis','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (175,10,'Santa Cruz','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (176,10,'Santa Fe','SF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (177,10,'Santiago del Estero','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (178,10,'Tierra del Fuego','TF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (179,10,'Tucuman','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (180,11,'Aragatsotn','AGT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (181,11,'Ararat','ARR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (182,11,'Armavir','ARM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (183,11,'Geghark\'unik\'','GEG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (184,11,'Kotayk\'','KOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (185,11,'Lorri','LOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (186,11,'Shirak','SHI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (187,11,'Syunik\'','SYU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (188,11,'Tavush','TAV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (189,11,'Vayots\' Dzor','VAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (190,11,'Yerevan','YER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (191,13,'Australian Capital Territory','ACT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (192,13,'New South Wales','NSW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (193,13,'Northern Territory','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (194,13,'Queensland','QLD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (195,13,'South Australia','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (196,13,'Tasmania','TAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (197,13,'Victoria','VIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (198,13,'Western Australia','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (199,14,'Burgenland','BUR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (200,14,'Kärnten','KAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (201,14,'Niederösterreich','NOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (202,14,'Oberösterreich','OOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (203,14,'Salzburg','SAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (204,14,'Steiermark','STE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (205,14,'Tirol','TIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (206,14,'Vorarlberg','VOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (207,14,'Wien','WIE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (208,15,'Ali Bayramli','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (209,15,'Abseron','ABS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (210,15,'AgcabAdi','AGC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (211,15,'Agdam','AGM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (212,15,'Agdas','AGS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (213,15,'Agstafa','AGA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (214,15,'Agsu','AGU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (215,15,'Astara','AST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (216,15,'Baki','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (217,15,'BabAk','BAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (218,15,'BalakAn','BAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (219,15,'BArdA','BAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (220,15,'Beylaqan','BEY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (221,15,'Bilasuvar','BIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (222,15,'Cabrayil','CAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (223,15,'Calilabab','CAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (224,15,'Culfa','CUL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (225,15,'Daskasan','DAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (226,15,'Davaci','DAV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (227,15,'Fuzuli','FUZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (228,15,'Ganca','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (229,15,'Gadabay','GAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (230,15,'Goranboy','GOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (231,15,'Goycay','GOY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (232,15,'Haciqabul','HAC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (233,15,'Imisli','IMI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (234,15,'Ismayilli','ISM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (235,15,'Kalbacar','KAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (236,15,'Kurdamir','KUR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (237,15,'Lankaran','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (238,15,'Lacin','LAC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (239,15,'Lankaran','LAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (240,15,'Lerik','LER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (241,15,'Masalli','MAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (242,15,'Mingacevir','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (243,15,'Naftalan','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (244,15,'Neftcala','NEF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (245,15,'Oguz','OGU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (246,15,'Ordubad','ORD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (247,15,'Qabala','QAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (248,15,'Qax','QAX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (249,15,'Qazax','QAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (250,15,'Qobustan','QOB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (251,15,'Quba','QBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (252,15,'Qubadli','QBI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (253,15,'Qusar','QUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (254,15,'Saki','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (255,15,'Saatli','SAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (256,15,'Sabirabad','SAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (257,15,'Sadarak','SAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (258,15,'Sahbuz','SAH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (259,15,'Saki','SAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (260,15,'Salyan','SAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (261,15,'Sumqayit','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (262,15,'Samaxi','SMI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (263,15,'Samkir','SKR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (264,15,'Samux','SMX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (265,15,'Sarur','SAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (266,15,'Siyazan','SIY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (267,15,'Susa','SS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (268,15,'Susa','SUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (269,15,'Tartar','TAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (270,15,'Tovuz','TOV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (271,15,'Ucar','UCA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (272,15,'Xankandi','XA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (273,15,'Xacmaz','XAC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (274,15,'Xanlar','XAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (275,15,'Xizi','XIZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (276,15,'Xocali','XCI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (277,15,'Xocavand','XVD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (278,15,'Yardimli','YAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (279,15,'Yevlax','YEV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (280,15,'Zangilan','ZAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (281,15,'Zaqatala','ZAQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (282,15,'Zardab','ZAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (283,15,'Naxcivan','NX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (284,16,'Acklins','ACK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (285,16,'Berry Islands','BER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (286,16,'Bimini','BIM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (287,16,'Black Point','BLK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (288,16,'Cat Island','CAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (289,16,'Central Abaco','CAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (290,16,'Central Andros','CAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (291,16,'Central Eleuthera','CEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (292,16,'City of Freeport','FRE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (293,16,'Crooked Island','CRO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (294,16,'East Grand Bahama','EGB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (295,16,'Exuma','EXU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (296,16,'Grand Cay','GRD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (297,16,'Harbour Island','HAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (298,16,'Hope Town','HOP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (299,16,'Inagua','INA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (300,16,'Long Island','LNG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (301,16,'Mangrove Cay','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (302,16,'Mayaguana','MAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (303,16,'Moore\'s Island','MOO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (304,16,'North Abaco','NAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (305,16,'North Andros','NAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (306,16,'North Eleuthera','NEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (307,16,'Ragged Island','RAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (308,16,'Rum Cay','RUM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (309,16,'San Salvador','SAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (310,16,'South Abaco','SAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (311,16,'South Andros','SAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (312,16,'South Eleuthera','SEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (313,16,'Spanish Wells','SWE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (314,16,'West Grand Bahama','WGB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (315,17,'Capital','CAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (316,17,'Central','CEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (317,17,'Muharraq','MUH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (318,17,'Northern','NOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (319,17,'Southern','SOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (320,18,'Barisal','BAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (321,18,'Chittagong','CHI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (322,18,'Dhaka','DHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (323,18,'Khulna','KHU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (324,18,'Rajshahi','RAJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (325,18,'Sylhet','SYL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (326,19,'Christ Church','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (327,19,'Saint Andrew','AND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (328,19,'Saint George','GEO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (329,19,'Saint James','JAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (330,19,'Saint John','JOH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (331,19,'Saint Joseph','JOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (332,19,'Saint Lucy','LUC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (333,19,'Saint Michael','MIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (334,19,'Saint Peter','PET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (335,19,'Saint Philip','PHI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (336,19,'Saint Thomas','THO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (337,20,'Brestskaya (Brest)','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (338,20,'Homyel\'skaya (Homyel\')','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (339,20,'Horad Minsk','HM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (340,20,'Hrodzyenskaya (Hrodna)','HR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (341,20,'Mahilyowskaya (Mahilyow)','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (342,20,'Minskaya','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (343,20,'Vitsyebskaya (Vitsyebsk)','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (344,21,'Antwerpen','VAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (345,21,'Brabant Wallon','WBR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (346,21,'Hainaut','WHT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (347,21,'Liège','WLG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (348,21,'Limburg','VLI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (349,21,'Luxembourg','WLX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (350,21,'Namur','WNA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (351,21,'Oost-Vlaanderen','VOV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (352,21,'Vlaams Brabant','VBR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (353,21,'West-Vlaanderen','VWV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (354,22,'Belize','BZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (355,22,'Cayo','CY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (356,22,'Corozal','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (357,22,'Orange Walk','OW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (358,22,'Stann Creek','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (359,22,'Toledo','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (360,23,'Alibori','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (361,23,'Atakora','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (362,23,'Atlantique','AQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (363,23,'Borgou','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (364,23,'Collines','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (365,23,'Donga','DO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (366,23,'Kouffo','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (367,23,'Littoral','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (368,23,'Mono','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (369,23,'Oueme','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (370,23,'Plateau','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (371,23,'Zou','ZO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (372,24,'Devonshire','DS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (373,24,'Hamilton City','HC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (374,24,'Hamilton','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (375,24,'Paget','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (376,24,'Pembroke','PB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (377,24,'Saint George City','GC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (378,24,'Saint George\'s','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (379,24,'Sandys','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (380,24,'Smith\'s','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (381,24,'Southampton','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (382,24,'Warwick','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (383,25,'Bumthang','BUM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (384,25,'Chukha','CHU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (385,25,'Dagana','DAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (386,25,'Gasa','GAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (387,25,'Haa','HAA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (388,25,'Lhuntse','LHU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (389,25,'Mongar','MON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (390,25,'Paro','PAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (391,25,'Pemagatshel','PEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (392,25,'Punakha','PUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (393,25,'Samdrup Jongkhar','SJO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (394,25,'Samtse','SAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (395,25,'Sarpang','SAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (396,25,'Thimphu','THI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (397,25,'Trashigang','TRG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (398,25,'Trashiyangste','TRY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (399,25,'Trongsa','TRO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (400,25,'Tsirang','TSI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (401,25,'Wangdue Phodrang','WPH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (402,25,'Zhemgang','ZHE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (403,26,'Beni','BEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (404,26,'Chuquisaca','CHU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (405,26,'Cochabamba','COC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (406,26,'La Paz','LPZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (407,26,'Oruro','ORU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (408,26,'Pando','PAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (409,26,'Potosi','POT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (410,26,'Santa Cruz','SCZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (411,26,'Tarija','TAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (412,27,'Brcko district','BRO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (413,27,'Unsko-Sanski Kanton','FUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (414,27,'Posavski Kanton','FPO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (415,27,'Tuzlanski Kanton','FTU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (416,27,'Zenicko-Dobojski Kanton','FZE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (417,27,'Bosanskopodrinjski Kanton','FBP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (418,27,'Srednjebosanski Kanton','FSB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (419,27,'Hercegovacko-neretvanski Kanton','FHN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (420,27,'Zapadnohercegovacka Zupanija','FZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (421,27,'Kanton Sarajevo','FSA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (422,27,'Zapadnobosanska','FZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (423,27,'Banja Luka','SBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (424,27,'Doboj','SDO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (425,27,'Bijeljina','SBI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (426,27,'Vlasenica','SVL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (427,27,'Sarajevo-Romanija or Sokolac','SSR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (428,27,'Foca','SFO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (429,27,'Trebinje','STR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (430,28,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (431,28,'Ghanzi','GH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (432,28,'Kgalagadi','KD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (433,28,'Kgatleng','KT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (434,28,'Kweneng','KW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (435,28,'Ngamiland','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (436,28,'North East','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (437,28,'North West','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (438,28,'South East','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (439,28,'Southern','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (440,30,'Acre','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (441,30,'Alagoas','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (442,30,'Amapá','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (443,30,'Amazonas','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (444,30,'Bahia','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (445,30,'Ceará','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (446,30,'Distrito Federal','DF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (447,30,'Espírito Santo','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (448,30,'Goiás','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (449,30,'Maranhão','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (450,30,'Mato Grosso','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (451,30,'Mato Grosso do Sul','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (452,30,'Minas Gerais','MG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (453,30,'Pará','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (454,30,'Paraíba','PB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (455,30,'Paraná','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (456,30,'Pernambuco','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (457,30,'Piauí','PI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (458,30,'Rio de Janeiro','RJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (459,30,'Rio Grande do Norte','RN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (460,30,'Rio Grande do Sul','RS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (461,30,'Rondônia','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (462,30,'Roraima','RR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (463,30,'Santa Catarina','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (464,30,'São Paulo','SP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (465,30,'Sergipe','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (466,30,'Tocantins','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (467,31,'Peros Banhos','PB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (468,31,'Salomon Islands','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (469,31,'Nelsons Island','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (470,31,'Three Brothers','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (471,31,'Eagle Islands','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (472,31,'Danger Island','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (473,31,'Egmont Islands','EG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (474,31,'Diego Garcia','DG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (475,32,'Belait','BEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (476,32,'Brunei and Muara','BRM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (477,32,'Temburong','TEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (478,32,'Tutong','TUT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (479,33,'Blagoevgrad','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (480,33,'Burgas','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (481,33,'Dobrich','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (482,33,'Gabrovo','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (483,33,'Haskovo','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (484,33,'Kardjali','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (485,33,'Kyustendil','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (486,33,'Lovech','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (487,33,'Montana','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (488,33,'Pazardjik','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (489,33,'Pernik','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (490,33,'Pleven','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (491,33,'Plovdiv','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (492,33,'Razgrad','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (493,33,'Shumen','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (494,33,'Silistra','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (495,33,'Sliven','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (496,33,'Smolyan','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (497,33,'Sofia','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (498,33,'Sofia - town','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (499,33,'Stara Zagora','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (500,33,'Targovishte','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (501,33,'Varna','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (502,33,'Veliko Tarnovo','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (503,33,'Vidin','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (504,33,'Vratza','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (505,33,'Yambol','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (506,34,'Bale','BAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (507,34,'Bam','BAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (508,34,'Banwa','BAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (509,34,'Bazega','BAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (510,34,'Bougouriba','BOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (511,34,'Boulgou','BLG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (512,34,'Boulkiemde','BOK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (513,34,'Comoe','COM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (514,34,'Ganzourgou','GAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (515,34,'Gnagna','GNA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (516,34,'Gourma','GOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (517,34,'Houet','HOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (518,34,'Ioba','IOA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (519,34,'Kadiogo','KAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (520,34,'Kenedougou','KEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (521,34,'Komondjari','KOD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (522,34,'Kompienga','KOP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (523,34,'Kossi','KOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (524,34,'Koulpelogo','KOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (525,34,'Kouritenga','KOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (526,34,'Kourweogo','KOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (527,34,'Leraba','LER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (528,34,'Loroum','LOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (529,34,'Mouhoun','MOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (530,34,'Nahouri','NAH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (531,34,'Namentenga','NAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (532,34,'Nayala','NAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (533,34,'Noumbiel','NOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (534,34,'Oubritenga','OUB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (535,34,'Oudalan','OUD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (536,34,'Passore','PAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (537,34,'Poni','PON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (538,34,'Sanguie','SAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (539,34,'Sanmatenga','SAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (540,34,'Seno','SEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (541,34,'Sissili','SIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (542,34,'Soum','SOM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (543,34,'Sourou','SOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (544,34,'Tapoa','TAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (545,34,'Tuy','TUY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (546,34,'Yagha','YAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (547,34,'Yatenga','YAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (548,34,'Ziro','ZIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (549,34,'Zondoma','ZOD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (550,34,'Zoundweogo','ZOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (551,35,'Bubanza','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (552,35,'Bujumbura','BJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (553,35,'Bururi','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (554,35,'Cankuzo','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (555,35,'Cibitoke','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (556,35,'Gitega','GI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (557,35,'Karuzi','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (558,35,'Kayanza','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (559,35,'Kirundo','KI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (560,35,'Makamba','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (561,35,'Muramvya','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (562,35,'Muyinga','MY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (563,35,'Mwaro','MW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (564,35,'Ngozi','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (565,35,'Rutana','RT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (566,35,'Ruyigi','RY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (567,36,'Phnom Penh','PP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (569,36,'Pailin','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (570,36,'Keb','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (571,36,'Banteay Meanchey','BM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (572,36,'Battambang','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (573,36,'Kampong Cham','KM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (574,36,'Kampong Chhnang','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (575,36,'Kampong Speu','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (576,36,'Kampong Som','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (577,36,'Kampong Thom','KT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (578,36,'Kampot','KP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (579,36,'Kandal','KL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (580,36,'Kaoh Kong','KK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (581,36,'Kratie','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (582,36,'Mondul Kiri','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (583,36,'Oddar Meancheay','OM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (584,36,'Pursat','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (585,36,'Preah Vihear','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (586,36,'Prey Veng','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (587,36,'Ratanak Kiri','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (588,36,'Siemreap','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (589,36,'Stung Treng','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (590,36,'Svay Rieng','SR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (591,36,'Takeo','TK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (592,37,'Adamawa (Adamaoua)','ADA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (593,37,'Centre','CEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (594,37,'East (Est)','EST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (595,37,'Extreme North (Extreme-Nord)','EXN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (596,37,'Littoral','LIT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (597,37,'North (Nord)','NOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (598,37,'Northwest (Nord-Ouest)','NOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (599,37,'West (Ouest)','OUE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (600,37,'South (Sud)','SUD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (601,37,'Southwest (Sud-Ouest).','SOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (602,38,'Alberta','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (603,38,'British Columbia','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (604,38,'Manitoba','MB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (605,38,'New Brunswick','NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (606,38,'Newfoundland and Labrador','NL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (607,38,'Northwest Territories','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (608,38,'Nova Scotia','NS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (609,38,'Nunavut','NU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (610,38,'Ontario','ON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (611,38,'Prince Edward Island','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (612,38,'Qu&eacute;bec','QC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (613,38,'Saskatchewan','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (614,38,'Yukon Territory','YT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (615,39,'Boa Vista','BV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (616,39,'Brava','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (617,39,'Calheta de Sao Miguel','CS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (618,39,'Maio','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (619,39,'Mosteiros','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (620,39,'Paul','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (621,39,'Porto Novo','PN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (622,39,'Praia','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (623,39,'Ribeira Grande','RG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (624,39,'Sal','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (625,39,'Santa Catarina','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (626,39,'Santa Cruz','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (627,39,'Sao Domingos','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (628,39,'Sao Filipe','SF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (629,39,'Sao Nicolau','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (630,39,'Sao Vicente','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (631,39,'Tarrafal','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (632,40,'Creek','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (633,40,'Eastern','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (634,40,'Midland','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (635,40,'South Town','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (636,40,'Spot Bay','SP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (637,40,'Stake Bay','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (638,40,'West End','WD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (639,40,'Western','WN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (640,41,'Bamingui-Bangoran','BBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (641,41,'Basse-Kotto','BKO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (642,41,'Haute-Kotto','HKO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (643,41,'Haut-Mbomou','HMB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (644,41,'Kemo','KEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (645,41,'Lobaye','LOB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (646,41,'Mambere-KadeÔ','MKD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (647,41,'Mbomou','MBO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (648,41,'Nana-Mambere','NMM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (649,41,'Ombella-M\'Poko','OMP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (650,41,'Ouaka','OUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (651,41,'Ouham','OUH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (652,41,'Ouham-Pende','OPE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (653,41,'Vakaga','VAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (654,41,'Nana-Grebizi','NGR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (655,41,'Sangha-Mbaere','SMB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (656,41,'Bangui','BAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (657,42,'Batha','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (658,42,'Biltine','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (659,42,'Borkou-Ennedi-Tibesti','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (660,42,'Chari-Baguirmi','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (661,42,'Guera','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (662,42,'Kanem','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (663,42,'Lac','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (664,42,'Logone Occidental','LC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (665,42,'Logone Oriental','LR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (666,42,'Mayo-Kebbi','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (667,42,'Moyen-Chari','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (668,42,'Ouaddai','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (669,42,'Salamat','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (670,42,'Tandjile','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (671,43,'Aisen del General Carlos Ibanez','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (672,43,'Antofagasta','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (673,43,'Araucania','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (674,43,'Atacama','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (675,43,'Bio-Bio','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (676,43,'Coquimbo','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (677,43,'Libertador General Bernardo O\'Higgins','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (678,43,'Los Lagos','LL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (679,43,'Magallanes y de la Antartica Chilena','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (680,43,'Maule','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (681,43,'Region Metropolitana','RM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (682,43,'Tarapaca','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (683,43,'Valparaiso','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (684,44,'Anhui','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (685,44,'Beijing','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (686,44,'Chongqing','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (687,44,'Fujian','FU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (688,44,'Gansu','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (689,44,'Guangdong','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (690,44,'Guangxi','GX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (691,44,'Guizhou','GZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (692,44,'Hainan','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (693,44,'Hebei','HB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (694,44,'Heilongjiang','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (695,44,'Henan','HE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (696,44,'Hong Kong','HK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (697,44,'Hubei','HU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (698,44,'Hunan','HN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (699,44,'Inner Mongolia','IM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (700,44,'Jiangsu','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (701,44,'Jiangxi','JX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (702,44,'Jilin','JL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (703,44,'Liaoning','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (704,44,'Macau','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (705,44,'Ningxia','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (706,44,'Shaanxi','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (707,44,'Shandong','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (708,44,'Shanghai','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (709,44,'Shanxi','SX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (710,44,'Sichuan','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (711,44,'Tianjin','TI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (712,44,'Xinjiang','XI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (713,44,'Yunnan','YU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (714,44,'Zhejiang','ZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (715,46,'Direction Island','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (716,46,'Home Island','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (717,46,'Horsburgh Island','O',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (718,46,'South Island','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (719,46,'West Island','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (720,47,'Amazonas','AMZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (721,47,'Antioquia','ANT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (722,47,'Arauca','ARA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (723,47,'Atlantico','ATL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (724,47,'Bogota D.C.','BDC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (725,47,'Bolivar','BOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (726,47,'Boyaca','BOY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (727,47,'Caldas','CAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (728,47,'Caqueta','CAQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (729,47,'Casanare','CAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (730,47,'Cauca','CAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (731,47,'Cesar','CES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (732,47,'Choco','CHO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (733,47,'Cordoba','COR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (734,47,'Cundinamarca','CAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (735,47,'Guainia','GNA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (736,47,'Guajira','GJR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (737,47,'Guaviare','GVR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (738,47,'Huila','HUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (739,47,'Magdalena','MAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (740,47,'Meta','MET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (741,47,'Narino','NAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (742,47,'Norte de Santander','NDS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (743,47,'Putumayo','PUT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (744,47,'Quindio','QUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (745,47,'Risaralda','RIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (746,47,'San Andres y Providencia','SAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (747,47,'Santander','SAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (748,47,'Sucre','SUC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (749,47,'Tolima','TOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (750,47,'Valle del Cauca','VDC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (751,47,'Vaupes','VAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (752,47,'Vichada','VIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (753,48,'Grande Comore','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (754,48,'Anjouan','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (755,48,'Moheli','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (756,49,'Bouenza','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (757,49,'Brazzaville','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (758,49,'Cuvette','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (759,49,'Cuvette-Ouest','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (760,49,'Kouilou','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (761,49,'Lekoumou','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (762,49,'Likouala','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (763,49,'Niari','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (764,49,'Plateaux','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (765,49,'Pool','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (766,49,'Sangha','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (767,50,'Pukapuka','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (768,50,'Rakahanga','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (769,50,'Manihiki','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (770,50,'Penrhyn','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (771,50,'Nassau Island','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (772,50,'Surwarrow','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (773,50,'Palmerston','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (774,50,'Aitutaki','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (775,50,'Manuae','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (776,50,'Takutea','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (777,50,'Mitiaro','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (778,50,'Atiu','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (779,50,'Mauke','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (780,50,'Rarotonga','RR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (781,50,'Mangaia','MG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (782,51,'Alajuela','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (783,51,'Cartago','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (784,51,'Guanacaste','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (785,51,'Heredia','HE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (786,51,'Limon','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (787,51,'Puntarenas','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (788,51,'San Jose','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (789,52,'Abengourou','ABE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (790,52,'Abidjan','ABI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (791,52,'Aboisso','ABO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (792,52,'Adiake','ADI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (793,52,'Adzope','ADZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (794,52,'Agboville','AGB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (795,52,'Agnibilekrou','AGN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (796,52,'Alepe','ALE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (797,52,'Bocanda','BOC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (798,52,'Bangolo','BAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (799,52,'Beoumi','BEO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (800,52,'Biankouma','BIA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (801,52,'Bondoukou','BDK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (802,52,'Bongouanou','BGN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (803,52,'Bouafle','BFL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (804,52,'Bouake','BKE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (805,52,'Bouna','BNA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (806,52,'Boundiali','BDL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (807,52,'Dabakala','DKL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (808,52,'Dabou','DBU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (809,52,'Daloa','DAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (810,52,'Danane','DAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (811,52,'Daoukro','DAO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (812,52,'Dimbokro','DIM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (813,52,'Divo','DIV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (814,52,'Duekoue','DUE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (815,52,'Ferkessedougou','FER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (816,52,'Gagnoa','GAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (817,52,'Grand-Bassam','GBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (818,52,'Grand-Lahou','GLA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (819,52,'Guiglo','GUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (820,52,'Issia','ISS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (821,52,'Jacqueville','JAC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (822,52,'Katiola','KAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (823,52,'Korhogo','KOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (824,52,'Lakota','LAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (825,52,'Man','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (826,52,'Mankono','MKN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (827,52,'Mbahiakro','MBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (828,52,'Odienne','ODI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (829,52,'Oume','OUM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (830,52,'Sakassou','SAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (831,52,'San-Pedro','SPE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (832,52,'Sassandra','SAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (833,52,'Seguela','SEG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (834,52,'Sinfra','SIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (835,52,'Soubre','SOU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (836,52,'Tabou','TAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (837,52,'Tanda','TAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (838,52,'Tiebissou','TIE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (839,52,'Tingrela','TIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (840,52,'Tiassale','TIA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (841,52,'Touba','TBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (842,52,'Toulepleu','TLP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (843,52,'Toumodi','TMD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (844,52,'Vavoua','VAV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (845,52,'Yamoussoukro','YAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (846,52,'Zuenoula','ZUE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (847,53,'Bjelovarsko-bilogorska','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (848,53,'Grad Zagreb','GZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (849,53,'Dubrovačko-neretvanska','DN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (850,53,'Istarska','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (851,53,'Karlovačka','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (852,53,'Koprivničko-križevačka','KK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (853,53,'Krapinsko-zagorska','KZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (854,53,'Ličko-senjska','LS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (855,53,'Međimurska','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (856,53,'Osječko-baranjska','OB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (857,53,'Požeško-slavonska','PS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (858,53,'Primorsko-goranska','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (859,53,'Šibensko-kninska','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (860,53,'Sisačko-moslavačka','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (861,53,'Brodsko-posavska','BP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (862,53,'Splitsko-dalmatinska','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (863,53,'Varaždinska','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (864,53,'Virovitičko-podravska','VP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (865,53,'Vukovarsko-srijemska','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (866,53,'Zadarska','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (867,53,'Zagrebačka','ZG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (868,54,'Camaguey','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (869,54,'Ciego de Avila','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (870,54,'Cienfuegos','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (871,54,'Ciudad de La Habana','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (872,54,'Granma','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (873,54,'Guantanamo','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (874,54,'Holguin','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (875,54,'Isla de la Juventud','IJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (876,54,'La Habana','LH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (877,54,'Las Tunas','LT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (878,54,'Matanzas','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (879,54,'Pinar del Rio','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (880,54,'Sancti Spiritus','SS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (881,54,'Santiago de Cuba','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (882,54,'Villa Clara','VC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (883,55,'Famagusta','F',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (884,55,'Kyrenia','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (885,55,'Larnaca','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (886,55,'Limassol','I',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (887,55,'Nicosia','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (888,55,'Paphos','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (889,56,'Ústecký','U',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (890,56,'Jihočeský','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (891,56,'Jihomoravský','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (892,56,'Karlovarský','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (893,56,'Královehradecký','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (894,56,'Liberecký','L',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (895,56,'Moravskoslezský','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (896,56,'Olomoucký','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (897,56,'Pardubický','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (898,56,'Plzeňský','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (899,56,'Praha','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (900,56,'Středočeský','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (901,56,'Vysočina','J',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (902,56,'Zlínský','Z',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (903,57,'Arhus','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (904,57,'Bornholm','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (905,57,'Copenhagen','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (906,57,'Faroe Islands','FO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (907,57,'Frederiksborg','FR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (908,57,'Fyn','FY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (909,57,'Kobenhavn','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (910,57,'Nordjylland','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (911,57,'Ribe','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (912,57,'Ringkobing','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (913,57,'Roskilde','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (914,57,'Sonderjylland','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (915,57,'Storstrom','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (916,57,'Vejle','VK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (917,57,'Vestj&aelig;lland','VJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (918,57,'Viborg','VB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (919,58,'\'Ali Sabih','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (920,58,'Dikhil','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (921,58,'Djibouti','J',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (922,58,'Obock','O',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (923,58,'Tadjoura','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (924,59,'Saint Andrew Parish','AND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (925,59,'Saint David Parish','DAV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (926,59,'Saint George Parish','GEO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (927,59,'Saint John Parish','JOH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (928,59,'Saint Joseph Parish','JOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (929,59,'Saint Luke Parish','LUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (930,59,'Saint Mark Parish','MAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (931,59,'Saint Patrick Parish','PAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (932,59,'Saint Paul Parish','PAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (933,59,'Saint Peter Parish','PET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (934,60,'Distrito Nacional','DN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (935,60,'Azua','AZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (936,60,'Baoruco','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (937,60,'Barahona','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (938,60,'Dajabon','DJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (939,60,'Duarte','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (940,60,'Elias Pina','EL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (941,60,'El Seybo','SY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (942,60,'Espaillat','ET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (943,60,'Hato Mayor','HM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (944,60,'Independencia','IN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (945,60,'La Altagracia','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (946,60,'La Romana','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (947,60,'La Vega','VE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (948,60,'Maria Trinidad Sanchez','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (949,60,'Monsenor Nouel','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (950,60,'Monte Cristi','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (951,60,'Monte Plata','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (952,60,'Pedernales','PD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (953,60,'Peravia (Bani)','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (954,60,'Puerto Plata','PP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (955,60,'Salcedo','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (956,60,'Samana','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (957,60,'Sanchez Ramirez','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (958,60,'San Cristobal','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (959,60,'San Jose de Ocoa','JO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (960,60,'San Juan','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (961,60,'San Pedro de Macoris','PM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (962,60,'Santiago','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (963,60,'Santiago Rodriguez','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (964,60,'Santo Domingo','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (965,60,'Valverde','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (966,61,'Aileu','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (967,61,'Ainaro','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (968,61,'Baucau','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (969,61,'Bobonaro','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (970,61,'Cova Lima','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (971,61,'Dili','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (972,61,'Ermera','ER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (973,61,'Lautem','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (974,61,'Liquica','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (975,61,'Manatuto','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (976,61,'Manufahi','MF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (977,61,'Oecussi','OE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (978,61,'Viqueque','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (979,62,'Azuay','AZU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (980,62,'Bolivar','BOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (981,62,'Ca&ntilde;ar','CAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (982,62,'Carchi','CAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (983,62,'Chimborazo','CHI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (984,62,'Cotopaxi','COT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (985,62,'El Oro','EOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (986,62,'Esmeraldas','ESM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (987,62,'Gal&aacute;pagos','GPS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (988,62,'Guayas','GUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (989,62,'Imbabura','IMB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (990,62,'Loja','LOJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (991,62,'Los Rios','LRO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (992,62,'Manab&iacute;','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (993,62,'Morona Santiago','MSA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (994,62,'Napo','NAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (995,62,'Orellana','ORE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (996,62,'Pastaza','PAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (997,62,'Pichincha','PIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (998,62,'Sucumb&iacute;os','SUC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (999,62,'Tungurahua','TUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1000,62,'Zamora Chinchipe','ZCH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1001,63,'Ad Daqahliyah','DHY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1002,63,'Al Bahr al Ahmar','BAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1003,63,'Al Buhayrah','BHY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1004,63,'Al Fayyum','FYM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1005,63,'Al Gharbiyah','GBY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1006,63,'Al Iskandariyah','IDR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1007,63,'Al Isma\'iliyah','IML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1008,63,'Al Jizah','JZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1009,63,'Al Minufiyah','MFY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1010,63,'Al Minya','MNY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1011,63,'Al Qahirah','QHR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1012,63,'Al Qalyubiyah','QLY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1013,63,'Al Wadi al Jadid','WJD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1014,63,'Ash Sharqiyah','SHQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1015,63,'As Suways','SWY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1016,63,'Aswan','ASW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1017,63,'Asyut','ASY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1018,63,'Bani Suwayf','BSW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1019,63,'Bur Sa\'id','BSD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1020,63,'Dumyat','DMY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1021,63,'Janub Sina\'','JNS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1022,63,'Kafr ash Shaykh','KSH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1023,63,'Matruh','MAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1024,63,'Qina','QIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1025,63,'Shamal Sina\'','SHS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1026,63,'Suhaj','SUH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1027,64,'Ahuachapan','AH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1028,64,'Cabanas','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1029,64,'Chalatenango','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1030,64,'Cuscatlan','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1031,64,'La Libertad','LB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1032,64,'La Paz','PZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1033,64,'La Union','UN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1034,64,'Morazan','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1035,64,'San Miguel','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1036,64,'San Salvador','SS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1037,64,'San Vicente','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1038,64,'Santa Ana','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1039,64,'Sonsonate','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1040,64,'Usulutan','US',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1041,65,'Provincia Annobon','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1042,65,'Provincia Bioko Norte','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1043,65,'Provincia Bioko Sur','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1044,65,'Provincia Centro Sur','CS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1045,65,'Provincia Kie-Ntem','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1046,65,'Provincia Litoral','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1047,65,'Provincia Wele-Nzas','WN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1048,66,'Central (Maekel)','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1049,66,'Anseba (Keren)','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1052,66,'Southern (Debub)','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1053,66,'Gash-Barka (Barentu)','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1054,67,'Harjumaa (Tallinn)','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1055,67,'Hiiumaa (Kardla)','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1056,67,'Ida-Virumaa (Johvi)','IV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1057,67,'Jarvamaa (Paide)','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1058,67,'Jogevamaa (Jogeva)','JO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1059,67,'Laane-Virumaa (Rakvere)','LV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1060,67,'Laanemaa (Haapsalu)','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1061,67,'Parnumaa (Parnu)','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1062,67,'Polvamaa (Polva)','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1063,67,'Raplamaa (Rapla)','RA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1064,67,'Saaremaa (Kuessaare)','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1065,67,'Tartumaa (Tartu)','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1066,67,'Valgamaa (Valga)','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1067,67,'Viljandimaa (Viljandi)','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1068,67,'Vorumaa (Voru)','VO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1069,68,'Afar','AF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1070,68,'Amhara','AH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1071,68,'Benishangul-Gumaz','BG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1072,68,'Gambela','GB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1073,68,'Hariai','HR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1074,68,'Oromia','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1075,68,'Somali','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1077,68,'Tigray','TG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1078,68,'Addis Ababa','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1079,68,'Dire Dawa','DD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1080,71,'Central Division','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1081,71,'Northern Division','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1082,71,'Eastern Division','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1083,71,'Western Division','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1084,71,'Rotuma','R',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1085,72,'Ahvenanmaan lääni','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1086,72,'Etelä-Suomen lääni','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1087,72,'Itä-Suomen lääni','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1088,72,'Länsi-Suomen lääni','LS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1089,72,'Lapin lääni','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1090,72,'Oulun lääni','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1114,74,'Ain','01',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1115,74,'Aisne','02',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1116,74,'Allier','03',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1117,74,'Alpes de Haute Provence','04',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1118,74,'Hautes-Alpes','05',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1119,74,'Alpes Maritimes','06',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1120,74,'Ard&egrave;che','07',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1121,74,'Ardennes','08',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1122,74,'Ari&egrave;ge','09',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1123,74,'Aube','10',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1124,74,'Aude','11',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1125,74,'Aveyron','12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1126,74,'Bouches du Rh&ocirc;ne','13',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1127,74,'Calvados','14',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1128,74,'Cantal','15',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1129,74,'Charente','16',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1130,74,'Charente Maritime','17',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1131,74,'Cher','18',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1132,74,'Corr&egrave;ze','19',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1133,74,'Corse du Sud','2A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1134,74,'Haute Corse','2B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1135,74,'C&ocirc;te d&#039;or','21',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1136,74,'C&ocirc;tes d&#039;Armor','22',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1137,74,'Creuse','23',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1138,74,'Dordogne','24',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1139,74,'Doubs','25',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1140,74,'Dr&ocirc;me','26',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1141,74,'Eure','27',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1142,74,'Eure et Loir','28',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1143,74,'Finist&egrave;re','29',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1144,74,'Gard','30',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1145,74,'Haute Garonne','31',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1146,74,'Gers','32',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1147,74,'Gironde','33',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1148,74,'H&eacute;rault','34',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1149,74,'Ille et Vilaine','35',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1150,74,'Indre','36',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1151,74,'Indre et Loire','37',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1152,74,'Is&eacute;re','38',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1153,74,'Jura','39',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1154,74,'Landes','40',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1155,74,'Loir et Cher','41',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1156,74,'Loire','42',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1157,74,'Haute Loire','43',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1158,74,'Loire Atlantique','44',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1159,74,'Loiret','45',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1160,74,'Lot','46',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1161,74,'Lot et Garonne','47',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1162,74,'Loz&egrave;re','48',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1163,74,'Maine et Loire','49',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1164,74,'Manche','50',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1165,74,'Marne','51',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1166,74,'Haute Marne','52',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1167,74,'Mayenne','53',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1168,74,'Meurthe et Moselle','54',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1169,74,'Meuse','55',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1170,74,'Morbihan','56',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1171,74,'Moselle','57',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1172,74,'Ni&egrave;vre','58',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1173,74,'Nord','59',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1174,74,'Oise','60',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1175,74,'Orne','61',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1176,74,'Pas de Calais','62',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1177,74,'Puy de D&ocirc;me','63',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1181,74,'Bas Rhin','67',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1182,74,'Haut Rhin','68',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1183,74,'Rh&ocirc;ne','69',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1184,74,'Haute Sa&ocirc;ne','70',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1185,74,'Sa&ocirc;ne et Loire','71',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1186,74,'Sarthe','72',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1187,74,'Savoie','73',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1188,74,'Haute Savoie','74',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1189,74,'Paris','75',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1190,74,'Seine Maritime','76',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1191,74,'Seine et Marne','77',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1192,74,'Yvelines','78',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1193,74,'Deux S&egrave;vres','79',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1194,74,'Somme','80',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1195,74,'Tarn','81',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1196,74,'Tarn et Garonne','82',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1197,74,'Var','83',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1198,74,'Vaucluse','84',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1199,74,'Vend&eacute;e','85',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1200,74,'Vienne','86',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1201,74,'Haute Vienne','87',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1202,74,'Vosges','88',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1203,74,'Yonne','89',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1204,74,'Territoire de Belfort','90',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1205,74,'Essonne','91',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1206,74,'Hauts de Seine','92',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1207,74,'Seine St-Denis','93',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1208,74,'Val de Marne','94',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1209,74,'Val d\'Oise','95',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1210,76,'Archipel des Marquises','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1211,76,'Archipel des Tuamotu','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1212,76,'Archipel des Tubuai','I',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1213,76,'Iles du Vent','V',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1214,76,'Iles Sous-le-Vent','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1215,77,'Iles Crozet','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1216,77,'Iles Kerguelen','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1217,77,'Ile Amsterdam','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1218,77,'Ile Saint-Paul','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1219,77,'Adelie Land','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1220,78,'Estuaire','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1221,78,'Haut-Ogooue','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1222,78,'Moyen-Ogooue','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1223,78,'Ngounie','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1224,78,'Nyanga','NY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1225,78,'Ogooue-Ivindo','OI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1226,78,'Ogooue-Lolo','OL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1227,78,'Ogooue-Maritime','OM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1228,78,'Woleu-Ntem','WN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1229,79,'Banjul','BJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1230,79,'Basse','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1231,79,'Brikama','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1232,79,'Janjangbure','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1233,79,'Kanifeng','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1234,79,'Kerewan','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1235,79,'Kuntaur','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1236,79,'Mansakonko','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1237,79,'Lower River','LR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1238,79,'Central River','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1239,79,'North Bank','NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1240,79,'Upper River','UR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1241,79,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1242,80,'Abkhazia','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1243,80,'Ajaria','AJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1244,80,'Tbilisi','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1245,80,'Guria','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1246,80,'Imereti','IM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1247,80,'Kakheti','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1248,80,'Kvemo Kartli','KK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1249,80,'Mtskheta-Mtianeti','MM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1251,80,'Samegrelo-Zemo Svaneti','SZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1252,80,'Samtskhe-Javakheti','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1253,80,'Shida Kartli','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1254,81,'Baden-Württemberg','BAW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1255,81,'Bayern','BAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1256,81,'Berlin','BER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1257,81,'Brandenburg','BRG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1258,81,'Bremen','BRE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1259,81,'Hamburg','HAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1260,81,'Hessen','HES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1261,81,'Mecklenburg-Vorpommern','MEC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1262,81,'Niedersachsen','NDS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1263,81,'Nordrhein-Westfalen','NRW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1264,81,'Rheinland-Pfalz','RHE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1265,81,'Saarland','SAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1266,81,'Sachsen','SAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1267,81,'Sachsen-Anhalt','SAC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1268,81,'Schleswig-Holstein','SCN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1269,81,'Thüringen','THE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1270,82,'Ashanti Region','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1271,82,'Brong-Ahafo Region','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1272,82,'Central Region','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1273,82,'Eastern Region','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1274,82,'Greater Accra Region','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1275,82,'Northern Region','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1276,82,'Upper East Region','UE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1277,82,'Upper West Region','UW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1278,82,'Volta Region','VO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1279,82,'Western Region','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1280,84,'Attica','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1281,84,'Central Greece','CN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1282,84,'Central Macedonia','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1283,84,'Crete','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1284,84,'East Macedonia and Thrace','EM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1285,84,'Epirus','EP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1286,84,'Ionian Islands','II',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1287,84,'North Aegean','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1288,84,'Peloponnesos','PP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1289,84,'South Aegean','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1290,84,'Thessaly','TH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1291,84,'West Greece','WG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1292,84,'West Macedonia','WM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1293,85,'Avannaa','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1294,85,'Tunu','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1295,85,'Kitaa','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1296,86,'Saint Andrew','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1297,86,'Saint David','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1298,86,'Saint George','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1299,86,'Saint John','J',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1300,86,'Saint Mark','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1301,86,'Saint Patrick','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1302,86,'Carriacou','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1303,86,'Petit Martinique','Q',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1304,89,'Alta Verapaz','AV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1305,89,'Baja Verapaz','BV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1306,89,'Chimaltenango','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1307,89,'Chiquimula','CQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1308,89,'El Peten','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1309,89,'El Progreso','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1310,89,'El Quiche','QC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1311,89,'Escuintla','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1312,89,'Guatemala','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1313,89,'Huehuetenango','HU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1314,89,'Izabal','IZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1315,89,'Jalapa','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1316,89,'Jutiapa','JU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1317,89,'Quetzaltenango','QZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1318,89,'Retalhuleu','RE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1319,89,'Sacatepequez','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1320,89,'San Marcos','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1321,89,'Santa Rosa','SR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1322,89,'Solola','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1323,89,'Suchitepequez','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1324,89,'Totonicapan','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1325,89,'Zacapa','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1326,90,'Conakry','CNK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1327,90,'Beyla','BYL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1328,90,'Boffa','BFA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1329,90,'Boke','BOK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1330,90,'Coyah','COY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1331,90,'Dabola','DBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1332,90,'Dalaba','DLB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1333,90,'Dinguiraye','DGR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1334,90,'Dubreka','DBR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1335,90,'Faranah','FRN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1336,90,'Forecariah','FRC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1337,90,'Fria','FRI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1338,90,'Gaoual','GAO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1339,90,'Gueckedou','GCD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1340,90,'Kankan','KNK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1341,90,'Kerouane','KRN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1342,90,'Kindia','KND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1343,90,'Kissidougou','KSD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1344,90,'Koubia','KBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1345,90,'Koundara','KDA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1346,90,'Kouroussa','KRA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1347,90,'Labe','LAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1348,90,'Lelouma','LLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1349,90,'Lola','LOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1350,90,'Macenta','MCT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1351,90,'Mali','MAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1352,90,'Mamou','MAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1353,90,'Mandiana','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1354,90,'Nzerekore','NZR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1355,90,'Pita','PIT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1356,90,'Siguiri','SIG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1357,90,'Telimele','TLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1358,90,'Tougue','TOG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1359,90,'Yomou','YOM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1360,91,'Bafata Region','BF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1361,91,'Biombo Region','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1362,91,'Bissau Region','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1363,91,'Bolama Region','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1364,91,'Cacheu Region','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1365,91,'Gabu Region','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1366,91,'Oio Region','OI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1367,91,'Quinara Region','QU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1368,91,'Tombali Region','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1369,92,'Barima-Waini','BW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1370,92,'Cuyuni-Mazaruni','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1371,92,'Demerara-Mahaica','DM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1372,92,'East Berbice-Corentyne','EC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1373,92,'Essequibo Islands-West Demerara','EW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1374,92,'Mahaica-Berbice','MB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1375,92,'Pomeroon-Supenaam','PM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1376,92,'Potaro-Siparuni','PI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1377,92,'Upper Demerara-Berbice','UD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1378,92,'Upper Takutu-Upper Essequibo','UT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1379,93,'Artibonite','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1380,93,'Centre','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1381,93,'Grand\'Anse','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1382,93,'Nord','ND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1383,93,'Nord-Est','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1384,93,'Nord-Ouest','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1385,93,'Ouest','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1386,93,'Sud','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1387,93,'Sud-Est','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1388,94,'Flat Island','F',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1389,94,'McDonald Island','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1390,94,'Shag Island','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1391,94,'Heard Island','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1392,95,'Atlantida','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1393,95,'Choluteca','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1394,95,'Colon','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1395,95,'Comayagua','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1396,95,'Copan','CP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1397,95,'Cortes','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1398,95,'El Paraiso','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1399,95,'Francisco Morazan','FM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1400,95,'Gracias a Dios','GD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1401,95,'Intibuca','IN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1402,95,'Islas de la Bahia (Bay Islands)','IB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1403,95,'La Paz','PZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1404,95,'Lempira','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1405,95,'Ocotepeque','OC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1406,95,'Olancho','OL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1407,95,'Santa Barbara','SB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1408,95,'Valle','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1409,95,'Yoro','YO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1410,96,'Central and Western Hong Kong Island','HCW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1411,96,'Eastern Hong Kong Island','HEA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1412,96,'Southern Hong Kong Island','HSO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1413,96,'Wan Chai Hong Kong Island','HWC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1414,96,'Kowloon City Kowloon','KKC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1415,96,'Kwun Tong Kowloon','KKT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1416,96,'Sham Shui Po Kowloon','KSS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1417,96,'Wong Tai Sin Kowloon','KWT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1418,96,'Yau Tsim Mong Kowloon','KYT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1419,96,'Islands New Territories','NIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1420,96,'Kwai Tsing New Territories','NKT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1421,96,'North New Territories','NNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1422,96,'Sai Kung New Territories','NSK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1423,96,'Sha Tin New Territories','NST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1424,96,'Tai Po New Territories','NTP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1425,96,'Tsuen Wan New Territories','NTW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1426,96,'Tuen Mun New Territories','NTM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1427,96,'Yuen Long New Territories','NYL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1467,98,'Austurland','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1468,98,'Hofuoborgarsvaeoi','HF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1469,98,'Norourland eystra','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1470,98,'Norourland vestra','NV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1471,98,'Suourland','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1472,98,'Suournes','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1473,98,'Vestfiroir','VF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1474,98,'Vesturland','VL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1475,99,'Andaman and Nicobar Islands','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1476,99,'Andhra Pradesh','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1477,99,'Arunachal Pradesh','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1478,99,'Assam','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1479,99,'Bihar','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1480,99,'Chandigarh','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1481,99,'Dadra and Nagar Haveli','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1482,99,'Daman and Diu','DM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1483,99,'Delhi','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1484,99,'Goa','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1485,99,'Gujarat','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1486,99,'Haryana','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1487,99,'Himachal Pradesh','HP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1488,99,'Jammu and Kashmir','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1489,99,'Karnataka','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1490,99,'Kerala','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1491,99,'Lakshadweep Islands','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1492,99,'Madhya Pradesh','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1493,99,'Maharashtra','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1494,99,'Manipur','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1495,99,'Meghalaya','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1496,99,'Mizoram','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1497,99,'Nagaland','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1498,99,'Orissa','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1499,99,'Puducherry','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1500,99,'Punjab','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1501,99,'Rajasthan','RA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1502,99,'Sikkim','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1503,99,'Tamil Nadu','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1504,99,'Tripura','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1505,99,'Uttar Pradesh','UP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1506,99,'West Bengal','WB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1507,100,'Aceh','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1508,100,'Bali','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1509,100,'Banten','BT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1510,100,'Bengkulu','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1511,100,'BoDeTaBek','BD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1512,100,'Gorontalo','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1513,100,'Jakarta Raya','JK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1514,100,'Jambi','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1515,100,'Jawa Barat','JB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1516,100,'Jawa Tengah','JT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1517,100,'Jawa Timur','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1518,100,'Kalimantan Barat','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1519,100,'Kalimantan Selatan','KS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1520,100,'Kalimantan Tengah','KT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1521,100,'Kalimantan Timur','KI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1522,100,'Kepulauan Bangka Belitung','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1523,100,'Lampung','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1524,100,'Maluku','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1525,100,'Maluku Utara','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1526,100,'Nusa Tenggara Barat','NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1527,100,'Nusa Tenggara Timur','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1528,100,'Papua','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1529,100,'Riau','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1530,100,'Sulawesi Selatan','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1531,100,'Sulawesi Tengah','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1532,100,'Sulawesi Tenggara','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1533,100,'Sulawesi Utara','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1534,100,'Sumatera Barat','SB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1535,100,'Sumatera Selatan','SS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1536,100,'Sumatera Utara','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1537,100,'Yogyakarta','YO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1538,101,'Tehran','TEH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1539,101,'Qom','QOM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1540,101,'Markazi','MKZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1541,101,'Qazvin','QAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1542,101,'Gilan','GIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1543,101,'Ardabil','ARD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1544,101,'Zanjan','ZAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1545,101,'East Azarbaijan','EAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1546,101,'West Azarbaijan','WEZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1547,101,'Kurdistan','KRD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1548,101,'Hamadan','HMD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1549,101,'Kermanshah','KRM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1550,101,'Ilam','ILM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1551,101,'Lorestan','LRS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1552,101,'Khuzestan','KZT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1553,101,'Chahar Mahaal and Bakhtiari','CMB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1555,101,'Bushehr','BSH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1556,101,'Fars','FAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1557,101,'Hormozgan','HRM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1558,101,'Sistan and Baluchistan','SBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1559,101,'Kerman','KRB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1560,101,'Yazd','YZD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1561,101,'Esfahan','EFH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1562,101,'Semnan','SMN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1563,101,'Mazandaran','MZD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1564,101,'Golestan','GLS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1565,101,'North Khorasan','NKH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1566,101,'Razavi Khorasan','RKH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1567,101,'South Khorasan','SKH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1568,102,'Baghdad','BD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1569,102,'Salah ad Din','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1570,102,'Diyala','DY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1571,102,'Wasit','WS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1572,102,'Maysan','MY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1573,102,'Al Basrah','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1574,102,'Dhi Qar','DQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1575,102,'Al Muthanna','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1576,102,'Al Qadisyah','QA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1577,102,'Babil','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1578,102,'Al Karbala','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1579,102,'An Najaf','NJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1580,102,'Al Anbar','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1581,102,'Ninawa','NN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1582,102,'Dahuk','DH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1583,102,'Arbil','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1584,102,'At Ta\'mim','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1585,102,'As Sulaymaniyah','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1586,103,'Carlow','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1587,103,'Cavan','CV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1588,103,'Clare','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1589,103,'Cork','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1590,103,'Donegal','DO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1591,103,'Dublin','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1592,103,'Galway','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1593,103,'Kerry','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1594,103,'Kildare','KI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1595,103,'Kilkenny','KL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1596,103,'Laois','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1597,103,'Leitrim','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1598,103,'Limerick','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1599,103,'Longford','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1600,103,'Louth','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1601,103,'Mayo','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1602,103,'Meath','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1603,103,'Monaghan','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1604,103,'Offaly','OF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1605,103,'Roscommon','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1606,103,'Sligo','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1607,103,'Tipperary','TI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1608,103,'Waterford','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1609,103,'Westmeath','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1610,103,'Wexford','WX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1611,103,'Wicklow','WI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1612,104,'Be\'er Sheva','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1613,104,'Bika\'at Hayarden','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1614,104,'Eilat and Arava','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1615,104,'Galil','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1616,104,'Haifa','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1617,104,'Jehuda Mountains','JM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1618,104,'Jerusalem','JE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1619,104,'Negev','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1620,104,'Semaria','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1621,104,'Sharon','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1622,104,'Tel Aviv (Gosh Dan)','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3860,105,'Caltanissetta','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3842,105,'Agrigento','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3843,105,'Alessandria','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3844,105,'Ancona','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3845,105,'Aosta','AO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3846,105,'Arezzo','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3847,105,'Ascoli Piceno','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3848,105,'Asti','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3849,105,'Avellino','AV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3850,105,'Bari','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3851,105,'Belluno','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3852,105,'Benevento','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3853,105,'Bergamo','BG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3854,105,'Biella','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3855,105,'Bologna','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3856,105,'Bolzano','BZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3857,105,'Brescia','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3858,105,'Brindisi','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3859,105,'Cagliari','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1643,106,'Clarendon Parish','CLA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1644,106,'Hanover Parish','HAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1645,106,'Kingston Parish','KIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1646,106,'Manchester Parish','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1647,106,'Portland Parish','POR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1648,106,'Saint Andrew Parish','AND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1649,106,'Saint Ann Parish','ANN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1650,106,'Saint Catherine Parish','CAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1651,106,'Saint Elizabeth Parish','ELI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1652,106,'Saint James Parish','JAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1653,106,'Saint Mary Parish','MAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1654,106,'Saint Thomas Parish','THO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1655,106,'Trelawny Parish','TRL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1656,106,'Westmoreland Parish','WML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1657,107,'Aichi','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1658,107,'Akita','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1659,107,'Aomori','AO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1660,107,'Chiba','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1661,107,'Ehime','EH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1662,107,'Fukui','FK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1663,107,'Fukuoka','FU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1664,107,'Fukushima','FS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1665,107,'Gifu','GI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1666,107,'Gumma','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1667,107,'Hiroshima','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1668,107,'Hokkaido','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1669,107,'Hyogo','HY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1670,107,'Ibaraki','IB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1671,107,'Ishikawa','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1672,107,'Iwate','IW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1673,107,'Kagawa','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1674,107,'Kagoshima','KG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1675,107,'Kanagawa','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1676,107,'Kochi','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1677,107,'Kumamoto','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1678,107,'Kyoto','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1679,107,'Mie','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1680,107,'Miyagi','MY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1681,107,'Miyazaki','MZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1682,107,'Nagano','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1683,107,'Nagasaki','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1684,107,'Nara','NR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1685,107,'Niigata','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1686,107,'Oita','OI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1687,107,'Okayama','OK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1688,107,'Okinawa','ON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1689,107,'Osaka','OS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1690,107,'Saga','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1691,107,'Saitama','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1692,107,'Shiga','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1693,107,'Shimane','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1694,107,'Shizuoka','SZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1695,107,'Tochigi','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1696,107,'Tokushima','TS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1697,107,'Tokyo','TK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1698,107,'Tottori','TT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1699,107,'Toyama','TY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1700,107,'Wakayama','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1701,107,'Yamagata','YA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1702,107,'Yamaguchi','YM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1703,107,'Yamanashi','YN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1704,108,'\'Amman','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1705,108,'Ajlun','AJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1706,108,'Al \'Aqabah','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1707,108,'Al Balqa\'','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1708,108,'Al Karak','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1709,108,'Al Mafraq','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1710,108,'At Tafilah','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1711,108,'Az Zarqa\'','AZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1712,108,'Irbid','IR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1713,108,'Jarash','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1714,108,'Ma\'an','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1715,108,'Madaba','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1716,109,'Almaty','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1717,109,'Almaty City','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1718,109,'Aqmola','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1719,109,'Aqtobe','AQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1720,109,'Astana City','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1721,109,'Atyrau','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1722,109,'Batys Qazaqstan','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1723,109,'Bayqongyr City','BY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1724,109,'Mangghystau','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1725,109,'Ongtustik Qazaqstan','ON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1726,109,'Pavlodar','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1727,109,'Qaraghandy','QA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1728,109,'Qostanay','QO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1729,109,'Qyzylorda','QY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1730,109,'Shyghys Qazaqstan','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1731,109,'Soltustik Qazaqstan','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1732,109,'Zhambyl','ZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1733,110,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1734,110,'Coast','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1735,110,'Eastern','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1736,110,'Nairobi Area','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1737,110,'North Eastern','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1738,110,'Nyanza','NY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1739,110,'Rift Valley','RV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1740,110,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1741,111,'Abaiang','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1742,111,'Abemama','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1743,111,'Aranuka','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1744,111,'Arorae','AO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1745,111,'Banaba','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1746,111,'Beru','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1747,111,'Butaritari','bT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1748,111,'Kanton','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1749,111,'Kiritimati','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1750,111,'Kuria','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1751,111,'Maiana','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1752,111,'Makin','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1753,111,'Marakei','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1754,111,'Nikunau','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1755,111,'Nonouti','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1756,111,'Onotoa','ON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1757,111,'Tabiteuea','TT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1758,111,'Tabuaeran','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1759,111,'Tamana','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1760,111,'Tarawa','TW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1761,111,'Teraina','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1762,112,'Chagang-do','CHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1763,112,'Hamgyong-bukto','HAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1764,112,'Hamgyong-namdo','HAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1765,112,'Hwanghae-bukto','HWB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1766,112,'Hwanghae-namdo','HWN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1767,112,'Kangwon-do','KAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1768,112,'P\'yongan-bukto','PYB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1769,112,'P\'yongan-namdo','PYN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1770,112,'Ryanggang-do (Yanggang-do)','YAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1771,112,'Rason Directly Governed City','NAJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1772,112,'P\'yongyang Special City','PYO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1773,113,'Ch\'ungch\'ong-bukto','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1774,113,'Ch\'ungch\'ong-namdo','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1775,113,'Cheju-do','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1776,113,'Cholla-bukto','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1777,113,'Cholla-namdo','CN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1778,113,'Inch\'on-gwangyoksi','IG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1779,113,'Kangwon-do','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1780,113,'Kwangju-gwangyoksi','KG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1781,113,'Kyonggi-do','KD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1782,113,'Kyongsang-bukto','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1783,113,'Kyongsang-namdo','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1784,113,'Pusan-gwangyoksi','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1785,113,'Soul-t\'ukpyolsi','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1786,113,'Taegu-gwangyoksi','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1787,113,'Taejon-gwangyoksi','TG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1788,114,'Al \'Asimah','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1789,114,'Al Ahmadi','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1790,114,'Al Farwaniyah','AF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1791,114,'Al Jahra\'','AJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1792,114,'Hawalli','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1793,115,'Bishkek','GB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1794,115,'Batken','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1795,115,'Chu','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1796,115,'Jalal-Abad','J',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1797,115,'Naryn','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1798,115,'Osh','O',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1799,115,'Talas','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1800,115,'Ysyk-Kol','Y',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1801,116,'Vientiane','VT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1802,116,'Attapu','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1803,116,'Bokeo','BK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1804,116,'Bolikhamxai','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1805,116,'Champasak','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1806,116,'Houaphan','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1807,116,'Khammouan','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1808,116,'Louang Namtha','LM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1809,116,'Louangphabang','LP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1810,116,'Oudomxai','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1811,116,'Phongsali','PH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1812,116,'Salavan','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1813,116,'Savannakhet','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1814,116,'Vientiane','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1815,116,'Xaignabouli','XA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1816,116,'Xekong','XE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1817,116,'Xiangkhoang','XI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1818,116,'Xaisomboun','XN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1852,119,'Berea','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1853,119,'Butha-Buthe','BB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1854,119,'Leribe','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1855,119,'Mafeteng','MF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1856,119,'Maseru','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1857,119,'Mohale\'s Hoek','MH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1858,119,'Mokhotlong','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1859,119,'Qacha\'s Nek','QN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1860,119,'Quthing','QT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1861,119,'Thaba-Tseka','TT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1862,120,'Bomi','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1863,120,'Bong','BG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1864,120,'Grand Bassa','GB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1865,120,'Grand Cape Mount','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1866,120,'Grand Gedeh','GG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1867,120,'Grand Kru','GK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1868,120,'Lofa','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1869,120,'Margibi','MG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1870,120,'Maryland','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1871,120,'Montserrado','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1872,120,'Nimba','NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1873,120,'River Cess','RC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1874,120,'Sinoe','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1875,121,'Ajdabiya','AJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1876,121,'Al \'Aziziyah','AZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1877,121,'Al Fatih','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1878,121,'Al Jabal al Akhdar','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1879,121,'Al Jufrah','JU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1880,121,'Al Khums','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1881,121,'Al Kufrah','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1882,121,'An Nuqat al Khams','NK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1883,121,'Ash Shati\'','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1884,121,'Awbari','AW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1885,121,'Az Zawiyah','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1886,121,'Banghazi','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1887,121,'Darnah','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1888,121,'Ghadamis','GD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1889,121,'Gharyan','GY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1890,121,'Misratah','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1891,121,'Murzuq','MZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1892,121,'Sabha','SB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1893,121,'Sawfajjin','SW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1894,121,'Surt','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1895,121,'Tarabulus (Tripoli)','TL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1896,121,'Tarhunah','TH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1897,121,'Tubruq','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1898,121,'Yafran','YA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1899,121,'Zlitan','ZL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1900,122,'Vaduz','V',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1901,122,'Schaan','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1902,122,'Balzers','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1903,122,'Triesen','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1904,122,'Eschen','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1905,122,'Mauren','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1906,122,'Triesenberg','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1907,122,'Ruggell','R',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1908,122,'Gamprin','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1909,122,'Schellenberg','L',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1910,122,'Planken','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1911,123,'Alytus','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1912,123,'Kaunas','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1913,123,'Klaipeda','KL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1914,123,'Marijampole','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1915,123,'Panevezys','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1916,123,'Siauliai','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1917,123,'Taurage','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1918,123,'Telsiai','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1919,123,'Utena','UT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1920,123,'Vilnius','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1921,124,'Diekirch','DD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1922,124,'Clervaux','DC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1923,124,'Redange','DR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1924,124,'Vianden','DV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1925,124,'Wiltz','DW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1926,124,'Grevenmacher','GG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1927,124,'Echternach','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1928,124,'Remich','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1929,124,'Luxembourg','LL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1930,124,'Capellen','LC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1931,124,'Esch-sur-Alzette','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1932,124,'Mersch','LM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1933,125,'Our Lady Fatima Parish','OLF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1934,125,'St. Anthony Parish','ANT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1935,125,'St. Lazarus Parish','LAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1936,125,'Cathedral Parish','CAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1937,125,'St. Lawrence Parish','LAW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1938,127,'Antananarivo','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1939,127,'Antsiranana','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1940,127,'Fianarantsoa','FN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1941,127,'Mahajanga','MJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1942,127,'Toamasina','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1943,127,'Toliara','TL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1944,128,'Balaka','BLK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1945,128,'Blantyre','BLT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1946,128,'Chikwawa','CKW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1947,128,'Chiradzulu','CRD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1948,128,'Chitipa','CTP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1949,128,'Dedza','DDZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1950,128,'Dowa','DWA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1951,128,'Karonga','KRG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1952,128,'Kasungu','KSG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1953,128,'Likoma','LKM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1954,128,'Lilongwe','LLG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1955,128,'Machinga','MCG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1956,128,'Mangochi','MGC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1957,128,'Mchinji','MCH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1958,128,'Mulanje','MLJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1959,128,'Mwanza','MWZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1960,128,'Mzimba','MZM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1961,128,'Ntcheu','NTU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1962,128,'Nkhata Bay','NKB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1963,128,'Nkhotakota','NKH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1964,128,'Nsanje','NSJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1965,128,'Ntchisi','NTI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1966,128,'Phalombe','PHL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1967,128,'Rumphi','RMP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1968,128,'Salima','SLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1969,128,'Thyolo','THY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1970,128,'Zomba','ZBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1971,129,'Johor','MY-01',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1972,129,'Kedah','MY-02',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1973,129,'Kelantan','MY-03',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1974,129,'Labuan','MY-15',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1975,129,'Melaka','MY-04',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1976,129,'Negeri Sembilan','MY-05',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1977,129,'Pahang','MY-06',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1978,129,'Perak','MY-08',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1979,129,'Perlis','MY-09',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1980,129,'Pulau Pinang','MY-07',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1981,129,'Sabah','MY-12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1982,129,'Sarawak','MY-13',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1983,129,'Selangor','MY-10',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1984,129,'Terengganu','MY-11',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1985,129,'Kuala Lumpur','MY-14',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4035,129,'Putrajaya','MY-16',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1986,130,'Thiladhunmathi Uthuru','THU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1987,130,'Thiladhunmathi Dhekunu','THD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1988,130,'Miladhunmadulu Uthuru','MLU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1989,130,'Miladhunmadulu Dhekunu','MLD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1990,130,'Maalhosmadulu Uthuru','MAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1991,130,'Maalhosmadulu Dhekunu','MAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1992,130,'Faadhippolhu','FAA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1993,130,'Male Atoll','MAA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1994,130,'Ari Atoll Uthuru','AAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1995,130,'Ari Atoll Dheknu','AAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1996,130,'Felidhe Atoll','FEA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1997,130,'Mulaku Atoll','MUA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1998,130,'Nilandhe Atoll Uthuru','NAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (1999,130,'Nilandhe Atoll Dhekunu','NAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2000,130,'Kolhumadulu','KLH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2001,130,'Hadhdhunmathi','HDH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2002,130,'Huvadhu Atoll Uthuru','HAU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2003,130,'Huvadhu Atoll Dhekunu','HAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2004,130,'Fua Mulaku','FMU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2005,130,'Addu','ADD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2006,131,'Gao','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2007,131,'Kayes','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2008,131,'Kidal','KD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2009,131,'Koulikoro','KL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2010,131,'Mopti','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2011,131,'Segou','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2012,131,'Sikasso','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2013,131,'Tombouctou','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2014,131,'Bamako Capital District','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2015,132,'Attard','ATT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2016,132,'Balzan','BAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2017,132,'Birgu','BGU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2018,132,'Birkirkara','BKK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2019,132,'Birzebbuga','BRZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2020,132,'Bormla','BOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2021,132,'Dingli','DIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2022,132,'Fgura','FGU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2023,132,'Floriana','FLO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2024,132,'Gudja','GDJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2025,132,'Gzira','GZR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2026,132,'Gargur','GRG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2027,132,'Gaxaq','GXQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2028,132,'Hamrun','HMR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2029,132,'Iklin','IKL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2030,132,'Isla','ISL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2031,132,'Kalkara','KLK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2032,132,'Kirkop','KRK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2033,132,'Lija','LIJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2034,132,'Luqa','LUQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2035,132,'Marsa','MRS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2036,132,'Marsaskala','MKL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2037,132,'Marsaxlokk','MXL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2038,132,'Mdina','MDN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2039,132,'Melliea','MEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2040,132,'Mgarr','MGR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2041,132,'Mosta','MST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2042,132,'Mqabba','MQA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2043,132,'Msida','MSI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2044,132,'Mtarfa','MTF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2045,132,'Naxxar','NAX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2046,132,'Paola','PAO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2047,132,'Pembroke','PEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2048,132,'Pieta','PIE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2049,132,'Qormi','QOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2050,132,'Qrendi','QRE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2051,132,'Rabat','RAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2052,132,'Safi','SAF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2053,132,'San Giljan','SGI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2054,132,'Santa Lucija','SLU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2055,132,'San Pawl il-Bahar','SPB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2056,132,'San Gwann','SGW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2057,132,'Santa Venera','SVE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2058,132,'Siggiewi','SIG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2059,132,'Sliema','SLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2060,132,'Swieqi','SWQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2061,132,'Ta Xbiex','TXB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2062,132,'Tarxien','TRX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2063,132,'Valletta','VLT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2064,132,'Xgajra','XGJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2065,132,'Zabbar','ZBR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2066,132,'Zebbug','ZBG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2067,132,'Zejtun','ZJT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2068,132,'Zurrieq','ZRQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2069,132,'Fontana','FNT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2070,132,'Ghajnsielem','GHJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2071,132,'Gharb','GHR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2072,132,'Ghasri','GHS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2073,132,'Kercem','KRC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2074,132,'Munxar','MUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2075,132,'Nadur','NAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2076,132,'Qala','QAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2077,132,'Victoria','VIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2078,132,'San Lawrenz','SLA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2079,132,'Sannat','SNT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2080,132,'Xagra','ZAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2081,132,'Xewkija','XEW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2082,132,'Zebbug','ZEB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2083,133,'Ailinginae','ALG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2084,133,'Ailinglaplap','ALL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2085,133,'Ailuk','ALK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2086,133,'Arno','ARN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2087,133,'Aur','AUR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2088,133,'Bikar','BKR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2089,133,'Bikini','BKN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2090,133,'Bokak','BKK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2091,133,'Ebon','EBN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2092,133,'Enewetak','ENT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2093,133,'Erikub','EKB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2094,133,'Jabat','JBT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2095,133,'Jaluit','JLT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2096,133,'Jemo','JEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2097,133,'Kili','KIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2098,133,'Kwajalein','KWJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2099,133,'Lae','LAE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2100,133,'Lib','LIB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2101,133,'Likiep','LKP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2102,133,'Majuro','MJR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2103,133,'Maloelap','MLP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2104,133,'Mejit','MJT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2105,133,'Mili','MIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2106,133,'Namorik','NMK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2107,133,'Namu','NAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2108,133,'Rongelap','RGL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2109,133,'Rongrik','RGK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2110,133,'Toke','TOK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2111,133,'Ujae','UJA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2112,133,'Ujelang','UJL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2113,133,'Utirik','UTK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2114,133,'Wotho','WTH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2115,133,'Wotje','WTJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2116,135,'Adrar','AD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2117,135,'Assaba','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2118,135,'Brakna','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2119,135,'Dakhlet Nouadhibou','DN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2120,135,'Gorgol','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2121,135,'Guidimaka','GM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2122,135,'Hodh Ech Chargui','HC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2123,135,'Hodh El Gharbi','HG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2124,135,'Inchiri','IN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2125,135,'Tagant','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2126,135,'Tiris Zemmour','TZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2127,135,'Trarza','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2128,135,'Nouakchott','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2129,136,'Beau Bassin-Rose Hill','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2130,136,'Curepipe','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2131,136,'Port Louis','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2132,136,'Quatre Bornes','QB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2133,136,'Vacoas-Phoenix','VP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2134,136,'Agalega Islands','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2136,136,'Rodrigues','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2137,136,'Black River','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2138,136,'Flacq','FL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2139,136,'Grand Port','GP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2140,136,'Moka','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2141,136,'Pamplemousses','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2142,136,'Plaines Wilhems','PW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2143,136,'Port Louis','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2144,136,'Riviere du Rempart','RR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2145,136,'Savanne','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2146,138,'Baja California Norte','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2147,138,'Baja California Sur','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2148,138,'Campeche','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2149,138,'Chiapas','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2150,138,'Chihuahua','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2151,138,'Coahuila de Zaragoza','CZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2152,138,'Colima','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2153,138,'Distrito Federal','DF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2154,138,'Durango','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2155,138,'Guanajuato','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2156,138,'Guerrero','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2157,138,'Hidalgo','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2158,138,'Jalisco','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2159,138,'Mexico','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2160,138,'Michoacan de Ocampo','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2161,138,'Morelos','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2162,138,'Nayarit','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2163,138,'Nuevo Leon','NL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2164,138,'Oaxaca','OA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2165,138,'Puebla','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2166,138,'Queretaro de Arteaga','QA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2167,138,'Quintana Roo','QR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2168,138,'San Luis Potosi','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2169,138,'Sinaloa','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2170,138,'Sonora','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2171,138,'Tabasco','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2172,138,'Tamaulipas','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2173,138,'Tlaxcala','TL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2174,138,'Veracruz-Llave','VE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2175,138,'Yucatan','YU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2176,138,'Zacatecas','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2177,139,'Chuuk','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2178,139,'Kosrae','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2179,139,'Pohnpei','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2180,139,'Yap','Y',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2181,140,'Gagauzia','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2182,140,'Chisinau','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2183,140,'Balti','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2184,140,'Cahul','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2185,140,'Edinet','ED',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2186,140,'Lapusna','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2187,140,'Orhei','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2188,140,'Soroca','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2189,140,'Tighina','TI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2190,140,'Ungheni','UN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2191,140,'St‚nga Nistrului','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2192,141,'Fontvieille','FV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2193,141,'La Condamine','LC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2194,141,'Monaco-Ville','MV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2195,141,'Monte-Carlo','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2196,142,'Ulanbaatar','1',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2197,142,'Orhon','035',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2198,142,'Darhan uul','037',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2199,142,'Hentiy','039',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2200,142,'Hovsgol','041',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2201,142,'Hovd','043',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2202,142,'Uvs','046',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2203,142,'Tov','047',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2204,142,'Selenge','049',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2205,142,'Suhbaatar','051',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2206,142,'Omnogovi','053',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2207,142,'Ovorhangay','055',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2208,142,'Dzavhan','057',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2209,142,'DundgovL','059',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2210,142,'Dornod','061',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2211,142,'Dornogov','063',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2212,142,'Govi-Sumber','064',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2213,142,'Govi-Altay','065',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2214,142,'Bulgan','067',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2215,142,'Bayanhongor','069',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2216,142,'Bayan-Olgiy','071',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2217,142,'Arhangay','073',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2218,143,'Saint Anthony','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2219,143,'Saint Georges','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2220,143,'Saint Peter','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2221,144,'Agadir','AGD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2222,144,'Al Hoceima','HOC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2223,144,'Azilal','AZI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2224,144,'Beni Mellal','BME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2225,144,'Ben Slimane','BSL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2226,144,'Boulemane','BLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2227,144,'Casablanca','CBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2228,144,'Chaouen','CHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2229,144,'El Jadida','EJA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2230,144,'El Kelaa des Sraghna','EKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2231,144,'Er Rachidia','ERA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2232,144,'Essaouira','ESS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2233,144,'Fes','FES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2234,144,'Figuig','FIG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2235,144,'Guelmim','GLM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2236,144,'Ifrane','IFR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2237,144,'Kenitra','KEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2238,144,'Khemisset','KHM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2239,144,'Khenifra','KHN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2240,144,'Khouribga','KHO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2241,144,'Laayoune','LYN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2242,144,'Larache','LAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2243,144,'Marrakech','MRK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2244,144,'Meknes','MKN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2245,144,'Nador','NAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2246,144,'Ouarzazate','ORZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2247,144,'Oujda','OUJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2248,144,'Rabat-Sale','RSA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2249,144,'Safi','SAF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2250,144,'Settat','SET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2251,144,'Sidi Kacem','SKA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2252,144,'Tangier','TGR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2253,144,'Tan-Tan','TAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2254,144,'Taounate','TAO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2255,144,'Taroudannt','TRD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2256,144,'Tata','TAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2257,144,'Taza','TAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2258,144,'Tetouan','TET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2259,144,'Tiznit','TIZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2260,144,'Ad Dakhla','ADK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2261,144,'Boujdour','BJD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2262,144,'Es Smara','ESM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2263,145,'Cabo Delgado','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2264,145,'Gaza','GZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2265,145,'Inhambane','IN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2266,145,'Manica','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2267,145,'Maputo (city)','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2268,145,'Maputo','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2269,145,'Nampula','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2270,145,'Niassa','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2271,145,'Sofala','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2272,145,'Tete','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2273,145,'Zambezia','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2274,146,'Ayeyarwady','AY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2275,146,'Bago','BG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2276,146,'Magway','MG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2277,146,'Mandalay','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2278,146,'Sagaing','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2279,146,'Tanintharyi','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2280,146,'Yangon','YG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2281,146,'Chin State','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2282,146,'Kachin State','KC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2283,146,'Kayah State','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2284,146,'Kayin State','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2285,146,'Mon State','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2286,146,'Rakhine State','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2287,146,'Shan State','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2288,147,'Caprivi','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2289,147,'Erongo','ER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2290,147,'Hardap','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2291,147,'Karas','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2292,147,'Kavango','KV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2293,147,'Khomas','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2294,147,'Kunene','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2295,147,'Ohangwena','OW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2296,147,'Omaheke','OK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2297,147,'Omusati','OT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2298,147,'Oshana','ON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2299,147,'Oshikoto','OO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2300,147,'Otjozondjupa','OJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2301,148,'Aiwo','AO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2302,148,'Anabar','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2303,148,'Anetan','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2304,148,'Anibare','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2305,148,'Baiti','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2306,148,'Boe','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2307,148,'Buada','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2308,148,'Denigomodu','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2309,148,'Ewa','EW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2310,148,'Ijuw','IJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2311,148,'Meneng','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2312,148,'Nibok','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2313,148,'Uaboe','UA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2314,148,'Yaren','YA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2315,149,'Bagmati','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2316,149,'Bheri','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2317,149,'Dhawalagiri','DH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2318,149,'Gandaki','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2319,149,'Janakpur','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2320,149,'Karnali','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2321,149,'Kosi','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2322,149,'Lumbini','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2323,149,'Mahakali','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2324,149,'Mechi','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2325,149,'Narayani','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2326,149,'Rapti','RA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2327,149,'Sagarmatha','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2328,149,'Seti','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2329,150,'Drenthe','DR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2330,150,'Flevoland','FL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2331,150,'Friesland','FR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2332,150,'Gelderland','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2333,150,'Groningen','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2334,150,'Limburg','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2335,150,'Noord Brabant','NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2336,150,'Noord Holland','NH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2337,150,'Overijssel','OV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2338,150,'Utrecht','UT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2339,150,'Zeeland','ZE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2340,150,'Zuid Holland','ZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2341,152,'Iles Loyaute','L',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2342,152,'Nord','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2343,152,'Sud','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2344,153,'Auckland','AUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2345,153,'Bay of Plenty','BOP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2346,153,'Canterbury','CAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2347,153,'Coromandel','COR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2348,153,'Gisborne','GIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2349,153,'Fiordland','FIO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2350,153,'Hawke\'s Bay','HKB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2351,153,'Marlborough','MBH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2352,153,'Manawatu-Wanganui','MWT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2353,153,'Mt Cook-Mackenzie','MCM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2354,153,'Nelson','NSN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2355,153,'Northland','NTL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2356,153,'Otago','OTA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2357,153,'Southland','STL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2358,153,'Taranaki','TKI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2359,153,'Wellington','WGN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2360,153,'Waikato','WKO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2361,153,'Wairarapa','WAI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2362,153,'West Coast','WTC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2363,154,'Atlantico Norte','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2364,154,'Atlantico Sur','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2365,154,'Boaco','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2366,154,'Carazo','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2367,154,'Chinandega','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2368,154,'Chontales','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2369,154,'Esteli','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2370,154,'Granada','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2371,154,'Jinotega','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2372,154,'Leon','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2373,154,'Madriz','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2374,154,'Managua','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2375,154,'Masaya','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2376,154,'Matagalpa','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2377,154,'Nuevo Segovia','NS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2378,154,'Rio San Juan','RS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2379,154,'Rivas','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2380,155,'Agadez','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2381,155,'Diffa','DF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2382,155,'Dosso','DS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2383,155,'Maradi','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2384,155,'Niamey','NM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2385,155,'Tahoua','TH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2386,155,'Tillaberi','TL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2387,155,'Zinder','ZD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2388,156,'Abia','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2389,156,'Abuja Federal Capital Territory','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2390,156,'Adamawa','AD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2391,156,'Akwa Ibom','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2392,156,'Anambra','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2393,156,'Bauchi','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2394,156,'Bayelsa','BY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2395,156,'Benue','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2396,156,'Borno','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2397,156,'Cross River','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2398,156,'Delta','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2399,156,'Ebonyi','EB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2400,156,'Edo','ED',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2401,156,'Ekiti','EK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2402,156,'Enugu','EN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2403,156,'Gombe','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2404,156,'Imo','IM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2405,156,'Jigawa','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2406,156,'Kaduna','KD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2407,156,'Kano','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2408,156,'Katsina','KT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2409,156,'Kebbi','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2410,156,'Kogi','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2411,156,'Kwara','KW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2412,156,'Lagos','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2413,156,'Nassarawa','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2414,156,'Niger','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2415,156,'Ogun','OG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2416,156,'Ondo','ONG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2417,156,'Osun','OS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2418,156,'Oyo','OY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2419,156,'Plateau','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2420,156,'Rivers','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2421,156,'Sokoto','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2422,156,'Taraba','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2423,156,'Yobe','YO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2424,156,'Zamfara','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2425,159,'Northern Islands','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2426,159,'Rota','R',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2427,159,'Saipan','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2428,159,'Tinian','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2429,160,'Akershus','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2430,160,'Aust-Agder','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2431,160,'Buskerud','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2432,160,'Finnmark','FM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2433,160,'Hedmark','HM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2434,160,'Hordaland','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2435,160,'More og Romdal','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2436,160,'Nord-Trondelag','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2437,160,'Nordland','NL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2438,160,'Ostfold','OF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2439,160,'Oppland','OP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2440,160,'Oslo','OL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2441,160,'Rogaland','RL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2442,160,'Sor-Trondelag','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2443,160,'Sogn og Fjordane','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2444,160,'Svalbard','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2445,160,'Telemark','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2446,160,'Troms','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2447,160,'Vest-Agder','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2448,160,'Vestfold','VF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2449,161,'Ad Dakhiliyah','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2450,161,'Al Batinah','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2451,161,'Al Wusta','WU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2452,161,'Ash Sharqiyah','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2453,161,'Az Zahirah','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2454,161,'Masqat','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2455,161,'Musandam','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2456,161,'Zufar','ZU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2457,162,'Balochistan','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2458,162,'Federally Administered Tribal Areas','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2459,162,'Islamabad Capital Territory','I',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2460,162,'North-West Frontier','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2461,162,'Punjab','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2462,162,'Sindh','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2463,163,'Aimeliik','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2464,163,'Airai','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2465,163,'Angaur','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2466,163,'Hatohobei','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2467,163,'Kayangel','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2468,163,'Koror','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2469,163,'Melekeok','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2470,163,'Ngaraard','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2471,163,'Ngarchelong','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2472,163,'Ngardmau','ND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2473,163,'Ngatpang','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2474,163,'Ngchesar','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2475,163,'Ngeremlengui','NR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2476,163,'Ngiwal','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2477,163,'Peleliu','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2478,163,'Sonsorol','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2479,164,'Bocas del Toro','BT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2480,164,'Chiriqui','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2481,164,'Cocle','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2482,164,'Colon','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2483,164,'Darien','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2484,164,'Herrera','HE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2485,164,'Los Santos','LS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2486,164,'Panama','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2487,164,'San Blas','SB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2488,164,'Veraguas','VG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2489,165,'Bougainville','BV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2490,165,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2491,165,'Chimbu','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2492,165,'Eastern Highlands','EH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2493,165,'East New Britain','EB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2494,165,'East Sepik','ES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2495,165,'Enga','EN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2496,165,'Gulf','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2497,165,'Madang','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2498,165,'Manus','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2499,165,'Milne Bay','MB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2500,165,'Morobe','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2501,165,'National Capital','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2502,165,'New Ireland','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2503,165,'Northern','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2504,165,'Sandaun','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2505,165,'Southern Highlands','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2506,165,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2507,165,'Western Highlands','WH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2508,165,'West New Britain','WB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2509,166,'Alto Paraguay','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2510,166,'Alto Parana','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2511,166,'Amambay','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2512,166,'Asuncion','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2513,166,'Boqueron','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2514,166,'Caaguazu','CG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2515,166,'Caazapa','CZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2516,166,'Canindeyu','CN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2517,166,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2518,166,'Concepcion','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2519,166,'Cordillera','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2520,166,'Guaira','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2521,166,'Itapua','IT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2522,166,'Misiones','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2523,166,'Neembucu','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2524,166,'Paraguari','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2525,166,'Presidente Hayes','PH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2526,166,'San Pedro','SP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2527,167,'Amazonas','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2528,167,'Ancash','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2529,167,'Apurimac','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2530,167,'Arequipa','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2531,167,'Ayacucho','AY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2532,167,'Cajamarca','CJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2533,167,'Callao','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2534,167,'Cusco','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2535,167,'Huancavelica','HV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2536,167,'Huanuco','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2537,167,'Ica','IC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2538,167,'Junin','JU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2539,167,'La Libertad','LD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2540,167,'Lambayeque','LY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2541,167,'Lima','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2542,167,'Loreto','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2543,167,'Madre de Dios','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2544,167,'Moquegua','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2545,167,'Pasco','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2546,167,'Piura','PI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2547,167,'Puno','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2548,167,'San Martin','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2549,167,'Tacna','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2550,167,'Tumbes','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2551,167,'Ucayali','UC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2552,168,'Abra','ABR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2553,168,'Agusan del Norte','ANO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2554,168,'Agusan del Sur','ASU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2555,168,'Aklan','AKL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2556,168,'Albay','ALB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2557,168,'Antique','ANT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2558,168,'Apayao','APY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2559,168,'Aurora','AUR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2560,168,'Basilan','BAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2561,168,'Bataan','BTA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2562,168,'Batanes','BTE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2563,168,'Batangas','BTG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2564,168,'Biliran','BLR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2565,168,'Benguet','BEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2566,168,'Bohol','BOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2567,168,'Bukidnon','BUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2568,168,'Bulacan','BUL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2569,168,'Cagayan','CAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2570,168,'Camarines Norte','CNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2571,168,'Camarines Sur','CSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2572,168,'Camiguin','CAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2573,168,'Capiz','CAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2574,168,'Catanduanes','CAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2575,168,'Cavite','CAV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2576,168,'Cebu','CEB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2577,168,'Compostela','CMP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2578,168,'Davao del Norte','DNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2579,168,'Davao del Sur','DSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2580,168,'Davao Oriental','DOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2581,168,'Eastern Samar','ESA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2582,168,'Guimaras','GUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2583,168,'Ifugao','IFU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2584,168,'Ilocos Norte','INO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2585,168,'Ilocos Sur','ISU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2586,168,'Iloilo','ILO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2587,168,'Isabela','ISA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2588,168,'Kalinga','KAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2589,168,'Laguna','LAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2590,168,'Lanao del Norte','LNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2591,168,'Lanao del Sur','LSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2592,168,'La Union','UNI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2593,168,'Leyte','LEY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2594,168,'Maguindanao','MAG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2595,168,'Marinduque','MRN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2596,168,'Masbate','MSB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2597,168,'Mindoro Occidental','MIC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2598,168,'Mindoro Oriental','MIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2599,168,'Misamis Occidental','MSC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2600,168,'Misamis Oriental','MOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2601,168,'Mountain','MOP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2602,168,'Negros Occidental','NOC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2603,168,'Negros Oriental','NOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2604,168,'North Cotabato','NCT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2605,168,'Northern Samar','NSM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2606,168,'Nueva Ecija','NEC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2607,168,'Nueva Vizcaya','NVZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2608,168,'Palawan','PLW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2609,168,'Pampanga','PMP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2610,168,'Pangasinan','PNG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2611,168,'Quezon','QZN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2612,168,'Quirino','QRN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2613,168,'Rizal','RIZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2614,168,'Romblon','ROM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2615,168,'Samar','SMR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2616,168,'Sarangani','SRG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2617,168,'Siquijor','SQJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2618,168,'Sorsogon','SRS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2619,168,'South Cotabato','SCO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2620,168,'Southern Leyte','SLE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2621,168,'Sultan Kudarat','SKU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2622,168,'Sulu','SLU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2623,168,'Surigao del Norte','SNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2624,168,'Surigao del Sur','SSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2625,168,'Tarlac','TAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2626,168,'Tawi-Tawi','TAW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2627,168,'Zambales','ZBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2628,168,'Zamboanga del Norte','ZNO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2629,168,'Zamboanga del Sur','ZSU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2630,168,'Zamboanga Sibugay','ZSI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2631,170,'Dolnoslaskie','DO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2632,170,'Kujawsko-Pomorskie','KP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2633,170,'Lodzkie','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2634,170,'Lubelskie','LL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2635,170,'Lubuskie','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2636,170,'Malopolskie','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2637,170,'Mazowieckie','MZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2638,170,'Opolskie','OP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2639,170,'Podkarpackie','PP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2640,170,'Podlaskie','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2641,170,'Pomorskie','PM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2642,170,'Slaskie','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2643,170,'Swietokrzyskie','SW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2644,170,'Warminsko-Mazurskie','WM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2645,170,'Wielkopolskie','WP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2646,170,'Zachodniopomorskie','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2647,198,'Saint Pierre','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2648,198,'Miquelon','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2649,171,'A&ccedil;ores','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2650,171,'Aveiro','AV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2651,171,'Beja','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2652,171,'Braga','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2653,171,'Bragan&ccedil;a','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2654,171,'Castelo Branco','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2655,171,'Coimbra','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2656,171,'&Eacute;vora','EV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2657,171,'Faro','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2658,171,'Guarda','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2659,171,'Leiria','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2660,171,'Lisboa','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2661,171,'Madeira','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2662,171,'Portalegre','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2663,171,'Porto','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2664,171,'Santar&eacute;m','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2665,171,'Set&uacute;bal','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2666,171,'Viana do Castelo','VC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2667,171,'Vila Real','VR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2668,171,'Viseu','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2669,173,'Ad Dawhah','DW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2670,173,'Al Ghuwayriyah','GW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2671,173,'Al Jumayliyah','JM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2672,173,'Al Khawr','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2673,173,'Al Wakrah','WK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2674,173,'Ar Rayyan','RN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2675,173,'Jarayan al Batinah','JB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2676,173,'Madinat ash Shamal','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2677,173,'Umm Sa\'id','UD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2678,173,'Umm Salal','UL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2679,175,'Alba','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2680,175,'Arad','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2681,175,'Arges','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2682,175,'Bacau','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2683,175,'Bihor','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2684,175,'Bistrita-Nasaud','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2685,175,'Botosani','BT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2686,175,'Brasov','BV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2687,175,'Braila','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2688,175,'Bucuresti','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2689,175,'Buzau','BZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2690,175,'Caras-Severin','CS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2691,175,'Calarasi','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2692,175,'Cluj','CJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2693,175,'Constanta','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2694,175,'Covasna','CV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2695,175,'Dimbovita','DB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2696,175,'Dolj','DJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2697,175,'Galati','GL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2698,175,'Giurgiu','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2699,175,'Gorj','GJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2700,175,'Harghita','HR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2701,175,'Hunedoara','HD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2702,175,'Ialomita','IL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2703,175,'Iasi','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2704,175,'Ilfov','IF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2705,175,'Maramures','MM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2706,175,'Mehedinti','MH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2707,175,'Mures','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2708,175,'Neamt','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2709,175,'Olt','OT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2710,175,'Prahova','PH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2711,175,'Satu-Mare','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2712,175,'Salaj','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2713,175,'Sibiu','SB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2714,175,'Suceava','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2715,175,'Teleorman','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2716,175,'Timis','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2717,175,'Tulcea','TL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2718,175,'Vaslui','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2719,175,'Valcea','VL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2720,175,'Vrancea','VN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2721,176,'Abakan','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2722,176,'Aginskoye','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2723,176,'Anadyr','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2724,176,'Arkahangelsk','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2725,176,'Astrakhan','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2726,176,'Barnaul','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2727,176,'Belgorod','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2728,176,'Birobidzhan','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2729,176,'Blagoveshchensk','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2730,176,'Bryansk','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2731,176,'Cheboksary','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2732,176,'Chelyabinsk','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2733,176,'Cherkessk','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2734,176,'Chita','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2735,176,'Dudinka','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2736,176,'Elista','EL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2738,176,'Gorno-Altaysk','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2739,176,'Groznyy','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2740,176,'Irkutsk','IR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2741,176,'Ivanovo','IV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2742,176,'Izhevsk','IZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2743,176,'Kalinigrad','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2744,176,'Kaluga','KL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2745,176,'Kasnodar','KS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2746,176,'Kazan','KZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2747,176,'Kemerovo','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2748,176,'Khabarovsk','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2749,176,'Khanty-Mansiysk','KM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2750,176,'Kostroma','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2751,176,'Krasnodar','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2752,176,'Krasnoyarsk','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2753,176,'Kudymkar','KU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2754,176,'Kurgan','KG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2755,176,'Kursk','KK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2756,176,'Kyzyl','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2757,176,'Lipetsk','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2758,176,'Magadan','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2759,176,'Makhachkala','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2760,176,'Maykop','MY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2761,176,'Moscow','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2762,176,'Murmansk','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2763,176,'Nalchik','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2764,176,'Naryan Mar','NR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2765,176,'Nazran','NZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2766,176,'Nizhniy Novgorod','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2767,176,'Novgorod','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2768,176,'Novosibirsk','NV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2769,176,'Omsk','OM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2770,176,'Orel','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2771,176,'Orenburg','OE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2772,176,'Palana','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2773,176,'Penza','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2774,176,'Perm','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2775,176,'Petropavlovsk-Kamchatskiy','PK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2776,176,'Petrozavodsk','PT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2777,176,'Pskov','PS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2778,176,'Rostov-na-Donu','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2779,176,'Ryazan','RY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2780,176,'Salekhard','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2781,176,'Samara','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2782,176,'Saransk','SR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2783,176,'Saratov','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2784,176,'Smolensk','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2785,176,'St. Petersburg','SP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2786,176,'Stavropol','ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2787,176,'Syktyvkar','SY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2788,176,'Tambov','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2789,176,'Tomsk','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2790,176,'Tula','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2791,176,'Tura','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2792,176,'Tver','TV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2793,176,'Tyumen','TY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2794,176,'Ufa','UF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2795,176,'Ul\'yanovsk','UL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2796,176,'Ulan-Ude','UU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2797,176,'Ust\'-Ordynskiy','US',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2798,176,'Vladikavkaz','VL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2799,176,'Vladimir','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2800,176,'Vladivostok','VV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2801,176,'Volgograd','VG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2802,176,'Vologda','VD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2803,176,'Voronezh','VO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2804,176,'Vyatka','VY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2805,176,'Yakutsk','YA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2806,176,'Yaroslavl','YR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2807,176,'Yekaterinburg','YE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2808,176,'Yoshkar-Ola','YO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2809,177,'Butare','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2810,177,'Byumba','BY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2811,177,'Cyangugu','CY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2812,177,'Gikongoro','GK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2813,177,'Gisenyi','GS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2814,177,'Gitarama','GT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2815,177,'Kibungo','KG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2816,177,'Kibuye','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2817,177,'Kigali Rurale','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2818,177,'Kigali-ville','KV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2819,177,'Ruhengeri','RU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2820,177,'Umutara','UM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2821,178,'Christ Church Nichola Town','CCN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2822,178,'Saint Anne Sandy Point','SAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2823,178,'Saint George Basseterre','SGB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2824,178,'Saint George Gingerland','SGG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2825,178,'Saint James Windward','SJW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2826,178,'Saint John Capesterre','SJC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2827,178,'Saint John Figtree','SJF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2828,178,'Saint Mary Cayon','SMC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2829,178,'Saint Paul Capesterre','CAP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2830,178,'Saint Paul Charlestown','CHA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2831,178,'Saint Peter Basseterre','SPB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2832,178,'Saint Thomas Lowland','STL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2833,178,'Saint Thomas Middle Island','STM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2834,178,'Trinity Palmetto Point','TPP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2835,179,'Anse-la-Raye','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2836,179,'Castries','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2837,179,'Choiseul','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2838,179,'Dauphin','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2839,179,'Dennery','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2840,179,'Gros-Islet','GI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2841,179,'Laborie','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2842,179,'Micoud','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2843,179,'Praslin','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2844,179,'Soufriere','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2845,179,'Vieux-Fort','VF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2846,180,'Charlotte','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2847,180,'Grenadines','R',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2848,180,'Saint Andrew','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2849,180,'Saint David','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2850,180,'Saint George','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2851,180,'Saint Patrick','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2852,181,'A\'ana','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2853,181,'Aiga-i-le-Tai','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2854,181,'Atua','AT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2855,181,'Fa\'asaleleaga','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2856,181,'Gaga\'emauga','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2857,181,'Gagaifomauga','GF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2858,181,'Palauli','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2859,181,'Satupa\'itea','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2860,181,'Tuamasaga','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2861,181,'Va\'a-o-Fonoti','VF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2862,181,'Vaisigano','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2863,182,'Acquaviva','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2864,182,'Borgo Maggiore','BM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2865,182,'Chiesanuova','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2866,182,'Domagnano','DO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2867,182,'Faetano','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2868,182,'Fiorentino','FI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2869,182,'Montegiardino','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2870,182,'Citta di San Marino','SM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2871,182,'Serravalle','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2872,183,'Sao Tome','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2873,183,'Principe','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2874,184,'Al Bahah','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2875,184,'Al Hudud ash Shamaliyah','HS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2876,184,'Al Jawf','JF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2877,184,'Al Madinah','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2878,184,'Al Qasim','QS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2879,184,'Ar Riyad','RD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2880,184,'Ash Sharqiyah (Eastern)','AQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2881,184,'\'Asir','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2882,184,'Ha\'il','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2883,184,'Jizan','JZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2884,184,'Makkah','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2885,184,'Najran','NR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2886,184,'Tabuk','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2887,185,'Dakar','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2888,185,'Diourbel','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2889,185,'Fatick','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2890,185,'Kaolack','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2891,185,'Kolda','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2892,185,'Louga','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2893,185,'Matam','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2894,185,'Saint-Louis','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2895,185,'Tambacounda','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2896,185,'Thies','TH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2897,185,'Ziguinchor','ZI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2898,186,'Anse aux Pins','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2899,186,'Anse Boileau','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2900,186,'Anse Etoile','AE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2901,186,'Anse Louis','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2902,186,'Anse Royale','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2903,186,'Baie Lazare','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2904,186,'Baie Sainte Anne','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2905,186,'Beau Vallon','BV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2906,186,'Bel Air','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2907,186,'Bel Ombre','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2908,186,'Cascade','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2909,186,'Glacis','GL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2910,186,'Grand\' Anse (on Mahe)','GM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2911,186,'Grand\' Anse (on Praslin)','GP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2912,186,'La Digue','DG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2913,186,'La Riviere Anglaise','RA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2914,186,'Mont Buxton','MB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2915,186,'Mont Fleuri','MF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2916,186,'Plaisance','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2917,186,'Pointe La Rue','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2918,186,'Port Glaud','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2919,186,'Saint Louis','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2920,186,'Takamaka','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2921,187,'Eastern','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2922,187,'Northern','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2923,187,'Southern','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2924,187,'Western','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2925,189,'Banskobystrický','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2926,189,'Bratislavský','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2927,189,'Košický','KO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2928,189,'Nitriansky','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2929,189,'Prešovský','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2930,189,'Trenčiansky','TC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2931,189,'Trnavský','TV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2932,189,'Žilinský','ZI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2933,191,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2934,191,'Choiseul','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2935,191,'Guadalcanal','GC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2936,191,'Honiara','HO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2937,191,'Isabel','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2938,191,'Makira','MK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2939,191,'Malaita','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2940,191,'Rennell and Bellona','RB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2941,191,'Temotu','TM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2942,191,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2943,192,'Awdal','AW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2944,192,'Bakool','BK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2945,192,'Banaadir','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2946,192,'Bari','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2947,192,'Bay','BY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2948,192,'Galguduud','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2949,192,'Gedo','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2950,192,'Hiiraan','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2951,192,'Jubbada Dhexe','JD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2952,192,'Jubbada Hoose','JH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2953,192,'Mudug','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2954,192,'Nugaal','NU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2955,192,'Sanaag','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2956,192,'Shabeellaha Dhexe','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2957,192,'Shabeellaha Hoose','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2958,192,'Sool','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2959,192,'Togdheer','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2960,192,'Woqooyi Galbeed','WG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2961,193,'Eastern Cape','EC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2962,193,'Free State','FS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2963,193,'Gauteng','GT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2964,193,'KwaZulu-Natal','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2965,193,'Limpopo','LP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2966,193,'Mpumalanga','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2967,193,'North West','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2968,193,'Northern Cape','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2969,193,'Western Cape','WC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2970,195,'La Coru&ntilde;a','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2971,195,'&Aacute;lava','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2972,195,'Albacete','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2973,195,'Alicante','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2974,195,'Almeria','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2975,195,'Asturias','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2976,195,'&Aacute;vila','AV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2977,195,'Badajoz','BJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2978,195,'Baleares','IB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2979,195,'Barcelona','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2980,195,'Burgos','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2981,195,'C&aacute;ceres','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2982,195,'C&aacute;diz','CZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2983,195,'Cantabria','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2984,195,'Castell&oacute;n','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2985,195,'Ceuta','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2986,195,'Ciudad Real','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2987,195,'C&oacute;rdoba','CD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2988,195,'Cuenca','CU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2989,195,'Girona','GI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2990,195,'Granada','GD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2991,195,'Guadalajara','GJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2992,195,'Guip&uacute;zcoa','GP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2993,195,'Huelva','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2994,195,'Huesca','HS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2995,195,'Ja&eacute;n','JN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2996,195,'La Rioja','RJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2997,195,'Las Palmas','PM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2998,195,'Leon','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (2999,195,'Lleida','LL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3000,195,'Lugo','LG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3001,195,'Madrid','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3002,195,'Malaga','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3003,195,'Melilla','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3004,195,'Murcia','MU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3005,195,'Navarra','NV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3006,195,'Ourense','OU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3007,195,'Palencia','PL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3008,195,'Pontevedra','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3009,195,'Salamanca','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3010,195,'Santa Cruz de Tenerife','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3011,195,'Segovia','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3012,195,'Sevilla','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3013,195,'Soria','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3014,195,'Tarragona','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3015,195,'Teruel','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3016,195,'Toledo','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3017,195,'Valencia','VC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3018,195,'Valladolid','VD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3019,195,'Vizcaya','VZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3020,195,'Zamora','ZM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3021,195,'Zaragoza','ZR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3022,196,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3023,196,'Eastern','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3024,196,'North Central','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3025,196,'Northern','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3026,196,'North Western','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3027,196,'Sabaragamuwa','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3028,196,'Southern','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3029,196,'Uva','UV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3030,196,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3032,197,'Saint Helena','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3034,199,'A\'ali an Nil','ANL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3035,199,'Al Bahr al Ahmar','BAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3036,199,'Al Buhayrat','BRT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3037,199,'Al Jazirah','JZR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3038,199,'Al Khartum','KRT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3039,199,'Al Qadarif','QDR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3040,199,'Al Wahdah','WDH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3041,199,'An Nil al Abyad','ANB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3042,199,'An Nil al Azraq','ANZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3043,199,'Ash Shamaliyah','ASH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3044,199,'Bahr al Jabal','BJA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3045,199,'Gharb al Istiwa\'iyah','GIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3046,199,'Gharb Bahr al Ghazal','GBG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3047,199,'Gharb Darfur','GDA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3048,199,'Gharb Kurdufan','GKU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3049,199,'Janub Darfur','JDA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3050,199,'Janub Kurdufan','JKU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3051,199,'Junqali','JQL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3052,199,'Kassala','KSL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3053,199,'Nahr an Nil','NNL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3054,199,'Shamal Bahr al Ghazal','SBG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3055,199,'Shamal Darfur','SDA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3056,199,'Shamal Kurdufan','SKU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3057,199,'Sharq al Istiwa\'iyah','SIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3058,199,'Sinnar','SNR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3059,199,'Warab','WRB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3060,200,'Brokopondo','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3061,200,'Commewijne','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3062,200,'Coronie','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3063,200,'Marowijne','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3064,200,'Nickerie','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3065,200,'Para','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3066,200,'Paramaribo','PM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3067,200,'Saramacca','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3068,200,'Sipaliwini','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3069,200,'Wanica','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3070,202,'Hhohho','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3071,202,'Lubombo','L',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3072,202,'Manzini','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3073,202,'Shishelweni','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3074,203,'Blekinge','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3075,203,'Dalarna','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3076,203,'Gävleborg','X',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3077,203,'Gotland','I',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3078,203,'Halland','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3079,203,'Jämtland','Z',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3080,203,'Jönköping','F',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3081,203,'Kalmar','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3082,203,'Kronoberg','G',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3083,203,'Norrbotten','BD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3084,203,'Örebro','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3085,203,'Östergötland','E',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3086,203,'Sk&aring;ne','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3087,203,'Södermanland','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3088,203,'Stockholm','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3089,203,'Uppsala','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3090,203,'Värmland','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3091,203,'Västerbotten','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3092,203,'Västernorrland','Y',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3093,203,'Västmanland','U',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3094,203,'Västra Götaland','O',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3095,204,'Aargau','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3096,204,'Appenzell Ausserrhoden','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3097,204,'Appenzell Innerrhoden','AI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3098,204,'Basel-Stadt','BS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3099,204,'Basel-Landschaft','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3100,204,'Bern','BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3101,204,'Fribourg','FR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3102,204,'Gen&egrave;ve','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3103,204,'Glarus','GL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3104,204,'Graubünden','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3105,204,'Jura','JU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3106,204,'Luzern','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3107,204,'Neuch&acirc;tel','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3108,204,'Nidwald','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3109,204,'Obwald','OW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3110,204,'St. Gallen','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3111,204,'Schaffhausen','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3112,204,'Schwyz','SZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3113,204,'Solothurn','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3114,204,'Thurgau','TG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3115,204,'Ticino','TI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3116,204,'Uri','UR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3117,204,'Valais','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3118,204,'Vaud','VD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3119,204,'Zug','ZG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3120,204,'Zürich','ZH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3121,205,'Al Hasakah','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3122,205,'Al Ladhiqiyah','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3123,205,'Al Qunaytirah','QU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3124,205,'Ar Raqqah','RQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3125,205,'As Suwayda','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3126,205,'Dara','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3127,205,'Dayr az Zawr','DZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3128,205,'Dimashq','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3129,205,'Halab','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3130,205,'Hamah','HM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3131,205,'Hims','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3132,205,'Idlib','ID',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3133,205,'Rif Dimashq','RD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3134,205,'Tartus','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3135,206,'Chang-hua','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3136,206,'Chia-i','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3137,206,'Hsin-chu','HS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3138,206,'Hua-lien','HL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3139,206,'I-lan','IL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3140,206,'Kao-hsiung county','KH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3141,206,'Kin-men','KM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3142,206,'Lien-chiang','LC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3143,206,'Miao-li','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3144,206,'Nan-t\'ou','NT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3145,206,'P\'eng-hu','PH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3146,206,'P\'ing-tung','PT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3147,206,'T\'ai-chung','TG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3148,206,'T\'ai-nan','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3149,206,'T\'ai-pei county','TP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3150,206,'T\'ai-tung','TT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3151,206,'T\'ao-yuan','TY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3152,206,'Yun-lin','YL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3153,206,'Chia-i city','CC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3154,206,'Chi-lung','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3155,206,'Hsin-chu','HC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3156,206,'T\'ai-chung','TH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3157,206,'T\'ai-nan','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3158,206,'Kao-hsiung city','KC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3159,206,'T\'ai-pei city','TC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3160,207,'Gorno-Badakhstan','GB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3161,207,'Khatlon','KT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3162,207,'Sughd','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3163,208,'Arusha','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3164,208,'Dar es Salaam','DS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3165,208,'Dodoma','DO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3166,208,'Iringa','IR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3167,208,'Kagera','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3168,208,'Kigoma','KI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3169,208,'Kilimanjaro','KJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3170,208,'Lindi','LN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3171,208,'Manyara','MY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3172,208,'Mara','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3173,208,'Mbeya','MB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3174,208,'Morogoro','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3175,208,'Mtwara','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3176,208,'Mwanza','MW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3177,208,'Pemba North','PN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3178,208,'Pemba South','PS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3179,208,'Pwani','PW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3180,208,'Rukwa','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3181,208,'Ruvuma','RV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3182,208,'Shinyanga','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3183,208,'Singida','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3184,208,'Tabora','TB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3185,208,'Tanga','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3186,208,'Zanzibar Central/South','ZC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3187,208,'Zanzibar North','ZN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3188,208,'Zanzibar Urban/West','ZU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3189,209,'Amnat Charoen','Amnat Charoen',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3190,209,'Ang Thong','Ang Thong',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3191,209,'Ayutthaya','Ayutthaya',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3192,209,'Bangkok','Bangkok',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3193,209,'Buriram','Buriram',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3194,209,'Chachoengsao','Chachoengsao',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3195,209,'Chai Nat','Chai Nat',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3196,209,'Chaiyaphum','Chaiyaphum',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3197,209,'Chanthaburi','Chanthaburi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3198,209,'Chiang Mai','Chiang Mai',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3199,209,'Chiang Rai','Chiang Rai',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3200,209,'Chon Buri','Chon Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3201,209,'Chumphon','Chumphon',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3202,209,'Kalasin','Kalasin',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3203,209,'Kamphaeng Phet','Kamphaeng Phet',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3204,209,'Kanchanaburi','Kanchanaburi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3205,209,'Khon Kaen','Khon Kaen',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3206,209,'Krabi','Krabi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3207,209,'Lampang','Lampang',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3208,209,'Lamphun','Lamphun',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3209,209,'Loei','Loei',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3210,209,'Lop Buri','Lop Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3211,209,'Mae Hong Son','Mae Hong Son',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3212,209,'Maha Sarakham','Maha Sarakham',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3213,209,'Mukdahan','Mukdahan',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3214,209,'Nakhon Nayok','Nakhon Nayok',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3215,209,'Nakhon Pathom','Nakhon Pathom',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3216,209,'Nakhon Phanom','Nakhon Phanom',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3218,209,'Nakhon Sawan','Nakhon Sawan',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3220,209,'Nan','Nan',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3221,209,'Narathiwat','Narathiwat',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3223,209,'Nong Khai','Nong Khai',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3224,209,'Nonthaburi','Nonthaburi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3225,209,'Pathum Thani','Pathum Thani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3226,209,'Pattani','Pattani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3227,209,'Phangnga','Phangnga',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3228,209,'Phatthalung','Phatthalung',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3229,209,'Phayao','Phayao',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3230,209,'Phetchabun','Phetchabun',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3231,209,'Phetchaburi','Phetchaburi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3232,209,'Phichit','Phichit',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3233,209,'Phitsanulok','Phitsanulok',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3234,209,'Phrae','Phrae',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3235,209,'Phuket','Phuket',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3236,209,'Prachin Buri','Prachin Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3238,209,'Ranong','Ranong',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3239,209,'Ratchaburi','Ratchaburi',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3240,209,'Rayong','Rayong',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3241,209,'Roi Et','Roi Et',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3242,209,'Sa Kaeo','Sa Kaeo',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3243,209,'Sakon Nakhon','Sakon Nakhon',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3244,209,'Samut Prakan','Samut Prakan',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3245,209,'Samut Sakhon','Samut Sakhon',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3246,209,'Samut Songkhram','Samut Songkhram',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3247,209,'Sara Buri','Sara Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3248,209,'Satun','Satun',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3249,209,'Sing Buri','Sing Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3250,209,'Sisaket','Sisaket',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3251,209,'Songkhla','Songkhla',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3252,209,'Sukhothai','Sukhothai',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3253,209,'Suphan Buri','Suphan Buri',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3254,209,'Surat Thani','Surat Thani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3255,209,'Surin','Surin',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3256,209,'Tak','Tak',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3257,209,'Trang','Trang',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3258,209,'Trat','Trat',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3259,209,'Ubon Ratchathani','Ubon Ratchathani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3260,209,'Udon Thani','Udon Thani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3261,209,'Uthai Thani','Uthai Thani',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3262,209,'Uttaradit','Uttaradit',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3263,209,'Yala','Yala',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3264,209,'Yasothon','Yasothon',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3265,210,'Kara','K',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3266,210,'Plateaux','P',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3267,210,'Savanes','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3268,210,'Centrale','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3269,210,'Maritime','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3270,211,'Atafu','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3271,211,'Fakaofo','F',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3272,211,'Nukunonu','N',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3273,212,'Ha\'apai','H',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3274,212,'Tongatapu','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3275,212,'Vava\'u','V',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3276,213,'Couva/Tabaquite/Talparo','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3277,213,'Diego Martin','DM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3278,213,'Mayaro/Rio Claro','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3279,213,'Penal/Debe','PD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3280,213,'Princes Town','PT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3281,213,'Sangre Grande','SG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3282,213,'San Juan/Laventille','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3283,213,'Siparia','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3284,213,'Tunapuna/Piarco','TP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3285,213,'Port of Spain','PS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3286,213,'San Fernando','SF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3287,213,'Arima','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3288,213,'Point Fortin','PF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3289,213,'Chaguanas','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3290,213,'Tobago','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3291,214,'Ariana','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3292,214,'Beja','BJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3293,214,'Ben Arous','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3294,214,'Bizerte','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3295,214,'Gabes','GB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3296,214,'Gafsa','GF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3297,214,'Jendouba','JE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3298,214,'Kairouan','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3299,214,'Kasserine','KS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3300,214,'Kebili','KB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3301,214,'Kef','KF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3302,214,'Mahdia','MH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3303,214,'Manouba','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3304,214,'Medenine','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3305,214,'Monastir','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3306,214,'Nabeul','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3307,214,'Sfax','SF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3308,214,'Sidi','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3309,214,'Siliana','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3310,214,'Sousse','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3311,214,'Tataouine','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3312,214,'Tozeur','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3313,214,'Tunis','TU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3314,214,'Zaghouan','ZA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3315,215,'Adana','ADA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3316,215,'Adıyaman','ADI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3317,215,'Afyonkarahisar','AFY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3318,215,'Ağrı','AGR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3319,215,'Aksaray','AKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3320,215,'Amasya','AMA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3321,215,'Ankara','ANK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3322,215,'Antalya','ANT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3323,215,'Ardahan','ARD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3324,215,'Artvin','ART',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3325,215,'Aydın','AYI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3326,215,'Balıkesir','BAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3327,215,'Bartın','BAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3328,215,'Batman','BAT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3329,215,'Bayburt','BAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3330,215,'Bilecik','BIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3331,215,'Bingöl','BIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3332,215,'Bitlis','BIT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3333,215,'Bolu','BOL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3334,215,'Burdur','BRD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3335,215,'Bursa','BRS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3336,215,'Çanakkale','CKL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3337,215,'Çankırı','CKR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3338,215,'Çorum','COR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3339,215,'Denizli','DEN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3340,215,'Diyarbakır','DIY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3341,215,'Düzce','DUZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3342,215,'Edirne','EDI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3343,215,'Elazığ','ELA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3344,215,'Erzincan','EZC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3345,215,'Erzurum','EZR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3346,215,'Eskişehir','ESK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3347,215,'Gaziantep','GAZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3348,215,'Giresun','GIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3349,215,'Gümüşhane','GMS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3350,215,'Hakkari','HKR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3351,215,'Hatay','HTY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3352,215,'Iğdır','IGD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3353,215,'Isparta','ISP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3354,215,'İstanbul','IST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3355,215,'İzmir','IZM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3356,215,'Kahramanmaraş','KAH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3357,215,'Karabük','KRB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3358,215,'Karaman','KRM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3359,215,'Kars','KRS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3360,215,'Kastamonu','KAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3361,215,'Kayseri','KAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3362,215,'Kilis','KLS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3363,215,'Kırıkkale','KRK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3364,215,'Kırklareli','KLR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3365,215,'Kırşehir','KRH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3366,215,'Kocaeli','KOC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3367,215,'Konya','KON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3368,215,'Kütahya','KUT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3369,215,'Malatya','MAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3370,215,'Manisa','MAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3371,215,'Mardin','MAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3372,215,'Mersin','MER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3373,215,'Muğla','MUG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3374,215,'Muş','MUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3375,215,'Nevşehir','NEV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3376,215,'Niğde','NIG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3377,215,'Ordu','ORD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3378,215,'Osmaniye','OSM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3379,215,'Rize','RIZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3380,215,'Sakarya','SAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3381,215,'Samsun','SAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3382,215,'Şanlıurfa','SAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3383,215,'Siirt','SII',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3384,215,'Sinop','SIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3385,215,'Şırnak','SIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3386,215,'Sivas','SIV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3387,215,'Tekirdağ','TEL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3388,215,'Tokat','TOK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3389,215,'Trabzon','TRA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3390,215,'Tunceli','TUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3391,215,'Uşak','USK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3392,215,'Van','VAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3393,215,'Yalova','YAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3394,215,'Yozgat','YOZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3395,215,'Zonguldak','ZON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3396,216,'Ahal Welayaty','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3397,216,'Balkan Welayaty','B',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3398,216,'Dashhowuz Welayaty','D',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3399,216,'Lebap Welayaty','L',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3400,216,'Mary Welayaty','M',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3401,217,'Ambergris Cays','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3402,217,'Dellis Cay','DC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3403,217,'French Cay','FC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3404,217,'Little Water Cay','LW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3405,217,'Parrot Cay','RC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3406,217,'Pine Cay','PN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3407,217,'Salt Cay','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3408,217,'Grand Turk','GT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3409,217,'South Caicos','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3410,217,'East Caicos','EC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3411,217,'Middle Caicos','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3412,217,'North Caicos','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3413,217,'Providenciales','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3414,217,'West Caicos','WC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3415,218,'Nanumanga','NMG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3416,218,'Niulakita','NLK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3417,218,'Niutao','NTO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3418,218,'Funafuti','FUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3419,218,'Nanumea','NME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3420,218,'Nui','NUI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3421,218,'Nukufetau','NFT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3422,218,'Nukulaelae','NLL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3423,218,'Vaitupu','VAI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3424,219,'Kalangala','KAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3425,219,'Kampala','KMP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3426,219,'Kayunga','KAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3427,219,'Kiboga','KIB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3428,219,'Luwero','LUW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3429,219,'Masaka','MAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3430,219,'Mpigi','MPI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3431,219,'Mubende','MUB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3432,219,'Mukono','MUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3433,219,'Nakasongola','NKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3434,219,'Rakai','RAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3435,219,'Sembabule','SEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3436,219,'Wakiso','WAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3437,219,'Bugiri','BUG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3438,219,'Busia','BUS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3439,219,'Iganga','IGA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3440,219,'Jinja','JIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3441,219,'Kaberamaido','KAB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3442,219,'Kamuli','KML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3443,219,'Kapchorwa','KPC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3444,219,'Katakwi','KTK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3445,219,'Kumi','KUM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3446,219,'Mayuge','MAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3447,219,'Mbale','MBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3448,219,'Pallisa','PAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3449,219,'Sironko','SIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3450,219,'Soroti','SOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3451,219,'Tororo','TOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3452,219,'Adjumani','ADJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3453,219,'Apac','APC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3454,219,'Arua','ARU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3455,219,'Gulu','GUL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3456,219,'Kitgum','KIT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3457,219,'Kotido','KOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3458,219,'Lira','LIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3459,219,'Moroto','MRT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3460,219,'Moyo','MOY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3461,219,'Nakapiripirit','NAK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3462,219,'Nebbi','NEB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3463,219,'Pader','PAD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3464,219,'Yumbe','YUM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3465,219,'Bundibugyo','BUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3466,219,'Bushenyi','BSH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3467,219,'Hoima','HOI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3468,219,'Kabale','KBL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3469,219,'Kabarole','KAR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3470,219,'Kamwenge','KAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3471,219,'Kanungu','KAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3472,219,'Kasese','KAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3473,219,'Kibaale','KBA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3474,219,'Kisoro','KIS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3475,219,'Kyenjojo','KYE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3476,219,'Masindi','MSN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3477,219,'Mbarara','MBR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3478,219,'Ntungamo','NTU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3479,219,'Rukungiri','RUK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3480,220,'Cherkas\'ka Oblast\'','71',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3481,220,'Chernihivs\'ka Oblast\'','74',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3482,220,'Chernivets\'ka Oblast\'','77',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3483,220,'Crimea','43',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3484,220,'Dnipropetrovs\'ka Oblast\'','12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3485,220,'Donets\'ka Oblast\'','14',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3487,220,'Khersons\'ka Oblast\'','65',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3488,220,'Khmel\'nyts\'ka Oblast\'','68',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3489,220,'Kirovohrads\'ka Oblast\'','35',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3490,220,'Kyiv','30',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3491,220,'Kyivs\'ka Oblast\'','32',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3492,220,'Luhans\'ka Oblast\'','09',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3493,220,'L\'vivs\'ka Oblast\'','46',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3494,220,'Mykolayivs\'ka Oblast\'','48',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3495,220,'Odes\'ka Oblast\'','51',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3496,220,'Poltavs\'ka Oblast\'','53',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3497,220,'Rivnens\'ka Oblast\'','56',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3498,220,'Sevastopol\'','40',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3499,220,'Sums\'ka Oblast\'','59',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3500,220,'Ternopil\'s\'ka Oblast\'','61',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3501,220,'Vinnyts\'ka Oblast\'','05',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3502,220,'Volyns\'ka Oblast\'','07',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3503,220,'Zakarpats\'ka Oblast\'','21',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3504,220,'Zaporiz\'ka Oblast\'','23',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3505,220,'Zhytomyrs\'ka oblast\'','18',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3506,221,'Abu Dhabi','ADH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3507,221,'\'Ajman','AJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3508,221,'Al Fujayrah','FU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3509,221,'Ash Shariqah','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3510,221,'Dubai','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3511,221,'R\'as al Khaymah','RK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3512,221,'Umm al Qaywayn','UQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3513,222,'Aberdeen','ABN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3514,222,'Aberdeenshire','ABNS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3515,222,'Anglesey','ANG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3516,222,'Angus','AGS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3517,222,'Argyll and Bute','ARY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3518,222,'Bedfordshire','BEDS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3519,222,'Berkshire','BERKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3520,222,'Blaenau Gwent','BLA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3521,222,'Bridgend','BRI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3522,222,'Bristol','BSTL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3523,222,'Buckinghamshire','BUCKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3524,222,'Caerphilly','CAE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3525,222,'Cambridgeshire','CAMBS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3526,222,'Cardiff','CDF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3527,222,'Carmarthenshire','CARM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3528,222,'Ceredigion','CDGN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3529,222,'Cheshire','CHES',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3530,222,'Clackmannanshire','CLACK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3531,222,'Conwy','CON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3532,222,'Cornwall','CORN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3533,222,'Denbighshire','DNBG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3534,222,'Derbyshire','DERBY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3535,222,'Devon','DVN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3536,222,'Dorset','DOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3537,222,'Dumfries and Galloway','DGL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3538,222,'Dundee','DUND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3539,222,'Durham','DHM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3540,222,'East Ayrshire','ARYE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3541,222,'East Dunbartonshire','DUNBE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3542,222,'East Lothian','LOTE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3543,222,'East Renfrewshire','RENE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3544,222,'East Riding of Yorkshire','ERYS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3545,222,'East Sussex','SXE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3546,222,'Edinburgh','EDIN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3547,222,'Essex','ESX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3548,222,'Falkirk','FALK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3549,222,'Fife','FFE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3550,222,'Flintshire','FLINT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3551,222,'Glasgow','GLAS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3552,222,'Gloucestershire','GLOS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3553,222,'Greater London','LDN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3554,222,'Greater Manchester','MCH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3555,222,'Gwynedd','GDD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3556,222,'Hampshire','HANTS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3557,222,'Herefordshire','HWR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3558,222,'Hertfordshire','HERTS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3559,222,'Highlands','HLD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3560,222,'Inverclyde','IVER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3561,222,'Isle of Wight','IOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3562,222,'Kent','KNT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3563,222,'Lancashire','LANCS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3564,222,'Leicestershire','LEICS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3565,222,'Lincolnshire','LINCS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3566,222,'Merseyside','MSY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3567,222,'Merthyr Tydfil','MERT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3568,222,'Midlothian','MLOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3569,222,'Monmouthshire','MMOUTH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3570,222,'Moray','MORAY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3571,222,'Neath Port Talbot','NPRTAL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3572,222,'Newport','NEWPT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3573,222,'Norfolk','NOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3574,222,'North Ayrshire','ARYN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3575,222,'North Lanarkshire','LANN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3576,222,'North Yorkshire','YSN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3577,222,'Northamptonshire','NHM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3578,222,'Northumberland','NLD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3579,222,'Nottinghamshire','NOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3580,222,'Orkney Islands','ORK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3581,222,'Oxfordshire','OFE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3582,222,'Pembrokeshire','PEM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3583,222,'Perth and Kinross','PERTH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3584,222,'Powys','PWS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3585,222,'Renfrewshire','REN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3586,222,'Rhondda Cynon Taff','RHON',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3587,222,'Rutland','RUT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3588,222,'Scottish Borders','BOR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3589,222,'Shetland Islands','SHET',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3590,222,'Shropshire','SPE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3591,222,'Somerset','SOM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3592,222,'South Ayrshire','ARYS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3593,222,'South Lanarkshire','LANS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3594,222,'South Yorkshire','YSS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3595,222,'Staffordshire','SFD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3596,222,'Stirling','STIR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3597,222,'Suffolk','SFK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3598,222,'Surrey','SRY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3599,222,'Swansea','SWAN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3600,222,'Torfaen','TORF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3601,222,'Tyne and Wear','TWR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3602,222,'Vale of Glamorgan','VGLAM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3603,222,'Warwickshire','WARKS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3604,222,'West Dunbartonshire','WDUN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3605,222,'West Lothian','WLOT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3606,222,'West Midlands','WMD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3607,222,'West Sussex','SXW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3608,222,'West Yorkshire','YSW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3609,222,'Western Isles','WIL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3610,222,'Wiltshire','WLT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3611,222,'Worcestershire','WORCS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3612,222,'Wrexham','WRX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3613,223,'Alabama','AL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3614,223,'Alaska','AK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3615,223,'American Samoa','AS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3616,223,'Arizona','AZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3617,223,'Arkansas','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3618,223,'Armed Forces Africa','AF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3619,223,'Armed Forces Americas','AA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3620,223,'Armed Forces Canada','AC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3621,223,'Armed Forces Europe','AE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3622,223,'Armed Forces Middle East','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3623,223,'Armed Forces Pacific','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3624,223,'California','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3625,223,'Colorado','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3626,223,'Connecticut','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3627,223,'Delaware','DE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3628,223,'District of Columbia','DC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3629,223,'Federated States Of Micronesia','FM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3630,223,'Florida','FL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3631,223,'Georgia','GA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3632,223,'Guam','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3633,223,'Hawaii','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3634,223,'Idaho','ID',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3635,223,'Illinois','IL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3636,223,'Indiana','IN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3637,223,'Iowa','IA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3638,223,'Kansas','KS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3639,223,'Kentucky','KY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3640,223,'Louisiana','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3641,223,'Maine','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3642,223,'Marshall Islands','MH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3643,223,'Maryland','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3644,223,'Massachusetts','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3645,223,'Michigan','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3646,223,'Minnesota','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3647,223,'Mississippi','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3648,223,'Missouri','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3649,223,'Montana','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3650,223,'Nebraska','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3651,223,'Nevada','NV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3652,223,'New Hampshire','NH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3653,223,'New Jersey','NJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3654,223,'New Mexico','NM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3655,223,'New York','NY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3656,223,'North Carolina','NC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3657,223,'North Dakota','ND',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3658,223,'Northern Mariana Islands','MP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3659,223,'Ohio','OH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3660,223,'Oklahoma','OK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3661,223,'Oregon','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3662,223,'Palau','PW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3663,223,'Pennsylvania','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3664,223,'Puerto Rico','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3665,223,'Rhode Island','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3666,223,'South Carolina','SC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3667,223,'South Dakota','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3668,223,'Tennessee','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3669,223,'Texas','TX',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3670,223,'Utah','UT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3671,223,'Vermont','VT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3672,223,'Virgin Islands','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3673,223,'Virginia','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3674,223,'Washington','WA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3675,223,'West Virginia','WV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3676,223,'Wisconsin','WI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3677,223,'Wyoming','WY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3678,224,'Baker Island','BI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3679,224,'Howland Island','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3680,224,'Jarvis Island','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3681,224,'Johnston Atoll','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3682,224,'Kingman Reef','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3683,224,'Midway Atoll','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3684,224,'Navassa Island','NI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3685,224,'Palmyra Atoll','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3686,224,'Wake Island','WI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3687,225,'Artigas','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3688,225,'Canelones','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3689,225,'Cerro Largo','CL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3690,225,'Colonia','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3691,225,'Durazno','DU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3692,225,'Flores','FS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3693,225,'Florida','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3694,225,'Lavalleja','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3695,225,'Maldonado','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3696,225,'Montevideo','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3697,225,'Paysandu','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3698,225,'Rio Negro','RN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3699,225,'Rivera','RV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3700,225,'Rocha','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3701,225,'Salto','SL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3702,225,'San Jose','SJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3703,225,'Soriano','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3704,225,'Tacuarembo','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3705,225,'Treinta y Tres','TT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3706,226,'Andijon','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3707,226,'Buxoro','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3708,226,'Farg\'ona','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3709,226,'Jizzax','JI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3710,226,'Namangan','NG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3711,226,'Navoiy','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3712,226,'Qashqadaryo','QA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3713,226,'Qoraqalpog\'iston Republikasi','QR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3714,226,'Samarqand','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3715,226,'Sirdaryo','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3716,226,'Surxondaryo','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3717,226,'Toshkent City','TK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3718,226,'Toshkent Region','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3719,226,'Xorazm','XO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3720,227,'Malampa','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3721,227,'Penama','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3722,227,'Sanma','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3723,227,'Shefa','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3724,227,'Tafea','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3725,227,'Torba','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3726,229,'Amazonas','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3727,229,'Anzoategui','AN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3728,229,'Apure','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3729,229,'Aragua','AR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3730,229,'Barinas','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3731,229,'Bolivar','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3732,229,'Carabobo','CA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3733,229,'Cojedes','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3734,229,'Delta Amacuro','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3735,229,'Dependencias Federales','DF',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3736,229,'Distrito Federal','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3737,229,'Falcon','FA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3738,229,'Guarico','GU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3739,229,'Lara','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3740,229,'Merida','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3741,229,'Miranda','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3742,229,'Monagas','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3743,229,'Nueva Esparta','NE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3744,229,'Portuguesa','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3745,229,'Sucre','SU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3746,229,'Tachira','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3747,229,'Trujillo','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3748,229,'Vargas','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3749,229,'Yaracuy','YA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3750,229,'Zulia','ZU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3751,230,'An Giang','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3752,230,'Bac Giang','BG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3753,230,'Bac Kan','BK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3754,230,'Bac Lieu','BL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3755,230,'Bac Ninh','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3756,230,'Ba Ria-Vung Tau','BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3757,230,'Ben Tre','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3758,230,'Binh Dinh','BH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3759,230,'Binh Duong','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3760,230,'Binh Phuoc','BP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3761,230,'Binh Thuan','BT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3762,230,'Ca Mau','CM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3763,230,'Can Tho','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3764,230,'Cao Bang','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3765,230,'Dak Lak','DL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3766,230,'Dak Nong','DG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3767,230,'Da Nang','DN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3768,230,'Dien Bien','DB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3769,230,'Dong Nai','DI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3770,230,'Dong Thap','DT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3771,230,'Gia Lai','GL',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3772,230,'Ha Giang','HG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3773,230,'Hai Duong','HD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3774,230,'Hai Phong','HP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3775,230,'Ha Nam','HM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3776,230,'Ha Noi','HI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3777,230,'Ha Tay','HT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3778,230,'Ha Tinh','HH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3779,230,'Hoa Binh','HB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3780,230,'Ho Chi Minh City','HC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3781,230,'Hau Giang','HU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3782,230,'Hung Yen','HY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3783,232,'Saint Croix','C',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3784,232,'Saint John','J',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3785,232,'Saint Thomas','T',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3786,233,'Alo','A',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3787,233,'Sigave','S',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3788,233,'Wallis','W',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3789,235,'Abyan','AB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3790,235,'Adan','AD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3791,235,'Amran','AM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3792,235,'Al Bayda','BA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3793,235,'Ad Dali','DA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3794,235,'Dhamar','DH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3795,235,'Hadramawt','HD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3796,235,'Hajjah','HJ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3797,235,'Al Hudaydah','HU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3798,235,'Ibb','IB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3799,235,'Al Jawf','JA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3800,235,'Lahij','LA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3801,235,'Ma\'rib','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3802,235,'Al Mahrah','MR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3803,235,'Al Mahwit','MW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3804,235,'Sa\'dah','SD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3805,235,'San\'a','SN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3806,235,'Shabwah','SH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3807,235,'Ta\'izz','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3812,237,'Bas-Congo','BC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3813,237,'Bandundu','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3814,237,'Equateur','EQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3815,237,'Katanga','KA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3816,237,'Kasai-Oriental','KE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3817,237,'Kinshasa','KN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3818,237,'Kasai-Occidental','KW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3819,237,'Maniema','MA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3820,237,'Nord-Kivu','NK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3821,237,'Orientale','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3822,237,'Sud-Kivu','SK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3823,238,'Central','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3824,238,'Copperbelt','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3825,238,'Eastern','EA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3826,238,'Luapula','LP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3827,238,'Lusaka','LK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3828,238,'Northern','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3829,238,'North-Western','NW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3830,238,'Southern','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3831,238,'Western','WE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3832,239,'Bulawayo','BU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3833,239,'Harare','HA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3834,239,'Manicaland','ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3835,239,'Mashonaland Central','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3836,239,'Mashonaland East','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3837,239,'Mashonaland West','MW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3838,239,'Masvingo','MV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3839,239,'Matabeleland North','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3840,239,'Matabeleland South','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3841,239,'Midlands','MD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3861,105,'Campobasso','CB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3862,105,'Carbonia-Iglesias','CI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3863,105,'Caserta','CE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3864,105,'Catania','CT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3865,105,'Catanzaro','CZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3866,105,'Chieti','CH',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3867,105,'Como','CO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3868,105,'Cosenza','CS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3869,105,'Cremona','CR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3870,105,'Crotone','KR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3871,105,'Cuneo','CN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3872,105,'Enna','EN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3873,105,'Ferrara','FE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3874,105,'Firenze','FI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3875,105,'Foggia','FG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3876,105,'Forli-Cesena','FC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3877,105,'Frosinone','FR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3878,105,'Genova','GE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3879,105,'Gorizia','GO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3880,105,'Grosseto','GR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3881,105,'Imperia','IM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3882,105,'Isernia','IS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3883,105,'L&#39;Aquila','AQ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3884,105,'La Spezia','SP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3885,105,'Latina','LT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3886,105,'Lecce','LE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3887,105,'Lecco','LC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3888,105,'Livorno','LI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3889,105,'Lodi','LO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3890,105,'Lucca','LU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3891,105,'Macerata','MC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3892,105,'Mantova','MN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3893,105,'Massa-Carrara','MS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3894,105,'Matera','MT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3895,105,'Medio Campidano','VS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3896,105,'Messina','ME',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3897,105,'Milano','MI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3898,105,'Modena','MO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3899,105,'Napoli','NA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3900,105,'Novara','NO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3901,105,'Nuoro','NU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3902,105,'Ogliastra','OG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3903,105,'Olbia-Tempio','OT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3904,105,'Oristano','OR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3905,105,'Padova','PD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3906,105,'Palermo','PA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3907,105,'Parma','PR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3908,105,'Pavia','PV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3909,105,'Perugia','PG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3910,105,'Pesaro e Urbino','PU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3911,105,'Pescara','PE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3912,105,'Piacenza','PC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3913,105,'Pisa','PI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3914,105,'Pistoia','PT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3915,105,'Pordenone','PN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3916,105,'Potenza','PZ',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3917,105,'Prato','PO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3918,105,'Ragusa','RG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3919,105,'Ravenna','RA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3920,105,'Reggio Calabria','RC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3921,105,'Reggio Emilia','RE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3922,105,'Rieti','RI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3923,105,'Rimini','RN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3924,105,'Roma','RM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3925,105,'Rovigo','RO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3926,105,'Salerno','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3927,105,'Sassari','SS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3928,105,'Savona','SV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3929,105,'Siena','SI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3930,105,'Siracusa','SR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3931,105,'Sondrio','SO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3932,105,'Taranto','TA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3933,105,'Teramo','TE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3934,105,'Terni','TR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3935,105,'Torino','TO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3936,105,'Trapani','TP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3937,105,'Trento','TN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3938,105,'Treviso','TV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3939,105,'Trieste','TS',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3940,105,'Udine','UD',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3941,105,'Varese','VA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3942,105,'Venezia','VE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3943,105,'Verbano-Cusio-Ossola','VB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3944,105,'Vercelli','VC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3945,105,'Verona','VR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3946,105,'Vibo Valentia','VV',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3947,105,'Vicenza','VI',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3948,105,'Viterbo','VT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3949,222,'County Antrim','ANT',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3950,222,'County Armagh','ARM',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3951,222,'County Down','DOW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3952,222,'County Fermanagh','FER',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3953,222,'County Londonderry','LDY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3954,222,'County Tyrone','TYR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3955,222,'Cumbria','CMA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3956,190,'Pomurska','1',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3957,190,'Podravska','2',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3958,190,'Koroška','3',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3959,190,'Savinjska','4',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3960,190,'Zasavska','5',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3961,190,'Spodnjeposavska','6',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3962,190,'Jugovzhodna Slovenija','7',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3963,190,'Osrednjeslovenska','8',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3964,190,'Gorenjska','9',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3965,190,'Notranjsko-kraška','10',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3966,190,'Goriška','11',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3967,190,'Obalno-kraška','12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3968,33,'Ruse','',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3969,101,'Alborz','ALB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3970,21,'Brussels-Capital Region','BRU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3971,138,'Aguascalientes','AG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3973,242,'Andrijevica','01',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3974,242,'Bar','02',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3975,242,'Berane','03',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3976,242,'Bijelo Polje','04',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3977,242,'Budva','05',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3978,242,'Cetinje','06',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3979,242,'Danilovgrad','07',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3980,242,'Herceg-Novi','08',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3981,242,'Kolašin','09',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3982,242,'Kotor','10',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3983,242,'Mojkovac','11',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3984,242,'Nikšić','12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3985,242,'Plav','13',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3986,242,'Pljevlja','14',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3987,242,'Plužine','15',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3988,242,'Podgorica','16',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3989,242,'Rožaje','17',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3990,242,'Šavnik','18',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3991,242,'Tivat','19',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3992,242,'Ulcinj','20',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3993,242,'Žabljak','21',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3994,243,'Belgrade','00',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3995,243,'North Bačka','01',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3996,243,'Central Banat','02',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3997,243,'North Banat','03',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3998,243,'South Banat','04',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (3999,243,'West Bačka','05',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4000,243,'South Bačka','06',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4001,243,'Srem','07',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4002,243,'Mačva','08',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4003,243,'Kolubara','09',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4004,243,'Podunavlje','10',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4005,243,'Braničevo','11',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4006,243,'Šumadija','12',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4007,243,'Pomoravlje','13',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4008,243,'Bor','14',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4009,243,'Zaječar','15',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4010,243,'Zlatibor','16',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4011,243,'Moravica','17',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4012,243,'Raška','18',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4013,243,'Rasina','19',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4014,243,'Nišava','20',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4015,243,'Toplica','21',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4016,243,'Pirot','22',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4017,243,'Jablanica','23',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4018,243,'Pčinja','24',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4020,245,'Bonaire','BO',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4021,245,'Saba','SA',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4022,245,'Sint Eustatius','SE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4023,248,'Central Equatoria','EC',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4024,248,'Eastern Equatoria','EE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4025,248,'Jonglei','JG',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4026,248,'Lakes','LK',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4027,248,'Northern Bahr el-Ghazal','BN',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4028,248,'Unity','UY',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4029,248,'Upper Nile','NU',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4030,248,'Warrap','WR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4031,248,'Western Bahr el-Ghazal','BW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4032,248,'Western Equatoria','EW',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4036,117,'Ainaži, Salacgrīvas novads','0661405',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4037,117,'Aizkraukle, Aizkraukles novads','0320201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4038,117,'Aizkraukles novads','0320200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4039,117,'Aizpute, Aizputes novads','0640605',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4040,117,'Aizputes novads','0640600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4041,117,'Aknīste, Aknīstes novads','0560805',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4042,117,'Aknīstes novads','0560800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4043,117,'Aloja, Alojas novads','0661007',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4044,117,'Alojas novads','0661000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4045,117,'Alsungas novads','0624200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4046,117,'Alūksne, Alūksnes novads','0360201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4047,117,'Alūksnes novads','0360200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4048,117,'Amatas novads','0424701',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4049,117,'Ape, Apes novads','0360805',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4050,117,'Apes novads','0360800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4051,117,'Auce, Auces novads','0460805',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4052,117,'Auces novads','0460800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4053,117,'Ādažu novads','0804400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4054,117,'Babītes novads','0804900',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4055,117,'Baldone, Baldones novads','0800605',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4056,117,'Baldones novads','0800600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4057,117,'Baloži, Ķekavas novads','0800807',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4058,117,'Baltinavas novads','0384400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4059,117,'Balvi, Balvu novads','0380201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4060,117,'Balvu novads','0380200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4061,117,'Bauska, Bauskas novads','0400201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4062,117,'Bauskas novads','0400200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4063,117,'Beverīnas novads','0964700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4064,117,'Brocēni, Brocēnu novads','0840605',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4065,117,'Brocēnu novads','0840601',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4066,117,'Burtnieku novads','0967101',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4067,117,'Carnikavas novads','0805200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4068,117,'Cesvaine, Cesvaines novads','0700807',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4069,117,'Cesvaines novads','0700800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4070,117,'Cēsis, Cēsu novads','0420201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4071,117,'Cēsu novads','0420200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4072,117,'Ciblas novads','0684901',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4073,117,'Dagda, Dagdas novads','0601009',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4074,117,'Dagdas novads','0601000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4075,117,'Daugavpils','0050000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4076,117,'Daugavpils novads','0440200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4077,117,'Dobele, Dobeles novads','0460201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4078,117,'Dobeles novads','0460200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4079,117,'Dundagas novads','0885100',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4080,117,'Durbe, Durbes novads','0640807',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4081,117,'Durbes novads','0640801',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4082,117,'Engures novads','0905100',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4083,117,'Ērgļu novads','0705500',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4084,117,'Garkalnes novads','0806000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4085,117,'Grobiņa, Grobiņas novads','0641009',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4086,117,'Grobiņas novads','0641000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4087,117,'Gulbene, Gulbenes novads','0500201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4088,117,'Gulbenes novads','0500200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4089,117,'Iecavas novads','0406400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4090,117,'Ikšķile, Ikšķiles novads','0740605',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4091,117,'Ikšķiles novads','0740600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4092,117,'Ilūkste, Ilūkstes novads','0440807',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4093,117,'Ilūkstes novads','0440801',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4094,117,'Inčukalna novads','0801800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4096,117,'Jaunjelgavas novads','0321000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4097,117,'Jaunpiebalgas novads','0425700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4098,117,'Jaunpils novads','0905700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4099,117,'Jelgava','0090000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4100,117,'Jelgavas novads','0540200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4101,117,'Jēkabpils','0110000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4102,117,'Jēkabpils novads','0560200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4103,117,'Jūrmala','0130000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4104,117,'Kalnciems, Jelgavas novads','0540211',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4105,117,'Kandava, Kandavas novads','0901211',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4106,117,'Kandavas novads','0901201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4107,117,'Kārsava, Kārsavas novads','0681009',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4108,117,'Kārsavas novads','0681000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4110,117,'Kokneses novads','0326100',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4111,117,'Krāslava, Krāslavas novads','0600201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4112,117,'Krāslavas novads','0600202',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4113,117,'Krimuldas novads','0806900',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4114,117,'Krustpils novads','0566900',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4115,117,'Kuldīga, Kuldīgas novads','0620201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4116,117,'Kuldīgas novads','0620200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4117,117,'Ķeguma novads','0741001',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4118,117,'Ķegums, Ķeguma novads','0741009',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4119,117,'Ķekavas novads','0800800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4120,117,'Lielvārde, Lielvārdes novads','0741413',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4121,117,'Lielvārdes novads','0741401',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4122,117,'Liepāja','0170000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4123,117,'Limbaži, Limbažu novads','0660201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4124,117,'Limbažu novads','0660200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4125,117,'Līgatne, Līgatnes novads','0421211',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4126,117,'Līgatnes novads','0421200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4127,117,'Līvāni, Līvānu novads','0761211',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4128,117,'Līvānu novads','0761201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4129,117,'Lubāna, Lubānas novads','0701413',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4130,117,'Lubānas novads','0701400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4131,117,'Ludza, Ludzas novads','0680201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4132,117,'Ludzas novads','0680200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4133,117,'Madona, Madonas novads','0700201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4134,117,'Madonas novads','0700200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4135,117,'Mazsalaca, Mazsalacas novads','0961011',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4136,117,'Mazsalacas novads','0961000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4137,117,'Mālpils novads','0807400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4138,117,'Mārupes novads','0807600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4139,117,'Mērsraga novads','0887600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4140,117,'Naukšēnu novads','0967300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4141,117,'Neretas novads','0327100',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4142,117,'Nīcas novads','0647900',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4143,117,'Ogre, Ogres novads','0740201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4144,117,'Ogres novads','0740202',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4145,117,'Olaine, Olaines novads','0801009',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4146,117,'Olaines novads','0801000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4147,117,'Ozolnieku novads','0546701',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4148,117,'Pārgaujas novads','0427500',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4149,117,'Pāvilosta, Pāvilostas novads','0641413',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4150,117,'Pāvilostas novads','0641401',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4151,117,'Piltene, Ventspils novads','0980213',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4152,117,'Pļaviņas, Pļaviņu novads','0321413',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4153,117,'Pļaviņu novads','0321400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4154,117,'Preiļi, Preiļu novads','0760201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4155,117,'Preiļu novads','0760202',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4156,117,'Priekule, Priekules novads','0641615',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4157,117,'Priekules novads','0641600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4158,117,'Priekuļu novads','0427300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4159,117,'Raunas novads','0427700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4160,117,'Rēzekne','0210000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4161,117,'Rēzeknes novads','0780200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4162,117,'Riebiņu novads','0766300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4163,117,'Rīga','0010000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4164,117,'Rojas novads','0888300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4165,117,'Ropažu novads','0808400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4166,117,'Rucavas novads','0648500',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4167,117,'Rugāju novads','0387500',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4168,117,'Rundāles novads','0407700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4169,117,'Rūjiena, Rūjienas novads','0961615',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4170,117,'Rūjienas novads','0961600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4171,117,'Sabile, Talsu novads','0880213',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4173,117,'Salacgrīvas novads','0661400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4174,117,'Salas novads','0568700',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4175,117,'Salaspils novads','0801200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4176,117,'Salaspils, Salaspils novads','0801211',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4177,117,'Saldus novads','0840200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4178,117,'Saldus, Saldus novads','0840201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4179,117,'Saulkrasti, Saulkrastu novads','0801413',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4180,117,'Saulkrastu novads','0801400',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4181,117,'Seda, Strenču novads','0941813',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4182,117,'Sējas novads','0809200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4183,117,'Sigulda, Siguldas novads','0801615',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4184,117,'Siguldas novads','0801601',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4185,117,'Skrīveru novads','0328200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4186,117,'Skrunda, Skrundas novads','0621209',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4187,117,'Skrundas novads','0621200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4188,117,'Smiltene, Smiltenes novads','0941615',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4189,117,'Smiltenes novads','0941600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4190,117,'Staicele, Alojas novads','0661017',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4191,117,'Stende, Talsu novads','0880215',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4192,117,'Stopiņu novads','0809600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4193,117,'Strenči, Strenču novads','0941817',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4194,117,'Strenču novads','0941800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4195,117,'Subate, Ilūkstes novads','0440815',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4196,117,'Talsi, Talsu novads','0880201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4197,117,'Talsu novads','0880200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4198,117,'Tērvetes novads','0468900',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4199,117,'Tukuma novads','0900200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4200,117,'Tukums, Tukuma novads','0900201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4201,117,'Vaiņodes novads','0649300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4202,117,'Valdemārpils, Talsu novads','0880217',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4203,117,'Valka, Valkas novads','0940201',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4204,117,'Valkas novads','0940200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4205,117,'Valmiera','0250000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4206,117,'Vangaži, Inčukalna novads','0801817',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4207,117,'Varakļāni, Varakļānu novads','0701817',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4208,117,'Varakļānu novads','0701800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4209,117,'Vārkavas novads','0769101',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4210,117,'Vecpiebalgas novads','0429300',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4211,117,'Vecumnieku novads','0409500',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4212,117,'Ventspils','0270000',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4213,117,'Ventspils novads','0980200',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4214,117,'Viesīte, Viesītes novads','0561815',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4215,117,'Viesītes novads','0561800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4216,117,'Viļaka, Viļakas novads','0381615',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4217,117,'Viļakas novads','0381600',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4218,117,'Viļāni, Viļānu novads','0781817',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4219,117,'Viļānu novads','0781800',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4220,117,'Zilupe, Zilupes novads','0681817',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4221,117,'Zilupes novads','0681801',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4222,43,'Arica y Parinacota','AP',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4223,43,'Los Rios','LR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4224,220,'Kharkivs\'ka Oblast\'','63',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4225,118,'Beirut','LB-BR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4226,118,'Bekaa','LB-BE',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4227,118,'Mount Lebanon','LB-ML',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4228,118,'Nabatieh','LB-NB',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4229,118,'North','LB-NR',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4230,118,'South','LB-ST',1);

insert  into `kg_zone`(`zone_id`,`country_id`,`name`,`code`,`status`) values (4231,99,'Telangana','TS',1);



/*Table structure for table `kg_zone_to_geo_zone` */



DROP TABLE IF EXISTS `kg_zone_to_geo_zone`;



CREATE TABLE `kg_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;



/*Data for the table `kg_zone_to_geo_zone` */



insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

insert  into `kg_zone_to_geo_zone`(`zone_to_geo_zone_id`,`country_id`,`zone_id`,`geo_zone_id`,`date_added`,`date_modified`) values (109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

