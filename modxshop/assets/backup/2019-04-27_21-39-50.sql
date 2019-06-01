#
# My Evolution Site Database Dump
# MODX Version:1.4.8
# 
# Host: 
# Generation Time: 27-04-2019 21:39:50
# Server version: 5.7.16-10-log
# PHP Version: 5.6.40
# Database: `studiyai_modshop`
# Description: haze
#

# --------------------------------------------------------

#
# Table structure for table `idlq_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=585 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `idlq_active_user_locks`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `idlq_active_user_sessions`
#

INSERT INTO `idlq_active_user_sessions` VALUES ('2lbfhuvvjlvf38an8pt087u660','1','1556390390','188.163.56.100');


# --------------------------------------------------------

#
# Table structure for table `idlq_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `idlq_active_users`
#

INSERT INTO `idlq_active_users` VALUES ('2lbfhuvvjlvf38an8pt087u660','1','admin','1556390390','93',NULL);

INSERT INTO `idlq_active_users` VALUES ('dqbakmp5o5pqcl29omjvtm8m04','1','admin','1551941901','78','2');


# --------------------------------------------------------

#
# Table structure for table `idlq_atRating_grpName`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_atRating_grpName`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_atRating_grpName` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` varchar(80) NOT NULL,
  `rating` int(11) NOT NULL,
  `lastIP` varchar(255) NOT NULL,
  `nbIP` int(11) NOT NULL,
  `voteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_atRating_grpName`
#

INSERT INTO `idlq_atRating_grpName` VALUES ('1','russian-UTF8:all:0','5','@FILE:assets/snippets/anythingRating/templates/anythingRating.tpl.html','1000000','2036-12-31 00:00:00');

INSERT INTO `idlq_atRating_grpName` VALUES ('2','product','100','92.242.105.41','1','2019-03-01 12:19:48');


# --------------------------------------------------------

#
# Table structure for table `idlq_atRating_product`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_atRating_product`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_atRating_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` varchar(80) NOT NULL,
  `rating` int(11) NOT NULL,
  `lastIP` varchar(255) NOT NULL,
  `nbIP` int(11) NOT NULL,
  `voteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_atRating_product`
#

INSERT INTO `idlq_atRating_product` VALUES ('1','russian-UTF8:all:0','5','@FILE:assets/snippets/anythingRating/templates/anythingRating.tpl.html','1000000','2036-12-31 00:00:00');

INSERT INTO `idlq_atRating_product` VALUES ('2','product','100','92.242.105.41','1','2019-03-01 12:20:49');


# --------------------------------------------------------

#
# Table structure for table `idlq_atRating_product1`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_atRating_product1`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_atRating_product1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` varchar(80) NOT NULL,
  `rating` int(11) NOT NULL,
  `lastIP` varchar(255) NOT NULL,
  `nbIP` int(11) NOT NULL,
  `voteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_atRating_product1`
#

INSERT INTO `idlq_atRating_product1` VALUES ('1','russian-UTF8:all:0','5','@FILE:assets/snippets/anythingRating/templates/anythingRating.tpl.html','1000000','2036-12-31 00:00:00');

INSERT INTO `idlq_atRating_product1` VALUES ('2','product','100','92.242.105.41','1','2019-03-01 12:22:34');

INSERT INTO `idlq_atRating_product1` VALUES ('3','2','100','92.242.105.41','1','2019-03-01 12:23:14');


# --------------------------------------------------------

#
# Table structure for table `idlq_atRating_product2`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_atRating_product2`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_atRating_product2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` varchar(80) NOT NULL,
  `rating` int(11) NOT NULL,
  `lastIP` varchar(255) NOT NULL,
  `nbIP` int(11) NOT NULL,
  `voteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_atRating_product2`
#

INSERT INTO `idlq_atRating_product2` VALUES ('1','russian-UTF8:all:0','5','@FILE:assets/snippets/anythingRating/templates/anythingRating.tpl.html','1000000','2036-12-31 00:00:00');


# --------------------------------------------------------

#
# Table structure for table `idlq_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `idlq_categories`
#

INSERT INTO `idlq_categories` VALUES ('1','SEO','0');

INSERT INTO `idlq_categories` VALUES ('2','Js','0');

INSERT INTO `idlq_categories` VALUES ('3','Templates','0');

INSERT INTO `idlq_categories` VALUES ('4','Manager and Admin','0');

INSERT INTO `idlq_categories` VALUES ('5','Content','0');

INSERT INTO `idlq_categories` VALUES ('6','Navigation','0');

INSERT INTO `idlq_categories` VALUES ('7','TSVshop','0');

INSERT INTO `idlq_categories` VALUES ('8','TSVoffice','0');

INSERT INTO `idlq_categories` VALUES ('9','Start Admin','0');

INSERT INTO `idlq_categories` VALUES ('10','Login','0');

INSERT INTO `idlq_categories` VALUES ('38','TSVshop','0');

INSERT INTO `idlq_categories` VALUES ('39','Forms','0');

INSERT INTO `idlq_categories` VALUES ('40','MultiTV add-ons','0');

INSERT INTO `idlq_categories` VALUES ('41','meta','0');

INSERT INTO `idlq_categories` VALUES ('42','Search','0');

INSERT INTO `idlq_categories` VALUES ('43','add','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `idlq_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `idlq_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_event_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `idlq_event_log`
#

INSERT INTO `idlq_event_log` VALUES ('1','0','1551270891','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:34:51</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0034 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0258 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0292 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5040130615234 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('2','0','1551270892','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:34:52</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0017 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0144 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0160 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('3','0','1551270893','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:34:53</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0015 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0130 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0145 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2532958984375 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('4','0','1551270901','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:35:01</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0224 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1067 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1291 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('5','0','1551270902','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:35:02</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0012 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0144 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0156 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('6','0','1551270903','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:35:03</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0012 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0127 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0139 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('7','0','1551270904','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:35:04</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0136 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0150 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('8','0','1551270943','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:35:43</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0046 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0292 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0338 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('9','0','1551270971','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:11</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0022 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0149 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0172 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('10','0','1551270972','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:12</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0128 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0142 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('11','0','1551270973','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:13</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0012 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0129 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0141 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('12','0','1551270974','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0013 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0126 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0140 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2532958984375 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('13','0','1551270987','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:27</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0021 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0156 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0176 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('14','0','1551270987','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:27</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0013 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0127 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0140 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('15','0','1551270988','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:28</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0011 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0132 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0144 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('16','0','1551270988','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:28</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0133 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0146 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('17','0','1551270988','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:28</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0015 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0208 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0222 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('18','0','1551271002','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:42</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0023 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0225 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0248 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('19','0','1551271002','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:42</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0011 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0128 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0139 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('20','0','1551271003','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:43</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0164 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0179 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('21','0','1551271003','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:43</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0016 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0166 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0182 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('22','0','1551271003','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:43</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0204 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0218 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('23','0','1551271004','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0012 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0131 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0143 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('24','0','1551271004','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0131 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0145 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('25','0','1551271004','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0131 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0144 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('26','0','1551271004','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0012 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0132 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0143 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('27','0','1551271004','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:44</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0013 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0128 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0141 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('28','0','1551271005','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:45</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0156 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0170 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('29','0','1551271005','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:45</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0129 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0143 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('30','0','1551271005','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:45</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0201 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0215 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('31','0','1551271006','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:36:46</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0010 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0130 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0141 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536468505859 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('32','0','1551271033','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:13</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0035 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0336 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0372 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5036163330078 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('33','0','1551271034','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0013 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0128 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0142 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5032501220703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('34','0','1551271034','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:14</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0123 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0137 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5032501220703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('35','0','1551271035','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:15</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0013 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0133 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0146 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5032501220703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('36','0','1551271045','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:25</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0020 s (11 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0143 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0164 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.5032501220703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('37','0','1551271046','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:37:26</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0014 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0135 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0149 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2532501220703 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('38','0','1551271381','3','0','1','Snippet - TSVshop / PHP Parse Error','<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : include(/home/studiyai/aistudio.pro/modxshop/assets/snippets/tsvshop/include/config.inc.php): failed to open stream: No such file or directory</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>/home/studiyai/aistudio.pro/modxshop/manager/includes/document.parser.class.inc.php(1964) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>15</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>TSVshop</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://modxshop.aistudio.pro/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[1] <a href=\"http://modxshop.aistudio.pro/\" target=\"_blank\">Evolution CMS Install Success</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://modxshop.aistudio.pro/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>92.242.105.41</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2019-02-27 14:43:01</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0158 s (4 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0306 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0464 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.2536163330078 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2862</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2986</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2717</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php on line 2027</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 2115</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1964</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>include</strong>()<br />manager/includes/document.parser.class.inc.php(1964) : eval()\'d code on line 15</td>\n	</tr>\n</table>\n');

INSERT INTO `idlq_event_log` VALUES ('39','0','1551272419','3','1','0','phpmailer','Invalid address:  (to): dkRzS2BBKYystAWYGl6ZgA4F5WEB93Z49qQHBLGSlME=<pre>Array\n(\n    [PluginDir] => /home/studiyai/aistudio.pro/modxshop/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => text/html\n    [Encoding] => base64\n    [ErrorInfo] => \n    [From] => ruslan.aistudio@gmail.com\n    [FromName] => My Evolution Site\n    [Sender] => \n    [Subject] => \n    [Body] => \n    [AltBody] => \n    [Ical] => \n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n)\n</pre>');

INSERT INTO `idlq_event_log` VALUES ('40','0','1551272419','3','1','0','phpmailer','You must provide at least one recipient email address.<pre>Array\n(\n    [PluginDir] => /home/studiyai/aistudio.pro/modxshop/manager/includes/controls/phpmailer/\n    [Priority] => \n    [CharSet] => UTF-8\n    [ContentType] => text/html\n    [Encoding] => base64\n    [ErrorInfo] => Invalid address:  (to): dkRzS2BBKYystAWYGl6ZgA4F5WEB93Z49qQHBLGSlME=\n    [From] => my@mail.com\n    [FromName] => Интернет-магазин\n    [Sender] => my@mail.com\n    [Subject] => Изменение статуса заказа\n    [Body] => <p>Уважаемый Ruslan Rogovskiy</p>\n<p>Статус заказа №1, сделанного Вами 27.02.2019 14:58:28, был изменена на Ожидание оплаты</p>\n<p>С уважением, администрация сайта My Evolution Site</p>\n    [AltBody] => \n    [Ical] => \n    [WordWrap] => 0\n    [Mailer] => mail\n    [Sendmail] => /usr/sbin/sendmail\n    [UseSendmailOptions] => 1\n    [ConfirmReadingTo] => \n    [Hostname] => \n    [MessageID] => \n    [MessageDate] => \n    [Host] => localhost\n    [Port] => 25\n    [Helo] => \n    [SMTPSecure] => \n    [SMTPAutoTLS] => 1\n    [SMTPAuth] => \n    [SMTPOptions] => Array\n        (\n        )\n\n    [Username] => \n    [Password] => \n    [AuthType] => \n    [Timeout] => 300\n    [SMTPDebug] => 0\n    [Debugoutput] => html\n    [SMTPKeepAlive] => \n    [SingleTo] => \n    [do_verp] => \n    [AllowEmpty] => \n    [DKIM_selector] => \n    [DKIM_identity] => \n    [DKIM_passphrase] => \n    [DKIM_domain] => \n    [DKIM_copyHeaderFields] => 1\n    [DKIM_extraHeaders] => Array\n        (\n        )\n\n    [DKIM_private] => \n    [DKIM_private_string] => \n    [action_function] => \n    [XMailer] => \n)\n</pre>');


# --------------------------------------------------------

#
# Table structure for table `idlq_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(46) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1127 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `idlq_manager_log`
#

INSERT INTO `idlq_manager_log` VALUES ('1','1551269893','1','admin','58','-','MODX','Logged in','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('2','1551269894','1','admin','17','-','-','Editing settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('3','1551269912','1','admin','30','-','-','Saving settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('4','1551269955','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('5','1551270595','1','admin','102','2','ElementsInTree','Edit plugin','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('6','1551270598','1','admin','103','2','ElementsInTree','Saving plugin','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('7','1551270598','1','admin','102','2','ElementsInTree','Edit plugin','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('8','1551270605','1','admin','102','2','ElementsInTree','Edit plugin','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('9','1551270788','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('10','1551270800','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('11','1551270808','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('12','1551270815','1','admin','27','2','Главная демо-сайта','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('13','1551270823','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('14','1551270879','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('15','1551270886','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('16','1551270887','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('17','1551270888','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('18','1551270897','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('19','1551270899','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('20','1551270901','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('21','1551270910','1','admin','27','9','Бытовая техника (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('22','1551270914','1','admin','27','12','Микроволновка (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('23','1551270915','1','admin','27','11','Телевизор LCD (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('24','1551270927','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('25','1551270959','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('26','1551270968','1','admin','27','2','Главная демо-сайта','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('27','1551270970','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('28','1551270980','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('29','1551271043','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('30','1551271044','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('31','1551271044','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('32','1551271430','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('33','1551271430','1','admin','27','2','Главная демо-сайта','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('34','1551271437','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('35','1551271438','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('36','1551271438','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('37','1551271491','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('38','1551271570','1','admin','27','8','Каталог товаров (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('39','1551271654','1','admin','27','9','Бытовая техника (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('40','1551271671','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('41','1551271672','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('42','1551271719','1','ruslan.aistudio@gmail.com','58','-','WebLogin','Logged in','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('43','1551271984','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('44','1551271989','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('45','1551272000','1','admin','78','9','Shop_UserForm','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('46','1551272017','1','admin','78','3','Shop_mail_klient','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('47','1551272019','1','admin','78','11','Shop_mail_admin','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('48','1551272024','1','admin','78','16','Shop_PrintOrder','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('49','1551272041','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('50','1551272052','1','admin','78','14','Shop_FinishText','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('51','1551272062','1','admin','112','3','TSVshop','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('52','1551272064','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('53','1551272066','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('54','1551272156','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('55','1551272414','1','admin','112','3','TSVshop','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('56','1551272593','1','admin','27','11','Телевизор LCD (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('57','1551272620','1','admin','27','12','Микроволновка (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('58','1551272684','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('59','1551272710','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('60','1551272718','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('61','1551272718','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('62','1551272721','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('63','1551272725','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('64','1551272725','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('65','1551272753','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('66','1551272753','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('67','1551272774','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('68','1551272774','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('69','1551272781','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('70','1551272781','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('71','1551272790','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('72','1551272790','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('73','1551272794','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('74','1551272794','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('75','1551272805','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('76','1551272806','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('77','1551276412','1','admin','58','-','MODX','Logged in','92.242.105.41','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Mobile Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('78','1551276507','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('79','1551276522','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('80','1551276554','1','admin','17','-','Extras','Editing settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('81','1551276564','1','admin','30','-','-','Saving settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('82','1551276570','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('83','1551276584','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('84','1551276589','1','admin','17','-','-','Editing settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('85','1551276595','1','admin','30','-','-','Saving settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('86','1551276604','1','admin','6','1','Evolution CMS Install Success','Deleting resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('87','1551276604','1','admin','3','1','Evolution CMS Install Success','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('88','1551276617','1','admin','63','1','Evolution CMS Install Success','Un-deleting a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('89','1551276617','1','admin','3','1','Evolution CMS Install Success','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('90','1551276626','1','admin','62','1','Evolution CMS Install Success','Un-publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('91','1551276626','1','admin','3','1','Evolution CMS Install Success','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('92','1551276642','1','admin','27','7','О сайте (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('93','1551276647','1','admin','27','8','Каталог товаров (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('94','1551276659','1','admin','5','8','Каталог товаров (демо-сайт)','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('95','1551276659','1','admin','27','8','Каталог товаров (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('96','1551276662','1','admin','27','3','Мой кабинет (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('97','1551276666','1','admin','5','3','Мой кабинет (демо-сайт)','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('98','1551276666','1','admin','27','3','Мой кабинет (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('99','1551277216','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('100','1551277225','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('101','1551277236','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('102','1551277281','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('103','1551277281','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('104','1551277293','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('105','1551277293','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('106','1551277303','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('107','1551277303','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('108','1551277311','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('109','1551277312','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('110','1551277683','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('111','1551277687','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('112','1551277688','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('113','1551277701','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('114','1551277701','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('115','1551277732','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('116','1551277732','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('117','1551277748','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('118','1551277748','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('119','1551277779','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('120','1551277779','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('121','1551277789','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('122','1551277790','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('123','1551277821','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('124','1551277821','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('125','1551277843','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('126','1551277843','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('127','1551277858','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('128','1551277858','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('129','1551277915','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('130','1551277915','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('131','1551338414','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('132','1551338987','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('133','1551338997','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('134','1551338998','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('135','1551339023','1','admin','16','4','Карточка товара (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('136','1551339028','1','admin','20','4','Карточка товара (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('137','1551339028','1','admin','16','4','Карточка товара (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('138','1551339030','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('139','1551339034','1','admin','20','7','Корзина (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('140','1551339035','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('141','1551339036','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('142','1551339039','1','admin','20','5','Основной (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('143','1551339040','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('144','1551339257','1','admin','20','5','Основной (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('145','1551339257','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('146','1551340026','1','admin','20','5','Основной (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('147','1551340027','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('148','1551340032','1','admin','20','7','Корзина (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('149','1551340032','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('150','1551340037','1','admin','20','4','Карточка товара (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('151','1551340037','1','admin','16','4','Карточка товара (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('152','1551340043','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('153','1551340043','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('154','1551340108','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('155','1551340108','1','admin','27','2','Главная демо-сайта','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('156','1551340118','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('157','1551340118','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('158','1551340124','1','admin','27','7','О сайте (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('159','1551340130','1','admin','5','7','О сайте','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('160','1551340130','1','admin','27','7','О сайте','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('161','1551340132','1','admin','27','8','Каталог товаров (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('162','1551340137','1','admin','5','8','Каталог товаров','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('163','1551340138','1','admin','27','8','Каталог товаров','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('164','1551340140','1','admin','27','3','Мой кабинет (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('165','1551340145','1','admin','5','3','Мой кабинет','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('166','1551340145','1','admin','27','3','Мой кабинет','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('167','1551340148','1','admin','27','13','Мои заказы  (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('168','1551340154','1','admin','5','13','Мои заказы','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('169','1551340154','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('170','1551340158','1','admin','27','14','Просмотр заказа  (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('171','1551340166','1','admin','5','14','Просмотр заказа ','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('172','1551340166','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('173','1551340168','1','admin','27','15','Редактирование профиля  (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('174','1551340175','1','admin','5','15','Редактирование профиля ','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('175','1551340175','1','admin','27','15','Редактирование профиля ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('176','1551340184','1','ruslan.aistudio@gmail.com','58','-','WebLogin','Logged in','92.242.105.41','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Mobile Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('177','1551340412','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('178','1551340418','1','admin','79','-','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('179','1551340418','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('180','1551340473','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('181','1551340473','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('182','1551340511','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('183','1551340511','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('184','1551340529','1','admin','20','4','Карточка товара (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('185','1551340529','1','admin','16','4','Карточка товара (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('186','1551340538','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('187','1551340538','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('188','1551340544','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('189','1551340547','1','admin','20','7','Корзина (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('190','1551340547','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('191','1551340548','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('192','1551340552','1','admin','20','5','Основной (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('193','1551340552','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('194','1551340665','1','admin','79','21','[[[[','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('195','1551340665','1','admin','78','21','[[[[','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('196','1551340713','1','admin','79','21','[[[[','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('197','1551340713','1','admin','78','21','[[[[','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('198','1551340725','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('199','1551340725','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('200','1551340928','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('201','1551340929','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('202','1551341014','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('203','1551341014','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('204','1551341402','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('205','1551341408','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('206','1551341408','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('207','1551341410','1','admin','27','7','О сайте','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('208','1551341413','1','admin','27','8','Каталог товаров','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('209','1551341414','1','admin','27','3','Мой кабинет','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('210','1551341418','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('211','1551341420','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('212','1551341961','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('213','1551342040','1','admin','20','6','Главная (демо-сайт)','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('214','1551342040','1','admin','16','6','Главная (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('215','1551342046','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('216','1551342046','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('217','1551342048','1','admin','16','4','Карточка товара (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('218','1551342057','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('219','1551342058','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('220','1551342060','1','admin','16','7','Корзина (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('221','1551342064','1','admin','20','7','Корзина','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('222','1551342064','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('223','1551342065','1','admin','16','5','Основной (демо-сайт)','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('224','1551342068','1','admin','20','5','Основной','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('225','1551342068','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('226','1551344026','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('227','1551344026','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('228','1551344038','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('229','1551344057','1','admin','300','-','Новый параметр (TV)','Create Template Variable','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('230','1551344066','1','admin','302','-','main_slider','Save Template Variable','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('231','1551344066','1','admin','301','12','main_slider','Edit Template Variable','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('232','1551344076','1','admin','21','3','Minimal Template','Deleting template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('233','1551344076','1','admin','76','-','-','Element management','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('234','1551344090','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('235','1551346627','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('236','1551347077','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('237','1551347077','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('238','1551347091','1','admin','78','22','flexslider-js','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('239','1551347104','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('240','1551347117','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('241','1551347117','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('242','1551347213','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('243','1551347213','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('244','1551347221','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('245','1551347221','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('246','1551347233','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('247','1551347233','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('248','1551347250','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('249','1551347271','1','admin','79','-','slider_tpl','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('250','1551347271','1','admin','78','24','slider_tpl','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('251','1551347295','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('252','1551347303','1','admin','79','-','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('253','1551347303','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('254','1551347412','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('255','1551347412','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('256','1551347427','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('257','1551347427','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('258','1551347437','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('259','1551347437','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('260','1551347450','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('261','1551347451','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('262','1551347479','1','admin','79','22','flexslider-js','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('263','1551347479','1','admin','78','22','flexslider-js','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('264','1551347511','1','admin','79','22','flexslider-js','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('265','1551347512','1','admin','78','22','flexslider-js','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('266','1551347547','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('267','1551347547','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('268','1551347563','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('269','1551347566','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('270','1551347577','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('271','1551347577','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('272','1551347579','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('273','1551347584','1','admin','20','7','Корзина','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('274','1551347584','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('275','1551347586','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('276','1551347589','1','admin','20','5','Основной','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('277','1551347590','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('278','1551347724','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('279','1551347724','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('280','1551347779','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('281','1551347785','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('282','1551347785','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('283','1551347799','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('284','1551347807','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('285','1551347807','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('286','1551347812','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('287','1551347930','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('288','1551347930','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('289','1551347953','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('290','1551347953','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('291','1551348054','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('292','1551348251','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('293','1551348251','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('294','1551349044','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('295','1551349044','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('296','1551349929','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('297','1551349929','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('298','1551350209','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('299','1551350209','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('300','1551350212','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('301','1551350220','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('302','1551350223','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('303','1551350232','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('304','1551350234','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('305','1551350234','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('306','1551350244','1','admin','67','-','-','Removing locks','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('307','1551350249','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('308','1551350262','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('309','1551350262','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('310','1551350264','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('311','1551350267','1','admin','20','7','Корзина','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('312','1551350267','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('313','1551350269','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('314','1551350272','1','admin','20','5','Основной','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('315','1551350272','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('316','1551350815','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('317','1551350815','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('318','1551350836','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('319','1551350837','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('320','1551352003','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('321','1551352028','1','admin','22','24','AjaxSearch','Editing Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('322','1551352104','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('323','1551352105','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('324','1551352121','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('325','1551352121','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('326','1551352136','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('327','1551352136','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('328','1551352141','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('329','1551352141','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('330','1551352154','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('331','1551352154','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('332','1551352406','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('333','1551352406','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('334','1551352425','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('335','1551352525','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('336','1551352526','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('337','1551352535','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('338','1551352535','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('339','1551352586','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('340','1551352586','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('341','1551355102','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('342','1551355125','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('343','1551355125','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('344','1551355127','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('345','1551355132','1','admin','79','-','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('346','1551355132','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('347','1551355135','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('348','1551355135','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('349','1551355170','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('350','1551355170','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('351','1551355182','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('352','1551355183','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('353','1551355193','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('354','1551355193','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('355','1551355244','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('356','1551355244','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('357','1551355264','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('358','1551355264','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('359','1551355305','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('360','1551355305','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('361','1551355307','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('362','1551355319','1','admin','79','-','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('363','1551355320','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('364','1551355456','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('365','1551355456','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('366','1551355567','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('367','1551355567','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('368','1551355625','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('369','1551355625','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('370','1551355677','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('371','1551355677','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('372','1551355680','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('373','1551355680','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('374','1551357378','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('375','1551357379','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('376','1551357480','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('377','1551357480','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('378','1551357520','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('379','1551357520','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('380','1551357531','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('381','1551357531','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('382','1551357543','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('383','1551357544','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('384','1551357564','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('385','1551357564','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('386','1551357580','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('387','1551357581','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('388','1551358614','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('389','1551358614','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('390','1551358674','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('391','1551358674','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('392','1551358716','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('393','1551358733','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('394','1551358736','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('395','1551358742','1','admin','17','-','-','Editing settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('396','1551358756','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('397','1551358763','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('398','1551359132','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('399','1551359132','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('400','1551359161','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('401','1551359161','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('402','1551359390','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('403','1551359390','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('404','1551359530','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('405','1551359530','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('406','1551359626','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('407','1551359626','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('408','1551359637','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('409','1551359637','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('410','1551359714','1','admin','79','27','banner-slide','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('411','1551359714','1','admin','78','27','banner-slide','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('412','1551360402','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('413','1551360403','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('414','1551360706','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('415','1551360706','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('416','1551361131','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('417','1551361132','1','admin','27','8','Каталог товаров','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('418','1551361145','1','admin','5','8','Телефоны','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('419','1551361145','1','admin','27','8','Телефоны','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('420','1551361149','1','admin','5','8','Телефоны','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('421','1551361149','1','admin','27','8','Телефоны','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('422','1551361191','1','admin','94','8','Копия Телефоны','Duplicate resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('423','1551361191','1','admin','3','16','Копия Телефоны','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('424','1551361195','1','admin','61','16','Копия Телефоны','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('425','1551361195','1','admin','3','16','Копия Телефоны','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('426','1551361196','1','admin','27','16','Копия Телефоны','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('427','1551361211','1','admin','5','16','Популярные модели','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('428','1551361212','1','admin','27','16','Популярные модели','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('429','1551361217','1','admin','5','16','Популярные модели','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('430','1551361217','1','admin','27','16','Популярные модели','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('431','1551361222','1','admin','61','17','Бытовая техника (демо-сайт)','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('432','1551361222','1','admin','3','16','Популярные модели','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('433','1551361224','1','admin','61','20','Канцелярия (демо-сайт)','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('434','1551361224','1','admin','3','16','Популярные модели','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('435','1551361227','1','admin','61','18','Телевизор LCD (демо-сайт)','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('436','1551361228','1','admin','3','17','Бытовая техника (демо-сайт)','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('437','1551361230','1','admin','61','19','Микроволновка (демо-сайт)','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('438','1551361230','1','admin','3','17','Бытовая техника (демо-сайт)','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('439','1551364078','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('440','1551364078','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('441','1551364248','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('442','1551364248','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('443','1551364271','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('444','1551364272','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('445','1551364290','1','admin','5','2','Главная','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('446','1551364290','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('447','1551364701','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('448','1551364701','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('449','1551364768','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('450','1551364769','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('451','1551366878','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('452','1551366885','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('453','1551366905','1','admin','78','5','Shop_Cart_Empty','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('454','1551366911','1','admin','78','14','Shop_FinishText','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('455','1551366914','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('456','1551366929','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('457','1551366929','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('458','1551366945','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('459','1551366945','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('460','1551366951','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('461','1551366951','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('462','1551367021','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('463','1551367021','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('464','1551367038','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('465','1551367038','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('466','1551367052','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('467','1551367053','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('468','1551367322','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('469','1551367322','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('470','1551367348','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('471','1551367348','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('472','1551367696','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('473','1551367696','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('474','1551367717','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('475','1551367717','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('476','1551367720','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('477','1551367720','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('478','1551368160','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('479','1551368160','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('480','1551368206','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('481','1551368206','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('482','1551424511','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('483','1551425907','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('484','1551425907','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('485','1551426748','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('486','1551426748','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('487','1551426787','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('488','1551426787','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('489','1551427017','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('490','1551427017','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('491','1551427235','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('492','1551427247','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('493','1551427339','1','admin','79','-','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('494','1551427339','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('495','1551427387','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('496','1551427387','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('497','1551427396','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('498','1551427396','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('499','1551427400','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('500','1551427400','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('501','1551427402','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('502','1551427402','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('503','1551427597','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('504','1551427597','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('505','1551427601','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('506','1551427602','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('507','1551428272','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('508','1551428272','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('509','1551428300','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('510','1551428301','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('511','1551428423','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('512','1551428423','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('513','1551428497','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('514','1551428497','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('515','1551428531','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('516','1551428531','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('517','1551429067','1','admin','79','28','sellbox','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('518','1551429067','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('519','1551430508','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('520','1551430508','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('521','1551430699','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('522','1551430699','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('523','1551431799','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('524','1551431799','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('525','1551431801','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('526','1551431802','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('527','1551431810','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('528','1551431811','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('529','1551433021','1','admin','27','3','Мой кабинет','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('530','1551433025','1','admin','5','3','Мой кабинет','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('531','1551433025','1','admin','27','3','Мой кабинет','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('532','1551433153','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('533','1551433153','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('534','1551433251','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('535','1551433251','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('536','1551433254','1','admin','27','17','Бытовая техника (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('537','1551433254','1','admin','27','16','Популярные модели','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('538','1551433263','1','admin','27','2','Главная','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('539','1551433319','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('540','1551433319','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('541','1551433339','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('542','1551433339','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('543','1551433355','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('544','1551433355','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('545','1551433385','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('546','1551433385','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('547','1551433388','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('548','1551433389','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('549','1551433425','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('550','1551433425','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('551','1551433558','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('552','1551433568','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('553','1551433568','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('554','1551433577','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('555','1551433584','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('556','1551433584','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('557','1551433602','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('558','1551433602','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('559','1551433619','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('560','1551433620','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('561','1551433625','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('562','1551433625','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('563','1551433640','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('564','1551433640','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('565','1551433650','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('566','1551433650','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('567','1551433655','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('568','1551433655','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('569','1551433848','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('570','1551433848','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('571','1551433864','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('572','1551433865','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('573','1551433889','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('574','1551433889','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('575','1551434040','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('576','1551434041','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('577','1551434176','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('578','1551434177','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('579','1551434181','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('580','1551434181','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('581','1551434183','1','admin','79','6','product','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('582','1551434183','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('583','1551434332','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('584','1551434332','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('585','1551434367','1','admin','27','18','Телевизор LCD (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('586','1551434452','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('587','1551434452','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('588','1551434473','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('589','1551434473','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('590','1551434505','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('591','1551434505','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('592','1551434538','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('593','1551434539','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('594','1551434543','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('595','1551434543','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('596','1551434969','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('597','1551434969','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('598','1551435279','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('599','1551435436','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('600','1551435436','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('601','1551435480','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('602','1551435488','1','admin','22','25','anythingRating','Editing Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('603','1551435582','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('604','1551435582','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('605','1551435643','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('606','1551435643','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('607','1551435736','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('608','1551435736','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('609','1551435747','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('610','1551435747','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('611','1551435785','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('612','1551435785','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('613','1551435789','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('614','1551435789','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('615','1551435829','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('616','1551435829','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('617','1551435896','1','admin','23','-','Новый сниппет','Creating a new Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('618','1551435905','1','admin','24','-','star_rating','Saving Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('619','1551435905','1','admin','22','26','star_rating','Editing Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('620','1551435914','1','admin','107','-','Новый модуль','Create new module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('621','1551435921','1','admin','109','-','Star Rating','Saving module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('622','1551435921','1','admin','108','4','Star Rating','Edit module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('623','1551435932','1','admin','108','4','Star Rating','Edit module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('624','1551435946','1','admin','112','4','Star Rating','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('625','1551435948','1','admin','112','4','Star Rating','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('626','1551435952','1','admin','112','4','Star Rating','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('627','1551435959','1','admin','112','4','Star Rating','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('628','1551435977','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('629','1551435982','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('630','1551435982','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('631','1551436012','1','admin','112','4','Star Rating','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('632','1551436034','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('633','1551436044','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('634','1551436044','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('635','1551436326','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('636','1551436326','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('637','1551436363','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('638','1551436363','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('639','1551436517','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('640','1551436517','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('641','1551436538','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('642','1551436538','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('643','1551436554','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('644','1551436554','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('645','1551436574','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('646','1551436574','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('647','1551436927','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('648','1551436927','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('649','1551436937','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('650','1551436937','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('651','1551436950','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('652','1551436950','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('653','1551437043','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('654','1551437043','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('655','1551438678','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('656','1551438678','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('657','1551438727','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('658','1551438727','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('659','1551438735','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('660','1551438735','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('661','1551439010','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('662','1551439010','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('663','1551439787','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('664','1551439799','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('665','1551439799','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('666','1551439804','1','admin','61','1','Evolution CMS Install Success','Publishing a resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('667','1551439804','1','admin','3','1','Evolution CMS Install Success','Viewing data for resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('668','1551439814','1','admin','19','-','Новый шаблон','Creating a new template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('669','1551440085','1','admin','20','-','Feed данных','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('670','1551440085','1','admin','16','8','Feed данных','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('671','1551440099','1','admin','20','8','Feed данных','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('672','1551440099','1','admin','16','8','Feed данных','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('673','1551440104','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('674','1551440110','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('675','1551440117','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('676','1551440117','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('677','1551440120','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('678','1551440120','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('679','1551440129','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('680','1551440129','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('681','1551440154','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('682','1551440154','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('683','1551440175','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('684','1551440175','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('685','1551440200','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('686','1551440200','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('687','1551440211','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('688','1551440211','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('689','1551440222','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('690','1551440222','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('691','1551440244','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('692','1551440244','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('693','1551440262','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('694','1551440263','1','admin','26','-','-','Refreshing site','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('695','1551440293','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('696','1551440293','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('697','1551440302','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('698','1551440302','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('699','1551440317','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('700','1551440317','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('701','1551440340','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('702','1551440340','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('703','1551440348','1','admin','5','1','Evolution CMS Install Success','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('704','1551440348','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('705','1551440427','1','admin','17','-','-','Editing settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('706','1551440456','1','admin','30','-','-','Saving settings','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('707','1551442006','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('708','1551442015','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('709','1551442015','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('710','1551442362','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('711','1551442375','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('712','1551442375','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('713','1551442429','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('714','1551442429','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('715','1551442610','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('716','1551442610','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('717','1551446526','1','admin','22','26','star_rating','Editing Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('718','1551446845','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('719','1551446845','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('720','1551446846','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('721','1551446854','1','admin','79','-','star_rating','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('722','1551446854','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('723','1551446857','1','admin','79','29','star_rating','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('724','1551446857','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('725','1551446880','1','admin','24','26','star_rating','Saving Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('726','1551446880','1','admin','22','26','star_rating','Editing Snippet','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('727','1551446913','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('728','1551446913','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('729','1551446942','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('730','1551446942','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('731','1551447361','1','admin','16','8','Feed данных','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('732','1551447366','1','admin','27','1','Evolution CMS Install Success','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('733','1551447412','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('734','1551448195','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('735','1551448195','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('736','1551451031','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('737','1551451226','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('738','1551451226','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('739','1551451317','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('740','1551451317','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('741','1551451330','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('742','1551451330','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('743','1551451390','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('744','1551451390','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('745','1551451400','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('746','1551451400','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('747','1551451449','1','admin','20','4','Карточка товара','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('748','1551451449','1','admin','16','4','Карточка товара','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('749','1551451470','1','admin','78','6','product','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('750','1551451508','1','admin','27','18','Телевизор LCD (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('751','1551454178','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('752','1551454187','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('753','1551454188','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('754','1551454198','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('755','1551454199','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('756','1551454492','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('757','1551454492','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('758','1551455103','1','admin','79','25','footer_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('759','1551455103','1','admin','78','25','footer_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('760','1551455114','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('761','1551455122','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('762','1551455122','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('763','1551525257','1','admin','58','-','MODX','Logged in','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('764','1551525264','1','admin','27','8','Телефоны','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('765','1551525279','1','admin','5','8','Телефоны','Saving resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('766','1551525279','1','admin','27','8','Телефоны','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('767','1551525293','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('768','1551525322','1','admin','16','6','Главная','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('769','1551525445','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('770','1551525445','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('771','1551525451','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('772','1551525452','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('773','1551525494','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('774','1551525494','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('775','1551525649','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('776','1551525650','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('777','1551525674','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('778','1551525674','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('779','1551525739','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('780','1551525739','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('781','1551525749','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('782','1551525749','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('783','1551525807','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('784','1551525807','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('785','1551525825','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('786','1551525825','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('787','1551525889','1','admin','27','9','Бытовая техника (демо-сайт)','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('788','1551525931','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('789','1551525931','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('790','1551525962','1','admin','20','5','Основной','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('791','1551525962','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('792','1551525985','1','admin','94','18','Копия Телевизор LCD (демо-сайт)','Duplicate resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('793','1551525985','1','admin','3','21','Копия Телевизор LCD (демо-сайт)','Viewing data for resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('794','1551525991','1','admin','61','21','Копия Телевизор LCD (демо-сайт)','Publishing a resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('795','1551525991','1','admin','3','20','Канцелярия (демо-сайт)','Viewing data for resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('796','1551525997','1','admin','94','11','Копия Телевизор LCD (демо-сайт)','Duplicate resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('797','1551525998','1','admin','3','22','Копия Телевизор LCD (демо-сайт)','Viewing data for resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('798','1551526002','1','admin','27','10','Канцелярия (демо-сайт)','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('799','1551526006','1','admin','61','22','Копия Телевизор LCD (демо-сайт)','Publishing a resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('800','1551526006','1','admin','3','10','Канцелярия (демо-сайт)','Viewing data for resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('801','1551527482','1','admin','16','7','Корзина','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('802','1551527507','1','admin','20','7','Корзина','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('803','1551527507','1','admin','16','7','Корзина','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('804','1551527515','1','admin','20','7','Корзина','Saving template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('805','1551527516','1','admin','16','7','Корзина','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('806','1551527559','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('807','1551527564','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('808','1551527564','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('809','1551527578','1','admin','27','4','Корзина (демо-сайт)','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('810','1551527610','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('811','1551527610','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('812','1551527629','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('813','1551527630','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('814','1551527725','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('815','1551527740','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('816','1551527740','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('817','1551527943','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('818','1551527943','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('819','1551528002','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('820','1551528002','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('821','1551528162','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('822','1551528162','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('823','1551528170','1','admin','27','4','Корзина (демо-сайт)','Editing resource','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('824','1551553787','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('825','1551553996','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('826','1551553996','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('827','1551554026','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('828','1551554026','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('829','1551554046','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('830','1551554047','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('831','1551554341','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('832','1551554343','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('833','1551554354','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('834','1551554423','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('835','1551554424','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('836','1551554433','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('837','1551554433','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('838','1551554454','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('839','1551554454','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('840','1551554551','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('841','1551554551','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('842','1551554576','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('843','1551554576','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('844','1551554679','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('845','1551554680','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('846','1551554695','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('847','1551554695','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('848','1551554806','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('849','1551554806','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('850','1551555002','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('851','1551555002','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('852','1551555055','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('853','1551555056','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('854','1551555068','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('855','1551555068','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('856','1551555109','1','admin','16','5','Основной','Editing template','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('857','1551555151','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('858','1551555152','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('859','1551555286','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('860','1551555286','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('861','1551555570','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('862','1551555570','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('863','1551555586','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('864','1551555586','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('865','1551556075','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('866','1551556075','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('867','1551556236','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('868','1551556236','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('869','1551556254','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('870','1551556254','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('871','1551556260','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('872','1551556260','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('873','1551556293','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('874','1551556293','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('875','1551556350','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('876','1551556350','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('877','1551556408','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('878','1551556408','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('879','1551556419','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('880','1551556419','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('881','1551556432','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('882','1551556432','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('883','1551556940','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('884','1551556940','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('885','1551556943','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('886','1551556944','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('887','1551556964','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('888','1551556964','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('889','1551557100','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('890','1551557100','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('891','1551557392','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('892','1551557392','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('893','1551557433','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('894','1551557433','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('895','1551557442','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('896','1551557442','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('897','1551557486','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('898','1551557487','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('899','1551557510','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('900','1551557510','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('901','1551557570','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('902','1551557570','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('903','1551557605','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('904','1551557605','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('905','1551557646','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('906','1551557646','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('907','1551557649','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('908','1551557649','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('909','1551557707','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('910','1551557707','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('911','1551557746','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('912','1551557746','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('913','1551557781','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('914','1551557781','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('915','1551557809','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('916','1551557810','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('917','1551558622','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('918','1551558622','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('919','1551558689','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('920','1551558690','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('921','1551558739','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('922','1551558739','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('923','1551559079','1','admin','79','2','header','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('924','1551559079','1','admin','78','2','header','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('925','1551559089','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('926','1551559097','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('927','1551559097','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('928','1551559149','1','admin','79','8','DLproduct','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('929','1551559149','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('930','1551559238','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('931','1551559265','1','admin','79','29','star_rating','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('932','1551559266','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('933','1551559285','1','admin','79','29','star_rating','Saving Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('934','1551559286','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('935','1551597651','1','admin','78','29','star_rating','Editing Chunk (HTML Snippet)','188.163.56.94','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('936','1551689478','1','admin','58','-','MODX','Logged in','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('937','1551689496','1','admin','78','8','DLproduct','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('938','1551689501','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('939','1551689516','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('940','1551689516','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('941','1551689532','1','admin','79','15','Shop_Infoblock','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('942','1551689532','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('943','1551691129','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('944','1551691134','1','admin','20','7','Корзина','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('945','1551691134','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('946','1551691213','1','admin','20','7','Корзина','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('947','1551691213','1','admin','16','7','Корзина','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('948','1551691334','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('949','1551691352','1','admin','27','5','Оформление покупки (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('950','1551691412','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('951','1551691487','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('952','1551692213','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('953','1551692484','1','admin','5','13','Мои заказы','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('954','1551692484','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('955','1551692503','1','admin','5','13','Мои заказы','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('956','1551692503','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('957','1551692524','1','admin','5','13','Мои заказы','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('958','1551692525','1','admin','27','13','Мои заказы','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('959','1551692538','1','admin','5','14','Просмотр заказа ','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('960','1551692539','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('961','1551692559','1','admin','5','14','Просмотр заказа ','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('962','1551692559','1','admin','27','14','Просмотр заказа ','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('963','1551692568','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('964','1551692568','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('965','1551692602','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('966','1551692603','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('967','1551692640','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('968','1551692641','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('969','1551692643','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('970','1551692643','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('971','1551692659','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('972','1551692659','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('973','1551692717','1','admin','78','5','Shop_Cart_Empty','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('974','1551692718','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('975','1551692881','1','admin','27','6','Спасибо за покупку (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('976','1551692889','1','admin','78','14','Shop_FinishText','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('977','1551693025','1','admin','16','5','Основной','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('978','1551693053','1','admin','27','6','Спасибо за покупку (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('979','1551693057','1','admin','5','6','Спасибо за покупку (демо-сайт)','Saving resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('980','1551693057','1','admin','27','6','Спасибо за покупку (демо-сайт)','Editing resource','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('981','1551697496','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('982','1551697496','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('983','1551697746','1','admin','112','3','TSVshop','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('984','1551697768','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('985','1551711051','1','admin','112','1','Extras','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('986','1551778750','1','admin','58','-','MODX','Logged in','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('987','1551778757','1','admin','112','3','TSVshop','Execute module','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('988','1551778804','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('989','1551778833','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('990','1551778857','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('991','1551778858','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('992','1551778884','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('993','1551778884','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('994','1551779244','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('995','1551779298','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('996','1551779298','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('997','1551779332','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('998','1551779332','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('999','1551779411','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1000','1551779411','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1001','1551779417','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1002','1551779417','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1003','1551779529','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1004','1551779529','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1005','1551779537','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1006','1551779537','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1007','1551779881','1','admin','79','7','Shop_Checkout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1008','1551779881','1','admin','78','7','Shop_Checkout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1009','1551779902','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1010','1551779902','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1011','1551780091','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1012','1551780091','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1013','1551780114','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1014','1551780114','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1015','1551780117','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1016','1551780117','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1017','1551783066','1','admin','78','15','Shop_Infoblock','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1018','1551783605','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1019','1551783605','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1020','1551783629','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1021','1551783630','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1022','1551783678','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1023','1551783678','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1024','1551783781','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1025','1551783781','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1026','1551783813','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1027','1551783813','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1028','1551783863','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1029','1551783863','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1030','1551784055','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1031','1551784055','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1032','1551784235','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1033','1551784236','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1034','1551784268','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1035','1551784268','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1036','1551784312','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1037','1551784312','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1038','1551784312','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1039','1551784517','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1040','1551784517','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1041','1551784578','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1042','1551784578','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1043','1551784589','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1044','1551784590','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1045','1551784595','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1046','1551784595','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1047','1551784754','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1048','1551784754','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1049','1551790906','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1050','1551790906','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1051','1551790990','1','admin','79','12','Shop_Cart','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1052','1551790990','1','admin','78','12','Shop_Cart','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1053','1551798315','1','admin','79','13','Shop_FullCheckout','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1054','1551798315','1','admin','78','13','Shop_FullCheckout','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1055','1551798323','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1056','1551798375','1','admin','78','28','sellbox','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1057','1551798386','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1058','1551798469','1','admin','20','6','Главная','Saving template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1059','1551798470','1','admin','16','6','Главная','Editing template','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1060','1551798474','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1061','1551798474','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1062','1551798510','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1063','1551798510','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1064','1551798515','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1065','1551798515','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1066','1551798557','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1067','1551798557','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1068','1551798668','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1069','1551798668','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1070','1551798738','1','admin','79','26','slider','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1071','1551798738','1','admin','78','26','slider','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1072','1551800981','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1073','1551801010','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1074','1551801010','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1075','1551801055','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1076','1551801055','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1077','1551801114','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1078','1551801114','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1079','1551801213','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1080','1551801244','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1081','1551801244','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1082','1551801247','1','admin','79','21','header_meta','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1083','1551801247','1','admin','78','21','header_meta','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1084','1551801285','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1085','1551801285','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1086','1551801367','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1087','1551801367','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1088','1551801418','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1089','1551801419','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1090','1551801463','1','admin','79','2','header','Saving Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1091','1551801463','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1092','1551856756','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1093','1551862034','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1094','1551941901','1','admin','78','2','header','Editing Chunk (HTML Snippet)','92.242.105.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1095','1556390004','1','admin','58','-','MODX','Logged in','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1096','1556390006','1','admin','31','-','-','Using file manager','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1097','1556390009','1','admin','31','-','-','Using file manager','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1098','1556390010','1','admin','31','-','-','Using file manager','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1099','1556390014','1','admin','31','-','-','Using file manager','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1100','1556390016','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1101','1556390019','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1102','1556390051','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1103','1556390051','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1104','1556390081','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1105','1556390081','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1106','1556390098','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1107','1556390098','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1108','1556390124','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1109','1556390124','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1110','1556390136','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1111','1556390136','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1112','1556390153','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1113','1556390153','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1114','1556390182','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1115','1556390182','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1116','1556390205','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1117','1556390205','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1118','1556390236','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1119','1556390236','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1120','1556390266','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1121','1556390266','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1122','1556390281','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1123','1556390281','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1124','1556390286','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Modified File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1125','1556390286','1','admin','31','-','/home/studiyai/aistudio.pro/modxshop/assets/templates/js/script.js','Viewing File','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');

INSERT INTO `idlq_manager_log` VALUES ('1126','1556390385','1','admin','93','-','-','Backup Manager','188.163.56.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36');


# --------------------------------------------------------

#
# Table structure for table `idlq_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `idlq_manager_users`
#

INSERT INTO `idlq_manager_users` VALUES ('1','admin','$P$B.g8oVylN7JVRX3e4F9/nRZEgwTQXQ1');


# --------------------------------------------------------

#
# Table structure for table `idlq_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `idlq_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `idlq_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `idlq_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_shop_conf`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_shop_conf`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_shop_conf` (
  `module` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` blob NOT NULL,
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`module`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_shop_conf`
#

INSERT INTO `idlq_shop_conf` VALUES ('MySQL','Prefix','idlq_','1');

INSERT INTO `idlq_shop_conf` VALUES ('addons','sales_active','yes','1');

INSERT INTO `idlq_shop_conf` VALUES ('addons','config_active','yes','1');

INSERT INTO `idlq_shop_conf` VALUES ('addons','addons_active','yes','1');

INSERT INTO `idlq_shop_conf` VALUES ('MySQL','Server','{DBHOST}','1');

INSERT INTO `idlq_shop_conf` VALUES ('MySQL','User','{DBUSER}','1');

INSERT INTO `idlq_shop_conf` VALUES ('MySQL','Pass','{DBPASS}','1');

INSERT INTO `idlq_shop_conf` VALUES ('MySQL','DB','{DBNAME}','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SecFields','fio,adress,city,phone,email','1');

INSERT INTO `idlq_shop_conf` VALUES ('','StatusOrder','Новый==d4e8f1||Ожидание оплаты==feecd8||Оплачено==e7f0db||Завершено==e4f0c6||Отменен==fce3e2','1');

INSERT INTO `idlq_shop_conf` VALUES ('','TypeCat','docs','1');

INSERT INTO `idlq_shop_conf` VALUES ('','MonetarySymbol',' грн.','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SmtpFromName','Интернет-магазин','1');

INSERT INTO `idlq_shop_conf` VALUES ('','PriceFormat','0,00','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SmtpFromEmail','my@mail.com','1');

INSERT INTO `idlq_shop_conf` VALUES ('','DisplayNotice','true','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SmtpReplyEmail','my@mail.com','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SubjectMailAdmin','Поступил новый заказ','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SubjectMailUser','Заказ успешно принят','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SubjectUpdateStatus','Изменение статуса заказа','1');

INSERT INTO `idlq_shop_conf` VALUES ('','SecPassword','MyPass','1');

INSERT INTO `idlq_shop_conf` VALUES ('','CatRoot','7','1');

INSERT INTO `idlq_shop_conf` VALUES ('','MinimumOrder','','1');


# --------------------------------------------------------

#
# Table structure for table `idlq_shop_numorder`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_shop_numorder`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_shop_numorder` (
  `numorder` int(11) NOT NULL,
  `key` int(11) NOT NULL,
  PRIMARY KEY (`numorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_shop_numorder`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_shop_order`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_shop_order`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_shop_order` (
  `numorder` int(255) NOT NULL AUTO_INCREMENT,
  `dateorder` int(25) NOT NULL,
  `datepay` int(25) NOT NULL,
  `status` text NOT NULL,
  `fio` blob NOT NULL,
  `total` text NOT NULL,
  `topay` text NOT NULL,
  `discountnum` text NOT NULL,
  `discount` text NOT NULL,
  `discountsize` text NOT NULL,
  `comments` longtext NOT NULL,
  `adress` blob NOT NULL,
  `city` blob NOT NULL,
  `region` text NOT NULL,
  `zip` text NOT NULL,
  `province` text NOT NULL,
  `tracking` text NOT NULL,
  `phone` blob NOT NULL,
  `email` blob NOT NULL,
  `dostavka` text NOT NULL,
  `commentadmin` longtext NOT NULL,
  `dostprice` text NOT NULL,
  `subtotal` text NOT NULL,
  `nalog` text NOT NULL,
  `code` text NOT NULL,
  `userid` int(5) NOT NULL,
  `paidsum` text,
  `shipping` text,
  `shiptype` text,
  `payments` text,
  PRIMARY KEY (`numorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_shop_order`
#

INSERT INTO `idlq_shop_order` VALUES ('1','1551272308','0','Ожидание оплаты','X9dOWe/nHFINdQeQZA6vaia4wk0=','55986.00','55986.00','','','','Привет, как читается?','GRHWrdQP39iCoyDwBgVUoui8vJ0=','yeQ5u8gHrbCv7NXUXUrqrJZqIkUlRbQj','','','','','J/JL8/hDxzQieWzE//gE6A/yHoc=','dkRzS2BBKYystAWYGl6ZgA4F5WEB93Z49qQHBLGSlME=','','','','55986','','gGE8Y8im','1',NULL,NULL,NULL,NULL);

INSERT INTO `idlq_shop_order` VALUES ('2','1551692871','0','Новый','YmlL8F666XI=','13000.00','13000.00','','','','sddsggdsgsd','zomBBIcXqmk5oO9kgLEFPw==','NUGtJqmZYJGABi+c','','','','','OiHn5Ry0hxUqyuVvxjal6mYS2b0=','AtF2D9xOVhr6ba+CY8xhpM3XjcUHpFeo','','','','13000','','ebz8gN7D','0',NULL,NULL,NULL,NULL);


# --------------------------------------------------------

#
# Table structure for table `idlq_shop_order_detail`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_shop_order_detail`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_shop_order_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `numorder` int(11) NOT NULL DEFAULT '0',
  `quantity` text NOT NULL,
  `price` text NOT NULL,
  `articul` text NOT NULL,
  `name` text NOT NULL,
  `url` varchar(125) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `options` varchar(200) NOT NULL,
  `typeitem` varchar(10) NOT NULL DEFAULT 'physical',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_shop_order_detail`
#

INSERT INTO `idlq_shop_order_detail` VALUES ('1','1','1','13000.00','М120','Микроволновка (демо-сайт) (Цвет: Белый)','12','/assets/templates/demoshop/img/tovar.jpg',' 0','physical');

INSERT INTO `idlq_shop_order_detail` VALUES ('2','1','1','21494.00','Т120','Телевизор LCD (демо-сайт) (Диагональ: 18)','11','/assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg',' 4','physical');

INSERT INTO `idlq_shop_order_detail` VALUES ('3','1','1','21492.00','Т120','Телевизор LCD (демо-сайт) (Диагональ: 14)','11','/assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg',' 2','physical');

INSERT INTO `idlq_shop_order_detail` VALUES ('4','2','1','13000.00','М120','Микроволновка (демо-сайт) (Цвет: Белый)','19','/assets/templates/demoshop/img/tovar.jpg',' 0','physical');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  KEY `typeidx` (`type`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `idlq_site_content`
#

INSERT INTO `idlq_site_content` VALUES ('1','document','text/xml','Evolution CMS Install Success','Welcome to the EVO Content Management System','','feed','','1','0','0','0','0','','','1','8','0','0','1','1','1130304721','1','1551440347','0','0','0','1551439804','1','','0','0','0','0','1','1');

INSERT INTO `idlq_site_content` VALUES ('2','document','text/html','Главная','Главная','','index','','1','0','0','0','0','','<h1>Вывод товаров с помощью DocLister</h1><div class=\"cataloglist\">[[DocLister? &tpl=`DLproduct` &parents=`9,17` &depth=`10` &prepare=`TSVshopPrepare` &tvList=`cart_icon,price,typeitem,tsvshop_param`]]</div>\n<h1>Вывод товаров с помощью Ditto</h1><div class=\"cataloglist\">[[Ditto? &tpl=`product` &parents=`9` &extenders=`shop`]]</div>\n','0','6','0','1','1','1','1130304721','1','1551364290','0','0','0','1130304721','1','Главная ','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('3','document','text/html','Мой кабинет','Мой кабинет','Мой кабинет','myoffice','','1','0','0','0','1','Мой кабинет','<p>[!TSVoffice? &amp;orderpage=`14` &amp;groups=`Registered`!]</p>','1','5','5','1','1','1','1326372471','1','1551433025','0','0','0','1326372471','1','Мой кабинет','0','0','0','0','1','1');

INSERT INTO `idlq_site_content` VALUES ('4','document','text/html','Корзина (демо-сайт)','Корзина','Корзина','cart','','1','0','0','3','0','Корзина','<p>[!TSVshop? &amp;act=`basket` &amp;checkid=`5`!]</p>','1','7','1','1','1','1','1322040255','1','1331054736','0','0','0','1322040265','1','Корзина','0','0','0','0','1','1');

INSERT INTO `idlq_site_content` VALUES ('5','document','text/html','Оформление покупки (демо-сайт)','Оформление покупки','Оформление покупки','checkout','','1','0','0','3','0','Оформление покупки','<p>[!TSVshop? &amp;act=`checkout` &amp;backid=`6` !]</p>','1','7','2','1','1','1','1322040674','1','1331055965','0','0','0','1322040674','1','Оформление покупки','0','0','0','0','1','1');

INSERT INTO `idlq_site_content` VALUES ('6','document','text/html','Спасибо за покупку (демо-сайт)','Спасибо за покупку','','spasibo-za-pokupku-demo-sajt','','1','0','0','3','0','Спасибо за покупку','[!TSVshop? &act=`finish`!]','0','7','3','1','1','1','1326362192','1','1551693057','0','0','0','1326362192','1','Спасибо за покупку','0','0','0','0','1','1');

INSERT INTO `idlq_site_content` VALUES ('7','document','text/html','О сайте','О сайте','О сайте','about','','1','0','0','0','0','О сайте','','1','5','1','1','1','1','1326370247','1','1551340129','0','0','0','1326370247','1','О сайте','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('8','document','text/html','Телефоны','Телефоны','Телефоны','catalog','','1','0','0','0','1','','','1','5','2','1','1','1','1326975054','1','1551525278','0','0','0','1326975059','1','Телефоны','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('21','document','text/html','Копия Телевизор LCD (демо-сайт)','Телевизор LCD','Телевизор LCD','','','1','0','0','20','0','Телевизор LCD','<table class=\"tinfo\" border=\"0\">\n<tbody>\n<tr>\n<td>Размер диагонали экрана <br /></td>\n<td>32(81см) <br /></td>\n</tr>\n<tr>\n<td>Формат экрана</td>\n<td>16:9</td>\n</tr>\n<tr>\n<td>Разрешение</td>\n<td>1920х1080</td>\n</tr>\n<tr>\n<td>Яркость</td>\n<td>480</td>\n</tr>\n<tr>\n<td>Контрастность</td>\n<td>3000:1</td>\n</tr>\n<tr>\n<td>Динамичекая контрастность</td>\n<td>30000:1</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по верт.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по гориз.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Время отклика матрицы, мс</td>\n<td>8</td>\n</tr>\n<tr>\n<td>Scart</td>\n<td>2</td>\n</tr>\n<tr>\n<td>HDMI</td>\n<td>3 <br /></td>\n</tr>\n<tr>\n<td>Компонентный(Y/Pb/Pr)</td>\n<td>+</td>\n</tr>\n<tr>\n<td>VGA</td>\n<td>+</td>\n</tr>\n<tr>\n<td>AV</td>\n<td>+</td>\n</tr>\n</tbody>\n</table>','1','4','0','1','1','1','1551525985','1','1551525991','0','0','0','1551525991','1','Телевизор LCD','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('16','document','text/html','Популярные модели','Телефоны','Телефоны','populyarnye-modeli','','1','0','0','0','1','','<div style=\"margin-left: -20px;\">[[Ditto? &amp;tpl=`product` &amp;parents=`9` &amp;extenders=`shop`]]</div>','1','5','2','1','1','1','1551361191','1','1551361217','0','0','0','1551361195','1','Популярные модели','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('9','document','text/html','Бытовая техника (демо-сайт)','Бытовая техника','Бытовая техника','','','1','0','0','8','1','Бытовая техника','','1','5','0','1','1','1','1326975378','1','1328644753','0','0','0','1326975378','1','Бытовая техника','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('10','document','text/html','Канцелярия (демо-сайт)','Канцелярия','Канцелярия','','','1','0','0','8','1','Канцелярия','','1','5','1','1','1','1','1326975399','1','1326975399','0','0','0','1326975399','1','Канцелярия','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('11','document','text/html','Телевизор LCD (демо-сайт)','Телевизор LCD','Телевизор LCD','','','1','0','0','9','0','Телевизор LCD','<table class=\"tinfo\" border=\"0\">\n<tbody>\n<tr>\n<td>Размер диагонали экрана <br /></td>\n<td>32(81см) <br /></td>\n</tr>\n<tr>\n<td>Формат экрана</td>\n<td>16:9</td>\n</tr>\n<tr>\n<td>Разрешение</td>\n<td>1920х1080</td>\n</tr>\n<tr>\n<td>Яркость</td>\n<td>480</td>\n</tr>\n<tr>\n<td>Контрастность</td>\n<td>3000:1</td>\n</tr>\n<tr>\n<td>Динамичекая контрастность</td>\n<td>30000:1</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по верт.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по гориз.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Время отклика матрицы, мс</td>\n<td>8</td>\n</tr>\n<tr>\n<td>Scart</td>\n<td>2</td>\n</tr>\n<tr>\n<td>HDMI</td>\n<td>3 <br /></td>\n</tr>\n<tr>\n<td>Компонентный(Y/Pb/Pr)</td>\n<td>+</td>\n</tr>\n<tr>\n<td>VGA</td>\n<td>+</td>\n</tr>\n<tr>\n<td>AV</td>\n<td>+</td>\n</tr>\n</tbody>\n</table>','1','4','0','1','1','1','1326976137','1','1326982164','0','0','0','1326976137','1','Телевизор LCD','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('12','document','text/html','Микроволновка (демо-сайт)','Микроволновка','Микроволновка','','','1','0','0','9','0','Микроволновка','','1','4','1','1','1','1','1326978714','1','1326978714','0','0','0','1326978714','1','Микроволновка','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('13','document','text/html','Мои заказы','Мои заказы','Мои заказы','moi-zakazy','','1','0','0','3','0','Мои заказы','<p>[!TSVoffice? &amp;act=`listorders` &amp;orderpage=`14`!]<br /><br /></p>','1','5','1','1','1','1','1326978714','1','1551692524','0','0','0','1326978714','1','Мои заказы','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('14','document','text/html','Просмотр заказа ','Просмотр заказа','Просмотр заказа','prosmotr-zakaza','','1','0','0','3','0','Просмотр заказа','<p>[!TSVoffice? &amp;act=`showorder`!]</p>\n<p>&nbsp;</p>','1','5','1','1','1','1','1326978714','1','1551692559','0','0','0','1326978714','1','Просмотр заказа','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('15','document','text/html','Редактирование профиля ','Редактирование профиля','Редактирование профиля','redaktirovanie-profilya','','1','0','0','3','0','Редактирование профиля','<p>[!TSVoffice? &amp;act=`editprofile`!]</p>','1','5','1','1','1','1','1326978714','1','1551340175','0','0','0','1326978714','1','Редактирование профиля','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('17','document','text/html','Бытовая техника (демо-сайт)','Бытовая техника','Бытовая техника','','','1','0','0','16','1','Бытовая техника','','1','5','0','1','1','1','1551361191','1','1551361222','0','0','0','1551361222','1','Бытовая техника','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('18','document','text/html','Телевизор LCD (демо-сайт)','Телевизор LCD','Телевизор LCD','','','1','0','0','17','0','Телевизор LCD','<table class=\"tinfo\" border=\"0\">\n<tbody>\n<tr>\n<td>Размер диагонали экрана <br /></td>\n<td>32(81см) <br /></td>\n</tr>\n<tr>\n<td>Формат экрана</td>\n<td>16:9</td>\n</tr>\n<tr>\n<td>Разрешение</td>\n<td>1920х1080</td>\n</tr>\n<tr>\n<td>Яркость</td>\n<td>480</td>\n</tr>\n<tr>\n<td>Контрастность</td>\n<td>3000:1</td>\n</tr>\n<tr>\n<td>Динамичекая контрастность</td>\n<td>30000:1</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по верт.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по гориз.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Время отклика матрицы, мс</td>\n<td>8</td>\n</tr>\n<tr>\n<td>Scart</td>\n<td>2</td>\n</tr>\n<tr>\n<td>HDMI</td>\n<td>3 <br /></td>\n</tr>\n<tr>\n<td>Компонентный(Y/Pb/Pr)</td>\n<td>+</td>\n</tr>\n<tr>\n<td>VGA</td>\n<td>+</td>\n</tr>\n<tr>\n<td>AV</td>\n<td>+</td>\n</tr>\n</tbody>\n</table>','1','4','0','1','1','1','1551361191','1','1551361227','0','0','0','1551361227','1','Телевизор LCD','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('19','document','text/html','Микроволновка (демо-сайт)','Микроволновка','Микроволновка','','','1','0','0','17','0','Микроволновка','','1','4','1','1','1','1','1551361191','1','1551361230','0','0','0','1551361230','1','Микроволновка','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('20','document','text/html','Канцелярия (демо-сайт)','Канцелярия','Канцелярия','','','1','0','0','16','1','Канцелярия','','1','5','1','1','1','1','1551361191','1','1551361224','0','0','0','1551361224','1','Канцелярия','0','0','0','0','0','1');

INSERT INTO `idlq_site_content` VALUES ('22','document','text/html','Копия Телевизор LCD (демо-сайт)','Телевизор LCD','Телевизор LCD','','','1','0','0','10','0','Телевизор LCD','<table class=\"tinfo\" border=\"0\">\n<tbody>\n<tr>\n<td>Размер диагонали экрана <br /></td>\n<td>32(81см) <br /></td>\n</tr>\n<tr>\n<td>Формат экрана</td>\n<td>16:9</td>\n</tr>\n<tr>\n<td>Разрешение</td>\n<td>1920х1080</td>\n</tr>\n<tr>\n<td>Яркость</td>\n<td>480</td>\n</tr>\n<tr>\n<td>Контрастность</td>\n<td>3000:1</td>\n</tr>\n<tr>\n<td>Динамичекая контрастность</td>\n<td>30000:1</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по верт.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Макс. Угол обзора по гориз.</td>\n<td>178</td>\n</tr>\n<tr>\n<td>Время отклика матрицы, мс</td>\n<td>8</td>\n</tr>\n<tr>\n<td>Scart</td>\n<td>2</td>\n</tr>\n<tr>\n<td>HDMI</td>\n<td>3 <br /></td>\n</tr>\n<tr>\n<td>Компонентный(Y/Pb/Pr)</td>\n<td>+</td>\n</tr>\n<tr>\n<td>VGA</td>\n<td>+</td>\n</tr>\n<tr>\n<td>AV</td>\n<td>+</td>\n</tr>\n</tbody>\n</table>','1','4','2','1','1','1','1551525997','1','1551526006','0','0','0','1551526006','1','Телевизор LCD','0','0','0','0','0','1');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_htmlsnippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `idlq_site_htmlsnippets`
#

INSERT INTO `idlq_site_htmlsnippets` VALUES ('1','mm_rules','Default ManagerManager rules.','0','none','2','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n\nmm_createTab(\'SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Images\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('2','header','sample header scripts','2','none','3','0','<div id=\"header\">	\n	<!-- <a href=\"http://tsvshop.xyz\" class=\"logo\" ><img src=\"[(base_url)]assets/templates/demoshop/img/logo.gif\" alt=\"Модуль TSVshop для создания интернет-магазина для MODx\" /></a> -->\n	<div class=\"mask-wrap\" style=\"display:none;\"></div>\n	<div id=\"topmenu\">	\n		<a href=\"#\" class=\"logo\">Smart MRPL</a>\n		[[Wayfinder? &startId=`0` &level=`1`]]	\n		<!-- <span class=\"logo\">интернет-магазин для розумних Марiупольцiв</span> -->\n		<a href=\"javascript:void(0);\" class=\"menu\"><i class=\"fas fa-bars\"></i></a>\n	</div>\n	<div class=\"rbox\" id=\"office-rbox\">\n		<a href=\"[~3~]\"><h3 class=\"profile\"></h3></a>\n	</div>\n	<div class=\"rbox\" id=\"search-rbox\">\n		<h3 class=\"search\"></h3>\n		<div class=\"rbcont\">\n			[!AjaxSearch? &showResults=`0` &landingPage=`[*id*]` &showMoreResults=`1` &moreResultsPage=`1`!]\n		</div>\n	</div>\n	<div class=\"rbox\">\n		<h3 class=\"cart\"></h3>\n		<div class=\"rbcont\">\n			<div class=\"title\">Ваши покупки:</div>\n			[!TSVshop? &act=`info` &basketid=`4`!]\n		</div>\n	</div>\n</div><!-- #header-->','0','0','1551801463','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('3','Shop_mail_klient','<strong>5.4.4</strong> Шаблон письма-подтверждения заказа клиенту в TSVshop','0','none','7','0','Здравствуйте, [+shop.mail.fio+]<br />\nВаш заказ был успешно сформирован и отправлен. В самое ближайшее время менеджер свяжется с Вами.<br /><br />\nВнимание! Если Вы будете звонить менеджеру по поводу этого заказа, указывайте, пожалуйста, номер этого заказа: - <b>[+shop.mail.numorder+]</b><br /><br />\n\n-------- <br />\nВаш заказ:\n--------- <br />\n\n<table border=\"1\" width=\"100%\"><tr><th>Артикул</th><th>Название товара</th><th>Кол-во</th><th>Цена</th></tr>\n<!--table-->\n<tr><td>[+shop.mail.articul+]</td><td><a href=\"[+shop.mail.link+]\" />[+shop.mail.name+]</a></td><td>[+shop.mail.quantity+]</td><td>[+shop.mail.price+] [+shop.mail.monetary+]</td></tr>\n<!--/table-->\n<tr><td colspan=\"3\">ПОДИТОГ:</td><td colspan=\"1\">[+shop.mail.subtotal+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">ОТГРУЗКА:</td><td colspan=\"1\">[+shop.mail.shipping+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">СКИДКА:</td><td colspan=\"1\">[+shop.mail.discountsize+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">ВСЕГО:</td><td colspan=\"1\">[+shop.mail.total+] [+shop.mail.monetary+]</td></tr>\n</table>\n<br />\n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('4','Shop_UpdateOrder','<strong>5.4.4</strong> Шаблон письма клиенту об изменении статуса его заказа в TSVshop','0','none','7','0','<p>Уважаемый [+shop.order.fio+]</p>\n<p>Статус заказа №[+shop.order.numorder+], сделанного Вами [+shop.order.dateorder+], был изменена на [+shop.order.status+]</p>\n<p>С уважением, администрация сайта [+shop.order.sitename+]</p>','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('5','Shop_Cart_Empty','<strong>5.4.4</strong> Шаблон пустой корзины заказов в TSVshop','0','none','7','0','<center><b>Корзина пуста</b></center>','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('6','product','<strong>5.4.4</strong> Шаблон для вывода товара с помощью Ditto в TSVshop','2','none','7','0','<div class=\"product\">\n<form action=\"[~[+id+]~]\" method=\"post\" name=\"Tovar[+id+]\" id=\"Tovar[+id+]\">\n<center><a href=\"[~[+id+]~]\"><img src=\"[(base_url)][+cart_icon+]\" width=\"138\" height=\"118\" /></a></center>\n<div class=\"dashed\">\n<h3><a href=\"[~[+id+]~]\" class=\"title\">[+pagetitle+] [+articul+]</a></h3>\n[+tsvoptions+]\n</div>\n<div class=\"clear\"></div>\nКол-во: <input type=\"number\" name=\"qty\" value=\"1\" [+tsvbattr+] />\n<div class=\"clear\"></div>\n<div class=\"dashed\">\n     <span class=\"left\"><span class=\"price\">[+tsvprice+]</span>грн.</span>\n</div>\n<div class=\"dashed dashed-flex\">\n     <a href=\"[~[+id+]~]\"><span class=\"left\">Подробнее</span></a>\n     <a href=\"javascript: void(0);\" onclick=\"AddToCart(\'[+id+]\');return false\" class=\"button right cart\">В корзину</a>\n</div>\n<div class=\"clear\"></div>\n[+tsvservices+]\n</form>\n</div>\n','0','0','1551434183','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('7','Shop_Checkout','<strong>5.4.4</strong> Шаблон корзины для оформления заказов в TSVshop','2','none','7','0','<table class=\"tsvshop\">\n\n<thead>\n<tr>	\n<th></th>\n<th>Фото</th>\n<th>Наименование товара</th>\n<th>Кол-во</th>.\n<th>Цена</th>\n<th>Итого</th>\n</tr>\n</thead>\n<tbody>\n\n<!--noempty-->\n<tr>\n<td class=\"del\"><a href=\"#\" title=\"Удалить\" [+shop.basket.delatributs+]><span class=\"cross\">x</span></a></td>\n<td class=\"icon\"><img src=\"[+shop.basket.iconpath+]\" alt=\"[+shop.basket.name+]\" width=\"90\" /></td>\n<td class=\"name\"><a href=\"[+shop.basket.link+]\">[+shop.basket.name+]</a><i>[+shop.basket.details+]</i></td>\n<td class=\"qty\">[+shop.basket.quantity+]</td>\n<td class=\"price\">[+shop.basket.price+] [+shop.basket.monetary+]</td>\n<td class=\"price\">[+shop.basket.summa+] [+shop.basket.monetary+]</td>\n</tr>\n<!--/noempty-->\n\n<!--subtotal-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Сумма:</b></td>\n<td colspan=\"1\">[+shop.basket.subtotal+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/subtotal-->\n<!--discount-->\n<tr class=\"subtotal\">\n<td colspan=\"3\"></td>\n<td colspan=\"1\">Скидка <b>[+shop.basket.discount+]</b> [+shop.basket.discountsymb+]</td>\n<td colspan=\"1\">- [+shop.basket.discountsize+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/discount-->\n<!--shipping-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Доставка:</b></td>\n<td colspan=\"1\">[+shop.basket.shipping+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/shipping-->\n<!--tax-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Налог:</b></td>\n<td colspan=\"1\">[+shop.basket.tax+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/tax-->\n<!--sertificats-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Оплата подарочным сертификатом [+shop.basket.sertificatnum+]:</b></td>\n<td colspan=\"1\">[+shop.basket.sertificatsum+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/sertificats-->\n<!--total-->\n<tr class=\"total\">\n<td colspan=\"4\"><b>К оплате:</b></td>\n<td colspan=\"1\">[+shop.basket.topay+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/total-->\n</tbody>\n</table>\n\n\n\n','0','0','1551779881','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('8','DLproduct','<strong>5.4.4</strong> Шаблон для вывода товара с помощью DocLister в TSVshop','2','none','7','0','<div class=\"product\">\n	<h2><a href=\"[~[+id+]~]\" class=\"title\">[+pagetitle+] [+tv.articul+]</a></h2>\n	<form action=\"[~[+id+]~]\" method=\"post\" name=\"[+pagetitle+]\" id=\"[+pagetitle+]\">\n		<a href=\"[~[+id+]~]\">\n			<div class=\"img-block\" style=\"background:url([(base_url)][+tv.cart_icon+]);background-repeat:no-repeat;background-size:contain;background-position: center;\"></div>\n		</a>\n		<div class=\"clear\"></div>		\n		<!-- Кол-во: <input type=\"number\" name=\"qty\" value=\"1\" [+tsvbattr+] /> -->\n		<div class=\"dashed dashed-flex\">\n			<span class=\"left\"><span class=\"price\">[+tsvprice+]</span>грн.</span>	\n			<span class=\"right\">[!star_rating? &id=`[+id+]` &readonly=`false` &tpl=`star_rating`!]</span>\n		</div>\n		<div class=\"dashed\">\n			<!-- [+tsvoptions+] -->\n		</div>\n		<!-- <div class=\"dashed dashed-flex\">\n\n			 <a href=\"javascript: void(0);\" onclick=\"AddToCart(\'[+id+]\');return false\" class=\"button right cart\">В корзину</a>\n		</div> -->\n		<div class=\"clear\"></div>\n		[+tsvservices+]\n		<div class=\"dashed-flex\">\n			<a href=\"[~[+id+]~]\" class=\"button but-bottom\"><span class=\"left\">Подробнее</span></a>\n		</div>\n	</form>\n</div>\n\n','0','0','1551559149','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('9','Shop_UserForm','<strong>5.4.4</strong> Шаблон формы для оформления заказа в TSVshop','0','none','7','0','[+validationmessage+]\n<fieldset style=\"background:#E8E9EA\">\n<form method=\"post\" action=\"[~[*id*]~]\">\n<input type=\"hidden\" name=\"formid\" value=\"TSVCheckoutForm\" />\n<p><b>Для завершения укажите некоторые данные:</b></p>\n<table>\n<tr>\n<td width=\"150\">Контактное лицо / Предприятие: </td>\n<td width=\"1%\">*</td>\n<td><input type=\"text\" name=\"fio\" id=\"b_first\" maxlength=\"75\" size=\"37\" class=\"text\" value=\"[+shop.basket.fullname+]\" eform=\"Контактное лицо / Предприятие:string:1\" /></td>\n</tr>\n<tr>\n<td>Город: </td>\n<td width=\"1%\"> </td>\n<td><input type=\"text\" name=\"city\" id=\"b_city\" maxlength=\"50\" size=\"37\" class=\"text\" value=\"\" /></td>\n</tr>\n<tr>\n<td>Адрес доставки: </td>\n<td width=\"1%\">*</td>\n<td><input type=\"text\" name=\"adress\" id=\"b_addr\" maxlength=\"75\" size=\"37\" class=\"text\" value=\"\" eform=\"Адрес доставки:string:1\" /></td>\n</tr>\n<tr>\n<td>Телефон для связи: </td>\n<td width=\"1%\">*</td>\n<td><input type=\"text\" name=\"phone\" id=\"b_phone\" maxlength=\"50\" size=\"37\" class=\"text\" value=\"[+shop.basket.phone+]\" eform=\"Телефон для связи::1\" /></td>\n</tr>\n<tr>\n<td>E-mail</td>\n<td width=\"1%\">*</td>\n<td><input type=\"text\" name=\"email\" id=\"b_email\" maxlength=\"30\" size=\"37\" class=\"text\" value=\"[+shop.basket.email+]\" eform=\"E-mail:email:1\"/></td>\n</tr>\n<!--payments-->\n<tr>\n<td valign=\"top\">Метод оплаты: </td>\n<td width=\"1%\"> </td>\n<td>[+shop.basket.fpayments+]</td>\n</tr>\n<!--/payments-->\n<!--discount-->	\n<tr>\n<td valign=\"top\">Дисконтная карта: </td>\n<td width=\"1%\"> </td>\n<td>[+shop.basket.fdiscount+]</td>\n</tr>\n<!--/discount-->\n<!--sertificats-->	\n<tr>\n<td valign=\"top\">Подарочный сертификат: </td>\n<td width=\"1%\"> </td>\n<td>[+shop.basket.fsertificats+]</td>\n</tr>\n<!--/sertificats-->\n<!--shipping-->\n<tr>\n<td valign=\"top\">Метод доставки: </td>\n<td width=\"1%\"> </td>\n<td>[+shop.basket.fshipping+]</td>\n</tr>\n<!--/shipping-->\n\n<tr>\n<td valign=\"top\">Комментарии: </td>\n<td width=\"1%\"> </td>\n<td><textarea id=\"comment\" name=\"comments\" rows=\"6\" cols=\"36\"></textarea></td>\n</tr>\n\n<tr>\n<td></td>\n<td width=\"1%\"> </td>\n<td><input type=\"submit\" value=\"Подтвердить заказ\" /></td>\n</tr></table>\n</form>\n</fieldset>\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('10','formsignup','<strong>1.1</strong> Шаблон формы регистрации в личном кабинете магазина TSVshop','0','none','8','0','<!-- #declare:separator <hr> --> \n<!-- login form section-->\n<p>Если вы еще не зарегистрированы, то можете сделать это, заполнив нижеприведенную форму.</p>\n<form method=\"post\" name=\"websignupfrm\" action=\"[+action+]\">\n<fieldset>\n<h4>Регистрация пользователя</h4> <p><small>Ячейки помеченые <span class=\"orange\">*</span> обязательны для заполнения</small></p>\n<table>\n<tr>\n<td width=\"110\">Логин</td>\n<td width=\"5\"><span class=\"orange\">*</span></td>\n<td><input type=\"text\" class=\"text\" name=\"username\" id=\"username\" size=\"20\" maxlength=\"30\" value=\"[+username+]\" /></td>\n</tr>\n<tr>\n<td>Ф.И.О</td>\n<td><span class=\"orange\"></span></td>\n<td><input type=\"text\" class=\"text\" name=\"fullname\" id=\"fullname\" size=\"20\" maxlength=\"100\" value=\"[+fullname+]\" /></td>\n</tr>\n\n<tr>\n<td>Телефон</td>\n<td><span class=\"orange\"></span></td>\n<td><input type=\"text\" class=\"text\" name=\"phone\" id=\"phone\" size=\"20\" maxlength=\"100\" value=\"[+phone+]\" /></td>\n</tr>\n<tr>\n<td>Пароль</td>\n<td><span class=\"orange\">*</span></td>\n<td><input type=\"password\" name=\"password\" class=\"text\" id=\"password\" size=\"20\" /></td>\n</tr>\n<tr>\n<td>Пароль</td>\n<td><span class=\"orange\">*</span></td>\n<td><input type=\"password\" class=\"text\" name=\"confirmpassword\" id=\"confirmpassword\" size=\"20\" /></td>\n</tr>\n\n<tr>\n<td>E-mail</td>\n<td width=\"5\"><span class=\"orange\">*</span></td>\n<td><input type=\"text\" name=\"email\" class=\"text\" id=\"email\" size=\"20\" value=\"[+email+]\" /></td>\n</tr>\n\n<tr>\n<td>Код проверки</td>\n<td><span class=\"orange\">*</span></td>\n<td><a href=\"[+action+]\"><img align=\"top\" src=\"[+manager_folder+]/includes/veriword.php\" style=\"border: 1px solid rgb(187, 187, 187); width=\"148\" height=\"60\" alt=\"Если емть проблемы с отображением кода, кликните по нему для генерации нового кода.\" style=\"border: 1px solid #039\" /></a></td>\n</tr>\n\n<tr>\n<td>Введите код</td>\n<td><span class=\"orange\">*</span></td>\n<td><input class=\"text\" type=\"text\" name=\"formcode\" class=\"text\" size=\"20\" /></td>\n</tr>\n\n<tr>\n<td> </td>\n<td></td>\n<td align=\"right\"><input type=\"submit\" class=\"button\" value=\"Регистрация\" name=\"cmdwebsignup\" /></td>\n</tr>\n</table>\n</fieldset>\n</form>\n\n<script language=\"javascript\" type=\"text/javascript\"> \n	var id = \"[+country+]\";\n	var f = document.websignupfrm;\n	var i = parseInt(id);	\n	if (!isNaN(i)) f.country.options[i].selected = true;\n</script>\n<hr>\n<!-- notification section -->\n<div class=\"success\">Заполнение завершено! Ваш аккаунт создан. К вам на почту отправлено письмо с регистрационными данными. Теперь вы можете войти, воспользовавшись вышеприведенной формой.</p>\n</div>\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('11','Shop_mail_admin','<strong>5.4.4</strong> Шаблон письма о заказе администратору в TSVshop','0','none','7','0','Был получен новый заказ. Подробности этого заказа предоставлены ниже.<br /><br />\n\nДата заказа: [+shop.mail.dateorder+]<br />\nНомер счета: <b>[+shop.mail.numorder+]</b><br />\n<br />\n-------- <br />\nДанные заказчика: <br />\nПолное наименование организации: [+shop.mail.fio+] <br />\nГород: [+shop.mail.city+] <br />\nТип доставки: [+shop.mail.shiptype+] <br />\nДисконт: Карта [+shop.mail.discountcard+] ([+shop.mail.discount+] [+shop.mail.discountsymb+]) <br />\nАдрес доставки: [+shop.mail.adress+] <br />\nТелефон для связи: [+shop.mail.phone+] <br />\nE-mail: [+shop.mail.email+] <br />\n\n-------- <br />\n <br />\n <br />\n-------- <br />\nКомментарии к заказу: <br />\n[+shop.mail.comments+]<br />\n--------- <br />\n\n<table border=\"1\" width=\"100%\"><tr><th>Артикул</th><th>Название товара</th><th>Кол-во</th><th>Цена</th></tr>\n<!--table-->\n<tr><td>[+shop.mail.articul+]</td><td><a href=\"[+shop.mail.link+]\" />[+shop.mail.name+]</a></td><td>[+shop.mail.quantity+]</td><td>[+shop.mail.price+] [+shop.mail.monetary+]</td></tr>\n<!--/table-->\n<tr><td colspan=\"3\">ПОДИТОГ:</td><td colspan=\"1\">[+shop.mail.subtotal+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">ОТГРУЗКА:</td><td colspan=\"1\">[+shop.mail.shipping+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">СКИДКА:</td><td colspan=\"1\">[+shop.mail.discountsize+] [+shop.mail.monetary+]</td></tr>\n<tr><td colspan=\"3\">ВСЕГО:</td><td colspan=\"1\">[+shop.mail.total+] [+shop.mail.monetary+]</td></tr>\n</table>\n<br />\n\n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('12','Shop_Cart','<strong>5.4.4</strong> Шаблон корзины заказов в TSVshop','2','none','7','0','<!-- <div class=\"title-block\">	\n	<div></div>\n	<div>Фото</div>\n	<div>Наименование товара</div>\n	<div>Кол-во</div>\n	<div>Цена</div>\n	<div>Итого</div>\n</div> -->\n\n<!--noempty-->\n<div class=\"item-block\">\n	<div class=\"del\"><a href=\"#\" title=\"Удалить\" [+shop.basket.delatributs+]><span class=\"cross\">x</span></a></div>\n	<div class=\"icon\"><img src=\"[+shop.basket.iconpath+]\" alt=\"[+shop.basket.name+]\" width=\"90\" /></div>\n	<div class=\"name\">\n		<a href=\"[+shop.basket.link+]\">[+shop.basket.name+]</a><i>[+shop.basket.details+]</i>\n		<!-- <div class=\"price\">[+shop.basket.price+] [+shop.basket.monetary+]</div> -->\n	</div>\n	<div class=\"qty\"><button class=\"qbuttonminus\">-</button>[+shop.basket.qinput+]<button class=\"qbuttonplus\">+</button></div>	\n	<div class=\"price\">[+shop.basket.summa+] [+shop.basket.monetary+]</div>\n</div>\n<!--/noempty-->\n<div class=\"item-price\">\n<!--subtotal-->\n\n	<!-- <div><span>Сумма:</span>[+shop.basket.subtotal+] [+shop.basket.monetary+]</div> -->\n\n<!--/subtotal-->\n<!--total-->\n	<div class=\"total\">\n		<div class=\"inner\"><span>Итого к оплате:</span>[+shop.basket.topay+] [+shop.basket.monetary+]</div>\n	</div>\n<!--/total-->\n</div>\n\n\n<!--discount-->\n<tr class=\"subtotal\">\n<td colspan=\"3\"></td>\n<td colspan=\"1\">Скидка <b>[+shop.basket.discount+]</b> [+shop.basket.discountsymb+]</td>\n<td colspan=\"1\">- [+shop.basket.discountsize+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/discount-->\n<!--shipping-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Доставка:</b></td>\n<td colspan=\"1\">[+shop.basket.shipping+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/shipping-->\n<!--tax-->\n<tr class=\"subtotal\">\n<td colspan=\"4\"><b>Налог:</b></td>\n<td colspan=\"1\">[+shop.basket.tax+] [+shop.basket.monetary+]</td>\n<td></td>\n</tr>\n<!--/tax-->\n\n\n<!--buttons-->\n<p class=\"basket-flex\">\n	<form class=\"left\" method=\"GET\" id=\"basketClearLink\">\n		<input name=\"a\" value=\"clear\" type=\"hidden\"/>\n		<a class=\"button right\" href=\"[+shop.basket.checkurl+]\">Оформить заказ</a>\n		<a href=\"javascript:void(0);\" onClick=\"getId(\'basketClearLink\').submit();\" class=\"button right\">Очистить корзину</a>\n	</form>\n</p>\n<!--/buttons-->\n\n\n\n','0','0','1551790990','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('13','Shop_FullCheckout','<strong>5.4.4</strong> Шаблон для вывода полностью сформированной страницы оформления заказа в TSVshop','2','none','7','0','<div class=\"cart-wrap\">\n	<div>\n	  [+shop.basket.checkouttable+]\n	</div>\n	 <div>\n	  [+shop.basket.userform+]\n	</div>\n</div>\n\n','0','0','1551798314','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('14','Shop_FinishText','<strong>5.4.3</strong> Шаблон сообщения об успешном оформлении заказа в TSVshop','0','none','7','0','<div class=\"success\">Поздравляем! Заказ успешно сформирован и отправлен. Через несколько минут вы получите электронное письмо с подтверждением вашего заказа и счетом. Если у вас есть какие-либо вопросы или проблемы, пишите нам на [+shop.youremail+]</div>\n\n<div class=\"notice\">Внимание! Если Вы будете писать или звонить менеджеру по поводу этого заказа, указывайте номер заказа - <b>[+shop.numorder+]</b>\n</div>\n<p>[+shop.paylink+]</p>\n\n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('15','Shop_Infoblock','<strong>5.4.4</strong> Шаблон инфоблока корзины в TSVshop','2','none','7','0','<!--full-->\n<div class=\"fullinfo\">	\n	<!--table-->\n	<div>\n		<div class=\"del\">\n			<a href=\"#\" [+shop.info.delatributs+]>\n				<span class=\"cross\">x</span>\n			</a>\n		</div>\n		<div class=\"icon\">\n			<img src=\"[+shop.info.iconpath+]\" width=\"90\">\n		</div>\n		<div class=\"name\">\n			<div>\n				<a href=\"[+shop.info.link+]\">[+shop.info.name+]</a>\n				<i>[+shop.info.details+]</i>\n			</div>\n		</div>\n		<div class=\"price\">\n			<div>\n				<i>[+shop.info.price+] <span>грн.</span></i>\n			</div>\n		</div>\n	</div>	\n	<!--/table-->\n</div>\n<!-- <div><a class=\"left\" href=\"[+shop.info.selfurl+]&a=clear\">Очистить</a> <a class=\"button right\" href=\"[+shop.info.carturl+]\">В корзину</a></div> -->\n<div>\n	<a class=\"button left\" id=\"close-window\" href=\"javascript:void(0);\" onclick=\"$(\'#header .rbcont\').fadeOut();$(\'.mask-wrap\').fadeOut();\">Продолжить покупки</a>\n	<!-- <form class=\"left\" method=\"get\" id=\"basketClearLink\">\n		<input name=\"a\" value=\"clear\" type=\"hidden\"/>\n		<a href=\"javascript:void(0);\" onClick=\"getId(\'basketClearLink\').submit();\">Очистить</a>\n	</form>  -->\n	<a class=\"button right\" href=\"[+shop.info.carturl+]\">В корзину</a></div>\n<div class=\"clear\"></div>\n<!--/full-->\n\n<!--empty-->\n<p class=\"info-empty\" >[+shop.info.sempty+]</p>\n<!--/empty-->\n\n','0','0','1551689532','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('16','Shop_PrintOrder','<strong>5.4.4</strong> Шаблон печати товарного чека/накладной в TSVshop','0','none','7','0','<table border=\"0\" cellpadding=\"2\" cellspacing=\"0\" style=\"width: 100%;\">\n<tbody>\n<tr>\n<td align=\"left\">\n    <p><medium><b>Магазин такой-то</b><br /><b>Адрес:</b> такой-то &nbsp;<br /><b>Телефон:</b> 000-00-00&nbsp;<b>Сайт:</b> site.com</medium></p>\n</td>\n<td align=\"right\">Logo</td>\n</tr>\n</tbody>\n</table><br />\n \n<table border=\"0\" cellpadding=\"4\" cellspacing=\"4\">\n<tbody>\n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Заказчик:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.fio+]</td>\n</tr>\n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Дата заказа:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.datecreate+]</td>\n</tr>\n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Адрес:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.city+], [+shop.order.adress+]</td>\n</tr>    \n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Телефон:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.phone+]</td>\n</tr>\n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Метод оплаты:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.payments+]</td>\n</tr>    \n<tr>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\"><b>Метод доставки:</b></td>\n<td height=\"3\" style=\"border: 1pt solid #000000;\" align=\"left\">[+shop.order.shiptype+]</td>\n</tr>    \n</tbody>\n</table>    \n \n<h2><center><b>Товарно-кассовый чек N:</b>&nbsp; [+shop.order.numorder+] от [+shop.order.datecreate+]</center></h2>\n \n<table border=\"0\" cellpadding=\"4\" cellspacing=\"4\" width=\"100%\">\n<tbody>\n<tr bgcolor=\"#E2E2E2\">\n<td colspan=\"2\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>№</b></td>\n<td colspan=\"4\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>Арт.</b></td>\n<td colspan=\"17\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>Наименование товара</b></td>\n<td colspan=\"3\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>Кол-во</b></td>\n<td colspan=\"4\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>Цена</b></td>\n<td colspan=\"5\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>Сумма</b></td>\n \n</tr>\n<!--table-->\n<tr>\n<td colspan=\"2\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.num+]</td>\n<td colspan=\"4\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.id+]</td>\n<td colspan=\"17\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"left\">[+shop.order.name+]</td>\n<td colspan=\"3\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.qty+]</td>\n<td colspan=\"4\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.price+] руб.</td>\n<td colspan=\"5\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.summa+] руб.</td>\n</tr>\n<!--/table-->\n<tr>\n    <td colspan=\"30\" style=\"border: 1pt solid #000000; border-right:1; border-top:1;\" align=\"right\" bgcolor=\"#ffffff\"><b>Скидка по дисконтной карте или промокоду: </b>&nbsp; [+shop.order.discount+] [+shop.order.discountsymb+] </td>\n    <td colspan=\"5\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.discountsize+] руб.</td>\n</tr>\n<tr>\n    <td colspan=\"30\" style=\"border: 1pt solid #000000; border-right:1; border-top:1;\" align=\"right\" bgcolor=\"#ffffff\"><b>Доставка: </b>&nbsp; [+shop.order.shiptype+]</td>\n    <td colspan=\"5\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\">[+shop.order.shipping+] руб.</td>\n</tr>    \n<tr bgcolor=\"#E2E2E2\">\n    <td bgcolor=\"#E2E2E2\" colspan=\"30\" style=\"border: 1pt solid #000000; border-right:1; border-top:1;\" align=\"right\" bgcolor=\"#ffffff\"><b>Итого к оплате:</b>&nbsp; [+shop.order.total_propis+]</td>\n    <td bgcolor=\"#E2E2E2\" colspan=\"5\" style=\"border: 1pt solid #000000; border-right:1;\" align=\"center\"><b>[+shop.order.total+] руб.</b></td>\n</tr>\n</tbody>\n</table>\n<b>Количество товара:</b>&nbsp;[+shop.order.count+]&nbsp;шт.<br />\n<span size=\"10\" style=\"font-size: medium;\">С внешним видом содержимого заказа ознакомлен(а). Количество проверено. Претензий не имею.</span><br />\n<span size=\"5\" style=\"font-size: medium;\">Товар надлежащего качества возвращаем в течение 14 дней с момента покупки при условии сохранения товарного вида и потребительских свойств</span><br /><br />\nДата покупки ____________________&nbsp;\n<br />\nПодпись покупателя ____________________&nbsp;<br /><br /\n\n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('17','weblogin','<strong>1.1</strong> Шаблон формы авторизации в личном кабинете магазина TSVshop','0','none','8','0','<!-- #declare:separator <hr> --> \n<!-- login form section-->\n<fieldset>\n<form method=\"post\" name=\"loginfrm\" action=\"[+action+]\" style=\"margin: 0px; padding: 0px;\"> \n<h4>Вход для клиентов</h4> <p><small>Важно: маленькие и большие буквы различаются</small></p>\n<input type=\"hidden\" value=\"[+rememberme+]\" name=\"rememberme\" /> \n<table>\n<tr>\n<td width=\"115\">Логин: </td><td><input type=\"text\" name=\"username\" tabindex=\"2\" onkeypress=\"return webLoginEnter(document.loginfrm.password);\" class=\"text\" value=\"[+username+]\" onfocus=\"this.value=(this.value==\'Логин\')? \'\' : this.value ;\"  /> </td>\n</tr>\n<tr>\n<td>Пароль: </td><td><input type=\"password\" name=\"password\" tabindex=\"3\" onkeypress=\"return webLoginEnter(document.loginfrm.cmdweblogin);\" class=\"text\" value=\"Пароль\" onfocus=\"this.value=(this.value==\'Пароль\')? \'\' : this.value ;\" /></td>\n</tr>\n<tr>\n<td colspan=\"2\" style=\"text-align:right\">\n <label for=\"chkbox\" style=\"cursor:pointer\">Запомнить меня:&nbsp; </label> <input type=\"checkbox\" id=\"chkbox\" name=\"chkbox\" tabindex=\"4\" size=\"1\" value=\"\" [+checkbox+] onClick=\"webLoginCheckRemember()\" />&nbsp;&nbsp;<input type=\"submit\" class=\"submit\" name=\"cmdweblogin\" value=\"Войти\" />\n\n</td>\n</tr>\n\n<tr>\n<td colspan=\"2\">\n<a href=\"#\" onclick=\"webLoginShowForm(2);return false;\"><small>Забыли пароль?</small></a> \n</td>\n</tr>\n</table>\n		</form>\n</fieldset>\n<hr>\n<!-- log out hyperlink section -->\n<a href=\'[+action+]\'>[+logouttext+]</a><br />\n<a href=\'[~15~]\'>Редактирование профиля</a>\n<hr>\n<!-- Password reminder form section -->\n<fieldset>\n<b>Напоминание забытого пароля</b><br />\n<form name=\"loginreminder\" method=\"post\" action=\"[+action+]\">\n<input type=\"hidden\" name=\"txtpwdrem\" value=\"0\" />\n<p>Введите Ваш email адрес для восстановления пароля:</p>\n<input type=\"text\" class=\"text\" name=\"txtwebemail\" /><br />\n<input type=\"submit\" class=\"submit\" value=\"Напомнить\" name=\"cmdweblogin\" /> \n<input type=\"reset\" class=\"submit\" value=\"Отмена\" name=\"cmdcancel\" onclick=\"webLoginShowForm(1);\" />\n</form>\n</fieldset>','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('18','feedback','<strong>1.0</strong> форма обратной связи','0','none','39','0','[!eForm? &formid=`feedbackForm` &subject=`Сообщение с сайта` &tpl=`eFeedbackForm` &report=`eFeedbackReport` &gotoid=`[*id*]` &vericode=`1` !] \n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('19','eFeedbackForm','<strong>1.0</strong> eFeedbackForm Шаблон формы обратной связи','0','none','39','0','<p><span style=\"color:#900;\">[+validationmessage+]</span></p>\n\n<form  class=\"eform\" method=\"post\" action=\"[~[*id*]~]\">\n\n<input type=\"hidden\" name=\"formid\" value=\"feedbackForm\" />\n<input value=\"\" name=\"special\" class=\"special\" type=\"text\" eform=\"Спец:date:0\"  style=\"display:none;\" />\n<p>\n    <input type=\"text\" name=\"name\" id=\"name\" class=\"grid_3\" value=\"\"  eform=\"Имя:string:1\"/>\n    <label for=\"name\">Ваше имя</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"email\" id=\"email\" class=\"grid_3\" value=\"\" eform=\"E-mail:email:1\" />\n    <label for=\"email\">Ваш E-mail</label>\n</p>\n            \n<p>\n    <input type=\"text\" name=\"phone\" id=\"subject\" class=\"grid_3\" value=\"\" eform=\"Номер телефона:string:1\"/>\n    <label for=\"subject\">Номер телефона</label>\n</p>\n            \n<p>\n    <textarea name=\"comments\" id=\"message\" class=\"grid_6\" cols=\"50\" rows=\"10\" eform=\"Текст сообщения:string:1\"></textarea>\n</p>\n<p>Введите код с картинки: <br />\n    <input type=\"text\" class=\"ver\" name=\"vericode\" /><img class=\"feed\" src=\"[+verimageurl+]\" alt=\"Введите код\" />\n</p>            \n<p>\n    <input type=\"submit\" name=\"submit\" class=\"subeform grid_2\" value=\"Отправить сообщение\"/>\n </p>\n\n</form>\n\n\n \n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('20','eFeedbackReport','<strong>1.0</strong> eFeedbackReport  шаблон отправки на почту','0','none','39','0','<p>Прислано человеком, с именем: [+name+] . Подробности ниже:</p>\n<table>\n<tr valign=\"top\"><td>Имя:</td><td>[+name+]</td></tr>\n<tr valign=\"top\"><td>E-mail:</td><td>[+email+]</td></tr>\n<tr valign=\"top\"><td>Номер телефона:</td><td>[+phone+]</td></tr>\n<tr valign=\"top\"><td>Текст сообщения:</td><td>[+comments+]</td></tr>\n</table>\n<p>Можно использовать ссылку для ответа: <a href=\"mailto:[+email+]?subject=RE:[+subject+]\">[+email+]</a></p>\n\n','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('21','header_meta','','2','none','41','0','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=[(modx_charset)]\" />\n	<title>[*longtitle*]</title>\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n	<link rel=\"shortcut icon\" href=\"img/favicon.ico\" type=\"image/x-icon\">\n	<meta name=\"keywords\" content=\"\" />\n	<meta name=\"description\" content=\"\" />\n	<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.2/css/all.css\">\n	<link href=\"https://fonts.googleapis.com/css?family=Cinzel\" rel=\"stylesheet\">\n	<link href=\"https://fonts.googleapis.com/css?family=Titillium+Web\" rel=\"stylesheet\">\n	<link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900\" rel=\"stylesheet\">\n	<link rel=\"stylesheet\" href=\"/assets/templates/demoshop/css/style.css\" type=\"text/css\" media=\"screen, projection\" />\n	<link rel=\"stylesheet\" href=\"/assets/templates/css/slick.css\" type=\"text/css\" />\n	<link rel=\"stylesheet\" href=\"/assets/templates/css/slick-theme.css\" type=\"text/css\" />\n	<base href=\"[(base_url)]\" />\n</head>\n<body>','0','1551340417','1551801247','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('22','flexslider-js','<strong>2.0</strong> include js for flexslider multitv','2','none','40','0','<script type=\"text/javascript\" src=\"/assets/templates/common/js/flexslider/jquery.flexslider-min.js\"></script>\n<script type=\"text/javascript\">\n   (function($) {\n      $(window).load(function(){\n      $(\'.flexslider\').flexslider({\n        animation: \"slide\",\n        start: function(slider){\n          $(\'body\').removeClass(\'loading\');\n        }\n      });\n    });\n   })(jQuery);\n</script>','0','0','1551347511','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('23','flexslider-css','<strong>2.0</strong> include css for flexslider multitv','0','none','40','0','<link rel=\"stylesheet\" type=\"text/css\" href=\"/assets/templates/common/js/flexslider/flexslider.css\" media=\"screen\" />','0','0','0','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('24','slider_tpl','','2','none','0','0','<div class=\"item\">\n	<div class=\"img\"><img src=\"[+image+]\" alt=\"\"></div>\n</div>','0','1551347271','1551347271','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('25','footer_meta','','2','none','41','0','<script src=\"assets/templates/js/jquery-3.3.1.min.js\"></script>\n<script src=\"assets/templates/js/slick.min.js\"></script>\n<script src=\"assets/templates/js/script.js\"></script>\n</body>\n</html>','0','1551347303','1551455103','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('26','slider','','2','none','0','0','<div class=\"slider-block\">\n	<div class=\"slick-slider\" id=\"slick-slider\">\n		[!multiTV?\n		&tvName=`main_slider`\n		&docid=`[*id*]`\n		&tplConfig=``\n		&outerTpl=`[+wrapper+]`\n		&rowTpl=`banner-slide`\n		&display=`all`\n		!]\n	</div>\n	{{sellbox}}\n</div>	','0','1551355132','1551798738','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('27','banner-slide','','2','none','0','0','<div>\n	<div class=\"image-block\" style=\"background:url([+image+]);background-repeat:no-repeat;background-size:100%;background-position: center;\">\n		<div class=\"mask\">\n			<div class=\"title\">\n				[+title+]\n			</div>\n			<div class=\"text\">\n				[+text+]\n			</div>	\n			<div class=\"button-block\">\n				<a href=\"#\" class=\"button-buy\">Купить!</a>\n			</div>\n		</div>\n	</div>\n</div>','0','1551355319','1551359714','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('28','sellbox','','2','none','0','0','<section id=\"sellbox\">\n	<div class=\"wrapper\">\n		<a href=\"#\" class=\"selllink\">\n			<div class=\"xiaomi-box box\">\n				<div class=\"mask\">\n					<div class=\"title\">Xiaomi</div>\n					<div class=\"models\">Redmi, Redmi Note, Mi, Mi Mix, Mi MAX</div>\n					<div class=\"inner\">Перейти в категорию -></div>\n				</div>	\n			</div>\n		</a>	\n		<a href=\"#\" class=\"selllink\">\n			<div class=\"samsung-box box\">\n				<div class=\"mask\">\n					<div class=\"title\">Samsung</div>\n					<div class=\"models\">Galaxy S, Galaxy Note, J, A, Galaxy A</div>\n					<div class=\"inner\">Перейти в категорию -></div>\n				</div>\n			</div>\n		</a>	\n		<a href=\"#\" class=\"selllink\">\n			<div class=\"xiaomi-box box\">\n				<div class=\"mask\">\n					<div class=\"title\">Xiaomi</div>\n					<div class=\"models\">Redmi, Redmi Note, Mi, Mi Mix, Mi MAX</div>\n					<div class=\"inner\">Перейти в категорию -></div>\n				</div>\n			</div>\n		</a>	\n		<a href=\"#\" class=\"selllink\">\n			<div class=\"samsung-box box\">\n				<div class=\"mask\">\n					<div class=\"title\">Xiaomi</div>\n					<div class=\"models\">Redmi, Redmi Note, Mi, Mi Mix, Mi MAX</div>\n					<div class=\"inner\">Перейти в категорию -></div>\n				</div>\n			</div>\n		</a>\n	</div>\n</section>','0','1551427339','1551429067','0');

INSERT INTO `idlq_site_htmlsnippets` VALUES ('29','star_rating','','2','none','0','0','<div class=\"star-rating-container[+class+]\">\n    <div class=\"star-rating\" id=\"star-rating-[+id+]\" data-rating=\"[+rating+]\" data-id=\"[+id+]\" data-disabled=\"[+readOnly+]\" data-on=\"[+starOn+]\" data-off=\"[+starOff+]\" data-path=\"[+imagesPath+]\" data-stars=\"[+stars+]\" data-type=\"[+starType+]\"></div>\n    <!-- <div class=\"star-rating-info\">\n       <span>Рейтинг: <span class=\"star-rating-rating\">[+rating+]</span> / [+stars+](<span class=\"star-rating-votes\">[+votes+]</span>)</span>\n    </div> -->\n</div>','0','1551446854','1551559285','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `idlq_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `idlq_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `idlq_site_modules`
#

INSERT INTO `idlq_site_modules` VALUES ('1','Extras','<strong>0.1.3</strong> first repository for Evolution CMS','0','0','4','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');

INSERT INTO `idlq_site_modules` VALUES ('2','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','4','0','0','','0','','0','0','docman435243542tf542t5t','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `idlq_site_modules` VALUES ('3','TSVshop','<strong>5.4.4</strong> Модуль управления магазином TSVshop','0','0','7','0','0','','0','','0','0','','0','','define(\'IN_TSVSHOP_MODE\',\'true\');\n//-- get theme\nglobal $theme, $shop_lang, $tables, $addonspath, $basePath, $siteURL, $moduleid, $modulea, $tsvshop, $cache;\ndefine(\"TSVSHOP_PATH\", MODX_BASE_PATH.\"assets/snippets/tsvshop/\");\ndefine(\"TSVSHOP_URL\", MODX_BASE_URL.\"assets/snippets/tsvshop/\");\ndefine(\"TSVSHOP_SURL\", MODX_SITE_URL.\"assets/snippets/tsvshop/\");\n$tb_prefix = $modx->db->config[\'table_prefix\'];\n$theme = $modx->db->select(\'setting_value\', \'`\' . $tb_prefix . \'system_settings`\', \'setting_name=\\\'manager_theme\\\'\', \'\');\n$theme = $modx->db->getRow($theme);\n$theme = ($theme[\'setting_value\'] <> \'\') ? \'/\' . $theme[\'setting_value\'] : \'\';\n$moduletheme = ($modx->config[\'manager_theme\'] != \'default\') ? \'base\' : $modx->config[\'manager_theme\'];\n$basePath = $modx->config[\'base_path\'];\n$siteURL = $modx->config[\'site_url\'];\n$addonspath = $basePath.\"assets/snippets/tsvshop/addons/\";\n$path = $siteURL.MGR_DIR.\"/index.php\"; \n$tables = array(); \n$tsvshop = array();\n\n\n$moduleid = $_GET[\'id\'];\n$modulea = $_GET[\'a\'];\n$act = $_GET[\'act\'];\ninclude_once (TSVSHOP_PATH.\'admin/lang/\' . $modx->config[\'manager_language\'] . \'.inc.php\');\nrequire_once ($basePath.MGR_DIR.\'/includes/protect.inc.php\');\nif (!file_exists(TSVSHOP_PATH.\'include/config.inc.php\')) {\n	rename(TSVSHOP_PATH.\'include/config.inc.blank.php\', TSVSHOP_PATH.\'include/config.inc.php\');\n}\nif (!file_exists(TSVSHOP_PATH.\'js/config.js\')) {\n	rename(TSVSHOP_PATH.\'js/config.blank.js\', TSVSHOP_PATH.\'js/config.js\');\n}\ninclude_once (TSVSHOP_PATH.\'include/config.inc.php\');\ninclude_once (TSVSHOP_PATH.\'admin/includes/core.inc.php\');\nif (file_exists(TSVSHOP_PATH.\'include/version.inc.php\')) {\n   include_once (TSVSHOP_PATH.\'include/version.inc.php\');\n}\n\nif (!$cache) {\n    include_once $basePath . \'assets/snippets/tsvshop/include/cache.class.php\';\n    $cache = fileCache::GetInstance(3600,MODX_BASE_PATH.\'assets/cache/\');\n}\n\n//запуск печати накладной\nif(!empty($_GET[\'i\']) && !empty($_GET[\'act\']) && $_GET[\'act\']==\'printorder\') {\n	$tsvshop = $cache->cache(\'tsvshop\',\'tsvshop\');\n    //шаблон можно переопределить, задав его здесь в $tplprintorder\n    //т.е. $tplprintorder=\'файл шаблона/имя чанка\';\n    require_once(TSVSHOP_PATH.\'addons/sales/includes/printorder.php\');\n	exit;\n}\n\n\nif (!$folders = $cache->cache(\'folders\',\'tsvshop\')) {\n  $folders = scandir($addonspath,1);\n  //выставляем аддон Заказы первым в списке\n  $sales = array_search(\'sales\', $folders);\n  if ($sales!=0) {\n   $folders[$sales] = $folders[0];\n   $folders[0] = \'sales\';\n  }\n  $cache->cache(\'folders\',\'tsvshop\',$folders);\n}\n\n//$folders=array_reverse($folders,true);\nforeach ($folders as $folder) {\n         if ($folder != \".\"  && $folder != \"..\" ) {\n                 $lfile=$addonspath.$folder.\'/lang/\' . $modx->config[\'manager_language\'] . \'.inc.php\';\n                 if (file_exists($lfile)) {\n                     include_once ($lfile);\n                 }\n                 $file = $addonspath.$folder.\'/includes/functions.inc.php\';\n                     if (file_exists($file)) {\n                         include_once($file);\n                     }\n         }\n}\n\ninclude_once ($basePath . \'assets/snippets/tsvshop/addons/sales/includes/options.inc.php\');\n\ninclude_once ($basePath . \'assets/snippets/tsvshop/admin/template/header.inc.php\');\n//top button\ninclude_once ($basePath . \'assets/snippets/tsvshop/admin/template/topbutton.inc.php\');\nif (!isset($tsvshop[\'addons_config_active\'])) $output.=notice($shop_lang[\'config_noconfig\'], \'error\');\n$output.= \'\n<div class=\"sectionBody\">\n    <div class=\"tab-pane\" id=\"resourcesPane\">\n        <script type=\"text/javascript\">\n        tpResources = new WebFXTabPane( document.getElementById( \"resourcesPane\" ) );\n        </script>\';\n\n// выводим аддоны\nforeach ($folders as $folder) {\n         if ($folder != \".\"  && $folder != \"..\" ) {\n                 $file = $addonspath.$folder.\'/main.inc.php\';\n                 if (getConf(\"addons\", $folder.\"_active\")==\"yes\" || $tables[$folder]==\"system\") {\n                     include_once ($addonspath.$folder.\'/lang/\' . $modx->config[\'manager_language\'] . \'.inc.php\');\n                     if (file_exists($file)) {\n                         require_once($file);\n                     }\n                 }\n         }\n}\n\n$output.= \'</div></div></body></html>\';\nreturn $output;\n\n\n');

INSERT INTO `idlq_site_modules` VALUES ('4','Star Rating','','0','0','0','0','0','','0','','1551435921','1551435921','6790ae1655ef70be1e0218bec42962ee','0','{}','include MODX_BASE_PATH . \'assets/snippets/star_rating/starrating.module.php\';');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `idlq_site_plugin_events`
#

INSERT INTO `idlq_site_plugin_events` VALUES ('1','3','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','20','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','85','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','87','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','88','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','91','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('1','92','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','25','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','27','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','37','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','39','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','43','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','45','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','49','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','51','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','55','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','57','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','75','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','77','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','206','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','210','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('2','211','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('3','3','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('3','13','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('3','28','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('3','31','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('3','92','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('4','4','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('4','79','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('4','90','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('4','1000','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','34','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','35','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','36','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','40','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','41','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('5','42','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('6','70','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('6','202','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('6','1000','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','23','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','29','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','35','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','41','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','47','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','73','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('7','88','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('8','100','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('9','202','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('10','80','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('10','81','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('10','93','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','28','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','29','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','30','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','31','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','35','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','53','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('11','205','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('12','1029','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('12','89','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('13','82','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('14','202','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('15','23','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('12','19','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('16','4','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('16','79','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('16','90','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('16','1000','0');

INSERT INTO `idlq_site_plugin_events` VALUES ('17','3','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `idlq_site_plugins`
#

INSERT INTO `idlq_site_plugins` VALUES ('1','TinyMCE4','<strong>4.7.4</strong> Javascript rich text editor','0','4','0','\n/**\n * TinyMCE4\n *\n * Javascript rich text editor\n *\n * @category    plugin\n * @version     4.7.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal    @properties &styleFormats=Custom Style Formats <b>RAW</b><br/><br/><ul><li>leave empty to use below block/inline formats</li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2</i></li><li>Also accepts full JSON-config as per TinyMCE4 docs / configure / content-formating / style_formats</li></ul>;textarea; &styleFormats_inline=Custom Style Formats <b>INLINE</b><br/><br/><ul><li>will wrap selected text with span-tag + css-class</li><li>simple-format only</li></ul>;textarea;InlineTitle,cssClass1|InlineTitle2,cssClass2 &styleFormats_block=Custom Style Formats <b>BLOCK</b><br/><br/><ul><li>will add css-class to selected block-element</li><li>simple-format only</li></ul>;textarea;BlockTitle,cssClass3|BlockTitle2,cssClass4 &customParams=Custom Parameters<br/><b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled &paste_as_text=<b>Force Paste as Text</b>;list;enabled,disabled;disabled\n * @internal    @events OnLoadWebDocument,OnParseDocument,OnWebPagePrerender,OnLoadWebPageCache,OnRichTextEditorRegister,OnRichTextEditorInit,OnInterfaceSettingsRender\n * @internal    @modx_category Manager and Admin\n * @internal    @legacy_names TinyMCE Rich Text Editor\n * @internal    @installset base\n * @logo        /assets/plugins/tinymce4/tinymce/logo.png\n * @reportissues https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Plugin docs https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Official TinyMCE4-docs https://www.tinymce.com/docs/\n * @author      Deesen\n * @lastupdate  2018-01-17\n */\nif (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('2','ElementsInTree','<strong>1.5.10</strong> Get access to all Elements and Modules inside Manager sidebar','0','4','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';','0','{\n  \"adminRoleOnly\": [\n    {\n      \"label\": \"Administrators only\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"treeButtonsInTab\": [\n    {\n      \"label\": \"Tree buttons in tab\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1551270598');

INSERT INTO `idlq_site_plugins` VALUES ('3','Quick Manager+','<strong>1.5.10</strong> Enables QuickManager+ front end content editing support','0','4','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.10\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;false &noconflictjq=jQuery noConflict mode in front-end;list;true,false;false &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;navButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  02/02/2018 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"navButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"navButtons\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('4','userHelper','<strong>1.8.1</strong> addition to FormLister','0','5','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.8.1\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600 &trackWebUserActivity=Track web user activity;list;No,Yes;No\n * @internal    @events OnWebAuthentication,OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @modx_category Content\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('5','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('6','Updater','<strong>0.8.5</strong> show message about outdated CMS version','0','4','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';','0','{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evolution-cms\\/evolution\",\"default\":\"evolution-cms\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}],\"stableOnly\":[{\"label\":\"Offer upgrade to stable version only:\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('7','CodeMirror','<strong>1.5</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)','0','4','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.5\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('8','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('9','OutdatedExtrasCheck','<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6','0','4','0','/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.6\n *\n * @category	plugin\n * @version     1.4.6\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\n','0','{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('10','Forgot Manager Login','<strong>1.1.7</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('11','ManagerManager','<strong>0.6.3</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','4','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.3\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  22/01/2018\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');\n','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('12','TSVсlearCache','<strong>0.02</strong> Сброс кеша магазина TSVshop','0','7','0','if(!function_exists(\"TSVclearCache\"))\n{\n    function TSVclearCache($dir) {\n	if ($objs = glob($dir.\"/*\")) {\n		foreach($objs as $obj) {\n			is_dir($obj) ? TSVclearCache($obj) : unlink($obj);\n		}\n	}\n	rmdir($dir);\n    }\n}\n\nglobal $modx;\n$e=&$modx->Event;\n$action=$e->params[\"action\"];\nif ($action==26 || $e->name == \'OnCacheUpdate\') {\n	$dir=MODX_BASE_PATH.\'assets/cache/t/\';\n  if (file_exists($dir)) {\n	    TSVclearCache($dir);\n  }\n}\n\nif ($e->name == \'TSVshopOnViewItemCard\') { \n  // плагин получает\n  // $itemid  - ID товара\n  // $type - тип товара: docs - документ MODx, catalog - из каталога TSVcatalog\n}\n','0','','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('13','ContactSettings','<strong>1.0</strong> <strong>1.0.x</strong> Plugin to add contacts system settings','0','9','0','/*\nContactSettings\nauthor Nicola Lambathakis (www.tattoocms.it) based on customSettings by Andchir <andchir@gmaail.com>\n\n/*\n&settings=Settings;textarea;Site owner~site_owner||Site e-mail~site_mail||Site Copyright~site_copyright||Company name~company_name||Company IVA/VAT~company_iva||Company e-mail~company_mail||Company Phone~company_phone||Company Fax~company_fax||Company address~company_address||Icq~chat_icq||Msn~chat_msn||Facebook~social_facebook||Twitter~social_twitter||Googleplus~social_googleplus||Youtube~social_youtube||Linkedin~social_linkedin  &pname=title;text;\n*/\n\n\n\n$e = &$modx->Event;\n$output = \"\";\nif ($e->name == \'OnSiteSettingsRender\'){\n$settingsArr = !empty($settings) ? explode(\'||\',$settings) : array(\'Example custom setting~custom_st_example\');\n$fname = !empty($pname) ? $pname : \'Contact Settings\';\n$output .= \'</td></tr></table></div><div style=\"display: block;\" class=\"tab-page\" id=\"tabPage8\"><h2 class=\"tab\">\'.$fname.\'</h2><script type=\"text/javascript\">tpSettings.addTabPage( document.getElementById( \"tabPage8\" ) );</script><table border=\"0\" cellpadding=\"3\" cellspacing=\"0\"><tbody>\';\nforeach($settingsArr as $key => $st_row){\n    $st_label_arr = explode(\'~\',$st_row);\n    $custom_st_label = trim($st_label_arr[0]);\n    $custom_st_name = isset($st_label_arr[1]) ? $st_label_arr[1] : \'custom_st\';\n    $custom_st_value = isset($st_label_arr[1]) && isset($modx->config[$st_label_arr[1]]) ? trim($modx->config[$st_label_arr[1]]) : \'\';\n $output .= \'<tr><td class=\"warning\" nowrap=\"\">\'.$custom_st_label.\'</td>\n        <td><input type=\"text\" value=\"\'.$custom_st_value.\'\" name=\"\'.$custom_st_name.\'\" style=\"width: 350px;\" onchange=\"documentDirty=true;\" /></td><td>placeholder: [(\'.$custom_st_name.\')]</td></tr><tr><td colspan=\"2\"><div class=\"split\"/></td></tr>\';\n}\n$output .= \'</tbody></table>\';\n}\n$e->output($output);\n','0','{\"settings\":[{\"label\":\"Settings\",\"type\":\"textarea\",\"value\":\"Site owner~site_owner||Site e-mail~site_mail||Site Copyright~site_copyright||Company name~company_name||Company IVA\\/VAT~company_iva||Company e-mail~company_mail||Company Phone~company_phone||Company Fax~company_fax||Company address~company_address||Icq~chat_icq||Msn~chat_msn||Facebook~social_facebook||Twitter~social_twitter||Googleplus~social_googleplus||Youtube~social_youtube||Linkedin~social_linkedin\",\"default\":\"Site owner~site_owner||Site e-mail~site_mail||Site Copyright~site_copyright||Company name~company_name||Company IVA\\/VAT~company_iva||Company e-mail~company_mail||Company Phone~company_phone||Company Fax~company_fax||Company address~company_address||Icq~chat_icq||Msn~chat_msn||Facebook~social_facebook||Twitter~social_twitter||Googleplus~social_googleplus||Youtube~social_youtube||Linkedin~social_linkedin\",\"desc\":\"\"}],\"pname\":[{\"label\":\"title\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('14','TSVshopNotifier','<strong>1.1</strong> Оповещения от модуля TSVshop на главной странице админки MODx (TSVshopNotifier plugin for MODx Evolution)','0','7','0','$e = &$modx->Event;\nswitch($e->name){\n    case \'OnManagerWelcomeHome\':\n		$count = $modx->db->getValue(\n			$modx->db->select(\"COUNT(*)\",$modx->getFullTableName(\'shop_order\'),\"status=\'Новый\'\")\n		);\n		$module_id = $modx->db->getValue(\n			$modx->db->select(\"id\",$modx->getFullTableName(\'site_modules\'),\"name=\'TSVshop\'\")\n		);\n		if (!empty($count)){\n			$body = \'Новых заказов: <a href=\"/\'.MGR_DIR.\'/index.php?a=112&id=\'.$module_id.\'\">\'.$count.\'</a>\';\n		} else {\n			$body = \'Новых заказов нет\';\n		}\n                                \n        $widgets[\'neworders\'] = array(\n            \'menuindex\' =>\'3\',\n            \'id\' => \'neworders\',\n            \'cols\' => \'col-sm-12\',\n            \'icon\' => \'fa-shopping-bag\',\n            \'title\' => \'Новые заказы\',\n            \'body\' => \'<div class=\"card-body\">\'.$body.\'</div>\'\n        );\n	/*$widgets[\'shopstat\'] = array(\n            \'menuindex\' =>\'4\',\n            \'id\' => \'shopstat\',\n            \'cols\' => \'col-sm-6\',\n            \'icon\' => \'fa-rss\',\n            \'title\' => \'Статистика\',\n            \'body\' => \'<div class=\"card-body\">Статистика заказов</div>\'\n        );*/\n        $e->output(serialize($widgets));\n    break;\n}\n\n','0','','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('15','HINTx','<strong>0.01</strong> add hints to chunks & templates editors (плагин для вывода подсказок при редактировании чанков и шаблонов)','0','7','0','if(!isset($hintx_path)) require_once MODX_BASE_PATH.\'assets/plugins/hintx/hintx.php\';\n\n\n','0','','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('16','userHelper','<strong>1.8.2</strong> addition to FormLister','0','5','0','require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `idlq_site_plugins` VALUES ('17','Search Highlight','<strong>1.5</strong> Used with AjaxSearch to show search terms highlighted on page linked from search results','0','42','0','/*\n  ------------------------------------------------------------------------\n  Plugin: Search_Highlight v1.5\n  ------------------------------------------------------------------------\n  Changes:\n  18/03/10 - Remove possibility of XSS attempts being passed in the URL\n           - look-behind assertion improved\n  29/03/09 - Removed urldecode calls;\n           - Added check for magic quotes - if set, remove slashes\n           - Highlights terms searched for when target is a HTML entity\n  18/07/08 - advSearch parameter and pcre modifier added\n  10/02/08 - Strip_tags added to avoid sql injection and XSS. Use of $_REQUEST\n  01/03/07 - Added fies/updates from forum from users mikkelwe/identity\n  (better highlight replacement, additional div around term/removal message)\n  ------------------------------------------------------------------------\n  Description: When a user clicks on the link from the AjaxSearch results\n    the target page will have the terms highlighted.\n  ------------------------------------------------------------------------\n  Created By:  Susan Ottwell (sottwell@sottwell.com)\n               Kyle Jaebker (kjaebker@muddydogpaws.com)\n\n  Refactored by Coroico (www.evo.wangba.fr) and TS\n  ------------------------------------------------------------------------\n  Based off the the code by Susan Ottwell (www.sottwell.com)\n    http://forums.modx.com/thread/47775/plugin-highlight-search-terms\n  ------------------------------------------------------------------------\n  CSS:\n    The classes used for the highlighting are the same as the AjaxSearch\n  ------------------------------------------------------------------------\n  Notes:\n    To add a link to remove the highlighting and to show the searchterms\n    put the following on your page where you would like this to appear:\n\n      <!--search_terms-->\n\n    Example output for this:\n\n      Search Terms: the, template\n      Remove Highlighting\n\n    Set the following variables to change the text:\n\n      $termText - the text before the search terms\n      $removeText - the text for the remove link\n  ------------------------------------------------------------------------\n*/\nglobal $database_connection_charset;\n// Conversion code name between html page character encoding and Mysql character encoding\n// Some others conversions should be added if needed. Otherwise Page charset = Database charset\n$pageCharset = array(\n  \'utf8\' => \'UTF-8\',\n  \'latin1\' => \'ISO-8859-1\',\n  \'latin2\' => \'ISO-8859-2\'\n);\n\nif (isset($_REQUEST[\'searched\']) && isset($_REQUEST[\'highlight\'])) {\n\n  // Set these to customize the text for the highlighting key\n  // --------------------------------------------------------\n     $termText = \'<div class=\"searchTerms\">Search Terms: \';\n     $removeText = \'Remove Highlighting\';\n  // --------------------------------------------------------\n\n  $highlightText = $termText;\n  $advsearch = \'oneword\';\n\n  $dbCharset = $database_connection_charset;\n  $pgCharset = array_key_exists($dbCharset,$pageCharset) ? $pageCharset[$dbCharset] : $dbCharset;\n\n  // magic quotes check\n  if (get_magic_quotes_gpc()){\n    $searched = strip_tags(stripslashes($_REQUEST[\'searched\']));\n    $highlight = strip_tags(stripslashes($_REQUEST[\'highlight\']));\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags(stripslashes($_REQUEST[\'advsearch\']));\n  }\n  else {\n    $searched = strip_tags($_REQUEST[\'searched\']);\n    $highlight = strip_tags($_REQUEST[\'highlight\']);\n    if (isset($_REQUEST[\'advsearch\'])) $advsearch = strip_tags($_REQUEST[\'advsearch\']);\n  }\n\n  if ($advsearch != \'nowords\') {\n\n    $searchArray = array();\n    if ($advsearch == \'exactphrase\') $searchArray[0] = $searched;\n    else $searchArray = explode(\' \', $searched);\n\n    $searchArray = array_unique($searchArray);\n    $nbterms = count($searchArray);\n    $searchTerms = array();\n    for($i=0;$i<$nbterms;$i++){\n      // Consider all possible combinations\n      $word_ents = array();\n      $word_ents[] = $searchArray[$i];\n      $word_ents[] = htmlentities($searchArray[$i], ENT_NOQUOTES, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_COMPAT, $pgCharset);\n      $word_ents[] = htmlentities($searchArray[$i], ENT_QUOTES, $pgCharset);\n      // Avoid duplication\n      $word_ents = array_unique($word_ents);\n      foreach($word_ents as $word) $searchTerms[]= array(\'term\' => $word, \'class\' => $i+1);\n    }\n\n    $output = $modx->documentOutput; // get the parsed document\n    $body = explode(\"<body\", $output); // break out the head\n\n    $highlightClass = explode(\' \',$highlight); // break out the highlight classes\n    /* remove possibility of XSS attempts being passed in URL */\n    foreach ($highlightClass as $key => $value) {\n       $highlightClass[$key] = preg_match(\'/[^A-Za-z0-9_-]/ms\', $value) == 1 ? \'\' : $value;\n    }\n\n    $pcreModifier = ($pgCharset == \'UTF-8\') ? \'iu\' : \'i\';\n    $lookBehind = \'/(?<!&|&[\\w#]|&[\\w#]\\w|&[\\w#]\\w\\w|&[\\w#]\\w\\w\\w|&[\\w#]\\w\\w\\w\\w|&[\\w#]\\w\\w\\w\\w\\w)\';  // avoid a match with a html entity\n    $lookAhead = \'(?=[^>]*<)/\'; // avoid a match with a html tag\n\n    $nbterms = count($searchTerms);\n    for($i=0;$i<$nbterms;$i++){\n      $word = $searchTerms[$i][\'term\'];\n      $class = $highlightClass[0].\' \'.$highlightClass[$searchTerms[$i][\'class\']];\n\n      $highlightText .= ($i > 0) ? \', \' : \'\';\n      $highlightText .= \'<span class=\"\'.$class.\'\">\'.$word.\'</span>\';\n\n      $pattern = $lookBehind . preg_quote($word, \'/\') . $lookAhead . $pcreModifier;\n      $replacement = \'<span class=\"\' . $class . \'\">${0}</span>\';\n      $body[1] = preg_replace($pattern, $replacement, $body[1]);\n    }\n\n    $output = implode(\"<body\", $body);\n\n    $removeUrl = $modx->makeUrl($modx->documentIdentifier);\n    $highlightText .= \'<br /><a href=\"\'.$removeUrl.\'\" class=\"ajaxSearch_removeHighlight\">\'.$removeText.\'</a></div>\';\n\n    $output = str_replace(\'<!--search_terms-->\',$highlightText,$output);\n    $modx->documentOutput = $output;\n  }\n}','0','','1','','0','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_snippets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `idlq_site_snippets`
#

INSERT INTO `idlq_site_snippets` VALUES ('1','DocInfo','<strong>0.4.1</strong> Take any field from any document (fewer requests than GetField)','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('2','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('3','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('4','FormLister','<strong>1.8.2</strong> Form processor','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('5','DLSitemap','<strong>1.0.1</strong> Snippet to build XML sitemap','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('6','DocLister','<strong>2.4.1</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('7','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('8','DLMenu','<strong>1.4.0</strong> Snippet to build menu with DocLister','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('9','phpthumb','<strong>1.3.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('10','TSVshop_options','<strong>5.4.4</strong> Сниппет вывода разных параметров товара, влияющих на цену в TSVshop','0','7','0','//select=123:синий==0||зеленый==0||красный==0;option=123:синий==0||зеленый==0||красный==0;\n//select=Цвет:синий==0||зеленый==0||красный==0;option=Что_то:минимум==0||стандарт==0||расширенный==0;option=Что-то:минимум==-10||*стандарт ==0||расширенный==0;\ninclude ($modx->config[\'base_path\'] . \'assets/snippets/tsvshop/include/config.inc.php\');\n\n$docid = isset($docid) ? $docid : \'\';\n\n$first_selected = isset($first_selected) ? $first_selected : true;\n$wraptag = isset($wraptag) ? $wraptag : false;\n$function = \'Ucalc(\'.$docid.\')\';\n\nif ($tsvshop[\'TypeCat\']==\"catalog\") {\n$res=$modx->db->query(\"SELECT * FROM \".$modx->getFullTableName(\'test_products\').\" WHERE `id` = \".$docid.\" LIMIT 1\");\nif ($res) {\n    $row=$modx->db->getRow($res);\n    $tv_txt = $row[\'tsvshop_param\'];\n} else {\n    $tv_txt =\"\";\n}\n} else {\n$tv_txt = $modx->getTemplateVarOutput(\'tsvshop_param\',$docid);\n$tv_txt=$tv_txt[\'tsvshop_param\'];\n}\n$n = strpos($tv_txt, \";\");\n$tv_cnt=0;\n\nif (!$n && strlen($tv_txt)>3){\n $n=strlen($tv_txt);\n}\n\nwhile ($n!=false){\n   $tv_cnt++;\n   $n_s=0;\n   $str_temp=substr($tv_txt, $n_s,$n-$n_s);\n   $tv_txt=substr($tv_txt, $n+1);\n\n   $sub_name=\"\";\n   $format=\"select\";\n\n   if (substr($str_temp,0,6)==\"select\") {\n       $format = \'select\';\n       $n_s=6;\n   }else   if (substr($str_temp,0,5)==\"radio\") {\n         $format = \'radio\';\n         $n_s=5;\n   } else   if (substr($str_temp,0,8)==\"checkbox\") {\n         $format = \'checkbox\';\n         $n_s=8;\n   } else{\n    echo(\"=<\");\n    echo($str_temp);\n    echo(\">=\");\n   };\n\n   $subnameAttr=\"\";\n   if(substr($str_temp,$n_s,2)==\"==\"){\n       $n_s+=2;\n       $n = strpos($str_temp, \":\");\n       $sub_name=(substr($str_temp,$n_s,$n-$n_s));\n       $n_s=$n;\n       echo(\"<span class=\'Shop_option_name\'>\".$sub_name.\"</span>\");\n	   $subnameAttr=\"data-subname=\\\"$sub_name\\\"\";\n   };\n   $str_temp=substr($str_temp, $n+1);\n\n$tvname=\"Shop_\".$tv_cnt;\n$tvout=$str_temp;\n\nswitch($format){\n  case \"select\":\n	  $options = \"\";\n	  $count = 0;\n	  $value = !empty($tvout) ? explode(\"||\",$tvout) : array();\n	  foreach($value as $val){\n	    $count++;\n	    list($item,$itemvalue) = explode(\"==\",$val);\n\n            $selected=\"\";\n             if(substr($item,0,1)==\"*\"){\n               $selected = \"selected\";\n               $item =substr($item,1);\n             };\n\n	     $options .= \"\\n  <option value=\\\"\".$itemvalue.\"==\".$item.\"\\\" $selected>$item</option>\";\n    }\n	  $o = !empty($options) ? \"\\n<select $subnameAttr class=\\\"addparam\\\" name=\\\"\".$tvname.\"\\\" onchange=\\\"\".$function.\"\\\">$options\\n</select>\\n\" : \"\";\n  break;\n\n  case \"radio\":\n	  $output = \"\";\n	  $otag = $wraptag ? \"<$wraptag>\" : \"\";\n	  $ctag = $wraptag ? \"</$wraptag>\" : \"\";\n	  $value = !empty($tvout) ? explode(\"||\",$tvout) : array();\n	  $count = 0;\n	  foreach($value as $val){\n	    $count++;\n	    list($item,$itemvalue) = explode(\"==\",$val);\n\n            $selected=\"\";\n            if(substr($item,0,1)==\"*\"){\n               $selected = \' checked=\"checked\" \';\n               $item =substr($item,1);\n            };\n	    $output .= \"\\n  $otag<label><input $subnameAttr class=\\\"addparam\\\" type=\\\"radio\\\" name=\\\"\".\n	    	$tvname.\"\\\" value=\\\"\".$itemvalue.\"==\".$item.\"\\\" id=\\\"radio\".$docid.\"__\".$count.\"\\\" $selected onclick=\\\"\".\n	    	$function.\"\\\" /> $item \";\n	    	// если вместо разницы в цене вписать переопределение цены:\n	    	// например price=100\n	    	// param=\"10\"\n	    	// можно вписать param=\"*0+110\"\n	    	// в таком случае к тексту параметра припишется переопределенная цена в скобках.\n	    	$getPrice=explode(\"*0+\",$itemvalue);\n	    	if (count($getPrice)>1)  $output .= \"<span class=\\\"priceAddData\\\">(\".($getPrice[1]).\" \".$tsvshop[\"MonetarySymbol\"].\")</span>\";\n	    $output .= \"</label>$ctag\";\n    }\n    $o = $output.\"\\n\";\n  break;\n\n  case \"checkbox\":\n	  $output = \"\";\n	  $otag = $wraptag ? \"<$wraptag>\" : \"\";\n	  $ctag = $wraptag ? \"</$wraptag>\" : \"\";\n	  $value = !empty($tvout) ? explode(\"||\",$tvout) : array();\n	  $count = 0;\n	  foreach($value as $val){\n	    $count++;\n	    list($item,$itemvalue) = explode(\"==\",$val);\n\n        $selected=\"\";\n        if(substr($item,0,1)==\"*\"){\n            $selected = \' checked=\"checked\" \';\n            $item =substr($item,1);\n        };\n	    $output .= \"\\n  $otag<input $subnameAttr class=\\\"addparam\\\" type=\\\"checkbox\\\" name=\\\"\".$tvname.\"\\\" value=\\\"\".$itemvalue.\"==\".$item.\"\\\"\n\nid=\\\"radio\".$docid.\"__\".$count.\"\\\" $selected onclick=\\\"\".$function.\"\\\" /> <label for=\\\"radio\".$docid.\"__$count\\\">$item</label>$ctag\";\n    }\n    $o = $output.\"\\n\";\n  break;\n}\n\necho $o.\"<br>\";\n\n$n = strpos($tv_txt, \";\");\n}\n\necho \'<input type=\"hidden\" name=\"OptionText\" value=\"\'.$tv_cnt.\'\">\';','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('11','WebLogin','<strong>1.2</strong> Allows webusers to login to protected pages in the website, supporting multiple user groups','0','10','0','return require MODX_BASE_PATH.\'assets/snippets/weblogin/snippet.weblogin.php\';\n','0','{\"loginhomeid\":[{\"label\":\"Login Home Id\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"logouthomeid\":[{\"label\":\"Logout Home Id\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"logintext\":[{\"label\":\"Login Button Text\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"logouttext\":[{\"label\":\"Logout Button Text\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"tpl\":[{\"label\":\"Template\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('12','TSVshopPrepare','<strong>1.0</strong> Сниппет для подготовки чанка товара к выводу с помощью DocLister','0','7','0','/* \n это сниппет выполняет те же функции, что и екстендер shop: обрабатывает и выводит товары для модуля TSVshop\n он позволяет выводить цену товара в зависимости от группы, к которой принаджлежит авторизованный пользователь\n для этого у товара добавляется несколько TV-параметров с ценами для разных веб-групп, напр., price_group1, price_group2 и т.д.\n в вызове DocLister параметр gtp , в котором задается такая формула:\n имя_веб_группы1=имя_tv_с_ценой1;имя_веб_группы2=имя_tv_с_ценой2.\n если &gtp не указан, то берется цена из TV price\n\n Пример вызова с разными ценами (только необходимые параметры): \n [[DocLister? &parents=`30` &prepare=`TSVshopPrepare` &gtp=`gropname1=tvprice_group1;gropname2=tvprice_group2` &tvList=`cart_icon,price,typeitem,tsvshop_param`]]\n  \n Самый простой вызов для вывода товаров из папки с ИД 30:\n [[DocLister? &parents=`30` &prepare=`TSVshopPrepare` &tvList=`cart_icon,price,typeitem,tsvshop_param` ]]\n \n*/\nglobal $tvprice, $allGroups, $modx, $tvPrefix; \n\nif(!function_exists(\'tsv_MemberCheck\')) {	\n		function tsv_MemberCheck() {\n			global $modx;\n			$allGroups = array ();\n			$tableName = $modx->getFullTableName(\'webgroup_names\');\n			$sql = \"SELECT name FROM $tableName\";\n			if ($rs = $modx->db->query($sql)) {\n				while ($row = $modx->db->getRow($rs)) {\n					array_push($allGroups, stripslashes($row[\'name\']));\n				}\n			}\n			$_SESSION[\'allGroups\'] = $allGroups;\n		}\n}\n\nif(!function_exists(\'tsv_isValidGroup\')) {	\n		function tsv_isValidGroup($groupName) {\n			global $modx, $allGroups;\n			$isValid = !(array_search($groupName, $allGroups) === false);\n			return $isValid;\n		}	\n}	\n\n$tvList = $_DocLister->getCFGDef(\'tvList\');\n$tvList = (!empty($tvList)) ? implode(\',\',array_unique(explode(\',\',$tvList.\',\'.\'cart_icon,price,typeitem\'))) : \'cart_icon,price,typeitem\'; \n\n$gtp = $_DocLister->getCFGDef(\'gtp\');	\n$tvPrefix = $_DocLister->getCFGDef(\'tvPrefix\');\n$tvPrefix = (!empty($tvPrefix)) ? $tvPrefix.\".\" : \'tv.\';\n$gtp = (isset($gtp)) ? $gtp : \"\";\n$allGroups = (isset($_SESSION[\'allGroups\'])) ? $_SESSION[\'allGroups\'] : tsv_MemberCheck(); //все имеющиеся группы\n$usergroups = $modx->isMemberOfWebGroup($allGroups); //авторизован ли пользователь и относится ли к какой-то группе?\n$tvprice = (empty($gtp) || !$usergroups) ? $tvPrefix.\"price\" : \"\"; // если нет группы либо нет параметра $gtp, tvprice = price\n\nif (empty($tvprice)) {\n  $gtptmp = explode(\';\',trim($gtp));\n  foreach ($gtptmp as $val) {\n    $gtpdata = explode(\'=\',trim($val));\n	if (tsv_isValidGroup($gtpdata[0]) && $modx->isMemberOfWebGroup(array($gtpdata[0]))) {\n      $tvprice = $gtpdata[1];\n    }\n  }\n  $tvprice = (empty($tvprice)) ? $tvPrefix.\"price\" : $tvPrefix.$tvprice;\n}\n\n\n\nif(!function_exists(\'tsvservices\')) {\n        function tsvservices($data) {\n				global $tvprice,$tvPrefix;\n                return \'<input type=\"hidden\" name=\"typeitem\" value=\"\'.$data[$tvPrefix.\'typeitem\'].\'\" /><input type=\"hidden\" name=\"formula\" value=\"\'.$data[$tvprice].\'\" /><input type=\"hidden\" name=\"cart_icon\" value=\"[(base_url)]\'.$data[$tvPrefix.\'cart_icon\'].\'\" />\';\n        }\n}\n\nif(!function_exists(\'tsvprice\')) {\n        function tsvprice($data) {\n				global $tvprice,$tvPrefix;\n                require(MODX_BASE_PATH.\"assets/snippets/tsvshop/include/config.inc.php\");\n                $decimal = ($tsvshop[\'PriceFormat\']==\"0\" || $tsvshop[\'PriceFormat\']==\"\") ? 0 : 2;\n                $price = number_format(floatval($data[$tvprice]), $decimal, \'.\', \'\');\n                //return \'<span id=\"price\'.$data[\'id\'].\'\" class=\"tsvprice\">\'.tsv_CalcPrice($data[\'price\'], 1, tsv_parseOptions($data[\'tsvshop_param\'])).\'</span>\';\n                return \'<span id=\"price\'.$data[\'id\'].\'\" class=\"tsvprice\">\'.number_format(tsv_CalcPrice($data[$tvprice], 1, tsv_parseOptions($data[$tvPrefix.\'tsvshop_param\'])), $decimal, \'.\', \'\').\'</span>\';\n        }\n}\n\nif(!function_exists(\'tsvoptions\')) {\n        function tsvoptions($data) {\n          global $modx;\n          return $modx->runSnippet(\'TSVshop_options\',array(\'docid\'=>$data[\'id\']));\n        }\n}\n\nif(!function_exists(\'tsvbutton\')) {\n        function tsvbutton($data) {\n                return \'onkeypress=\"return testKey(event)\" onChange=\"Ucalc(\\\'\'.$data[\'id\'].\'\\\')\"\';\n        }\n}\n\nif(!function_exists(\"tsv_ConvertPrice\"))\n{\nfunction tsv_ConvertPrice($txt) {\n            if (strpos($txt, \"||\") === false) {\n                echo str_replace(\'\\r\\n\',\'\',$txt);\n            } else {\n                //$pieces = explode(\"||\", $txt);  //было\n                $pieces = explode(\"||\", \"||\".$txt);\n                $i = 0;\n                $o = \"\";\n                $o2 = \"\";\n                foreach($pieces as $value) {\n                    $i++;\n                    if (strlen($value) > 0) {\n                        $pos = strpos($value, \"-\");\n                        if ($pos != false) {\n                            $tmp = substr($value, 0, $pos);\n                            $o.= \"(( \" . $tmp . \"<=&#36n & \";\n                            $pos2 = strpos($value, \"==\");\n                            $tmp = substr($value, $pos + 1, $pos2 - $pos - 1);\n                            $o.= $tmp . \">=&#36n)?( \";\n                            $o2.= \"))\";\n                            $tmp = substr($value, $pos2 + 2);\n                            $o.= $tmp . \" ):( \";\n                        } else {\n                            $tmp = $value;\n                            $o.= $tmp;\n                        }\n                    }\n                }\n                unset($tv);\n                unset($value);\n                unset($pieces);\n                return \"=\" . $o . $o2;\n            }\n}\n}\n\nif(!function_exists(\"tsv_TryCalc\"))\n{\nfunction tsv_TryCalc($cod,$col) {\n	global $modx;\n        $cod = str_replace(\' \', \'\', $cod);\n        $cod = str_replace(\',\', \'.\', $cod);\n        $cod = str_replace(\'\\r\\n\', \'\', $cod);\n        //if (strpos($cod, \"||\")){\n	if (strpos($cod, \"==\") || strpos($cod, \"||\")){\n            $cod=tsv_ConvertPrice($cod);\n            $a=\"\";\n            $cod=str_replace(\"&#36n\", $col, $cod);\n            $cod=str_replace(\"$n\", $col, $cod);\n            if (!$cod) {$cod=\"\\\"\\\"\";}\n            if(substr($cod, -1)==\'+\')$cod.=\'0\';\n            eval(\"\\$a\".$cod.\";\");\n            return ($a*1);\n       } else {\n            if (!$cod) {$cod=\"\\\"\\\"\";}\n            if(substr($cod, -1)==\'+\')$cod.=\'0\';\n            eval(\"\\$a=\".$cod.\";\");\n            return ($a*1);\n       }\n}\n}\n\nif(!function_exists(\"tsv_CalcPrice\"))\n{\nfunction tsv_CalcPrice($price, $col, $opt) {\n  //$opt = (!preg_match(\"/[^(\\w)|(\\+)|(\\*)|(\\-)|(\\/)]/\",$opt[0])) ? \"+\".$opt : $opt;\n	$price = tsv_TryCalc($price, $col);\n	$opt = str_replace(\" \",\"+\", $opt);\n	$opt = str_replace(\"#\",\"*\", $opt);\n	$price = tsv_TryCalc($price.$opt, $col);\n  return $price;\n}\n} \n\nif(!function_exists(\"tsv_parseOptions\")) {\nfunction tsv_parseOptions($opt) {\n   $price = 0;\n   $fprice = 0;\n   $i=0;\n   $price=\'\';\n   if (is_array($txt = explode(\";\", $opt))) {\n     foreach ($txt as $sel1) {\n        $option = explode(\":\", $sel1);\n        $sel3 = explode(\"||\",$option[1]);\n        foreach($sel3 as $sel4) {\n           $res = explode(\"==\",$sel4);\n           if ($res[0]{0} == \"*\") {\n			 if (!in_array($res[1]{0},array(\'+\', \'-\',\'/\',\'*\')))$res[1]=\'+\'.$res[1];\n             $price.= $res[1];\n           }\n           if ($i==0) { $fprice = $res[1]; }\n           $i++;\n        }\n     }\n   }\n   $price = ($i>0) ? $price : $fprice;\n   return $price; \n}\n}\n\n\n\n$data[\'tsvservices\'] = tsvservices($data);\n$data[\'tsvprice\'] = tsvprice($data);\n$data[\'tsvoptions\'] = tsvoptions($data);\n$data[\'tsvbattr\'] = tsvbutton($data);\n$data[\'pagetitle\'] = $data[\'pagetitle\'];\nreturn $data;\n?>','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('13','WebChangePwd','<strong>1.1.2</strong> Allows Web User to change their password from the front-end of the website','0','10','0','# Set Snippet Paths \n$snipPath  = (($modx->isBackend())? \"../\":\"\");\n$snipPath .= \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n	return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl		= isset($tpl)? $tpl:\"\";\n\n# System settings\n$isPostBack		= count($_POST) && isset($_POST[\'cmdwebchngpwd\']);\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/webchangepwd.inc.php\";\n\n# Return\nreturn $output;\n\n\n\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('14','TSVshopLastViews','<strong>2.0</strong> Сниппет истории просмотренных товаров для TSVshop','0','7','0','/*\n* ВНИМАНИЕ:\n* Сниппет нужно вызывать на всех страницах, которые нужно учитывать в историю просмотра, а также там, где нужно выводить эту историю.\n* Страница, где нет вызова сниппета, не будет учитываться в историю. Если на ней не нужно выводить историю, а только учесть ее, нужно \n* указать в вызове сниппет параметр &mode=`save`\n*\n* placeholders\n* [+count_recent+] - кол-во просмотренных ресурсов\n* [+lines+] - наименования\n* [+unset+] - ссылка на сброс истории просмотра\n* [+itemId+] - ИД ресурса\n* [+itemPageTitle+] - название ресурса pagetitle\n*\n* &id = ИД вызова (при нескольких вызовах сниппета на странице, для предотвращения конфликта)\n* &mode = режим вывода: список ИД (значение: ids), \n		  сформированный html (значение: html), \n		  ничего не выводит - (значение: save), если нужно только учесть документ в историю, но ничего не выводить\n* &templateID = список ИД шаблонов страницы, к которым применять историю\n* &tpl = имя чанка с контейнером, куда выводится наименования ресурсов\n* &itemTpl = имя чанка, выводящего каждое наименование ресурса\n* &limit = кол-во выводимых в истории ресурсов (по-умолчанию 5)\n* &toPH = если равно 1, то выводит результат выполнения сниппета в плейсхолдер id.output  (id - это то, что указано в &id)\n*/\n\n$docid = $modx->documentIdentifier;\n$tpl = isset($tpl) ? $modx->getChunk($tpl) : \'<div class=\"recent\">[+count_recent+]<ul>[+lines+]</ul></div>\';\n$templateID = isset($templateID) ? $templateID : \'4\';\n$id = isset($id) ? $id : \'\';\n$prefix = isset($id) ? $id.\'.\' : \'\';\n$toPH = isset($toPH) ? $toPH : \'0\';\n$mode = isset($mode) ? $mode : \'ids\'; // ids - выводит только ИД документов через запятую, иначе - сформированный HTML-код\n$itemTpl = isset($itemTpl) ? $modx->getChunk($itemTpl) : \'<li><a target=\"_blank\" href=\"[~[+itemId+]~]\">[+itemPageTitle+]</a></li>\';\n$limit = isset($limit) ? $limit : 5;\n$unset = \'<a class=\"unset_recent\" href=\"[~[*id*]~]&unset=recent\">очистить</a>\'; //$count=1;\n$ch = $modx->getDocument($docid);\n$temp = explode(\',\', $templateID);\n\nif(!empty($_GET[\'unset\']) && $_GET[\'unset\']==\'recent\') {\nunset($_SESSION[$id.\'goods\']);\n}\n\nforeach($temp as $value)\n{\n	if ($ch[\'template\'] == $value)\n	{\n		if (is_array($_SESSION[$id.\'goods\'][\'viewed\']))\n		{\n			if (!in_array($docid, $_SESSION[$id.\'goods\'][\'viewed\']))\n			{\n				$_SESSION[$id.\'goods\'][\'viewed\'][] = $docid;\n			}\n		}\n		else\n		{\n			$_SESSION[$id.\'goods\'][\'viewed\'] = array();\n      $_SESSION[$id.\'goods\'][\'viewed\'][] = $docid;\n		}\n	}\n}\n\nif (count($_SESSION[$id.\'goods\'][\'viewed\']) > $limit)\n{\n	array_shift($_SESSION[$id.\'goods\'][\'viewed\']);\n}\n\nif (is_array($_SESSION[$id.\'goods\'][\'viewed\']))\n{\n	$SV = array_reverse($_SESSION[$id.\'goods\'][\'viewed\']);\n	foreach($SV as $itemId)\n	{\n		$res = $modx->getDocument($itemId); //get need resource\n		$tp.= str_replace(array(\n			\'[+itemId+]\',\n			\'[+itemPageTitle+]\'\n		) , array(\n			$res[\'id\'],\n			$res[\'pagetitle\']\n		) , $itemTpl);\n	}\n\n	$count = count($SV);\n	$modx->setPlaceholder($prefix.\'count_recent\', $count);\n	$modx->setPlaceholder($prefix.\'lines\', $tp);\n	$modx->setPlaceholder($prefix.\'unset\', $unset);\n	$output = $tpl;\n}\n\nif (!empty($SV))\n{\n	if ($mode==\'ids\' || empty($mode)) {\n    return ($toPH) ? $modx->setPlaceholder($prefix.\'output\',$res) : $res;\n	} else if ($mode==\'html\') {\n    return ($toPH) ? $modx->setPlaceholder($prefix.\'output\',$output) : $output;\n	} else if ($mode==\'save\') {\n		return;\n	} else return;\n}\n\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('15','WebSignup','<strong>1.1.2</strong> Basic Web User account creation/signup system','0','10','0','# Set Snippet Paths \n$snipPath = $modx->config[\'base_path\'] . \"assets/snippets/\";\n\n# check if inside manager\nif ($m = $modx->isBackend()) {\n    return \'\'; # don\'t go any further when inside manager\n}\n\n\n# Snippet customize settings\n$tpl = isset($tpl)? $tpl:\"\";\n$useCaptcha = isset($useCaptcha)? $useCaptcha : $modx->config[\'use_captcha\'] ;\n// Override captcha if no GD\nif ($useCaptcha && !gd_info()) $useCaptcha = 0;\n\n# setup web groups\n$groups = isset($groups) ? array_filter(array_map(\'trim\', explode(\',\', $groups))):array();\n\n# System settings\n$isPostBack        = count($_POST) && isset($_POST[\'cmdwebsignup\']);\n\n$output = \'\';\n\n# Start processing\ninclude_once $snipPath.\"weblogin/weblogin.common.inc.php\";\ninclude_once $snipPath.\"weblogin/websignup.inc.php\";\n\n# Return\nreturn $output;','0','{\"tpl\":[{\"label\":\"Template\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('16','TSVoffice','<strong>1.1</strong> Сниппет для создания личного кабинета в TSVshop','0','8','0','global $tsvshop;\ninclude_once $modx->config[\'base_path\'].\"assets/snippets/tsvshop/include/config.inc.php\";\ninclude_once $modx->config[\'base_path\'].\"assets/snippets/tsvoffice/tsvoffice.inc.php\";\n?>','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('17','TSVshop','<strong>5.4.4</strong> Сниппет магазина TSVshop','0','7','0','define(\"TSVSHOP_PATH\", MODX_BASE_PATH.\"assets/snippets/tsvshop/\");\ndefine(\"TSVSHOP_URL\", MODX_BASE_URL.\"assets/snippets/tsvshop/\");\ndefine(\"TSVSHOP_SURL\", MODX_SITE_URL.\"assets/snippets/tsvshop/\");\ndefine(\"TSVSHOP_PUREPATH\", \"assets/snippets/tsvshop/\");\ndefine(\'IN_TSVSHOP_MODE\',\'true\');\n\nglobal $cache, $session, $tsvshop, $shop_lang, $tables, $folders, $jsfiles;\n//$tsvshop = array();\n$jsfiles = array();\n\ninclude TSVSHOP_PATH.\"include/config.inc.php\";\ninclude_once (TSVSHOP_PATH. \'admin/includes/core.inc.php\');\ninclude_once (TSVSHOP_PATH. \'include/cart.inc.php\'); \ninclude TSVSHOP_PATH.\"include/tsvshop.inc.php\";\nsession_write_close();\nsession_set_cookie_params(\"\",\'/\');\nsession_name($session);\nsession_start();\ntsv_minregjs();\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('20','eForm','<strong>1.4.9</strong> Robust form parser/processor with validation, multiple sending options, chunk/page support for forms and reports, and file uploads','0','39','0','return require MODX_BASE_PATH.\'assets/snippets/eform/snippet.eform.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('18','WebLoginPE','<strong>1.3.1</strong> WebLoginPE started off as a rewrite of the MODx weblogin snippet so I could make an AJAX login for my site.','0','39','0','return require MODX_BASE_PATH.\'assets/snippets/webloginpe/webloginpe.snippet.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('19','Ditto','<strong>2.1.4</strong> Summarizes and lists pages to create blogs, catalogs, PR archives, bio listings and more','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/ditto/snippet.ditto.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('21','Wayfinder','<strong>2.0.6</strong> Completely template-driven and highly flexible menu builder','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/wayfinder/snippet.wayfinder.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('22','Breadcrumbs','<strong>1.0.5</strong> Configurable breadcrumb page-trail navigation','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/breadcrumbs/snippet.breadcrumbs.php\';','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('23','multiTV','<strong>2.0.15</strong> Custom Template Variabe containing a sortable multi item list or a datatable','0','5','0','return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('24','AjaxSearch','<strong>1.12.1</strong> Ajax and non-Ajax search that supports results highlighting','0','42','0','return require MODX_BASE_PATH.\'assets/snippets/ajaxSearch/snippet.ajaxSearch.php\';\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('25','anythingRating','<strong>1.0.1</strong> Ajax Dynamic Star Rating','0','5','0','global $modx;\n\n// anythingRating version being executed\ndefine(\'ATR_VERSION\', \'1.0.1\');\n\n// Path where anythingRating is installed\ndefine(\'ATR_SPATH\', \'assets/snippets/anythingRating/\');\n\n//==============================================================================\n//include snippet file\ndefine (\'ATR_PATH\', MODX_BASE_PATH . ATR_SPATH);\n\n$output = \"\";\ninclude(ATR_PATH.\'includes/snippet.anythingRating.inc.php\');\n\n//Ouput Results\nreturn $output;\n','0','','','0','0','0');

INSERT INTO `idlq_site_snippets` VALUES ('26','star_rating','','0','0','0','\nreturn require MODX_BASE_PATH . \'assets/snippets/star_rating/snippet.php\';','0','{}',' ','1551435905','1551446880','0');

INSERT INTO `idlq_site_snippets` VALUES ('27','sitemap','<strong>1.0.11</strong> google-sitemap.xml','0','43','0','return require MODX_BASE_PATH.\'assets/snippets/sitemap/snippet.sitemap.php\';','0','','','0','0','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `idlq_site_templates`
#

INSERT INTO `idlq_site_templates` VALUES ('4','Карточка товара','<strong>5.3</strong> Шаблон для карточки товара','0','38','','0','{{header_meta}}\n<div id=\"wrapper\">\n	{{header}}	\n	<div id=\"middle\" style=\"padding-top:100px;\">\n		<h3 class=\"title\">[*pagetitle*]</h3>\n		<div id=\"container\">\n			<div id=\"content\">\n				<div class=\"cbox\">\n					<div  style=\"float:left; width:200px\">\n						<center><img src=\"[*cart_icon*]\" width=\"120\" /></center>\n						[!TSVshop? &act=`itemcard`!]\n						<form action=\"[~[*id*]~]\" method=\"post\" name=\"Tovar[*id*]\" id=\"Tovar[*id*]\">\n							[+tsvoptions+]\n							<div class=\"clear\"></div>\n							<div class=\"dashed\">\n								<span class=\"left\"><span class=\"price\">[+tsvprice+]</span> грн.</span>\n								<a href=\"javascript: void(0);\" onclick=\"AddToCart(\'[*id*]\');return false\" class=\"button right\">В корзину</a>\n							</div>\n							<div class=\"clear\"></div>\n							[+tsvservices+]\n\n						</form>\n					</div>\n					<div style=\"margin-left:240px\">[*content*][*demotext*]</div>\n				</div>\n				<div class=\"clear\"></div>			\n			</div><!-- #content-->\n		</div><!-- #container-->		\n	</div><!-- #middle-->\n	{{sellbox}}	\n</div><!-- #wrapper -->\n\n<div id=\"footer\">\n</div><!-- #footer -->\n\n{{footer_meta}}','0','1','0','1551451449');

INSERT INTO `idlq_site_templates` VALUES ('5','Основной','','0','38','','0','{{header_meta}}\n<div id=\"wrapper\">\n	{{header}}\n	<div id=\"middle\" class=\"header-pad\">\n		<h3 class=\"title\">[!DocInfo? &docid=`id` &field=`pagetitle`!]</h3>\n		<div id=\"container\">	\n			<div id=\"popular\">\n				<div class=\"cataloglist\">\n					[[DocLister? \n						&tpl=`DLproduct` \n						&parents=`[*id*]` \n						&depth=`10` \n						&prepare=`TSVshopPrepare`\n						&tvList=`cart_icon,price,typeitem,tsvshop_param`\n					]]\n				</div>\n			</div>	\n		</div><!-- #content-->\n	</div><!-- #container-->\n\n	 \n\n	</div><!-- #middle-->\n\n</div><!-- #wrapper -->\n\n<div id=\"footer\">\n</div><!-- #footer -->\n\n{{footer_meta}}','0','1','0','1551525962');

INSERT INTO `idlq_site_templates` VALUES ('6','Главная','','0','38','','0','{{header_meta}}\n\n<div id=\"wrapper\">\n	{{header}}\n	{{slider}}\n	<div id=\"middle\">\n		<h3 class=\"title\">[!DocInfo? &docid=`16` &field=`pagetitle`!]</h3>\n		<div id=\"container\">			\n			<div id=\"popular\">\n				<div class=\"cataloglist\">\n					[[DocLister? \n						&tpl=`DLproduct` \n						&parents=`17` \n						&depth=`10` \n						&prepare=`TSVshopPrepare` \n						&tvList=`cart_icon,price,typeitem,tsvshop_param`\n					]]\n				</div>\n			</div>			\n			\n		</div><!-- #container-->\n\n	</div><!-- #middle-->\n</div><!-- #wrapper -->\n<div id=\"footer\">\n	\n</div><!-- #footer -->\n\n{{footer_meta}}','0','1','0','1551798469');

INSERT INTO `idlq_site_templates` VALUES ('8','Feed данных','','0','0','','0','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:g=\"http://base.google.com/ns/1.0\">\n	<channel>\n		<title>ЧП \"Агро-захист\"</title>\n		<link>https://agro-zahist.od.ua/</link>\n		<g:description>RSS 2.0 product data feed</g:description>\n		<item>\n			<g:id>300978803</g:id>\n			<g:title>Сезар биологический инсектицид широкого спектра действия </g:title>\n			<g:description>Сезар - биологический инсектоакарацид широкого спектра,предназначен для борьбы с такими вредителями как : растительноядные клещи,колорадский жук,репная и капустная совка,пилильщики листовертки,гусеницы,плодожорка,табачный и калифорнийские трипсы,всех видов тли,всех видов тли клопа черепашки и многих других,путем опрыскивания. Препарат не накапливается в плодах и растениях,не загрязняет окружающую среду,не вызывает привыкания у вредителей. Применять препарат можно в момент созревания плодов.Сроки ожидания 24 часа. Принцип действия: Препарат проникая в организм вредителей кишечным или контактным путем нарушает передачу нервных импульсов у вредителей что приводит их к параличу и гибели.Уже через 6-8 часов после обработки грызущие вредители перестают питаться ,а сосущие через 12-16 часов. Гибель вредителей наступает на 2-3 сутки ,максимальный эффект достигает на 5-7 сутки. Препарат безопасен для полезных насекомых но средне опасен для пчел,поэтому опрыскивать во время цветения НЕЛЬЗЯ!!!!! Способ применения: Опрыскивание проводят в период вегетации при появлении вредителей.Опрыскивать лучше в вечернее время в сухую безветренную погоду.Оптимальная температура для обработки +18 и выше. По мере необходимости обработки можно повторить с интервалом 12-15 дней. Норма расхода: Против колорадского жука -10 мл.на 10 литров воды (2 раза) опрыскивание сада,овощных плодово-ягодных ,винограда - 15-20 мл. на 10 литров воды. Норма на 1 га -250 мл. на 250-300 литров воды. Состав: Бактерии Pseudomonas B-306 и ферменты гриба Stereptomyces avermitilis 0.5 %, хитозан. Срок хранения 2 года.</g:description>\n			<g:link>https://agro-zahist.od.ua/p300978803-sezar-biologicheskij-insektitsid.html</g:link>\n			<g:ads_redirect>https://agro-zahist.od.ua/p300978803-sezar-biologicheskij-insektitsid.html</g:ads_redirect>\n			<g:image_link>https://images.ua.prom.st/1055918880_w1280_h1280_sezar_1l.jpg</g:image_link>\n			<g:additional_image_link>https://images.ua.prom.st/1055918880_w1280_h1280_sezar_1l.jpg</g:additional_image_link>\n			<g:availability>in stock</g:availability>\n			<g:price>400.00 UAH</g:price>\n			<g:sale_price>400.00 UAH</g:sale_price>\n			<g:product_type>Сельхозпродукция, техника и оборудование > растениеводство > средства защиты растений > биопрепараты</g:product_type>\n			<g:identifier_exists>no</g:identifier_exists>\n			<g:condition>new</g:condition>\n		</item>\n		<item>\n			<g:id>498746262</g:id>\n			<g:title>Гуапсин 10л</g:title>\n			<g:description>«Гуапсин» – востребованное средство в современной агротехнологии, позволяющее отказаться от инсектицидов и удобрений химического происхождения. Основное достоинство препарата заключается в его комплексном и универсальном воздействии на сельскохозяйственные культуры. Он уничтожает большинство вредителей, является дешёвым азотсодержащим удобрением и препаратом для биологического подавления бактериальных заболеваний. Принципы действия Попадая в пищеварительный тракт, вызывает отравление и гибель насекомого. Имеет свойство накапливаться во всех частях растения. Бактерии, содержащиеся в препарате, взаимодействуют с клетками, что приводит к повышению концентрации азота в листве и стеблях. После обработки традиционные удобрения не понадобятся. Обработка одного гектара пятью-десятью литрами растворённого препарата сравнима с применением 80 килограммов селитры. При этом активные вещества препарата абсолютно безопасны для любого растения. Обработанные семена лучше всходят, а рассада развивается ускоренными темпами. После опрыскивания растения находятся под надёжной защитой в течение двух недель. Воздействие препарата на бактериальные инфекции сравнимо с антивирусной терапией у человека. Бактерии, входящие в состав, выделяют важные для растений вещества. Эти продукты бактериальной жизнедеятельности легко усваиваются и значительно повышают сопротивляемость растения к вторжению патогенных микроорганизмов. Средство широко применяется в сельском хозяйстве. Раствором опрыскивают поля и обрабатывают тепличные растения. Применяют для защиты садов и ягодников не только от вредителей, но и грибковых заболеваний. Бактерии, находящиеся в препарате, активно питаются колониями грибков, тем самым избавляя культурные насаждения от обширного грибкового поражения. Против каких насекомых применяется Используется для уничтожения пшеничных трипсов, блошек, клопов черепашек, тли, долгоносиков, плодожорок, гусениц, садовых клещей, плодовой моли, листовёрток, хрущей, ростковых мух, ягодных пилильщиков, златок и других вредителей. Техника использования Препарат хранится полгода при температуре +10 и четыре месяца при показателях от +20 до +50 градусов. Потребуется защитный костюм и перчатки – это стандартная одежда, применяемая для работы с любым средством защиты или удобрением. Несмотря на эту предосторожность, активные компоненты считаются безопасными для человека, домашних животных и пчёл. Для приготовления рабочего раствора 250 миллилитров суспензии размешивается в десяти литрах воды. Хранить готовый раствор нельзя. Опрыскивают поля, семена, корневища рассады и саженцев, все растения целиком. Обработку можно проводить в течение всего периода вегетации. Разрешено опрыскивать цветки и плоды (ягоды, зёрна) непосредственно перед их закладкой на хранение. Действующие компоненты средства не накапливаются в почве и не проявляют там химической активности. Полезное действие наблюдается через 36 часов после опрыскивания. Защита сохраняется примерно две недели (12–15 суток). Обработку можно проводить несколько раз за летний период. Препарат совместим с гербицидами (исключение – бордоская жидкость и средства, содержащие ртуть и её производные). Опрыскивать нижнюю часть листьев не требуется. Системное действие обеспечивается проникновением компонентов в систему сокодвижения.</g:description>\n			<g:link>https://agro-zahist.od.ua/p498746262-guapsin-10l.html</g:link>\n			<g:ads_redirect>https://agro-zahist.od.ua/p498746262-guapsin-10l.html</g:ads_redirect>\n			<g:image_link>https://images.ua.prom.st/712269171_w1280_h1280_guapsin_10l.png</g:image_link>\n			<g:additional_image_link>https://images.ua.prom.st/712269171_w1280_h1280_guapsin_10l.png</g:additional_image_link>\n			<g:availability>in stock</g:availability>\n			<g:price>30.00 UAH</g:price>\n			<g:sale_price>30.00 UAH</g:sale_price>\n			<g:product_type>Сельхозпродукция, техника и оборудование > растениеводство > средства защиты растений > биопрепараты</g:product_type>\n			<g:identifier_exists>no</g:identifier_exists>\n			<g:condition>new</g:condition>\n		</item>\n		<item>\n			<g:id>498746791</g:id>\n			<g:title>Трихофит 10л</g:title>\n			<g:description>Трихофит-Водная суспензия бактерии Trichoderma viride инсектофунгицидный биопрепарат для борьбы с болезнями сельскохозяйственных и других культур, нетоксичен для человека, теплокров­ных животных, пчел, рыб; не накапливается в почве, растениях; не влияет на вкус и запах выращенной продукции. В результате действия продуцируемых ферментов хитиназы и глюконазы способствует разложению полисахаридов и перевод веществ в доступные формы для растений, проводя гумификацию почв. Трихофит подавляет развитие таких болезней как корневые гнили, серые и белая, фузариоз, аскохитоз, макроспориоз, фитофтороз и др. и является био­деструктором соломы и целлюлозных отходов. После уборки зерновых на поле остается солома и стерня около 3—4 тонн на гектар. При оборудовании комбайнов измельчителями солома во время обмолота раз­брасывается по полю и непосредственно перед заделыванием в почву диско­вой бороной лущильником опрыскивается баковым раствором Трихофита (5 л Концентрата на 400 л воды на 1 га) и в баковый раствор добавляют 20 кг. аммонийного азота. Через 15 дней происходит частичная деструкция соломы. Внесение обработанной Трихофитом соломы улучшает физико-химические свойства почвы, в т.ч. и структурное состояние. Обусловлено это тем, что интенсивная переработка соломы микроорганизмами снабжает почву органическими вещест­вами и оказывает такое же влияние на гумусообразование, как и подстилочный навоз. При этом 1 т соломы эквивалентна 3—5 т навоза. С 3-х тонн соломы на 1 га пашни поступает примерно 20 кг азота, 5 кг фосфора, 60 кг калия, 4 кг натрия. Трихофит, наряду с защитой от болезней, усиливает мобилизацию фосфора и калия в растениях, стимулирует иммунную систему, рост и развитие растений, повышает их стойкость к болезням. Препарат можно использовать как защиту растений от фитопатогенов На протяжении всего периода вегетации растений. Прекрасный результат дает трихофит в закрытых грунтах. При правильном и своевременном применении препарата повышается Урожайность на 20—30%,снижается пораженность корневыми гнилями в 2—2,5 раза и значительно увеличивается всхожесть.</g:description>\n			<g:link>https://agro-zahist.od.ua/p498746791-trihofit-10l.html</g:link>\n			<g:ads_redirect>https://agro-zahist.od.ua/p498746791-trihofit-10l.html</g:ads_redirect>\n			<g:image_link>https://images.ua.prom.st/712271316_w1280_h1280_trihofit_10_l.png</g:image_link>\n			<g:additional_image_link>https://images.ua.prom.st/712271316_w1280_h1280_trihofit_10_l.png</g:additional_image_link>\n			<g:availability>in stock</g:availability>\n			<g:price>30.00 UAH</g:price>\n			<g:sale_price>30.00 UAH</g:sale_price>\n			<g:product_type>Сельхозпродукция, техника и оборудование > растениеводство > средства защиты растений > биопрепараты</g:product_type>\n			<g:identifier_exists>no</g:identifier_exists>\n			<g:condition>new</g:condition>\n		</item>\n		<item>\n			<g:id>635629373</g:id>\n			<g:title>Гумат калия + микроэлементы 10л</g:title>\n			<g:description>Гумат калия предназначен в качестве удобрения и индукции фитоиммунитета , для предпосевной обработки семян и посадочного материала, для подкормок в период вегетации зерновых, технических, овощных (в открытом и защищенном грунте), цветочно-декоративных и плодово-ягодных культур, травяных покрытий газонов и спортивных кортов, увеличения плодородия почвы и ускорения разложения растительных остатков, а также как почвенное удобрение во всех природно-климатических зонах страны. 100 % натуральный органический продукт из экологически чистого сырья, с высочайшей степенью очистки и гомогенизации. Отличается уникальным составом, широким спектром органических молекул, полным набором элементов питания ( NPK ) и микроэлементов ( Cu , Zn , Mn , Fe , B , Mo , Co , Ni ), наличием активной полезной микрофлоры и максимальной биологической активностью. Применяется в виде рабочих растворов. Для приготовления рабочего раствора Гумат Калия разводится в воде в пропорциях, соответствующих определенному методу использования, типу растений и утвержденным регламентам применения. Применение Гумата Калия на сельскохозяйственных культурах включает: Предпосевную обработку семян путем протравливания (возможно вместе с протравителем) или замачивания в рабочем растворе. Предпосевную обработку посадочного материала (клубней, луковиц, саженцев, черенков, чубуков, корневищ) путем замачивания в рабочем растворе. Подкормки путем опрыскивания или полива растений рабочим раствором в период вегетации 2-4 раза за сезон, в зависимости от культуры. Обработку почвы проводят путем полива рабочим раствором. Обработку растительных остатков проводят путем полива компостного материала (в ямах, кучах) рабочим раствором; путем опрыскивания или полива растительных остатков (после уборки урожая) рабочим раствором, с последующей заделкой в почву. Применяется в сельскохозяйственном производстве, личных подсобных хозяйствах, муниципальном, зеленом и декоративном строительстве, лесном хозяйстве. Меры безопасности. ГУМАТ КАЛИЯ относится к 4 классу опасности (малоопасный продукт). При работе пользуйтесь перчатками, соблюдайте правила личной гигиены.После работы следует вымыть руки и лицо с мылом. Острые отравления исключены. В случае попадания на кожу - смыть водой с мылом; при попадании в глаза - промыть большим количеством воды, при случайном заглатывании во внутрь - вызвать рвоту (выпив несколько стаканов воды), при необходимости - обратиться к врачу. Хранить в сухом закрытом помещении, отдельно от продуктов, лекарств, кормов в местах недоступных для детей и животных. Освободившуюся тару утилизируют с бытовым мусором в отведенных местах. Культура Обработка в период вегетации 1 Пшеница озимая и яровая 2-х кратная обработка растений в период вегетации: 1-я в фазу кущения - начала выхода в трубку; 2-я в фазу цветения - начала молочной спелости. Рожь озимая Ячмень озимый и яровой Тритикале озимая Овес Сорго* *2-я в фазу выметывания метелки - цветения. Просо* Кукуруза на зерно 2-х кратная обработка растений в период вегетации: 1-я в фазу всходов -появления 3-5-ти листьев; 2-я через 20 дней после первого. Кукуруза на силос* *2-я и 3-я с интервалом в 10-15 дней. Гречиха 2-х кратная обработка растений в период вегетации: 1-я в фазу ветвления - начала бутонизации; 2-я через 10-14 дней после предыдущего. Горох 3-х кратная обработка растений в период вегетации: 1-я в фазу всходов - 3-5-ти листьев; 2-я в фазу 5-6-ти листьев — бутонизации; 3-я в фазу цветения. Клевер 3-х кратная обработка растений в период вегетации: 1-я в фазу появления всходов; 2-я в фазу отрастания растений; 3-я в фазу стеблевания. Люцерна 3-х кратная обработка растений в период вегетации: 1-я в фазу всходов -отрастания растений; 2-я в фазу стеблевания; 3-я в фазу бутонизации. Вико-овсяная смесь* *2-я и 3-я с интервалом в 15 дней. Подсолнечник 3-х кратная обработка растений в период вегетации: 1-я в фазу всходов; 2-я 3-4-х пар настоящих листьев и 3-я с интервалом в 10-15 дней. Соя 3-х кратная обработка растений в период вегетации: 1-я в фазу всходов - образования первого тройчатого листа; 2-я в фазу стеблевания - начала бутонизации; 3-я в фазу начала цветения. Сахарная свекла 2-х кратная обработка растений в период вегетации: 1-я в фазу появления всходов - 2-3-х пар настоящих листьев; 2-я в фазу 4-х пар настоящих листьев - смыкания растений в рядках. 2 Картофель 2-х кратная обработка посевов: 1-я в фазу появления 5-7 листьев; 2-я в фазу бутонизации. 3 Томаты 4-х кратная обработка растений: 1-я в фазу появления 2-4 листьев; 2-я в фазу бутонизации; 3-я в фазу начала цветения; 4-я в фазу плодоношения. Баклажаны Кабачки, патиссоны Огурцы* *2-я и 3-я с интервалом в 15 дней. Капуста 3-х кратная обработка растений: 1-я через 2-3 дня после высадки рассады; 2-я в фазу листовой мутовки - завязывания кочанов; 3-я через 10-12 дней после второй. Лук на севок 3-х кратная обработка растений: 1-я в фазу появления 2-3 листов; 2 и 3-я с интервалом 10-12 дней Лук на репку Лук на семена* *2-х кратная обработка растений: 1-я ...</g:description>\n			<g:link>https://agro-zahist.od.ua/p635629373-gumat-kaliya-mikroelementy.html</g:link>\n			<g:ads_redirect>https://agro-zahist.od.ua/p635629373-gumat-kaliya-mikroelementy.html</g:ads_redirect>\n			<g:image_link>https://images.ua.prom.st/1055935143_w1280_h1280_gumat_kaliya_kanistra__10l.jpg</g:image_link>\n			<g:additional_image_link>https://images.ua.prom.st/1055935143_w1280_h1280_gumat_kaliya_kanistra__10l.jpg</g:additional_image_link>\n			<g:availability>in stock</g:availability>\n			<g:price>700.00 UAH</g:price>\n			<g:sale_price>700.00 UAH</g:sale_price>\n			<g:product_type>Сельхозпродукция, техника и оборудование > растениеводство > удобрения > регуляторы роста растений</g:product_type>\n			<g:identifier_exists>no</g:identifier_exists>\n			<g:condition>new</g:condition>\n		</item>\n		<item>\n			<g:id>638672190</g:id>\n			<g:title>Бор 168гр/л</g:title>\n			<g:description>Бор – важнейший элемент питания растений Значение бора сельскохозяйственная наука оценила еще в 20-х годах прошлого века. С тех пор при анализе состояния растений, прежде всего сельскохозяйственных, стало применяться выражение «вегетация с дефицитом бора». Как же выявить его дефицит в растениях? С тех пор и по сей день считается, что решить эту задачу можно несколькими методами. Самый простой из них – изучение внешнего вида растения. Внешние признаки борного голодания варьируются в зависимости от вида растения. Но есть ряд общих признаков, которые характерны для большинства из них. К ним относятся: • остановка роста корня и стебля; • хлороз верхушечной точки роста, а позже, при сильном борном голодании, полное ее отмирание; • малое количество цветков и бесплодие; • уродливая форма плодов с образованием внутри опробковевшей ткани и др. Наиболее точный метод предполагает анализ почвы и растительных тканей. Он проводится в лабораторных условиях и дает максимально достоверные результаты, основываясь на которых агрономические службы принимают решение о выборе и применении борсодержащих удобрений, схеме и технологии их внесения. Конечной целью этих мер должно стать достижение сбалансированного питания растений. Как правило, на практике эти агрономические приемы не вызывают особых сложностей. Обычно борсодержащие вещества добавляют в твердые и жидкие удобрения и вносят в почву перед севом, посадкой культур или опрыскивают листовой аппарат уже вегетирующего растения. Более предпочтителен второй способ. Во-первых, есть возможность составить сбалансированный раствор, в котором наряду с бором будут содержаться и другие необходимые в данный момент для данного поля и культуры микроэлементы и агрохимические препараты. Во-вторых, в период максимальной потребности в боре растущие растения не могут получить этот элемент в нужном объеме за счет всасывания только корневой системой — нужны листья. В-третьих, применение баковых смесей, в которых содержится в том числе бор, как часть программы по подкормке позволяет коллективным и фермерским хозяйствам снижать расходы на питание растений. Однако всем известно, что работа по факту не всегда оказывается достаточно эффективной. Гораздо лучше, когда главные агрономы и возглавляемые ими службы своевременно осуществляют мониторинг и прогнозируют возможный дефицит бора в почве и растениях, заранее высчитывают, где и на каких культурах он проявится. Что для этого нужно? Во-первых, хорошо знать перечень культур, наиболее восприимчивых и умеренно восприимчивых к недостатку бора (таблица). Технические и др. культуры Сахарная свекла, подсолнечник, соя, масличный рапс, люцерна, клевер, семеновый лен, хлопок, хмель, зерновая кукуруза, чай, табак Овощные культуры Столовая свекла, морковь, томаты, картофель, капуста, цветная капуста, брюссельская капуста, брокколи, сельдерей, китайская капуста Плодовые культуры Яблоня, виноград, цитрусовые, груша Цветочные культуры гвоздика, хризантема Во-вторых, нужно знать, при каких условиях может возникнуть дефицит бора. К таким факторам относятся: • выпадение большого количества осадков за короткий промежуток времени; • недавнее известкование (pH более 6,6); • специфика предшествующего урожая; • учет предшественника, в т. ч. какое количество бора он извлек из почвы в процессе роста и созревания; • отсутствие бора при планировании питания растений, особенно на песчаных, щелочных, известковых почвах; • использование на полях большого количества органических веществ; • интенсивное внесение NPK удобрений. Говоря о дефиците бора, следует вспомнить, какую роль играет этот микроэлемент в питании и последующей вегетации растений. Среди самых важных физиологических воздействий бора нужно отметить следующие: 1. Бор совместно с кальцием влияет на формирование стенок клеток. При этом он воздействует на поглощение кальция и обеспечивает сбалансированность питания растения кальцием. 2. Наличие необходимого количества бора неизменно важно для активно растущих частей растения – новых листьев, кончиков корней, а также для развития почек. То есть бор помогает клеткам быстро размножаться, следовательно, способствует активному росту растения. 3. Бор незаменим в так называемой «транспортировке сахара» в растениях. Этот микроэлемент повышает скорость переноса сахаров от зрелых листьев к активно растущим частям растения и его плодам. 4. Бор крайне необходим растению в фазы цветения и плодоношения. Он значительно улучшает условия закладки и дальнейшего развития генеративных органов: производство и сохранение цветков, элонгацию пыльцевой трубки, образование почек, рост семян и плодов. 5. Еще одно важное свойство бора – его подвижность в тканях растений. Процесс поглощения бора растением – пассивный, неметаболический, и бор переносится в сосудах ксилем (транспирационный ток) по всему растению. Последние исследования ученых Университета штата Калифорния (проф. Браун) показали, что бор подвешен в флоэме всего растения, которая использует моносахариды (известные как полиолы) в каче...</g:description>\n			<g:link>https://agro-zahist.od.ua/p638672190-bor-168grl.html</g:link>\n			<g:ads_redirect>https://agro-zahist.od.ua/p638672190-bor-168grl.html</g:ads_redirect>\n			<g:image_link>https://images.ua.prom.st/1055950956_w1280_h1280_monobor_10.jpg</g:image_link>\n			<g:additional_image_link>https://images.ua.prom.st/1055950956_w1280_h1280_monobor_10.jpg</g:additional_image_link>\n			<g:availability>in stock</g:availability>\n			<g:price>100.00 UAH</g:price>\n			<g:sale_price>100.00 UAH</g:sale_price>\n			<g:product_type>Сельхозпродукция, техника и оборудование > растениеводство > удобрения > микроудобрения</g:product_type>\n			<g:identifier_exists>no</g:identifier_exists>\n			<g:condition>new</g:condition>\n		</item>\n	</channel>\n</rss>','0','1','1551440085','1551440099');

INSERT INTO `idlq_site_templates` VALUES ('7','Корзина','','0','38','','0','{{header_meta}}\n\n<div id=\"wrapper\">\n\n	{{header}}\n\n	<div id=\"middle\" class=\"header-pad\">\n		<h3 class=\"title\">[*pagetitle*]</h3>\n		<div id=\"container\">\n\n			<div id=\"content\" class=\"full\">\n				<div class=\"cbox\">[*content*]</div>				\n			</div><!-- #content-->\n		</div><!-- #container-->\n\n		\n	</div><!-- #middle-->\n\n</div><!-- #wrapper -->\n\n<div id=\"footer\">\n</div><!-- #footer -->\n\n{{footer_meta}}','0','1','0','1551691212');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `idlq_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `idlq_site_tmplvar_contentvalues`
#

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('37','6','2','<p>Добро пожаловать на демонстрационный сайт модуля <b>TSVshop</b> для создания интернет-магазина в CMS MODx. Помните, что вся предоставленная информация на сайте имеет исключительно демонстрационный характер. Все заказы, сделанные вами, будут игнорироваться.</p>\n<p>Ниже представлен каталог тестовых товаров, сформированных с помощью сниппета <strong>Ditto</strong>. </p>\n<p>Обратите внимание на 2 момента!</p>\n<ul>\n<li>Выбор любой характеристики товара влияет на его конечную стоимость.</li>\n<li>В зависимости от выбранного количества товара меняется его стоимость.</li>\n</ul>');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('38','6','4','<p>Вы находитесь на странице со списком выбранных вами товаров. Проверьте, все ли верно. Для того, чтобы оформить покупку, нажмите на кнопку <strong>Оформить заказ</strong></p>');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('39','6','5','[!TSVshop? &amp;act=`finish`!]');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('60','9','21','assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('61','7','21','radio==Диагональ:*14==2||16==3||18==4;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('62','8','21','Т120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('41','9','11','assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('42','7','11','radio==Диагональ:*14==2||16==3||18==4;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('43','8','11','Т120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('44','5','11','1-2==21490||3-4==21000||20800');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('45','9','12','assets/templates/demoshop/img/tovar.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('46','7','12','select==Цвет:*Белый==0||Серый==2||Черный==3;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('47','8','12','М120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('48','5','12','13000');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('49','12','2','{\"fieldValue\":[{\"image\":\"assets/images/samsung-galaxy-s10-hoyle-17_large.jpg\",\"title\":\"Samsung Galaxy S10\",\"text\":\"Выбор любой характеристики товара влияет на его конечную стоимость.\"},{\"image\":\"assets/images/redmi-note-7-featured_large.png\",\"title\":\"Xiaomi Redmi Note 7\",\"text\":\"В зависимости от выбранного количества товара меняется его стоимость\"}],\"fieldSettings\":{\"autoincrement\":1}}');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('50','6','16','<p>Ниже вашему вниманию представлен каталог тестовых товаров, сформированных с помощью сниппета <strong>Ditto</strong>.</p>');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('51','9','18','assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('52','7','18','radio==Диагональ:*14==2||16==3||18==4;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('53','8','18','Т120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('54','5','18','1-2==21490||3-4==21000||20800');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('55','9','19','assets/templates/demoshop/img/tovar.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('56','7','19','select==Цвет:*Белый==0||Серый==2||Черный==3;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('57','8','19','М120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('58','5','19','13000');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('59','12','1','[]');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('63','5','21','1-2==21490||3-4==21000||20800');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('64','9','22','assets/images/toshiba-37-regza-lcd-37xv500pg.127701.2.jpg');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('65','7','22','radio==Диагональ:*14==2||16==3||18==4;');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('66','8','22','Т120');

INSERT INTO `idlq_site_tmplvar_contentvalues` VALUES ('67','5','22','1-2==21490||3-4==21000||20800');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `idlq_site_tmplvar_templates`
#

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('9','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('8','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('7','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('5','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('6','5','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('6','6','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('6','7','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('12','6','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('13','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('14','4','0');

INSERT INTO `idlq_site_tmplvar_templates` VALUES ('15','4','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_site_tmplvars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `idlq_site_tmplvars`
#

INSERT INTO `idlq_site_tmplvars` VALUES ('1','text','titl','Meta title','Meta title','0','1','0','','0','','','[*pagetitle*] - [(site_name)]','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('2','textarea','desc','Meta description','Meta description','0','1','0','','0','','','[*introtext*]','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('3','text','keyw','Meta keywords','Meta keywords','0','1','0','','0','','','[*pagetitle*]','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('4','checkbox','noIndex','No index page','Meta robots','0','1','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('9','image','cart_icon','Картинка товара','Выводится в каталоге, корзине и инфоблоке','0','38','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('7','textareamini','tsvshop_param','Параметры товара','Дополнительные параметры товара, влияющие на цену','0','38','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('8','text','articul','Артикул','Артикул товара','0','38','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('5','text','price','Цена товара','Параметр <b>обязателен</b>','0','38','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('10','number','inventory','Кол-во на складе','','0','38','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('6','richtext','demotext','Текст вверху','','0','0','0','','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('11','custom_tv','flexslider','flexslider','multiTV FlexSlider manager v.2','0','40','0','@INCLUDE/assets/tvs/multitv/multitv.customtv.php','0','','','','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('12','custom_tv:multitv','main_slider','main_slider','','0','0','0','','0','','','','1551344066','1551344066');

INSERT INTO `idlq_site_tmplvars` VALUES ('13','dropdown','sitemap_changefreq','Период обновления','Для карты сайта','0','1','0','always||hourly||daily||weekly||monthly||yearly||never','0','','','weekly','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('14','dropdown','sitemap_priority','Приоритет страницы','Для карты сайта','0','1','0','0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1','0','','','0.5','0','0');

INSERT INTO `idlq_site_tmplvars` VALUES ('15','checkbox','sitemap_exclude','Отображение в sitemap','Для карты сайта','0','1','0','Скрыть==1','0','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_star_rating`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_star_rating`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_star_rating` (
  `rid` int(11) unsigned NOT NULL COMMENT 'Resource ID',
  `total` int(5) unsigned DEFAULT '0' COMMENT 'Rating',
  `votes` int(5) unsigned DEFAULT '0' COMMENT 'Total Votes',
  `rating` double unsigned NOT NULL DEFAULT '0' COMMENT 'Avg. Rating',
  PRIMARY KEY (`rid`),
  KEY `rating` (`rating`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_star_rating`
#

INSERT INTO `idlq_star_rating` VALUES ('2','5','1','5');

INSERT INTO `idlq_star_rating` VALUES ('18','9','2','4');

INSERT INTO `idlq_star_rating` VALUES ('19','8','2','4');

INSERT INTO `idlq_star_rating` VALUES ('11','5','1','5');

INSERT INTO `idlq_star_rating` VALUES ('12','5','1','5');

INSERT INTO `idlq_star_rating` VALUES ('22','5','1','5');

INSERT INTO `idlq_star_rating` VALUES ('21','5','1','5');


# --------------------------------------------------------

#
# Table structure for table `idlq_star_rating_votes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_star_rating_votes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_star_rating_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(11) unsigned NOT NULL COMMENT 'Resource ID',
  `vote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote',
  `ip` varchar(15) NOT NULL DEFAULT '0.0.0.0' COMMENT 'IP Address',
  `time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Voted Time',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_star_rating_votes`
#

INSERT INTO `idlq_star_rating_votes` VALUES ('1','2','5','92.242.105.41','1551435993');

INSERT INTO `idlq_star_rating_votes` VALUES ('2','18','5','92.242.105.41','1551436051');

INSERT INTO `idlq_star_rating_votes` VALUES ('3','19','5','92.242.105.41','1551436192');

INSERT INTO `idlq_star_rating_votes` VALUES ('4','18','4','188.163.56.94','1551557971');

INSERT INTO `idlq_star_rating_votes` VALUES ('5','19','3','188.163.56.94','1551557977');

INSERT INTO `idlq_star_rating_votes` VALUES ('6','11','5','188.163.56.94','1551559058');

INSERT INTO `idlq_star_rating_votes` VALUES ('7','12','5','188.163.56.94','1551559103');

INSERT INTO `idlq_star_rating_votes` VALUES ('8','22','5','188.163.56.94','1551559114');

INSERT INTO `idlq_star_rating_votes` VALUES ('9','21','5','188.163.56.94','1551559166');


# --------------------------------------------------------

#
# Table structure for table `idlq_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `idlq_system_eventnames`
#

INSERT INTO `idlq_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `idlq_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `idlq_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `idlq_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `idlq_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `idlq_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `idlq_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('1034','TSVshopOnClearCart','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1035','TSVshopOnChangeItemQty','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `idlq_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `idlq_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `idlq_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `idlq_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `idlq_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `idlq_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `idlq_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `idlq_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `idlq_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `idlq_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('109','OnSecuritySettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('110','OnFileManagerSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `idlq_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `idlq_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `idlq_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('108','OnBeforeParseParams','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `idlq_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `idlq_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `idlq_system_eventnames` VALUES ('225','OnBeforeMinifyCss','1','');

INSERT INTO `idlq_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `idlq_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `idlq_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1002','OnBeforeFileBrowserUpload','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1003','OnFileBrowserDelete','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1004','OnBeforeFileBrowserDelete','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1005','OnFileBrowserInit','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1006','OnFileBrowserMove','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1007','OnBeforeFileBrowserMove','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1008','OnFileBrowserCopy','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1009','OnBeforeFileBrowserCopy','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1010','OnBeforeFileBrowserRename','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1011','OnFileBrowserRename','1','File Browser Events');

INSERT INTO `idlq_system_eventnames` VALUES ('1020','TSVshopOnBeforeUserFormInit','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1021','TSVshopOnUserFormComplete','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1022','TSVshopOnUserFormRender','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1023','TSVshopOnBeforeUserFormRenderComplete','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1024','TSVshopOnTplCartRender','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1025','TSVshopOnTplCartPrerender','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1026','TSVshopOnGetSubtotal','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1027','TSVshopOnAddItem','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1028','TSVshopOnOrderSuccess','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1029','TSVshopOnViewItemCard','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1030','TSVshopOnOrderStatusUpdate','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1031','TSVshopOnDeleteItem','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1032','TSVshopOnGetPriceItemCard','6','TSVshop');

INSERT INTO `idlq_system_eventnames` VALUES ('1036','TSVshopOnUserFormFieldsRender','6','TSVshop');


# --------------------------------------------------------

#
# Table structure for table `idlq_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `idlq_system_settings`
#

INSERT INTO `idlq_system_settings` VALUES ('settings_version','1.4.8');

INSERT INTO `idlq_system_settings` VALUES ('manager_theme','default');

INSERT INTO `idlq_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `idlq_system_settings` VALUES ('manager_language','russian-UTF8');

INSERT INTO `idlq_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `idlq_system_settings` VALUES ('site_name','My Evolution Site');

INSERT INTO `idlq_system_settings` VALUES ('site_start','2');

INSERT INTO `idlq_system_settings` VALUES ('error_page','2');

INSERT INTO `idlq_system_settings` VALUES ('unauthorized_page','2');

INSERT INTO `idlq_system_settings` VALUES ('site_status','1');

INSERT INTO `idlq_system_settings` VALUES ('auto_template_logic','parent');

INSERT INTO `idlq_system_settings` VALUES ('default_template','6');

INSERT INTO `idlq_system_settings` VALUES ('old_template','6');

INSERT INTO `idlq_system_settings` VALUES ('publish_default','1');

INSERT INTO `idlq_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `idlq_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `idlq_system_settings` VALUES ('use_alias_path','1');

INSERT INTO `idlq_system_settings` VALUES ('cache_type','2');

INSERT INTO `idlq_system_settings` VALUES ('failed_login_attempts','3');

INSERT INTO `idlq_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `idlq_system_settings` VALUES ('use_captcha','0');

INSERT INTO `idlq_system_settings` VALUES ('emailsender','ruslan.aistudio@gmail.com');

INSERT INTO `idlq_system_settings` VALUES ('use_editor','1');

INSERT INTO `idlq_system_settings` VALUES ('use_browser','1');

INSERT INTO `idlq_system_settings` VALUES ('fe_editor_lang','russian-UTF8');

INSERT INTO `idlq_system_settings` VALUES ('fck_editor_toolbar','standard');

INSERT INTO `idlq_system_settings` VALUES ('fck_editor_autolang','0');

INSERT INTO `idlq_system_settings` VALUES ('editor_css_path','');

INSERT INTO `idlq_system_settings` VALUES ('editor_css_selectors','');

INSERT INTO `idlq_system_settings` VALUES ('upload_maxsize','10485760');

INSERT INTO `idlq_system_settings` VALUES ('manager_layout','4');

INSERT INTO `idlq_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `idlq_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `idlq_system_settings` VALUES ('mail_check_timeperiod','600');

INSERT INTO `idlq_system_settings` VALUES ('manager_direction','ltr');

INSERT INTO `idlq_system_settings` VALUES ('xhtml_urls','0');

INSERT INTO `idlq_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `idlq_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `idlq_system_settings` VALUES ('warning_visibility','0');

INSERT INTO `idlq_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `idlq_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `idlq_system_settings` VALUES ('seostrict','1');

INSERT INTO `idlq_system_settings` VALUES ('number_of_results','30');

INSERT INTO `idlq_system_settings` VALUES ('theme_refresher','');

INSERT INTO `idlq_system_settings` VALUES ('show_picker','0');

INSERT INTO `idlq_system_settings` VALUES ('show_newresource_btn','0');

INSERT INTO `idlq_system_settings` VALUES ('show_fullscreen_btn','0');

INSERT INTO `idlq_system_settings` VALUES ('email_sender_method','1');

INSERT INTO `idlq_system_settings` VALUES ('site_id','5c767feecd786');

INSERT INTO `idlq_system_settings` VALUES ('a','30');

INSERT INTO `idlq_system_settings` VALUES ('site_unavailable_page','');

INSERT INTO `idlq_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `idlq_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');

INSERT INTO `idlq_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');

INSERT INTO `idlq_system_settings` VALUES ('chunk_processor','');

INSERT INTO `idlq_system_settings` VALUES ('enable_mootools','1');

INSERT INTO `idlq_system_settings` VALUES ('enable_at_syntax','0');

INSERT INTO `idlq_system_settings` VALUES ('enable_filter','0');

INSERT INTO `idlq_system_settings` VALUES ('cache_default','1');

INSERT INTO `idlq_system_settings` VALUES ('search_default','1');

INSERT INTO `idlq_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `idlq_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `idlq_system_settings` VALUES ('enable_cache','1');

INSERT INTO `idlq_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `idlq_system_settings` VALUES ('server_protocol','http');

INSERT INTO `idlq_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/evocms-release-news');

INSERT INTO `idlq_system_settings` VALUES ('track_visitors','0');

INSERT INTO `idlq_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `idlq_system_settings` VALUES ('friendly_url_suffix','');

INSERT INTO `idlq_system_settings` VALUES ('make_folders','0');

INSERT INTO `idlq_system_settings` VALUES ('aliaslistingfolder','0');

INSERT INTO `idlq_system_settings` VALUES ('allow_duplicate_alias','0');

INSERT INTO `idlq_system_settings` VALUES ('use_udperms','1');

INSERT INTO `idlq_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `idlq_system_settings` VALUES ('email_method','mail');

INSERT INTO `idlq_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `idlq_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `idlq_system_settings` VALUES ('smtp_host','smtp.example.com');

INSERT INTO `idlq_system_settings` VALUES ('smtp_port','25');

INSERT INTO `idlq_system_settings` VALUES ('smtp_username','you@example.com');

INSERT INTO `idlq_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `idlq_system_settings` VALUES ('emailsubject','Данные для авторизации');

INSERT INTO `idlq_system_settings` VALUES ('emailsubject_default','Данные для авторизации');

INSERT INTO `idlq_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `idlq_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `idlq_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `idlq_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `idlq_system_settings` VALUES ('manager_theme_mode','4');

INSERT INTO `idlq_system_settings` VALUES ('login_logo','');

INSERT INTO `idlq_system_settings` VALUES ('login_bg','');

INSERT INTO `idlq_system_settings` VALUES ('login_form_position','left');

INSERT INTO `idlq_system_settings` VALUES ('login_form_style','dark');

INSERT INTO `idlq_system_settings` VALUES ('manager_menu_position','top');

INSERT INTO `idlq_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `idlq_system_settings` VALUES ('use_breadcrumbs','0');

INSERT INTO `idlq_system_settings` VALUES ('global_tabs','1');

INSERT INTO `idlq_system_settings` VALUES ('group_tvs','0');

INSERT INTO `idlq_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `idlq_system_settings` VALUES ('session_timeout','15');

INSERT INTO `idlq_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `idlq_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `idlq_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `idlq_system_settings` VALUES ('number_of_messages','40');

INSERT INTO `idlq_system_settings` VALUES ('which_editor','TinyMCE4');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_skintheme','inlite');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_element_format','xhtml');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `idlq_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `idlq_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `idlq_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `idlq_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');

INSERT INTO `idlq_system_settings` VALUES ('validate_referer','1');

INSERT INTO `idlq_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/evocms-security-news');

INSERT INTO `idlq_system_settings` VALUES ('error_reporting','1');

INSERT INTO `idlq_system_settings` VALUES ('send_errormail','0');

INSERT INTO `idlq_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `idlq_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `idlq_system_settings` VALUES ('captcha_words','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `idlq_system_settings` VALUES ('captcha_words_default','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `idlq_system_settings` VALUES ('filemanager_path','/home/studiyai/aistudio.pro/modxshop/');

INSERT INTO `idlq_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,tpl');

INSERT INTO `idlq_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg');

INSERT INTO `idlq_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `idlq_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `idlq_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `idlq_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `idlq_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `idlq_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `idlq_system_settings` VALUES ('rb_base_dir','/home/studiyai/aistudio.pro/modxshop/assets/');

INSERT INTO `idlq_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `idlq_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `idlq_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `idlq_system_settings` VALUES ('maxImageWidth','2600');

INSERT INTO `idlq_system_settings` VALUES ('maxImageHeight','2200');

INSERT INTO `idlq_system_settings` VALUES ('clientResize','0');

INSERT INTO `idlq_system_settings` VALUES ('noThumbnailsRecreation','0');

INSERT INTO `idlq_system_settings` VALUES ('thumbWidth','150');

INSERT INTO `idlq_system_settings` VALUES ('thumbHeight','150');

INSERT INTO `idlq_system_settings` VALUES ('thumbsDir','.thumbs');

INSERT INTO `idlq_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `idlq_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `idlq_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `idlq_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `idlq_system_settings` VALUES ('lang_code','ru');

INSERT INTO `idlq_system_settings` VALUES ('sys_files_checksum','a:4:{s:46:\"/home/studiyai/aistudio.pro/modxshop/index.php\";s:32:\"2f6a89952c4b21dd233f0dcb2408d3e7\";s:46:\"/home/studiyai/aistudio.pro/modxshop/.htaccess\";s:32:\"b12739e14a9d18d7090427db01bd4021\";s:54:\"/home/studiyai/aistudio.pro/modxshop/manager/index.php\";s:32:\"89262755b0e2b7ca727e59ba268f0c33\";s:68:\"/home/studiyai/aistudio.pro/modxshop/manager/includes/config.inc.php\";s:32:\"92215b5cc56eed036b52195a7577db2c\";}');

INSERT INTO `idlq_system_settings` VALUES ('site_owner','');

INSERT INTO `idlq_system_settings` VALUES ('site_mail','');

INSERT INTO `idlq_system_settings` VALUES ('site_copyright','');

INSERT INTO `idlq_system_settings` VALUES ('company_name','');

INSERT INTO `idlq_system_settings` VALUES ('company_iva','');

INSERT INTO `idlq_system_settings` VALUES ('company_mail','');

INSERT INTO `idlq_system_settings` VALUES ('company_phone','');

INSERT INTO `idlq_system_settings` VALUES ('company_fax','');

INSERT INTO `idlq_system_settings` VALUES ('company_address','');

INSERT INTO `idlq_system_settings` VALUES ('chat_icq','');

INSERT INTO `idlq_system_settings` VALUES ('chat_msn','');

INSERT INTO `idlq_system_settings` VALUES ('social_facebook','');

INSERT INTO `idlq_system_settings` VALUES ('social_twitter','');

INSERT INTO `idlq_system_settings` VALUES ('social_googleplus','');

INSERT INTO `idlq_system_settings` VALUES ('social_youtube','');

INSERT INTO `idlq_system_settings` VALUES ('social_linkedin','');


# --------------------------------------------------------

#
# Table structure for table `idlq_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

#
# Dumping data for table `idlq_user_attributes`
#

INSERT INTO `idlq_user_attributes` VALUES ('1','1','Admin','1','ruslan.aistudio@gmail.com','','','0','0','0','6','1551778750','1556390004','0','2lbfhuvvjlvf38an8pt087u660','0','0','','','','','','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_user_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

#
# Dumping data for table `idlq_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_user_roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `category_manager` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

#
# Dumping data for table `idlq_user_roles`
#

INSERT INTO `idlq_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','0','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','1','1','1');

INSERT INTO `idlq_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','1','1','1','1','0','1','0','0','1','1','1');

INSERT INTO `idlq_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `idlq_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `idlq_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `idlq_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_web_user_attributes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`internalKey`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `idlq_web_user_attributes`
#

INSERT INTO `idlq_web_user_attributes` VALUES ('1','1','Ruslan Rogovskiy','0','ruslan.aistudio@gmail.com','','','0','0','0','2','1551271719','1551340184','0','dqbakmp5o5pqcl29omjvtm8m04','0','0','','','','','','','',NULL,'0','0');


# --------------------------------------------------------

#
# Table structure for table `idlq_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `idlq_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Dumping data for table `idlq_web_users`
#

INSERT INTO `idlq_web_users` VALUES ('1','ruslan.aistudio@gmail.com','7488e331b8b64e5794da3fa4eb10ad5d','');


# --------------------------------------------------------

#
# Table structure for table `idlq_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `idlq_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `idlq_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `idlq_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `idlq_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `idlq_webgroup_names`
#
