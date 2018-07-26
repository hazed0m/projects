#
# CarTrade Database Dump
# MODX Version:1.4.4
# 
# Host: 
# Generation Time: 26-07-2018 17:44:01
# Server version: 5.6.37
# PHP Version: 7.0.21
# Database: `car`
# Description: 
#

# --------------------------------------------------------

#
# Table structure for table `cn8c_active_user_locks`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_active_user_locks`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_active_user_locks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

#
# Dumping data for table `cn8c_active_user_locks`
#

INSERT INTO `cn8c_active_user_locks` VALUES ('192','927jij609qut4804rftodegm16','1','3','6','1532529221');

INSERT INTO `cn8c_active_user_locks` VALUES ('223','927jij609qut4804rftodegm16','1','3','8','1532610985');

INSERT INTO `cn8c_active_user_locks` VALUES ('249','927jij609qut4804rftodegm16','1','3','9','1532615967');

INSERT INTO `cn8c_active_user_locks` VALUES ('211','927jij609qut4804rftodegm16','1','3','7','1532531291');


# --------------------------------------------------------

#
# Table structure for table `cn8c_active_user_sessions`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_active_user_sessions`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

#
# Dumping data for table `cn8c_active_user_sessions`
#

INSERT INTO `cn8c_active_user_sessions` VALUES ('927jij609qut4804rftodegm16','1','1532616241','127.0.0.1');


# --------------------------------------------------------

#
# Table structure for table `cn8c_active_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_active_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

#
# Dumping data for table `cn8c_active_users`
#

INSERT INTO `cn8c_active_users` VALUES ('927jij609qut4804rftodegm16','1','admin','1532616241','93',NULL);


# --------------------------------------------------------

#
# Table structure for table `cn8c_categories`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_categories`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

#
# Dumping data for table `cn8c_categories`
#

INSERT INTO `cn8c_categories` VALUES ('1','SEO','0');

INSERT INTO `cn8c_categories` VALUES ('2','Templates','0');

INSERT INTO `cn8c_categories` VALUES ('3','Js','0');

INSERT INTO `cn8c_categories` VALUES ('4','Manager and Admin','0');

INSERT INTO `cn8c_categories` VALUES ('5','Content','0');

INSERT INTO `cn8c_categories` VALUES ('6','Navigation','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_document_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_document_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_document_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  KEY `document` (`document`),
  KEY `document_group` (`document_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `cn8c_document_groups`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_documentgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_documentgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_documentgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `cn8c_documentgroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_event_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_event_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_event_log` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

#
# Dumping data for table `cn8c_event_log`
#

INSERT INTO `cn8c_event_log` VALUES ('1','0','1532526360','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://car/manager/</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 16:46:00</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0828 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0828 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6546325683594 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('2','0','1532526360','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/media/style//style.css</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 16:46:00</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0326 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0326 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6535949707031 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('3','0','1532526365','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://car/manager/</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 16:46:05</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0440 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0440 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6546325683594 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('4','0','1532526365','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/media/style//style.css</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 16:46:05</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0368 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0368 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6535949707031 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('5','0','1532526392','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 16:46:32</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0449 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0449 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6547698974609 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('6','0','1532529739','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 17:42:19</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0333 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0333 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6547698974609 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');

INSERT INTO `cn8c_event_log` VALUES ('7','0','1532530001','3','0','1','Parser -             $this-&gt;conn = new mysqli($','<b>Undefined index: server_offset_time</b><br />\n<h2 style=\"color:red\">&laquo; Evo Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : mysqli::__construct(): (HY000/2002): ���� ��������� ����� ���� ������������ ������ ������ (��������/������� �����/����).\n</div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OSPanel\\domains\\car\\manager\\includes\\extenders\\dbapi.mysqli.class.inc.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>63</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>            $this-&gt;conn = new mysqli($host, $uid, $pwd, $dbase);\n</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://car/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2018-07-25 17:46:41</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0340 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0340 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6547698974609 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 139</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->connect</strong>()<br />manager/includes/document.parser.class.inc.php on line 2748</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>mysqli->__construct</strong>(\'127.0.0.1\', \'root\', \'\', \'car\')<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 63</td>\n	</tr>\n</table>\n');


# --------------------------------------------------------

#
# Table structure for table `cn8c_manager_log`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_manager_log`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_manager_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

#
# Dumping data for table `cn8c_manager_log`
#

INSERT INTO `cn8c_manager_log` VALUES ('1','1532425609','1','admin','58','-','MODX','Logged in','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('2','1532425610','1','admin','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('3','1532425617','1','admin','30','-','-','Saving settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('4','1532425621','1','admin','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('5','1532425690','1','admin','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('6','1532425702','1','admin','30','-','-','Saving settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('7','1532425706','1','admin','102','2','ElementsInTree','Edit plugin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('8','1532425709','1','admin','103','2','ElementsInTree','Saving plugin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('9','1532425709','1','admin','102','2','ElementsInTree','Edit plugin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('10','1532425716','1','admin','102','2','ElementsInTree','Edit plugin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('11','1532425719','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('12','1532425723','1','admin','79','-','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('13','1532425723','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('14','1532425784','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('15','1532425784','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('16','1532425786','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('17','1532425827','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('18','1532425827','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('19','1532425834','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('20','1532425834','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('21','1532425906','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('22','1532425906','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('23','1532425908','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('24','1532425908','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('25','1532425992','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('26','1532425992','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('27','1532425996','1','admin','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('28','1532426007','1','admin','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('29','1532426477','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('30','1532426505','1','admin','79','-','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('31','1532426505','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('32','1532426559','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('33','1532426559','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('34','1532426579','1','admin','27','1','Evolution CMS Install Success','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('35','1532426581','1','admin','5','1','Landing page','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('36','1532426582','1','admin','27','1','Landing page','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('37','1532426585','1','admin','5','1','Landing page','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('38','1532426585','1','admin','27','1','Landing page','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('39','1532426612','1','admin','5','1','Главная страница','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('40','1532426612','1','admin','27','1','Главная страница','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('41','1532426622','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('42','1532426623','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('43','1532426632','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('44','1532426632','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('45','1532426726','1','admin','19','-','Новый шаблон','Creating a new template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('46','1532426727','1','admin','16','3','Minimal Template','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('47','1532426750','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('48','1532426750','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('49','1532426755','1','admin','27','1','Главная страница','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('50','1532426757','1','admin','5','1','Главная страница','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('51','1532426757','1','admin','27','1','Главная страница','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('52','1532426851','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('53','1532426851','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('54','1532426858','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('55','1532426858','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('56','1532426943','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('57','1532426943','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('58','1532426952','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('59','1532426952','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('60','1532427044','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('61','1532427044','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('62','1532427051','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('63','1532427051','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('64','1532427410','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('65','1532427410','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('66','1532427517','1','admin','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('67','1532427528','1','admin','30','-','-','Saving settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('68','1532429695','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('69','1532429702','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('70','1532429703','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('71','1532429779','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('72','1532429780','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('73','1532429900','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('74','1532429900','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('75','1532429949','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('76','1532429949','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('77','1532429953','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('78','1532429953','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('79','1532430598','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('80','1532430598','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('81','1532430781','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('82','1532430786','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('83','1532430786','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('84','1532431008','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('85','1532431008','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('86','1532431037','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('87','1532431037','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('88','1532431043','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('89','1532431043','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('90','1532431050','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('91','1532431050','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('92','1532431097','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('93','1532431097','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('94','1532431107','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('95','1532431107','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('96','1532431650','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('97','1532431650','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('98','1532431846','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('99','1532431847','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('100','1532431851','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('101','1532431851','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('102','1532432212','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('103','1532432212','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('104','1532432388','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('105','1532432388','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('106','1532432611','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('107','1532432611','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('108','1532432866','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('109','1532432866','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('110','1532433324','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('111','1532433324','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('112','1532433331','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('113','1532433331','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('114','1532433395','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('115','1532433395','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('116','1532433431','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('117','1532433431','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('118','1532433466','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('119','1532433466','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('120','1532433469','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('121','1532433469','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('122','1532433482','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('123','1532433482','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('124','1532433486','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('125','1532433486','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('126','1532433496','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('127','1532433497','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('128','1532434209','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('129','1532434210','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('130','1532435462','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('131','1532435462','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('132','1532435475','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('133','1532435475','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('134','1532435594','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('135','1532435595','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('136','1532435658','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('137','1532435658','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('138','1532435684','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('139','1532435684','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('140','1532435842','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('141','1532435842','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('142','1532436225','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('143','1532436225','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('144','1532436306','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('145','1532436306','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('146','1532436310','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('147','1532436310','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('148','1532436321','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('149','1532436321','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('150','1532436374','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('151','1532436374','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('152','1532436390','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('153','1532436390','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('154','1532436445','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('155','1532436445','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('156','1532436741','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('157','1532436741','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('158','1532437051','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('159','1532437051','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('160','1532437183','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('161','1532437183','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('162','1532437427','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('163','1532437427','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('164','1532438284','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('165','1532438285','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('166','1532438312','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('167','1532438312','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('168','1532438351','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('169','1532438351','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('170','1532438376','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('171','1532438376','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('172','1532438626','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('173','1532438627','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('174','1532438630','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('175','1532438630','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('176','1532438672','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('177','1532438672','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('178','1532438816','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('179','1532438816','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('180','1532439117','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('181','1532439117','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('182','1532439252','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('183','1532439253','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('184','1532439288','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('185','1532439288','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('186','1532439291','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('187','1532439291','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('188','1532439742','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('189','1532439742','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('190','1532439833','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('191','1532439833','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('192','1532439926','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('193','1532439926','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('194','1532439939','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('195','1532439939','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('196','1532440046','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('197','1532440046','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('198','1532440050','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('199','1532440050','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('200','1532440068','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('201','1532440068','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('202','1532440165','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('203','1532440165','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('204','1532440652','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('205','1532440652','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('206','1532440757','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('207','1532440757','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('208','1532440771','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('209','1532440771','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('210','1532440922','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('211','1532440923','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('212','1532440959','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('213','1532440959','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('214','1532441763','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('215','1532441763','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('216','1532444324','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('217','1532444324','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('218','1532444328','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('219','1532444328','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('220','1532444378','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('221','1532444378','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('222','1532444451','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('223','1532444451','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('224','1532444546','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('225','1532444546','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('226','1532444555','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('227','1532444555','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('228','1532444740','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('229','1532444740','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('230','1532444742','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('231','1532444742','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('232','1532445001','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('233','1532445001','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('234','1532445020','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('235','1532445035','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('236','1532445036','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('237','1532445076','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('238','1532445076','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('239','1532445316','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('240','1532445316','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('241','1532445321','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('242','1532445321','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('243','1532445328','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('244','1532445328','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('245','1532445504','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('246','1532445504','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('247','1532445559','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('248','1532445559','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('249','1532445822','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('250','1532445822','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('251','1532445890','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('252','1532445890','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('253','1532445908','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('254','1532445908','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('255','1532445939','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('256','1532445940','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('257','1532445954','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('258','1532445954','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('259','1532445987','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('260','1532445987','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('261','1532446003','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('262','1532446003','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('263','1532446010','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('264','1532446010','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('265','1532446091','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('266','1532446091','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('267','1532446160','1','admin','79','3','footer','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('268','1532446160','1','admin','78','3','footer','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('269','1532446562','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('270','1532446562','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('271','1532446603','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('272','1532446603','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('273','1532446762','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('274','1532446762','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('275','1532446870','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('276','1532446870','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('277','1532447053','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('278','1532447053','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('279','1532447777','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('280','1532447777','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('281','1532524999','1','admin','17','-','-','Editing settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('282','1532525005','1','admin','30','-','-','Saving settings','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('283','1532525011','1','admin','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('284','1532525023','1','admin','4','-','Новый ресурс','Creating a resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('285','1532525024','1','admin','5','-','Отзывы','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('286','1532525025','1','admin','27','2','Отзывы','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('287','1532525028','1','admin','19','-','Новый шаблон','Creating a new template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('288','1532525034','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('289','1532525084','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('290','1532525260','1','admin','6','2','Отзывы','Deleting resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('291','1532525260','1','admin','3','2','Отзывы','Viewing data for resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('292','1532525285','1','admin','27','1','Главная страница','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('293','1532525306','1','admin','102','5','ManagerManager','Edit plugin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('294','1532525321','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('295','1532525377','1','admin','300','-','Новый параметр (TV)','Create Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('296','1532525416','1','admin','112','2','Extras','Execute module','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('297','1532525447','1','admin','79','2','mm_rules','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('298','1532525447','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('299','1532525453','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('300','1532525459','1','admin','300','-','Новый параметр (TV)','Create Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('301','1532525469','1','admin','302','-','review','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('302','1532525469','1','admin','301','5','review','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('303','1532525472','1','admin','27','1','Главная страница','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('304','1532525483','1','admin','5','1','Лэндинг','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('305','1532525483','1','admin','27','1','Лэндинг','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('306','1532525501','1','admin','5','1','CarTrade','Saving resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('307','1532525501','1','admin','27','1','CarTrade','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('308','1532525506','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('309','1532525514','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('310','1532525522','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('311','1532525528','1','admin','79','4','index_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('312','1532525528','1','admin','78','4','index_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('313','1532525531','1','admin','79','-','review_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('314','1532525531','1','admin','78','5','review_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('315','1532525551','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('316','1532525551','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('317','1532525590','1','admin','302','5','review','Save Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('318','1532525590','1','admin','301','5','review','Edit Template Variable','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('319','1532525623','1','admin','79','2','mm_rules','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('320','1532525623','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('321','1532525630','1','admin','79','2','mm_rules','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('322','1532525630','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('323','1532525633','1','admin','27','1','CarTrade','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('324','1532525642','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('325','1532525689','1','admin','79','2','mm_rules','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('326','1532525689','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('327','1532525692','1','admin','78','2','mm_rules','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('328','1532525696','1','admin','27','1','CarTrade','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('329','1532525822','1','admin','27','1','CarTrade','Editing resource','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('330','1532525877','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('331','1532525895','1','admin','78','5','review_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('332','1532525921','1','admin','79','-','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('333','1532525921','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('334','1532525992','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('335','1532525998','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('336','1532525998','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('337','1532526052','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('338','1532526052','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('339','1532526104','1','admin','78','5','review_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('340','1532526125','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('341','1532526125','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('342','1532526130','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('343','1532526132','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('344','1532526210','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('345','1532526210','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('346','1532526611','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('347','1532526611','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('348','1532526963','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('349','1532526976','1','admin','79','1','header','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('350','1532526976','1','admin','78','1','header','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('351','1532527524','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('352','1532527524','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('353','1532527669','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('354','1532527669','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('355','1532528062','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('356','1532528062','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('357','1532528071','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('358','1532528071','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('359','1532528117','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('360','1532528117','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('361','1532528182','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('362','1532528182','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('363','1532528393','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('364','1532528393','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('365','1532528520','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('366','1532528520','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('367','1532528628','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('368','1532528628','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('369','1532528844','1','admin','79','6','video_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('370','1532528844','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('371','1532529077','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('372','1532529205','1','admin','79','-','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('373','1532529205','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('374','1532529212','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('375','1532529218','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('376','1532529218','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('377','1532529221','1','admin','78','6','video_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('378','1532529248','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('379','1532529248','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('380','1532529258','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('381','1532529258','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('382','1532529386','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('383','1532529386','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('384','1532529692','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('385','1532529692','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('386','1532529702','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('387','1532529702','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('388','1532529710','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('389','1532529710','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('390','1532529980','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('391','1532529980','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('392','1532529999','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('393','1532529999','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('394','1532530300','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('395','1532530300','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('396','1532530362','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('397','1532530362','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('398','1532530373','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('399','1532530373','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('400','1532530530','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('401','1532530530','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('402','1532530655','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('403','1532530655','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('404','1532530673','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('405','1532530673','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('406','1532530678','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('407','1532530678','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('408','1532530830','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('409','1532530830','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('410','1532530937','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('411','1532530937','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('412','1532531112','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('413','1532531112','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('414','1532531291','1','admin','79','7','list_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('415','1532531291','1','admin','78','7','list_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('416','1532532915','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('417','1532532915','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('418','1532532921','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('419','1532532928','1','admin','79','-','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('420','1532532928','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('421','1532532956','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('422','1532532956','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('423','1532533109','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('424','1532533109','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.54');

INSERT INTO `cn8c_manager_log` VALUES ('425','1532590127','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('426','1532590134','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('427','1532590378','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('428','1532590378','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('429','1532590763','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('430','1532590763','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('431','1532590929','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('432','1532590929','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('433','1532591211','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('434','1532591211','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('435','1532591252','1','admin','79','8','etap_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('436','1532591252','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('437','1532610987','1','admin','78','8','etap_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('438','1532610989','1','admin','77','-','Новый чанк','Creating a new Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('439','1532610993','1','admin','79','-','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('440','1532610993','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('441','1532611005','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('442','1532611005','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('443','1532611027','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('444','1532611027','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('445','1532611115','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('446','1532611126','1','admin','20','3','Главная страница','Saving template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('447','1532611126','1','admin','16','3','Главная страница','Editing template','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('448','1532612756','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('449','1532612756','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('450','1532612769','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('451','1532612769','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('452','1532612850','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('453','1532612850','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('454','1532613150','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('455','1532613150','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('456','1532613158','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('457','1532613158','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('458','1532613472','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('459','1532613472','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('460','1532613625','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('461','1532613625','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('462','1532613670','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('463','1532613670','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('464','1532613695','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('465','1532613695','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('466','1532613708','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('467','1532613708','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('468','1532614036','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('469','1532614036','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('470','1532614238','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('471','1532614238','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('472','1532614380','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('473','1532614380','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('474','1532614506','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('475','1532614506','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('476','1532615140','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('477','1532615140','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('478','1532615158','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('479','1532615158','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('480','1532615265','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('481','1532615265','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('482','1532615278','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('483','1532615278','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('484','1532615732','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('485','1532615732','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('486','1532615938','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('487','1532615938','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('488','1532615967','1','admin','79','9','deal_page','Saving Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('489','1532615967','1','admin','78','9','deal_page','Editing Chunk (HTML Snippet)','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');

INSERT INTO `cn8c_manager_log` VALUES ('490','1532616237','1','admin','93','-','-','Backup Manager','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36 OPR/54.0.2952.60');


# --------------------------------------------------------

#
# Table structure for table `cn8c_manager_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_manager_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_manager_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

#
# Dumping data for table `cn8c_manager_users`
#

INSERT INTO `cn8c_manager_users` VALUES ('1','admin','$P$BoWurTTlr4RM9bbzMlz6VxLu0LqUE9.');


# --------------------------------------------------------

#
# Table structure for table `cn8c_member_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_member_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_member_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_member` (`user_group`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `cn8c_member_groups`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_membergroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_membergroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_membergroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `cn8c_membergroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_membergroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_membergroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_membergroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

#
# Dumping data for table `cn8c_membergroup_names`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_content`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_content`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_content` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

#
# Dumping data for table `cn8c_site_content`
#

INSERT INTO `cn8c_site_content` VALUES ('1','document','text/html','CarTrade','CarTrade','','landing-page','','1','0','0','0','0','','','1','3','0','1','1','1','1130304721','1','1532525501','0','0','0','1130304721','1','','0','0','0','0','0','1');

INSERT INTO `cn8c_site_content` VALUES ('2','document','text/html','Отзывы','','','otzyvy','','1','0','0','0','0','','','1','0','1','1','1','1','1532525024','1','1532525024','1','1532525260','1','1532525024','1','','0','0','0','0','0','1');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_htmlsnippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_htmlsnippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_htmlsnippets` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

#
# Dumping data for table `cn8c_site_htmlsnippets`
#

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('1','header','sample header scripts','2','none','2','0','<!DOCTYPE html>\n<html lang=\"en\" dir=\"ltr\">\n<head>\n<meta charset=\"utf-8\">\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=[(modx_charset)]\" /> \n	<title>[*titl*]</title>\n	[*noIndex*]\n	<meta name=\"keywords\" content=\"[*keyw*]\" />\n	<meta name=\"description\" content=\"[*desc*]\" />\n	<base href=\"[(site_url)]\"/>	\n	<link rel=\"stylesheet\" href=\"assets/templates/css/bootstrap.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/templates/css/bootstrap-grid.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/templates/css/bootstrap-reboot.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/templates/js/assets/owl.carousel.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/templates/js/assets/owl.theme.default.min.css\">\n	<link rel=\"stylesheet\" href=\"assets/templates/css/style.css\">\n	<link href=\"https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i\" rel=\"stylesheet\">\n</head>\n<body>','0','0','1532526976','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('2','mm_rules','Default ManagerManager rules.','2','none','3','0','// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php\n// example of how PHP is allowed - check that a TV named documentTags exists before creating rule\n\nif ($modx->db->getValue($modx->db->select(\'count(id)\', $modx->getFullTableName(\'site_tmplvars\'), \"name=\'documentTags\'\"))) {\n	mm_widget_tags(\'documentTags\', \' \'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n}\nmm_widget_showimagetvs(); // Always give a preview of Image TVs\n\nmm_createTab(\'SEO\', \'seo\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'titl,keyw,desc,seoOverride,noIndex,sitemap_changefreq,sitemap_priority,sitemap_exclude\', \'seo\', \'\', \'\');\nmm_widget_tags(\'keyw\',\',\'); // Give blog tag editing capabilities to the \'documentTags (3)\' TV\n\n\n//mm_createTab(\'Images\', \'photos\', \'\', \'\', \'\', \'850\');\n//mm_moveFieldsToTab(\'images,photos\', \'photos\', \'\', \'\');\n\n//mm_hideFields(\'longtitle,description,link_attributes,menutitle,content\', \'\', \'6,7\');\n\n//mm_hideTemplates(\'0,5,8,9,11,12\', \'2,3\');\n\n//mm_hideTabs(\'settings, access\', \'2\');\n\n\n//price tabs\nmm_createTab(\'Отзывы\', \'\', \'\', \'\', \'\', \'\');\nmm_moveFieldsToTab(\'review\', \'\', \'\', \'\');\n','0','0','1532525689','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('3','footer','','2','none','0','0','<script src=\"https://code.jquery.com/jquery-3.3.1.min.js\"></script>\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n<script src=\"assets/templates/js/bootstrap.bundle.min.js\"></script>\n<script src=\"assets/templates/js/bootstrap.min.js\"></script>\n<script src=\"assets/templates/js/owl.carousel.min.js\"></script>\n<script src=\"assets/templates/js/script.js\"></script>\n</body>\n</html>','0','1532425723','1532446160','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('4','index_page','','2','none','0','0','<header>\n<nav class=\"navbar navbar-expand-lg \">\n  <a class=\"navbar-brand\" href=\"#\"><img src=\"assets/templates/img/index/logo.png\" alt=\"\"></a>\n  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n    <span class=\"navbar-toggler-icon\"></span>\n  </button>\n  <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n    <ul class=\"navbar-nav\">\n      <li class=\"nav-item active\">\n        <a class=\"nav-link\" href=\"#\">О НАС <span class=\"sr-only\">(current)</span></a>\n      </li>\n      <li class=\"nav-item\">\n        <a class=\"nav-link\" href=\"#\">КОНТАКТЫ</a>\n      </li>\n      <li class=\"nav-item\">\n        <a class=\"nav-link\" href=\"#\">ЦЕНЫ НА АВТО</a>\n      </li>\n    </ul>\n  </div>\n</nav>\n<section id=\"header\">\n	<div class=\"container-fluid\" id=\"index-cont\">\n		<div class=\"row\">\n			<div class=\"col\" id=\"index-text\">\n				<h1>ПОЧЕМУ ДРУГИЕ ЕЗДЯТ НА МАШИНАХ ИЗ США, А ВЫ НЕТ?\n				<br><span>ХВАТИТ ТЕРЯТЬ СВОИ ВОЗМОЖНОСТИ!</span>\n				</h1>\n				<div class=\"line\"><div class=\"active\"></div></div>\n				<h2>ВЫГОДНЫЕ ЦЕНЫ БЫСТРОЕ ОФОРМЛЕНИЕ ЗАКАЗА, БОЛЬШОЙ ВЫБОР АВТОМОБИЛЕЙ</h2>\n				<form action=\"#\"  id=\"call-form\">\n				\n				<a href=\"tel:8-800-500-35-34\"><img src=\"assets/templates/img/index/icon.png\" alt=\"phone\">8-800-500-35-34</a>\n				<button type=\"submit\" class=\"call-button\">Заказать звонок</button>\n			</form>	\n			\n			</div>\n			<div class=\"col-2\">\n				<form action=\"#\" id=\"index-form\">\n				<h1>Заполните форму и\n					получите быструю\n					консультацию сейчас!</h1>\n				<input type=\"name\" placeholder=\"Имя...\">\n				<input type=\"phone\"  placeholder=\"Номер телефона...\">\n				<button type=\"submit\">Отправить заявку</button>\n				</form>\n			</div>			\n		</div>		\n	</div>\n	<div id=\"car-back\"></div>\n	<div id=\"car-floor\"></div>\n</section>	\n</header>\n','0','1532426504','1532525528','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('5','review_page','','2','none','0','0','<section id=\"reviews\">\n	<div class=\"container-fluid\">\n		<div class=\"row\">\n			<div class=\"col\">\n				<div class=\"title-block\">\n					<div class=\"title\">Отзывы наших покупателей</div>\n					<div class=\"line\"><div class=\"active\"></div></div>\n				</div>\n				<div class=\"owl-block\">\n					<div class=\"owl-carousel\">\n						<div class=\"item\">\n							<div class=\"photo\"><img src=\"assets/templates/img/index/photo_owl.png\" alt=\"\"><div class=\"name\">Кристиан Бэйл</div></div>\n							<div class=\"block\">Отличный сервис! Сам не однократно\n								гонял тачки с США в Украину, никаких\n								проблем. На томожке узнают пропу-\n								скают без базара. Всем советую! Маме,\n								папе, тёще! </div>\n						</div>\n						<div class=\"item\">\n							<div class=\"photo\"><img src=\"assets/templates/img/index/photo_owl.png\" alt=\"\"><div class=\"name\">Кристиан Бэйл</div></div>\n							<div class=\"block\">Отличный сервис! Сам не однократно\n								гонял тачки с США в Украину, никаких\n								проблем. На томожке узнают пропу-\n								скают без базара. Всем советую! Маме,\n								папе, тёще! </div>\n						</div>\n						<div class=\"item\">\n							<div class=\"photo\"><img src=\"assets/templates/img/index/photo_owl.png\" alt=\"\"><div class=\"name\">Кристиан Бэйл</div></div>\n							<div class=\"block\">\n								гонял тачки с США в Украину, никаких\n								проблем. На томожке узнают пропу-\n								скают без базара. Всем советую! Маме,\n								папе, тёще! </div>\n						</div>\n					</div>\n				</div>\n			</div>			\n		</div>\n	</div>	\n</section>','0','1532525531','1532525531','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('6','video_page','','2','none','0','0','<section id=\"video\">\n	<div class=\"container-fluid\">\n		<div class=\"row\">\n			<div class=\"col\">\n				<div class=\"title-block\">\n					<div class=\"title\">УЗНАЙТЕ О НАС БОЛЬШЕ!</div>\n					<div class=\"line\"><div class=\"active\"></div></div>\n					<div class=\"low-title\">Посмотрите видео о том как мы работаем для вас</div>\n				</div>\n				<a href=\"http://youtube.com\"><div class=\"video-block\">\n					<div class=\"preview_video\"><img class=\"but_play\" src=\"assets/templates/img/video/but_play.png\" alt=\"but\"></div>					\n				</div>\n				</a>\n			</div>\n		</div>\n	</div>\n</section>','0','1532525921','1532528844','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('7','list_page','','2','none','0','0','<section id=\"list\">\n	<div class=\"container-fluid\">\n		<div class=\"row\">\n			<div class=\"col\">\n				<div class=\"title-block\">\n					<div class=\"title\">Как купить авто из США, поставить на «Украинские номера»\n				</div>\n				<div class=\"title-block\">\n					<div class=\"title\">\nи сэкономить при этом 30-50% стоимости</div>\n					<div class=\"line\"><div class=\"active\"></div></div>\n				</div>\n			</div>\n		</div>\n		<div class=\"container\">\n			<div class=\"row\">\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/1.png\" alt=\"\"></div><span>Оставьте заявку на <br>нашем сайте</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/2.png\" alt=\"\"></div><span>Мы бесплатно подбираем варианты с учётом ваших пожеланий и отправляем вам для ознакомления и выбора</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/3.png\" alt=\"\"></div><span>Подписываем договор</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/4.png\" alt=\"\"></div><span>Вы участвуете в аукционе на выбранный лот на онлайн-площадках Copart, I.A.A.I. или Manheime</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/5.png\" alt=\"\"></div><span>Ждем доставку автомобиля из США</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/6.png\" alt=\"\"></div><span>Выгрузка в порту Одессы, экспедирование, растаможка с учётом Закона Украины №3251, заключение автосервиса - ВСЁ ЭТО МЫ БЕРЕМ НА СЕБЯ!</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/7.png\" alt=\"\"></div><span>Помогаем с ремонтом авто</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/8.png\" alt=\"\"></div><span>получаем сертификат соответствия в центре сертификации</span></div></div>\n				<div class=\"col-4\"><div class=\"block-list\"><div class=\"image-block\"><img src=\"assets/templates/img/list/9.png\" alt=\"\"></div><span>Ставим авто на «Украинские номера» и вы становитесь обладателем автомобиля мечты с экономией 30-50% от среднерыночной цены</span></div></div>\n			</div>\n		</div>\n	</div>\n</section>','0','1532529204','1532531291','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('8','etap_page','','2','none','0','0','<section id=\"etap\">\n	<div class=\"container-fluid size\">\n		<div class=\"row\">\n			<div class=\"col\">\n				<div class=\"title-block\">\n					<div class=\"title\">8 ЭТАПОВ ПРОВЕРКИ АВТОМОБИЛЕЙ В НАШЕЙ КОМПАНИИ</div>\n					<div class=\"line\"><div class=\"active\"></div></div>\n				</div>\n			</div>\n		</div>		\n	</div>\n	<div class=\"container-fluid next-size\">\n		<div class=\"row etap-block\">\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/1.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/2.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/3.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/4.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/5.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/6.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/7.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n			<div class=\"col-6\">\n				<div class=\"image-etap\">\n					<img src=\"assets/templates/img/etap/8.png\" alt=\"\">\n				</div>\n				<div class=\"text-etap\">\n					Помощь в получении нового документа на втомобиль в случае если действующий сертификат не подходит для отправки авто на экспорт. ертификаты, которые не подходят для экспорта Bill of Sale, Junk, NY 907A, Parts Only\n				</div>\n			</div>\n		</div>\n	</div>\n</section>','0','1532532928','1532591252','0');

INSERT INTO `cn8c_site_htmlsnippets` VALUES ('9','deal_page','','2','none','0','0','<section id=\"deal\">\n	<div class=\"container\">\n		<div class=\"row\">\n			<div class=\"col\">\n				<div class=\"title-block\">\n					<div class=\"title\">ПОЧЕМУ НУЖНО РАБОТАТЬ ИМЕННО С НАМИ?</div>\n					<div class=\"line\"><div class=\"active\"></div></div>\n				</div>\n			</div>\n		</div>\n	</div>\n	<div class=\"container\">\n		<div class=\"row\">\n			<div class=\"col-4\">\n				<div class=\"deal-block\">\n					<div class=\"deal-img-block\"><img src=\"assets/templates/img/deal/1.png\" alt=\"\"></div>\n					<div class=\"deal-title\">Работаем с главными аукционами Америки</div>\n					<div class=\"deal-info\">Подбираем машины на <span class=\"bold\">CoCopart, \n						IAAI, Manheim, Adesa</span> - на этих\n						Американских автомобильных\n						аукционах, продающих <span class=\"bold\">240 000</span>\n						машин ежедневно\n					</div>\n				</div>\n			</div>\n			<div class=\"col-4\">\n				<div class=\"deal-block\">\n					<div class=\"deal-img-block pt15px\"><img src=\"assets/templates/img/deal/2.png\" alt=\"\"></div>\n					<div class=\"deal-title\">Минимизируем затраты при оформлении в Украине</div>\n					<div class=\"deal-info\">Берем на себя не только доставку, но и помогаем в решении вопросов, связанных с растоможкой, сертификацией и постановкой на учёт</div>\n				</div>\n			</div>\n			<div class=\"col-4\">\n				<div class=\"deal-block\">\n					<div class=\"deal-img-block\"><img src=\"assets/templates/img/deal/1-1.png\" alt=\"\"></div>\n					<div class=\"deal-title\">Даём <span class=\"red\">100%</span> гарантию возврата депозита</div>\n					<div class=\"deal-info\">Для участия в торгах вам нужно внести <span class=\"bold\">10%</span> от цены авто. Если по каким-то причинам сделка нее состоится, мы даём гарантию быстрого возвращения ваших денег</div>\n				</div>\n			</div>			\n		</div>	\n	</div>','0','1532610993','1532615967','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_module_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_module_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_module_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

#
# Dumping data for table `cn8c_site_module_access`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_module_depobj`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_module_depobj`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_module_depobj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

#
# Dumping data for table `cn8c_site_module_depobj`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_modules`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_modules`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_modules` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Site Modules';

#
# Dumping data for table `cn8c_site_modules`
#

INSERT INTO `cn8c_site_modules` VALUES ('1','Doc Manager','<strong>1.1</strong> Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions','0','0','4','0','0','','0','','0','0','docman435243542tf542t5t','1','',' \n/**\n * Doc Manager\n * \n * Quickly perform bulk updates to the Documents in your site including templates, publishing details, and permissions\n * \n * @category	module\n * @version 	1.1\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal	@properties\n * @internal	@guid docman435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/docmanager/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  09/04/2016\n */\n\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/docmanager.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_frontend.class.php\');\ninclude_once(MODX_BASE_PATH.\'assets/modules/docmanager/classes/dm_backend.class.php\');\n\n$dm = new DocManager($modx);\n$dmf = new DocManagerFrontend($dm, $modx);\n$dmb = new DocManagerBackend($dm, $modx);\n\n$dm->ph = $dm->getLang();\n$dm->ph[\'theme\'] = $dm->getTheme();\n$dm->ph[\'ajax.endpoint\'] = MODX_SITE_URL.\'assets/modules/docmanager/tv.ajax.php\';\n$dm->ph[\'datepicker.offset\'] = $modx->config[\'datepicker_offset\'];\n$dm->ph[\'datetime.format\'] = $modx->config[\'datetime_format\'];\n\nif (isset($_POST[\'tabAction\'])) {\n    $dmb->handlePostback();\n} else {\n    $dmf->getViews();\n    echo $dm->parseTemplate(\'main.tpl\', $dm->ph);\n}');

INSERT INTO `cn8c_site_modules` VALUES ('2','Extras','<strong>0.1.3</strong> first repository for Evolution CMS','0','0','4','0','0','','0','','0','0','store435243542tf542t5t','1','',' \n/**\n * Extras\n * \n * first repository for Evolution CMS\n * \n * @category	module\n * @version 	0.1.3\n * @internal	@properties\n * @internal	@guid store435243542tf542t5t	\n * @internal	@shareparams 1\n * @internal	@dependencies requires files located at /assets/modules/store/\n * @internal	@modx_category Manager and Admin\n * @internal    @installset base, sample\n * @lastupdate  25/11/2016\n */\n\n//AUTHORS: Bumkaka & Dmi3yy \ninclude_once(\'../assets/modules/store/core.php\');');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_plugin_events`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_plugin_events`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order',
  PRIMARY KEY (`pluginid`,`evtid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

#
# Dumping data for table `cn8c_site_plugin_events`
#

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','23','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','29','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','35','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','41','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','47','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','73','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('1','88','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','25','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','27','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','37','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','39','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','43','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','45','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','49','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','51','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','55','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','57','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','75','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','77','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','206','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','210','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('2','211','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','34','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','35','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','36','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','40','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','41','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('3','42','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('4','80','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('4','81','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('4','93','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','28','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','29','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','30','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','31','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','35','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','53','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('5','205','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('6','202','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('7','3','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('7','13','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('7','28','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('7','31','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('7','92','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','3','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','20','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','85','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','87','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','88','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','91','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('8','92','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('9','100','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('10','70','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('10','202','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('10','1000','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('11','4','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('11','79','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('11','90','0');

INSERT INTO `cn8c_site_plugin_events` VALUES ('11','1000','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_plugins`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_plugins`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_plugins` (
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

#
# Dumping data for table `cn8c_site_plugins`
#

INSERT INTO `cn8c_site_plugins` VALUES ('1','CodeMirror','<strong>1.5</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)','0','4','0','\n/**\n * CodeMirror\n *\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\n *\n * @category    plugin\n * @version     1.5\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit\n * @internal    @modx_category Manager and Admin\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\n * @internal    @installset base\n * @reportissues https://github.com/evolution-cms/evolution/issues/\n * @documentation Official docs https://codemirror.net/doc/manual.html\n * @author      hansek from http://www.modxcms.cz\n * @author      update Mihanik71\n * @author      update Deesen\n * @author      update 64j\n * @lastupdate  08-01-2018\n */\n\n$_CM_BASE = \'assets/plugins/codemirror/\';\n\n$_CM_URL = $modx->config[\'site_url\'] . $_CM_BASE;\n\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');','0','{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('2','ElementsInTree','<strong>1.5.9</strong> Get access to all Elements and Modules inside Manager sidebar','0','4','0','require MODX_BASE_PATH.\'assets/plugins/elementsintree/plugin.elementsintree.php\';','0','{\n  \"adminRoleOnly\": [\n    {\n      \"label\": \"Administrators only\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ],\n  \"treeButtonsInTab\": [\n    {\n      \"label\": \"Tree buttons in tab\",\n      \"type\": \"list\",\n      \"value\": \"yes\",\n      \"options\": \"yes,no\",\n      \"default\": \"yes\",\n      \"desc\": \"\"\n    }\n  ]\n}','0',' ','0','1532425709');

INSERT INTO `cn8c_site_plugins` VALUES ('3','FileSource','<strong>0.1</strong> Save snippet and plugins to file','0','4','0','require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';','0','','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('4','Forgot Manager Login','<strong>1.1.7</strong> Resets your manager login when you forget your password via email confirmation','0','4','0','require MODX_BASE_PATH.\'assets/plugins/forgotmanagerlogin/plugin.forgotmanagerlogin.php\';','0','','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('5','ManagerManager','<strong>0.6.3</strong> Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.','0','4','0','\n/**\n * ManagerManager\n *\n * Customize the EVO Manager to offer bespoke admin functions for end users or manipulate the display of document fields in the manager.\n *\n * @category plugin\n * @version 0.6.3\n * @license http://creativecommons.org/licenses/GPL/2.0/ GNU Public License (GPL v2)\n * @internal @properties &remove_deprecated_tv_types_pref=Remove deprecated TV types;list;yes,no;yes &config_chunk=Configuration Chunk;text;mm_rules\n * @internal @events OnDocFormRender,OnDocFormPrerender,OnBeforeDocFormSave,OnDocFormSave,OnDocDuplicate,OnPluginFormRender,OnTVFormRender\n * @internal @modx_category Manager and Admin\n * @internal @installset base\n * @internal @legacy_names Image TV Preview, Show Image TVs\n * @reportissues https://github.com/DivanDesign/MODXEvo.plugin.ManagerManager/\n * @documentation README [+site_url+]assets/plugins/managermanager/readme.html\n * @documentation Official docs http://code.divandesign.biz/modx/managermanager\n * @link        Latest version http://code.divandesign.biz/modx/managermanager\n * @link        Additional tools http://code.divandesign.biz/modx\n * @link        Full changelog http://code.divandesign.biz/modx/managermanager/changelog\n * @author      Inspired by: HideEditor plugin by Timon Reinhard and Gildas; HideManagerFields by Brett @ The Man Can!\n * @author      DivanDesign studio http://www.DivanDesign.biz\n * @author      Nick Crossland http://www.rckt.co.uk\n * @author      Many others\n * @lastupdate  22/01/2018\n */\n\n// Run the main code\ninclude($modx->config[\'base_path\'].\'assets/plugins/managermanager/mm.inc.php\');\n','0','{\"remove_deprecated_tv_types_pref\":[{\"label\":\"Remove deprecated TV types\",\"type\":\"list\",\"value\":\"yes\",\"options\":\"yes,no\",\"default\":\"yes\",\"desc\":\"\"}],\"config_chunk\":[{\"label\":\"Configuration Chunk\",\"type\":\"text\",\"value\":\"mm_rules\",\"default\":\"mm_rules\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('6','OutdatedExtrasCheck','<strong>1.4.0</strong> Check for Outdated critical extras not compatible with EVO 1.4.0','0','4','0','/**\n * OutdatedExtrasCheck\n *\n * Check for Outdated critical extras not compatible with EVO 1.4.0\n *\n * @category	plugin\n * @version     1.4.0 \n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @package     evo\n * @author      Author: Nicola Lambathakis\n * @internal    @events OnManagerWelcomeHome\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;All &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username) &DittoVersion=Min Ditto version:;string;2.1.3 &EformVersion=Min eForm version:;string;1.4.9 &AjaxSearchVersion=Min AjaxSearch version:;string;1.11.0 &WayfinderVersion=Min Wayfinder version:;string;2.0.5 &WebLoginVersion=Min WebLogin version:;string;1.2 &WebSignupVersion=Min WebSignup version:;string;1.1.2 &WebChangePwdVersion=Min WebChangePwd version:;string;1.1.2 &BreadcrumbsVersion=Min Breadcrumbs version:;string;1.0.5 &ReflectVersion=Min Reflect version:;string;2.2 &JotVersion=Min Jot version:;string;1.1.5 &MtvVersion=Min multiTV version:;string;2.0.13 &badthemes=Outdated Manager Themes:;string;MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\n * @internal    @modx_category Manager and Admin\n * @internal    @installset base\n * @internal    @disabled 0\n */\n\n// get manager role check\n$internalKey = $modx->getLoginUserID();\n$sid = $modx->sid;\n$role = $_SESSION[\'mgrRole\'];\n$user = $_SESSION[\'mgrShortname\'];\n// show widget only to Admin role 1\nif(($role!=1) AND ($wdgVisibility == \'AdminOnly\')) {}\n// show widget to all manager users excluded Admin role 1\nelse if(($role==1) AND ($wdgVisibility == \'AdminExcluded\')) {}\n// show widget only to \"this\" role id\nelse if(($role!=$ThisRole) AND ($wdgVisibility == \'ThisRoleOnly\')) {}\n// show widget only to \"this\" username\nelse if(($user!=$ThisUser) AND ($wdgVisibility == \'ThisUserOnly\')) {}\nelse {\n// get plugin id and setting button\n$result = $modx->db->select(\'id\', $this->getFullTableName(\"site_plugins\"), \"name=\'{$modx->event->activePlugin}\' AND disabled=0\");\n$pluginid = $modx->db->getValue($result);\nif($modx->hasPermission(\'edit_plugin\')) {\n$button_pl_config = \'<a data-toggle=\"tooltip\" href=\"javascript:;\" title=\"\' . $_lang[\"settings_config\"] . \'\" class=\"text-muted pull-right\" onclick=\"parent.modx.popup({url:\\\'\'. MODX_MANAGER_URL.\'?a=102&id=\'.$pluginid.\'&tab=1\\\',title1:\\\'\' . $_lang[\"settings_config\"] . \'\\\',icon:\\\'fa-cog\\\',iframe:\\\'iframe\\\',selector2:\\\'#tabConfig\\\',position:\\\'center center\\\',width:\\\'80%\\\',height:\\\'80%\\\',hide:0,hover:0,overlay:1,overlayclose:1})\" ><i class=\"fa fa-cog fa-spin-hover\" style=\"color:#FFFFFF;\"></i> </a>\';\n}\n$modx->setPlaceholder(\'button_pl_config\', $button_pl_config);\n//plugin lang\n$_oec_lang = array();\n$plugin_path = $modx->config[\'base_path\'] . \"assets/plugins/extrascheck/\";\ninclude($plugin_path . \'lang/english.php\');\nif (file_exists($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\')) {\ninclude($plugin_path . \'lang/\' . $modx->config[\'manager_language\'] . \'.php\');\n}\n//run the plugin\n// get globals\nglobal $modx,$_lang;\n//function to extract snippet version from description <strong></strong> tags \nif (!function_exists(\'getver\')) {\nfunction getver($string, $tag)\n{\n$content =\"/<$tag>(.*?)<\\/$tag>/\";\npreg_match($content, $string, $text);\nreturn $text[1];\n	}\n}\n$e = &$modx->Event;\n$EVOversion = $modx->config[\'settings_version\'];\n$output = \'\';\n//get extras module id for the link\n$modtable = $modx->getFullTableName(\'site_modules\');\n$getExtra = $modx->db->select( \"id, name\", $modtable, \"name=\'Extras\'\" );\nwhile( $row = $modx->db->getRow( $getExtra ) ) {\n$ExtrasID = $row[\'id\'];\n}\n//check outdated files\n//ajax index\n$indexajax = \"../index-ajax.php\";\nif (file_exists($indexajax)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>index-ajax.php</b> \'.$_oec_lang[\'not_used\'].\' <b>Evolution \'.$EVOversion.\'</b>.  \'.$_oec_lang[\'if_dont_use\'].\', \'.$_oec_lang[\'please_delete\'].\'.</div>\';\n}\n//check outdated default manager themes\n$oldthemes = explode(\",\",\"$badthemes\");\nforeach ($oldthemes as $oldtheme){\n	if (file_exists(\'media/style/\'.$oldtheme)){\n    $output .= \'<div class=\"widget-wrapper alert alert-danger\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\'.$oldtheme.\'</b> \'.$_lang[\"manager_theme\"].\',  \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>.   \'.$_oec_lang[\'please_delete\'].\' \'.$_oec_lang[\'from_folder\'].\' \' . MODX_MANAGER_PATH . \'media/style/.</div>\';\n}\n}	\n//get site snippets table\n$table = $modx->getFullTableName(\'site_snippets\');\n//check ditto\n//get min version from config\n$minDittoVersion = $DittoVersion;\n//search the snippet by name\n$CheckDitto = $modx->db->select( \"id, name, description\", $table, \"name=\'Ditto\'\" );\nif($CheckDitto != \'\'){\nwhile( $row = $modx->db->getRow( $CheckDitto ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_ditto_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_ditto_version,$minDittoVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_ditto_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minDittoVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>DocLister</b></div>\';\n		}\n	}\n} \n//end check ditto\n\n//check eform\n//get min version from config\n$minEformVersion = $EformVersion;\n//search the snippet by name\n$CheckEform = $modx->db->select( \"id, name, description\", $table, \"name=\'eForm\'\" );\nif($CheckEform != \'\'){\nwhile( $row = $modx->db->getRow( $CheckEform ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Eform_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Eform_version,$minEformVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Eform_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minEformVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check eform\n	\n//check AjaxSearch\n//get min version from config\n$minAjaxSearchVersion = $AjaxSearchVersion;\n//search the snippet by name\n$CheckAjaxSearch = $modx->db->select( \"id, name, description\", $table, \"name=\'AjaxSearch\'\" );\nif($CheckAjaxSearch != \'\'){\nwhile( $row = $modx->db->getRow( $CheckAjaxSearch ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_AjaxSearch_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_AjaxSearch_version,$minAjaxSearchVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_AjaxSearch_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minAjaxSearchVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check AjaxSearch	\n	\n//check Wayfinder\n//get min version from config\n$minWayfinderVersion = $WayfinderVersion;\n//search the snippet by name\n$CheckWayfinder = $modx->db->select( \"id, name, description\", $table, \"name=\'Wayfinder\'\" );\nif($CheckWayfinder != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWayfinder ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Wayfinder_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Wayfinder_version,$minWayfinderVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Wayfinder_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWayfinderVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Wayfinder\n	\n//check WebLogin\n//get min version from config\n$minWebLoginVersion = $WebLoginVersion;\n//search the snippet by name\n$CheckWebLogin = $modx->db->select( \"id, name, description\", $table, \"name=\'WebLogin\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebLogin ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebLogin_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebLogin_version,$minWebLoginVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebLogin_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebLoginVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebLogin\n\n//check WebChangePwd\n//get min version from config\n$minWebChangePwdVersion = $WebChangePwdVersion;\n//search the snippet by name\n$CheckWebChangePwd = $modx->db->select( \"id, name, description\", $table, \"name=\'WebChangePwd\'\" );\nif($CheckWebLogin != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebChangePwd ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebChangePwd_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebChangePwd_version,$minWebChangePwdVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebChangePwd_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebChangePwdVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebChangePwd\n	\n//check WebSignup\n//get min version from config\n$minWebSignupVersion = $WebSignupVersion;\n//search the snippet by name\n$CheckWebSignup = $modx->db->select( \"id, name, description\", $table, \"name=\'WebSignup\'\" );\nif($CheckWebSignup != \'\'){\nwhile( $row = $modx->db->getRow( $CheckWebSignup ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_WebSignup_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_WebSignup_version,$minWebSignupVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_WebSignup_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minWebSignupVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a> \'.$_oec_lang[\'or_move_to\'].\' <b>FormLister</b></div>\';\n		}\n	}\n} \n//end check WebSignup\n\n//check Breadcrumbs\n//get min version from config\n$minBreadcrumbsVersion = $BreadcrumbsVersion;\n//search the snippet by name\n$CheckBreadcrumbs = $modx->db->select( \"id, name, description\", $table, \"name=\'Breadcrumbs\'\" );\nif($CheckBreadcrumbs != \'\'){\nwhile( $row = $modx->db->getRow( $CheckBreadcrumbs ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Breadcrumbs_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Breadcrumbs_version,$minBreadcrumbsVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Breadcrumbs_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minBreadcrumbsVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Breadcrumbs\n\n//check Reflect\n//get min version from config\n$minReflectVersion = $ReflectVersion;\n//search the snippet by name\n$CheckReflect = $modx->db->select( \"id, name, description\", $table, \"name=\'Reflect\'\" );\nif($CheckReflect != \'\'){\nwhile( $row = $modx->db->getRow( $CheckReflect ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Reflect_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Reflect_version,$minReflectVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Reflect_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minReflectVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Reflect\n\n//check Jot\n//get min version from config\n$minJotVersion = $JotVersion;\n//search the snippet by name\n$CheckJot = $modx->db->select( \"id, name, description\", $table, \"name=\'Jot\'\" );\nif($CheckJot != \'\'){\nwhile( $row = $modx->db->getRow( $CheckJot ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_Jot_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_Jot_version,$minJotVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_Jot_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minJotVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a>.</div>\';\n		}\n	}\n} \n//end check Jot\n	\n//check Multitv\n//get min version from config\n$minMtvVersion = $MtvVersion;\n//search the snippet by name\n$CheckMtv = $modx->db->select( \"id, name, description\", $table, \"name=\'multiTV\'\" );\nif($CheckMtv != \'\'){\nwhile( $row = $modx->db->getRow( $CheckMtv ) ) {\n//extract snippet version from description <strong></strong> tags \n$curr_mtv_version = getver($row[\'description\'],\"strong\");\n//check snippet version and return an alert if outdated\nif (version_compare($curr_mtv_version,$minMtvVersion,\'lt\')){\n$output .= \'<div class=\"widget-wrapper alert alert-warning\"><i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i> <b>\' . $row[\'name\'] . \'</b> \'.$_lang[\"snippet\"].\' (version \' . $curr_mtv_version . \') \'.$_oec_lang[\'isoutdated\'].\' <b>Evolution \'.$EVOversion.\'</b>. \'.$_oec_lang[\'please_update\'].\' <b>\' . $row[\'name\'] . \'</b> \'.$_oec_lang[\"to_latest\"].\' (\'.$_oec_lang[\'min _required\'].\' \'.$minMtvVersion.\') \'.$_oec_lang[\'from\'].\' <a target=\"main\" href=\"index.php?a=112&id=\'.$ExtrasID.\'\">\'.$_oec_lang[\'extras_module\'].\'</a></div>\';\n		}\n	}\n} \n//end check Multitv\n\nif($output != \'\'){\nif($e->name == \'OnManagerWelcomeHome\') {\n$out = $output;\n$wdgTitle = \'EVO \'.$EVOversion.\' - \'.$_oec_lang[\'title\'].\'\';\n$widgets[\'xtraCheck\'] = array(\n				\'menuindex\' =>\'0\',\n				\'id\' => \'xtraCheck\'.$pluginid.\'\',\n				\'cols\' => \'col-12\',\n                \'headAttr\' => \'style=\"background-color:#B60205; color:#FFFFFF;\"\',\n				\'bodyAttr\' => \'\',\n				\'icon\' => \'fa-warning\',\n				\'title\' => \'\'.$wdgTitle.\' \'.$button_pl_config.\'\',\n				\'body\' => \'<div class=\"card-body\">\'.$out.\'</div>\',\n				\'hide\' => \'0\'\n			);	\n            $e->output(serialize($widgets));\nreturn;\n		}\n	}\n}','0','{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"DittoVersion\":[{\"label\":\"Min Ditto version:\",\"type\":\"string\",\"value\":\"2.1.3\",\"default\":\"2.1.3\",\"desc\":\"\"}],\"EformVersion\":[{\"label\":\"Min eForm version:\",\"type\":\"string\",\"value\":\"1.4.9\",\"default\":\"1.4.9\",\"desc\":\"\"}],\"AjaxSearchVersion\":[{\"label\":\"Min AjaxSearch version:\",\"type\":\"string\",\"value\":\"1.11.0\",\"default\":\"1.11.0\",\"desc\":\"\"}],\"WayfinderVersion\":[{\"label\":\"Min Wayfinder version:\",\"type\":\"string\",\"value\":\"2.0.5\",\"default\":\"2.0.5\",\"desc\":\"\"}],\"WebLoginVersion\":[{\"label\":\"Min WebLogin version:\",\"type\":\"string\",\"value\":\"1.2\",\"default\":\"1.2\",\"desc\":\"\"}],\"WebSignupVersion\":[{\"label\":\"Min WebSignup version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"WebChangePwdVersion\":[{\"label\":\"Min WebChangePwd version:\",\"type\":\"string\",\"value\":\"1.1.2\",\"default\":\"1.1.2\",\"desc\":\"\"}],\"BreadcrumbsVersion\":[{\"label\":\"Min Breadcrumbs version:\",\"type\":\"string\",\"value\":\"1.0.5\",\"default\":\"1.0.5\",\"desc\":\"\"}],\"ReflectVersion\":[{\"label\":\"Min Reflect version:\",\"type\":\"string\",\"value\":\"2.2\",\"default\":\"2.2\",\"desc\":\"\"}],\"JotVersion\":[{\"label\":\"Min Jot version:\",\"type\":\"string\",\"value\":\"1.1.5\",\"default\":\"1.1.5\",\"desc\":\"\"}],\"MtvVersion\":[{\"label\":\"Min multiTV version:\",\"type\":\"string\",\"value\":\"2.0.13\",\"default\":\"2.0.13\",\"desc\":\"\"}],\"badthemes\":[{\"label\":\"Outdated Manager Themes:\",\"type\":\"string\",\"value\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"default\":\"MODxRE2_DropdownMenu,MODxRE2,MODxRE,MODxCarbon,D3X,MODxFLAT,wMOD,ScienceStyle\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('7','Quick Manager+','<strong>1.5.10</strong> Enables QuickManager+ front end content editing support','0','4','0','\n/**\n * Quick Manager+\n * \n * Enables QuickManager+ front end content editing support\n *\n * @category 	plugin\n * @version 	1.5.10\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL v3)\n * @internal    @properties &jqpath=Path to jQuery;text;assets/js/jquery.min.js &loadmanagerjq=Load jQuery in manager;list;true,false;false &loadfrontendjq=Load jQuery in front-end;list;true,false;false &noconflictjq=jQuery noConflict mode in front-end;list;true,false;false &loadfa=Load Font Awesome css in front-end;list;true,false;true &loadtb=Load modal box in front-end;list;true,false;true &tbwidth=Modal box window width;text;80% &tbheight=Modal box window height;text;90% &hidefields=Hide document fields from front-end editors;text;parent &hidetabs=Hide document tabs from front-end editors;text; &hidesections=Hide document sections from front-end editors;text; &addbutton=Show add document here button;list;true,false;true &tpltype=New document template type;list;parent,id,selected;parent &tplid=New document template id;int;3 &custombutton=Custom buttons;textarea; &managerbutton=Show go to manager button;list;true,false;true &logout=Logout to;list;manager,front-end;manager &disabled=Plugin disabled on documents;text; &autohide=Autohide toolbar;list;true,false;true &position= Toolbar position;list;top,right,bottom,left,before;top &editbuttons=Inline edit buttons;list;true,false;false &editbclass=Edit button CSS class;text;qm-edit &newbuttons=Inline new resource buttons;list;true,false;false &newbclass=New resource button CSS class;text;qm-new &tvbuttons=Inline template variable buttons;list;true,false;false &tvbclass=Template variable button CSS class;text;qm-tv &removeBg=Remove toolbar background;list;yes,no;no &buttonStyle=QuickManager buttons CSS stylesheet;list;actionButtons,navButtons;navButtons  \n * @internal	@events OnParseDocument,OnWebPagePrerender,OnDocFormPrerender,OnDocFormSave,OnManagerLogout \n * @internal	@modx_category Manager and Admin\n * @internal    @legacy_names QM+,QuickEdit\n * @internal    @installset base, sample\n * @internal    @disabled 1\n * @reportissues https://github.com/modxcms/evolution\n * @documentation Official docs [+site_url+]assets/plugins/qm/readme.html\n * @link        http://www.maagit.fi/modx/quickmanager-plus\n * @author      Mikko Lammi\n * @author      Since 2011: yama, dmi3yy, segr, Nicola1971.\n * @lastupdate  02/02/2018 \n */\n\n// In manager\nif (!$modx->checkSession()) return;\n\n$show = TRUE;\n\nif ($disabled  != \'\') {\n    $arr = array_filter(array_map(\'intval\', explode(\',\', $disabled)));\n    if (in_array($modx->documentIdentifier, $arr)) {\n        $show = FALSE;\n    }\n}\n\nif ($show) {\n    // Replace [*#tv*] with QM+ edit TV button placeholders\n    if ($tvbuttons == \'true\') {\n        if ($modx->event->name == \'OnParseDocument\') {\n             $output = &$modx->documentOutput;\n             $output = preg_replace(\'~\\[\\*#(.*?)\\*\\]~\', \'<!-- \'.$tvbclass.\' $1 -->[*$1*]\', $output);\n             $modx->documentOutput = $output;\n         }\n     }\n    include_once($modx->config[\'base_path\'].\'assets/plugins/qm/qm.inc.php\');\n    $qm = new Qm($modx, $jqpath, $loadmanagerjq, $loadfrontendjq, $noconflictjq, $loadfa, $loadtb, $tbwidth, $tbheight, $hidefields, $hidetabs, $hidesections, $addbutton, $tpltype, $tplid, $custombutton, $managerbutton, $logout, $autohide, $position, $editbuttons, $editbclass, $newbuttons, $newbclass, $tvbuttons, $tvbclass, $buttonStyle, $removeBg);\n}\n','0','{\"jqpath\":[{\"label\":\"Path to jQuery\",\"type\":\"text\",\"value\":\"assets\\/js\\/jquery.min.js\",\"default\":\"assets\\/js\\/jquery.min.js\",\"desc\":\"\"}],\"loadmanagerjq\":[{\"label\":\"Load jQuery in manager\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfrontendjq\":[{\"label\":\"Load jQuery in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"noconflictjq\":[{\"label\":\"jQuery noConflict mode in front-end\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"loadfa\":[{\"label\":\"Load Font Awesome css in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"loadtb\":[{\"label\":\"Load modal box in front-end\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tbwidth\":[{\"label\":\"Modal box window width\",\"type\":\"text\",\"value\":\"80%\",\"default\":\"80%\",\"desc\":\"\"}],\"tbheight\":[{\"label\":\"Modal box window height\",\"type\":\"text\",\"value\":\"90%\",\"default\":\"90%\",\"desc\":\"\"}],\"hidefields\":[{\"label\":\"Hide document fields from front-end editors\",\"type\":\"text\",\"value\":\"parent\",\"default\":\"parent\",\"desc\":\"\"}],\"hidetabs\":[{\"label\":\"Hide document tabs from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"hidesections\":[{\"label\":\"Hide document sections from front-end editors\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"addbutton\":[{\"label\":\"Show add document here button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"tpltype\":[{\"label\":\"New document template type\",\"type\":\"list\",\"value\":\"parent\",\"options\":\"parent,id,selected\",\"default\":\"parent\",\"desc\":\"\"}],\"tplid\":[{\"label\":\"New document template id\",\"type\":\"int\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"custombutton\":[{\"label\":\"Custom buttons\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"managerbutton\":[{\"label\":\"Show go to manager button\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"logout\":[{\"label\":\"Logout to\",\"type\":\"list\",\"value\":\"manager\",\"options\":\"manager,front-end\",\"default\":\"manager\",\"desc\":\"\"}],\"disabled\":[{\"label\":\"Plugin disabled on documents\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"autohide\":[{\"label\":\"Autohide toolbar\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"position\":[{\"label\":\"Toolbar position\",\"type\":\"list\",\"value\":\"top\",\"options\":\"top,right,bottom,left,before\",\"default\":\"top\",\"desc\":\"\"}],\"editbuttons\":[{\"label\":\"Inline edit buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"editbclass\":[{\"label\":\"Edit button CSS class\",\"type\":\"text\",\"value\":\"qm-edit\",\"default\":\"qm-edit\",\"desc\":\"\"}],\"newbuttons\":[{\"label\":\"Inline new resource buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"newbclass\":[{\"label\":\"New resource button CSS class\",\"type\":\"text\",\"value\":\"qm-new\",\"default\":\"qm-new\",\"desc\":\"\"}],\"tvbuttons\":[{\"label\":\"Inline template variable buttons\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"tvbclass\":[{\"label\":\"Template variable button CSS class\",\"type\":\"text\",\"value\":\"qm-tv\",\"default\":\"qm-tv\",\"desc\":\"\"}],\"removeBg\":[{\"label\":\"Remove toolbar background\",\"type\":\"list\",\"value\":\"no\",\"options\":\"yes,no\",\"default\":\"no\",\"desc\":\"\"}],\"buttonStyle\":[{\"label\":\"QuickManager buttons CSS stylesheet\",\"type\":\"list\",\"value\":\"navButtons\",\"options\":\"actionButtons,navButtons\",\"default\":\"navButtons\",\"desc\":\"\"}]}','1','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('8','TinyMCE4','<strong>4.7.4</strong> Javascript rich text editor','0','4','0','\n/**\n * TinyMCE4\n *\n * Javascript rich text editor\n *\n * @category    plugin\n * @version     4.7.4\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\n * @internal    @properties &styleFormats=Custom Style Formats <b>RAW</b><br/><br/><ul><li>leave empty to use below block/inline formats</li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2</i></li><li>Also accepts full JSON-config as per TinyMCE4 docs / configure / content-formating / style_formats</li></ul>;textarea; &styleFormats_inline=Custom Style Formats <b>INLINE</b><br/><br/><ul><li>will wrap selected text with span-tag + css-class</li><li>simple-format only</li></ul>;textarea;InlineTitle,cssClass1|InlineTitle2,cssClass2 &styleFormats_block=Custom Style Formats <b>BLOCK</b><br/><br/><ul><li>will add css-class to selected block-element</li><li>simple-format only</li></ul>;textarea;BlockTitle,cssClass3|BlockTitle2,cssClass4 &customParams=Custom Parameters<br/><b>(Be careful or leave empty!)</b>;textarea; &entityEncoding=Entity Encoding;list;named,numeric,raw;named &entities=Entities;text; &pathOptions=Path Options;list;Site config,Absolute path,Root relative,URL,No convert;Site config &resizing=Advanced Resizing;list;true,false;false &disabledButtons=Disabled Buttons;text; &webTheme=Web Theme;test;webuser &webPlugins=Web Plugins;text; &webButtons1=Web Buttons 1;text;bold italic underline strikethrough removeformat alignleft aligncenter alignright &webButtons2=Web Buttons 2;text;link unlink image undo redo &webButtons3=Web Buttons 3;text; &webButtons4=Web Buttons 4;text; &webAlign=Web Toolbar Alignment;list;ltr,rtl;ltr &width=Width;text;100% &height=Height;text;400px &introtextRte=<b>Introtext RTE</b><br/>add richtext-features to \"introtext\";list;enabled,disabled;disabled &inlineMode=<b>Inline-Mode</b>;list;enabled,disabled;disabled &inlineTheme=<b>Inline-Mode</b><br/>Theme;text;inline &browser_spellcheck=<b>Browser Spellcheck</b><br/>At least one dictionary must be installed inside your browser;list;enabled,disabled;disabled &paste_as_text=<b>Force Paste as Text</b>;list;enabled,disabled;disabled\n * @internal    @events OnLoadWebDocument,OnParseDocument,OnWebPagePrerender,OnLoadWebPageCache,OnRichTextEditorRegister,OnRichTextEditorInit,OnInterfaceSettingsRender\n * @internal    @modx_category Manager and Admin\n * @internal    @legacy_names TinyMCE Rich Text Editor\n * @internal    @installset base\n * @logo        /assets/plugins/tinymce4/tinymce/logo.png\n * @reportissues https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Plugin docs https://github.com/extras-evolution/tinymce4-for-modx-evo\n * @documentation Official TinyMCE4-docs https://www.tinymce.com/docs/\n * @author      Deesen\n * @lastupdate  2018-01-17\n */\nif (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");','0','{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('9','TransAlias','<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides','0','4','0','require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';','0','{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('10','Updater','<strong>0.8.4</strong> show message about outdated CMS version','0','4','0','require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\n\n\n','0','{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evolution-cms\\/evolution\",\"default\":\"evolution-cms\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}]}','0','','0','0');

INSERT INTO `cn8c_site_plugins` VALUES ('11','userHelper','<strong>1.7.19</strong> addition to FormLister','0','5','0','\n/**\n * userHelper\n * \n * addition to FormLister\n * \n * @category    plugin\n * @version     1.7.19\n * @internal    @properties &logoutKey=Request key;text;logout &cookieName=Cookie Name;text;WebLoginPE &cookieLifetime=Cookie Lifetime, seconds;text;157680000 &maxFails=Max failed logins;text;3 &blockTime=Block for, seconds;text;3600\n * @internal    @events OnWebAuthentication,OnWebPageInit,OnPageNotFound,OnWebLogin\n * @internal    @modx_category Content\n * @internal    @disabled 1\n**/\n\nrequire MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n','0','{\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}]}','1','','0','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_snippets`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_snippets`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_snippets` (
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

#
# Dumping data for table `cn8c_site_snippets`
#

INSERT INTO `cn8c_site_snippets` VALUES ('1','DLCrumbs','<strong>1.2</strong> DLCrumbs','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('2','DLMenu','<strong>1.4.0</strong> Snippet to build menu with DocLister','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('3','DLSitemap','<strong>1.0.1</strong> Snippet to build XML sitemap','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('4','DocInfo','<strong>1</strong> Take any field from any document (fewer requests than GetField)','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/docinfo/snippet.docinfo.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('5','DocLister','<strong>2.3.15</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('6','FormLister','<strong>1.7.19</strong> Form processor','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('7','if','<strong>1.3</strong> A simple conditional snippet. Allows for eq/neq/lt/gt/etc logic within templates, resources, chunks, etc.','0','6','0','return require MODX_BASE_PATH.\'assets/snippets/if/snippet.if.php\';','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('8','phpthumb','<strong>1.3</strong> PHPThumb creates thumbnails and altered images on the fly and caches them','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/phpthumb/snippet.phpthumb.php\';\n','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('9','summary','<strong>2.0.2</strong> Truncates the string to the specified length','0','5','0','return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';','0','','','0','0','0');

INSERT INTO `cn8c_site_snippets` VALUES ('10','multiTV','<strong>2.0.14</strong> Custom Template Variabe containing a sortable multi item list or a datatable','0','5','0','return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n','0','','','0','0','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_templates` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

#
# Dumping data for table `cn8c_site_templates`
#

INSERT INTO `cn8c_site_templates` VALUES ('3','Главная страница','Главная страница','0','0','','0','{{header}}\n{{index_page}}\n{{review_page}}\n{{video_page}}\n{{list_page}}\n{{etap_page}}\n{{deal_page}}\n{{footer}}','0','1','0','1532611126');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_tmplvar_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_tmplvar_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_tmplvar_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

#
# Dumping data for table `cn8c_site_tmplvar_access`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_tmplvar_contentvalues`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_tmplvar_contentvalues`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`),
  FULLTEXT KEY `value_ft_idx` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

#
# Dumping data for table `cn8c_site_tmplvar_contentvalues`
#

INSERT INTO `cn8c_site_tmplvar_contentvalues` VALUES ('1','5','1','[]');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_tmplvar_templates`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_tmplvar_templates`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

#
# Dumping data for table `cn8c_site_tmplvar_templates`
#

INSERT INTO `cn8c_site_tmplvar_templates` VALUES ('5','3','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_site_tmplvars`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_site_tmplvars`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_site_tmplvars` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

#
# Dumping data for table `cn8c_site_tmplvars`
#

INSERT INTO `cn8c_site_tmplvars` VALUES ('1','textarea','desc','Meta description','Meta description','0','1','0','','0','','','[*introtext*]','0','0');

INSERT INTO `cn8c_site_tmplvars` VALUES ('2','text','keyw','Meta keywords','Meta keywords','0','1','0','','0','','','[*pagetitle*]','0','0');

INSERT INTO `cn8c_site_tmplvars` VALUES ('3','checkbox','noIndex','No index page','Meta robots','0','1','0','Нет==<meta name=\"robots\" content=\"noindex, nofollow\">','0','','','','0','0');

INSERT INTO `cn8c_site_tmplvars` VALUES ('4','text','titl','Meta title','Meta title','0','1','0','','0','','','[*pagetitle*] - [(site_name)]','0','0');

INSERT INTO `cn8c_site_tmplvars` VALUES ('5','custom_tv:multitv','review','review','','0','0','0','','0','','','','1532525469','1532525590');


# --------------------------------------------------------

#
# Table structure for table `cn8c_system_eventnames`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_system_eventnames`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_system_eventnames` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

#
# Dumping data for table `cn8c_system_eventnames`
#

INSERT INTO `cn8c_system_eventnames` VALUES ('1','OnDocPublished','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('2','OnDocUnPublished','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('3','OnWebPagePrerender','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('4','OnWebLogin','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('5','OnBeforeWebLogout','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('6','OnWebLogout','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('7','OnWebSaveUser','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('8','OnWebDeleteUser','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('9','OnWebChangePassword','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('10','OnWebCreateGroup','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('11','OnManagerLogin','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('12','OnBeforeManagerLogout','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('13','OnManagerLogout','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('14','OnManagerSaveUser','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('15','OnManagerDeleteUser','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('16','OnManagerChangePassword','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('17','OnManagerCreateGroup','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('18','OnBeforeCacheUpdate','4','');

INSERT INTO `cn8c_system_eventnames` VALUES ('19','OnCacheUpdate','4','');

INSERT INTO `cn8c_system_eventnames` VALUES ('107','OnMakePageCacheKey','4','');

INSERT INTO `cn8c_system_eventnames` VALUES ('20','OnLoadWebPageCache','4','');

INSERT INTO `cn8c_system_eventnames` VALUES ('21','OnBeforeSaveWebPageCache','4','');

INSERT INTO `cn8c_system_eventnames` VALUES ('22','OnChunkFormPrerender','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('23','OnChunkFormRender','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('24','OnBeforeChunkFormSave','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('25','OnChunkFormSave','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('26','OnBeforeChunkFormDelete','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('27','OnChunkFormDelete','1','Chunks');

INSERT INTO `cn8c_system_eventnames` VALUES ('28','OnDocFormPrerender','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('29','OnDocFormRender','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('30','OnBeforeDocFormSave','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('31','OnDocFormSave','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('32','OnBeforeDocFormDelete','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('33','OnDocFormDelete','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('1033','OnDocFormUnDelete','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('1034','onBeforeMoveDocument','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('1035','onAfterMoveDocument','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('34','OnPluginFormPrerender','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('35','OnPluginFormRender','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('36','OnBeforePluginFormSave','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('37','OnPluginFormSave','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('38','OnBeforePluginFormDelete','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('39','OnPluginFormDelete','1','Plugins');

INSERT INTO `cn8c_system_eventnames` VALUES ('40','OnSnipFormPrerender','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('41','OnSnipFormRender','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('42','OnBeforeSnipFormSave','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('43','OnSnipFormSave','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('44','OnBeforeSnipFormDelete','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('45','OnSnipFormDelete','1','Snippets');

INSERT INTO `cn8c_system_eventnames` VALUES ('46','OnTempFormPrerender','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('47','OnTempFormRender','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('48','OnBeforeTempFormSave','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('49','OnTempFormSave','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('50','OnBeforeTempFormDelete','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('51','OnTempFormDelete','1','Templates');

INSERT INTO `cn8c_system_eventnames` VALUES ('52','OnTVFormPrerender','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('53','OnTVFormRender','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('54','OnBeforeTVFormSave','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('55','OnTVFormSave','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('56','OnBeforeTVFormDelete','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('57','OnTVFormDelete','1','Template Variables');

INSERT INTO `cn8c_system_eventnames` VALUES ('58','OnUserFormPrerender','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('59','OnUserFormRender','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('60','OnBeforeUserFormSave','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('61','OnUserFormSave','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('62','OnBeforeUserFormDelete','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('63','OnUserFormDelete','1','Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('64','OnWUsrFormPrerender','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('65','OnWUsrFormRender','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('66','OnBeforeWUsrFormSave','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('67','OnWUsrFormSave','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('68','OnBeforeWUsrFormDelete','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('69','OnWUsrFormDelete','1','Web Users');

INSERT INTO `cn8c_system_eventnames` VALUES ('70','OnSiteRefresh','1','');

INSERT INTO `cn8c_system_eventnames` VALUES ('71','OnFileManagerUpload','1','');

INSERT INTO `cn8c_system_eventnames` VALUES ('72','OnModFormPrerender','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('73','OnModFormRender','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('74','OnBeforeModFormDelete','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('75','OnModFormDelete','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('76','OnBeforeModFormSave','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('77','OnModFormSave','1','Modules');

INSERT INTO `cn8c_system_eventnames` VALUES ('78','OnBeforeWebLogin','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('79','OnWebAuthentication','3','');

INSERT INTO `cn8c_system_eventnames` VALUES ('80','OnBeforeManagerLogin','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('81','OnManagerAuthentication','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('82','OnSiteSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('83','OnFriendlyURLSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('84','OnUserSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('85','OnInterfaceSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('109','OnSecuritySettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('110','OnFileManagerSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('86','OnMiscSettingsRender','1','System Settings');

INSERT INTO `cn8c_system_eventnames` VALUES ('87','OnRichTextEditorRegister','1','RichText Editor');

INSERT INTO `cn8c_system_eventnames` VALUES ('88','OnRichTextEditorInit','1','RichText Editor');

INSERT INTO `cn8c_system_eventnames` VALUES ('89','OnManagerPageInit','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('90','OnWebPageInit','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('101','OnLoadDocumentObject','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('104','OnBeforeLoadDocumentObject','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('105','OnAfterLoadDocumentObject','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('91','OnLoadWebDocument','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('92','OnParseDocument','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('106','OnParseProperties','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('108','OnBeforeParseParams','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('93','OnManagerLoginFormRender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('94','OnWebPageComplete','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('95','OnLogPageHit','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('96','OnBeforeManagerPageInit','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('97','OnBeforeEmptyTrash','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('98','OnEmptyTrash','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('99','OnManagerLoginFormPrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('100','OnStripAlias','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('102','OnMakeDocUrl','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('103','OnBeforeLoadExtension','5','');

INSERT INTO `cn8c_system_eventnames` VALUES ('200','OnCreateDocGroup','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('201','OnManagerWelcomePrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('202','OnManagerWelcomeHome','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('203','OnManagerWelcomeRender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('204','OnBeforeDocDuplicate','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('205','OnDocDuplicate','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('206','OnManagerMainFrameHeaderHTMLBlock','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('207','OnManagerPreFrameLoader','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('208','OnManagerFrameLoader','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('209','OnManagerTreeInit','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('210','OnManagerTreePrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('211','OnManagerTreeRender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('212','OnManagerNodePrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('213','OnManagerNodeRender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('214','OnManagerMenuPrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('215','OnManagerTopPrerender','2','');

INSERT INTO `cn8c_system_eventnames` VALUES ('224','OnDocFormTemplateRender','1','Documents');

INSERT INTO `cn8c_system_eventnames` VALUES ('225','OnBeforeMinifyCss','1','');

INSERT INTO `cn8c_system_eventnames` VALUES ('999','OnPageUnauthorized','1','');

INSERT INTO `cn8c_system_eventnames` VALUES ('1000','OnPageNotFound','1','');

INSERT INTO `cn8c_system_eventnames` VALUES ('1001','OnFileBrowserUpload','1','File Browser Events');


# --------------------------------------------------------

#
# Table structure for table `cn8c_system_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_system_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`setting_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

#
# Dumping data for table `cn8c_system_settings`
#

INSERT INTO `cn8c_system_settings` VALUES ('settings_version','1.4.4');

INSERT INTO `cn8c_system_settings` VALUES ('manager_theme','default');

INSERT INTO `cn8c_system_settings` VALUES ('server_offset_time','0');

INSERT INTO `cn8c_system_settings` VALUES ('manager_language','russian-UTF8');

INSERT INTO `cn8c_system_settings` VALUES ('modx_charset','UTF-8');

INSERT INTO `cn8c_system_settings` VALUES ('site_name','CarTrade');

INSERT INTO `cn8c_system_settings` VALUES ('site_start','1');

INSERT INTO `cn8c_system_settings` VALUES ('error_page','1');

INSERT INTO `cn8c_system_settings` VALUES ('unauthorized_page','1');

INSERT INTO `cn8c_system_settings` VALUES ('site_status','1');

INSERT INTO `cn8c_system_settings` VALUES ('auto_template_logic','parent');

INSERT INTO `cn8c_system_settings` VALUES ('default_template','3');

INSERT INTO `cn8c_system_settings` VALUES ('old_template','3');

INSERT INTO `cn8c_system_settings` VALUES ('publish_default','1');

INSERT INTO `cn8c_system_settings` VALUES ('friendly_urls','1');

INSERT INTO `cn8c_system_settings` VALUES ('friendly_alias_urls','1');

INSERT INTO `cn8c_system_settings` VALUES ('use_alias_path','1');

INSERT INTO `cn8c_system_settings` VALUES ('cache_type','2');

INSERT INTO `cn8c_system_settings` VALUES ('failed_login_attempts','3');

INSERT INTO `cn8c_system_settings` VALUES ('blocked_minutes','60');

INSERT INTO `cn8c_system_settings` VALUES ('use_captcha','0');

INSERT INTO `cn8c_system_settings` VALUES ('emailsender','hazekk94@gmail.com');

INSERT INTO `cn8c_system_settings` VALUES ('use_editor','1');

INSERT INTO `cn8c_system_settings` VALUES ('use_browser','1');

INSERT INTO `cn8c_system_settings` VALUES ('fe_editor_lang','russian-UTF8');

INSERT INTO `cn8c_system_settings` VALUES ('fck_editor_toolbar','standard');

INSERT INTO `cn8c_system_settings` VALUES ('fck_editor_autolang','0');

INSERT INTO `cn8c_system_settings` VALUES ('editor_css_path','');

INSERT INTO `cn8c_system_settings` VALUES ('editor_css_selectors','');

INSERT INTO `cn8c_system_settings` VALUES ('upload_maxsize','10485760');

INSERT INTO `cn8c_system_settings` VALUES ('manager_layout','4');

INSERT INTO `cn8c_system_settings` VALUES ('auto_menuindex','1');

INSERT INTO `cn8c_system_settings` VALUES ('session.cookie.lifetime','604800');

INSERT INTO `cn8c_system_settings` VALUES ('mail_check_timeperiod','600');

INSERT INTO `cn8c_system_settings` VALUES ('manager_direction','ltr');

INSERT INTO `cn8c_system_settings` VALUES ('xhtml_urls','0');

INSERT INTO `cn8c_system_settings` VALUES ('automatic_alias','1');

INSERT INTO `cn8c_system_settings` VALUES ('datetime_format','dd-mm-YYYY');

INSERT INTO `cn8c_system_settings` VALUES ('warning_visibility','0');

INSERT INTO `cn8c_system_settings` VALUES ('remember_last_tab','1');

INSERT INTO `cn8c_system_settings` VALUES ('enable_bindings','1');

INSERT INTO `cn8c_system_settings` VALUES ('seostrict','1');

INSERT INTO `cn8c_system_settings` VALUES ('number_of_results','30');

INSERT INTO `cn8c_system_settings` VALUES ('theme_refresher','');

INSERT INTO `cn8c_system_settings` VALUES ('show_picker','0');

INSERT INTO `cn8c_system_settings` VALUES ('show_newresource_btn','0');

INSERT INTO `cn8c_system_settings` VALUES ('show_fullscreen_btn','0');

INSERT INTO `cn8c_system_settings` VALUES ('email_sender_method','1');

INSERT INTO `cn8c_system_settings` VALUES ('site_id','5b56f54787122');

INSERT INTO `cn8c_system_settings` VALUES ('site_unavailable_page','');

INSERT INTO `cn8c_system_settings` VALUES ('reload_site_unavailable','');

INSERT INTO `cn8c_system_settings` VALUES ('site_unavailable_message','В настоящее время сайт недоступен.');

INSERT INTO `cn8c_system_settings` VALUES ('siteunavailable_message_default','В настоящее время сайт недоступен.');

INSERT INTO `cn8c_system_settings` VALUES ('enable_filter','0');

INSERT INTO `cn8c_system_settings` VALUES ('enable_at_syntax','0');

INSERT INTO `cn8c_system_settings` VALUES ('cache_default','1');

INSERT INTO `cn8c_system_settings` VALUES ('search_default','1');

INSERT INTO `cn8c_system_settings` VALUES ('custom_contenttype','application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json');

INSERT INTO `cn8c_system_settings` VALUES ('docid_incrmnt_method','0');

INSERT INTO `cn8c_system_settings` VALUES ('enable_cache','1');

INSERT INTO `cn8c_system_settings` VALUES ('minifyphp_incache','0');

INSERT INTO `cn8c_system_settings` VALUES ('server_protocol','http');

INSERT INTO `cn8c_system_settings` VALUES ('rss_url_news','http://feeds.feedburner.com/evocms-release-news');

INSERT INTO `cn8c_system_settings` VALUES ('track_visitors','0');

INSERT INTO `cn8c_system_settings` VALUES ('friendly_url_prefix','');

INSERT INTO `cn8c_system_settings` VALUES ('friendly_url_suffix','.html');

INSERT INTO `cn8c_system_settings` VALUES ('make_folders','0');

INSERT INTO `cn8c_system_settings` VALUES ('aliaslistingfolder','0');

INSERT INTO `cn8c_system_settings` VALUES ('allow_duplicate_alias','0');

INSERT INTO `cn8c_system_settings` VALUES ('use_udperms','1');

INSERT INTO `cn8c_system_settings` VALUES ('udperms_allowroot','0');

INSERT INTO `cn8c_system_settings` VALUES ('email_method','mail');

INSERT INTO `cn8c_system_settings` VALUES ('smtp_auth','0');

INSERT INTO `cn8c_system_settings` VALUES ('smtp_secure','none');

INSERT INTO `cn8c_system_settings` VALUES ('smtp_host','smtp.example.com');

INSERT INTO `cn8c_system_settings` VALUES ('smtp_port','25');

INSERT INTO `cn8c_system_settings` VALUES ('smtp_username','you@example.com');

INSERT INTO `cn8c_system_settings` VALUES ('reload_emailsubject','');

INSERT INTO `cn8c_system_settings` VALUES ('emailsubject','Данные для авторизации');

INSERT INTO `cn8c_system_settings` VALUES ('emailsubject_default','Данные для авторизации');

INSERT INTO `cn8c_system_settings` VALUES ('reload_signupemail_message','');

INSERT INTO `cn8c_system_settings` VALUES ('signupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('system_email_signup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации в системе управления сайтом [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации в системе управления сайтом ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('reload_websignupemail_message','');

INSERT INTO `cn8c_system_settings` VALUES ('websignupemail_message','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('system_email_websignup_default','Здравствуйте, [+uid+]!\n\nВаши данные для авторизации на [+sname+]:\n\nИмя пользователя: [+uid+]\nПароль: [+pwd+]\n\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('reload_system_email_webreminder_message','');

INSERT INTO `cn8c_system_settings` VALUES ('webpwdreminder_message','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('system_email_webreminder_default','Здравствуйте, [+uid+]!\n\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\n\n[+surl+]\n\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\n\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\n\nС уважением, Администрация');

INSERT INTO `cn8c_system_settings` VALUES ('manager_theme_mode','3');

INSERT INTO `cn8c_system_settings` VALUES ('login_logo','');

INSERT INTO `cn8c_system_settings` VALUES ('login_bg','');

INSERT INTO `cn8c_system_settings` VALUES ('login_form_position','left');

INSERT INTO `cn8c_system_settings` VALUES ('manager_menu_position','top');

INSERT INTO `cn8c_system_settings` VALUES ('tree_page_click','27');

INSERT INTO `cn8c_system_settings` VALUES ('use_breadcrumbs','1');

INSERT INTO `cn8c_system_settings` VALUES ('global_tabs','1');

INSERT INTO `cn8c_system_settings` VALUES ('group_tvs','0');

INSERT INTO `cn8c_system_settings` VALUES ('resource_tree_node_name','pagetitle');

INSERT INTO `cn8c_system_settings` VALUES ('session_timeout','15');

INSERT INTO `cn8c_system_settings` VALUES ('tree_show_protected','0');

INSERT INTO `cn8c_system_settings` VALUES ('datepicker_offset','-10');

INSERT INTO `cn8c_system_settings` VALUES ('number_of_logs','100');

INSERT INTO `cn8c_system_settings` VALUES ('number_of_messages','40');

INSERT INTO `cn8c_system_settings` VALUES ('which_editor','TinyMCE4');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_theme','custom');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_skin','lightgray');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_skintheme','inlite');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_template_docs','');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_template_chunks','');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_entermode','p');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_element_format','xhtml');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_schema','html5');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_custom_plugins','advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_custom_buttons1','undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_custom_buttons2','link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_custom_buttons3','');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_custom_buttons4','');

INSERT INTO `cn8c_system_settings` VALUES ('tinymce4_blockFormats','Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

INSERT INTO `cn8c_system_settings` VALUES ('allow_eval','with_scan');

INSERT INTO `cn8c_system_settings` VALUES ('safe_functions_at_eval','time,date,strtotime,strftime');

INSERT INTO `cn8c_system_settings` VALUES ('check_files_onlogin','index.php\n.htaccess\nmanager/index.php\nmanager/includes/config.inc.php');

INSERT INTO `cn8c_system_settings` VALUES ('validate_referer','1');

INSERT INTO `cn8c_system_settings` VALUES ('rss_url_security','http://feeds.feedburner.com/evocms-security-news');

INSERT INTO `cn8c_system_settings` VALUES ('error_reporting','1');

INSERT INTO `cn8c_system_settings` VALUES ('send_errormail','0');

INSERT INTO `cn8c_system_settings` VALUES ('pwd_hash_algo','UNCRYPT');

INSERT INTO `cn8c_system_settings` VALUES ('reload_captcha_words','');

INSERT INTO `cn8c_system_settings` VALUES ('captcha_words','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `cn8c_system_settings` VALUES ('captcha_words_default','EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote');

INSERT INTO `cn8c_system_settings` VALUES ('filemanager_path','C:/OSPanel/domains/car/');

INSERT INTO `cn8c_system_settings` VALUES ('upload_files','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,tpl');

INSERT INTO `cn8c_system_settings` VALUES ('upload_images','bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg');

INSERT INTO `cn8c_system_settings` VALUES ('upload_media','au,avi,mp3,mp4,mpeg,mpg,wav,wmv');

INSERT INTO `cn8c_system_settings` VALUES ('upload_flash','fla,flv,swf');

INSERT INTO `cn8c_system_settings` VALUES ('new_file_permissions','0644');

INSERT INTO `cn8c_system_settings` VALUES ('new_folder_permissions','0755');

INSERT INTO `cn8c_system_settings` VALUES ('which_browser','mcpuk');

INSERT INTO `cn8c_system_settings` VALUES ('rb_webuser','0');

INSERT INTO `cn8c_system_settings` VALUES ('rb_base_dir','C:/OSPanel/domains/car/assets/');

INSERT INTO `cn8c_system_settings` VALUES ('rb_base_url','assets/');

INSERT INTO `cn8c_system_settings` VALUES ('clean_uploaded_filename','1');

INSERT INTO `cn8c_system_settings` VALUES ('strip_image_paths','1');

INSERT INTO `cn8c_system_settings` VALUES ('maxImageWidth','2600');

INSERT INTO `cn8c_system_settings` VALUES ('maxImageHeight','2200');

INSERT INTO `cn8c_system_settings` VALUES ('thumbWidth','150');

INSERT INTO `cn8c_system_settings` VALUES ('thumbHeight','150');

INSERT INTO `cn8c_system_settings` VALUES ('thumbsDir','.thumbs');

INSERT INTO `cn8c_system_settings` VALUES ('jpegQuality','90');

INSERT INTO `cn8c_system_settings` VALUES ('denyZipDownload','0');

INSERT INTO `cn8c_system_settings` VALUES ('denyExtensionRename','0');

INSERT INTO `cn8c_system_settings` VALUES ('showHiddenFiles','0');

INSERT INTO `cn8c_system_settings` VALUES ('lang_code','ru');

INSERT INTO `cn8c_system_settings` VALUES ('sys_files_checksum','a:4:{s:32:\"C:/OSPanel/domains/car/index.php\";s:32:\"afc3b9996d8c0245f3a0f4132d3abb6d\";s:32:\"C:/OSPanel/domains/car/.htaccess\";s:32:\"b12739e14a9d18d7090427db01bd4021\";s:40:\"C:/OSPanel/domains/car/manager/index.php\";s:32:\"98b280225df2b4e863b6385de9bb2126\";s:54:\"C:/OSPanel/domains/car/manager/includes/config.inc.php\";s:32:\"051eb62d7d1df2e8b942e6b90ec7f66c\";}');


# --------------------------------------------------------

#
# Table structure for table `cn8c_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_user_attributes` (
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
# Dumping data for table `cn8c_user_attributes`
#

INSERT INTO `cn8c_user_attributes` VALUES ('1','1','Admin','1','hazekk94@gmail.com','','','0','0','0','1','0','1532425609','0','927jij609qut4804rftodegm16','0','0','','','','','','','','','0','0');


# --------------------------------------------------------

#
# Table structure for table `cn8c_user_messages`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_user_messages`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_user_messages` (
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
# Dumping data for table `cn8c_user_messages`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_user_roles`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_user_roles`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_user_roles` (
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
# Dumping data for table `cn8c_user_roles`
#

INSERT INTO `cn8c_user_roles` VALUES ('2','Editor','Limited to managing content','1','1','1','1','1','1','1','0','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0','1','1','1','1','1','0','1','1','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','0','1','1','1');

INSERT INTO `cn8c_user_roles` VALUES ('3','Publisher','Editor with expanded permissions including manage users, update Elements and site settings','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','0','0','1','1','1','1','1','1','0','0','0','0','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','0','1','1','1','1','0','1','0','0','1','1','1');

INSERT INTO `cn8c_user_roles` VALUES ('1','Administrator','Site administrators have full access to all functions','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');


# --------------------------------------------------------

#
# Table structure for table `cn8c_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`user`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

#
# Dumping data for table `cn8c_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_web_groups`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_web_groups`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_web_groups` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `cn8c_web_groups`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_web_user_attributes`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_web_user_attributes`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_web_user_attributes` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

#
# Dumping data for table `cn8c_web_user_attributes`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_web_user_settings`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_web_user_settings`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text,
  PRIMARY KEY (`webuser`,`setting_name`),
  KEY `setting_name` (`setting_name`),
  KEY `webuserid` (`webuser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

#
# Dumping data for table `cn8c_web_user_settings`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_web_users`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_web_users`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_web_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Dumping data for table `cn8c_web_users`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_webgroup_access`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_webgroup_access`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_webgroup_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `cn8c_webgroup_access`
#


# --------------------------------------------------------

#
# Table structure for table `cn8c_webgroup_names`
#

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `cn8c_webgroup_names`;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

CREATE TABLE `cn8c_webgroup_names` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

#
# Dumping data for table `cn8c_webgroup_names`
#
