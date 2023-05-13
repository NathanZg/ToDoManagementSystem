/*
 Navicat Premium Data Transfer

 Source Server         : MySQL8
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : todosystem

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 13/05/2023 16:09:03
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for to_do_item
-- ----------------------------
DROP TABLE IF EXISTS `to_do_item`;
CREATE TABLE `to_do_item`
(
    `item_id`          int(11) NOT NULL AUTO_INCREMENT COMMENT '待办事项id',
    `item_title`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '待办事项标题',
    `item_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '待办事项描述',
    `creation_date`    datetime                                                      NOT NULL COMMENT '创建时间',
    `due_date`         datetime                                                      NOT NULL COMMENT '到期时间',
    `completion_flag`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '完成标识',
    PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 520 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of to_do_item
-- ----------------------------
INSERT INTO `to_do_item`
VALUES (1, 'jiezeng',
        'Navicat is a multi-connections Database Administration tool allowing you to connect                 ',
        '2009-01-14 15:46:32', '2030-09-28 05:28:13', 1);
INSERT INTO `to_do_item`
VALUES (2, 'htakag',
        'How we spend our days is, of course, how we spend our lives. Navicat Monitor can                    ',
        '2005-06-26 09:53:35', '2016-02-06 08:55:41', 0);
INSERT INTO `to_do_item`
VALUES (3, 'lillian62', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.',
        '2000-03-01 14:59:29', '2012-07-13 03:17:21', 1);
INSERT INTO `to_do_item`
VALUES (4, 'lu10',
        'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ',
        '2016-01-03 23:09:36', '2022-05-15 12:28:35', 0);
INSERT INTO `to_do_item`
VALUES (5, 'ziyi616',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2017-10-26 13:23:10', '2011-01-11 00:14:29', 0);
INSERT INTO `to_do_item`
VALUES (6, 'zhennanwu3',
        'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.          ',
        '2008-03-27 20:41:53', '2020-01-26 21:44:18', 0);
INSERT INTO `to_do_item`
VALUES (7, 'lchoyee',
        'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ',
        '2004-10-06 10:18:44', '2016-11-11 00:50:12', 1);
INSERT INTO `to_do_item`
VALUES (8, 'jmeng',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2011-11-02 03:16:37', '2021-10-03 11:55:00', 0);
INSERT INTO `to_do_item`
VALUES (9, 'chchiuwai',
        'Instead of wondering when your next vacation is, maybe you should set up a life you                 ',
        '2022-01-01 11:26:59', '2022-03-15 10:30:07', 0);
INSERT INTO `to_do_item`
VALUES (10, 'panglaiyan',
        'I destroy my enemies when I make them my friends. To open a query using an external                 ',
        '2008-02-08 06:27:15', '2013-11-07 23:25:35', 1);
INSERT INTO `to_do_item`
VALUES (11, 'jiachen', 'A man is not old until regrets take the place of dreams.', '2016-01-28 16:13:28',
        '2018-01-14 20:13:31', 1);
INSERT INTO `to_do_item`
VALUES (12, 'zhetang412', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.',
        '2018-03-29 19:30:24', '2016-02-13 18:13:10', 1);
INSERT INTO `to_do_item`
VALUES (13, 'daniec5',
        'To start working with your server in Navicat, you should first establish a connection               ',
        '2002-10-17 20:51:36', '2011-08-08 00:06:00', 0);
INSERT INTO `to_do_item`
VALUES (14, 'xiuzeng',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2020-11-03 03:23:22', '2014-06-14 18:41:43', 1);
INSERT INTO `to_do_item`
VALUES (15, 'oakina225', 'If the plan doesn’t work, change the plan, but never the goal.', '2011-09-15 06:18:46',
        '2011-08-31 20:48:56', 0);
INSERT INTO `to_do_item`
VALUES (16, 'zhiyuanyang', 'Anyone who has ever made anything of importance was disciplined.', '2004-08-28 19:52:11',
        '2022-01-11 12:15:15', 0);
INSERT INTO `to_do_item`
VALUES (17, 'hanzitao1225',
        'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ',
        '2005-11-15 00:49:07', '2014-04-22 05:47:57', 0);
INSERT INTO `to_do_item`
VALUES (18, 'ayakim',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2015-09-30 13:06:20', '2013-08-21 09:48:35', 0);
INSERT INTO `to_do_item`
VALUES (19, 'pricedonna9',
        'Navicat authorizes you to make connection to remote servers running on different                    ',
        '2014-02-21 01:50:42', '2009-10-04 00:17:28', 1);
INSERT INTO `to_do_item`
VALUES (20, 'ssakura',
        'Anyone who has ever made anything of importance was disciplined. To clear or reload                 ',
        '2020-05-19 11:25:27', '2019-07-20 19:41:01', 1);
INSERT INTO `to_do_item`
VALUES (21, 'wangziy9',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.',
        '2005-02-28 10:13:53', '2023-02-22 20:40:33', 0);
INSERT INTO `to_do_item`
VALUES (22, 'siuwl',
        'You can select any connections, objects or projects, and then select the corresponding              ',
        '2018-08-07 07:16:37', '2014-04-12 06:12:12', 0);
INSERT INTO `to_do_item`
VALUES (23, 'ylpang',
        'After comparing data, the window shows the number of records that will be inserted,                 ',
        '2013-01-30 13:20:16', '2012-01-18 19:11:55', 0);
INSERT INTO `to_do_item`
VALUES (24, 'martolson',
        'In other words, Navicat provides the ability for data in different databases and/or                 ',
        '2020-06-01 14:36:50', '2020-07-02 22:47:01', 1);
INSERT INTO `to_do_item`
VALUES (25, 'siuky81',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2012-01-03 09:50:03', '2009-03-26 21:39:20', 0);
INSERT INTO `to_do_item`
VALUES (26, 'lom',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2014-02-02 03:12:30', '2007-10-13 16:50:25', 0);
INSERT INTO `to_do_item`
VALUES (27, 'jiehong1119',
        'If opportunity doesn’t knock, build a door. You must be the change you wish to see in the world.',
        '2004-06-15 06:36:23', '2012-03-05 20:18:53', 1);
INSERT INTO `to_do_item`
VALUES (28, 'hsuan2',
        'To open a query using an external editor, control-click it and select Open with External            ',
        '2019-11-17 21:49:06', '2008-11-14 11:05:07', 0);
INSERT INTO `to_do_item`
VALUES (29, 'louiwf',
        'Navicat Cloud could not connect and access your databases. By which it means, it                    ',
        '2006-02-09 10:59:01', '2011-04-06 15:37:10', 0);
INSERT INTO `to_do_item`
VALUES (30, 'tsang7',
        'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ',
        '2018-09-11 06:02:54', '2013-10-02 08:24:35', 0);
INSERT INTO `to_do_item`
VALUES (31, 'cwchia6',
        'The Main Window consists of several toolbars and panes for you to work on connections,              ',
        '2008-01-16 15:52:46', '2020-10-12 16:40:38', 1);
INSERT INTO `to_do_item`
VALUES (32, 'lokwl',
        'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ',
        '2003-07-05 20:59:20', '2020-06-06 15:44:47', 0);
INSERT INTO `to_do_item`
VALUES (33, 'lurui',
        'Success consists of going from failure to failure without loss of enthusiasm.                       ',
        '2015-02-10 02:00:29', '2018-08-06 23:37:34', 1);
INSERT INTO `to_do_item`
VALUES (34, 'chiuwaiha00', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.',
        '2003-05-17 06:40:15', '2020-01-23 09:03:14', 0);
INSERT INTO `to_do_item`
VALUES (35, 'wflia', 'A man’s best friends are his ten fingers. A man’s best friends are his ten fingers.',
        '2018-03-11 18:33:33', '2019-01-23 07:25:45', 0);
INSERT INTO `to_do_item`
VALUES (36, 'tsubtakahashi6',
        'Navicat allows you to transfer data from one database and/or schema to another with                 ',
        '2017-09-29 03:55:59', '2020-12-19 06:12:27', 1);
INSERT INTO `to_do_item`
VALUES (37, 'renf79',
        'To get a secure connection, the first thing you need to do is to install OpenSSL                    ',
        '2017-03-04 16:36:37', '2021-04-14 09:46:20', 1);
INSERT INTO `to_do_item`
VALUES (38, 'wingkueny',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.     ',
        '2019-05-11 06:41:55', '2009-02-08 00:48:05', 1);
INSERT INTO `to_do_item`
VALUES (39, 'agra',
        'Navicat 15 has added support for the system-wide dark mode. To get a secure connection,             ',
        '2015-06-12 09:30:09', '2008-12-22 08:47:59', 0);
INSERT INTO `to_do_item`
VALUES (40, 'kmlo',
        'All journeys have secret destinations of which the traveler is unaware.                             ',
        '2021-11-16 10:59:18', '2014-07-17 23:32:05', 1);
INSERT INTO `to_do_item`
VALUES (41, 'irene61',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2001-04-03 20:49:35', '2022-02-19 02:00:08', 0);
INSERT INTO `to_do_item`
VALUES (42, 'jianjiehong624',
        'In other words, Navicat provides the ability for data in different databases and/or                 ',
        '2017-10-19 11:31:04', '2023-02-05 14:15:11', 1);
INSERT INTO `to_do_item`
VALUES (43, 'xiuhan',
        'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ',
        '2020-11-17 10:48:59', '2022-08-08 12:15:10', 0);
INSERT INTO `to_do_item`
VALUES (44, 'jprice', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.',
        '2002-08-01 01:56:42', '2007-12-20 14:12:43', 0);
INSERT INTO `to_do_item`
VALUES (45, 'ishidash',
        'Such sessions are also susceptible to session hijacking, where a malicious user takes               ',
        '2010-11-14 03:39:31', '2021-08-10 11:22:45', 1);
INSERT INTO `to_do_item`
VALUES (46, 'yuwm40',
        'Navicat is a multi-connections Database Administration tool allowing you to connect                 ',
        '2021-04-28 19:08:03', '2020-07-31 02:08:04', 0);
INSERT INTO `to_do_item`
VALUES (47, 'yulinghun1',
        'If it scares you, it might be a good thing to try. Import Wizard allows you to import               ',
        '2002-02-23 13:25:46', '2020-06-08 03:43:05', 0);
INSERT INTO `to_do_item`
VALUES (48, 'ylyeow2',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2018-06-21 13:29:13', '2020-03-08 10:44:39', 0);
INSERT INTO `to_do_item`
VALUES (49, 'ms1',
        'Champions keep playing until they get it right. A comfort zone is a beautiful place,                ',
        '2021-03-30 13:17:33', '2012-05-10 02:19:34', 1);
INSERT INTO `to_do_item`
VALUES (50, 'shihanjin3',
        'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ',
        '2009-11-18 15:52:56', '2023-01-03 21:05:30', 0);
INSERT INTO `to_do_item`
VALUES (51, 'wingfatl4',
        'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ',
        '2000-05-12 14:24:05', '2008-07-10 17:05:58', 1);
INSERT INTO `to_do_item`
VALUES (52, 'jinsh89',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.',
        '2020-05-11 15:32:23', '2015-03-06 18:24:43', 0);
INSERT INTO `to_do_item`
VALUES (53, 'kaitokon101',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2001-08-11 22:46:35', '2011-01-31 16:04:42', 1);
INSERT INTO `to_do_item`
VALUES (54, 'watl',
        'Difficult circumstances serve as a textbook of life for people. It can also manage                  ',
        '2008-10-24 12:45:52', '2017-04-08 17:50:39', 1);
INSERT INTO `to_do_item`
VALUES (55, 'mtaniguchi',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2000-01-07 15:09:56', '2010-02-11 03:12:15', 0);
INSERT INTO `to_do_item`
VALUES (56, 'ayatoharada2001',
        'How we spend our days is, of course, how we spend our lives. Creativity is intelligence having fun.',
        '2003-05-05 00:48:22', '2017-08-25 04:09:14', 0);
INSERT INTO `to_do_item`
VALUES (57, 'ifujii', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.',
        '2016-12-27 16:35:38', '2010-02-05 01:30:54', 0);
INSERT INTO `to_do_item`
VALUES (58, 'masrik7',
        'To get a secure connection, the first thing you need to do is to install OpenSSL                    ',
        '2010-10-07 10:58:11', '2008-01-11 06:25:42', 1);
INSERT INTO `to_do_item`
VALUES (59, 'garcca',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2021-03-24 05:29:43', '2019-02-08 11:13:27', 1);
INSERT INTO `to_do_item`
VALUES (60, 'yunxixia',
        'Flexible settings enable you to set up a custom key for comparison and synchronization.             ',
        '2008-12-29 16:32:05', '2018-12-25 22:48:38', 0);
INSERT INTO `to_do_item`
VALUES (61, 'jesbla3',
        'In a Telnet session, all communications, including username and password, are transmitted           ',
        '2000-05-12 00:04:40', '2011-10-05 10:25:59', 1);
INSERT INTO `to_do_item`
VALUES (62, 'chetc1226',
        'Instead of wondering when your next vacation is, maybe you should set up a life you                 ',
        '2002-03-22 03:51:31', '2020-09-16 22:26:14', 1);
INSERT INTO `to_do_item`
VALUES (63, 'hirak57',
        'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ',
        '2009-01-17 03:54:17', '2018-10-21 14:36:54', 0);
INSERT INTO `to_do_item`
VALUES (64, 'ramosruby', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.',
        '2010-07-01 03:14:52', '2014-03-25 07:49:55', 0);
INSERT INTO `to_do_item`
VALUES (65, 'kmf2',
        'To start working with your server in Navicat, you should first establish a connection               ',
        '2003-09-02 11:00:14', '2008-07-02 07:05:23', 0);
INSERT INTO `to_do_item`
VALUES (66, 'shimomo', 'Genius is an infinite capacity for taking pains. I will greet this day with love in my heart.',
        '2016-06-19 10:25:10', '2018-08-15 01:07:15', 0);
INSERT INTO `to_do_item`
VALUES (67, 'meng07',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2011-02-27 20:23:51', '2016-04-24 10:26:08', 0);
INSERT INTO `to_do_item`
VALUES (68, 'martindani',
        'Such sessions are also susceptible to session hijacking, where a malicious user takes               ',
        '2021-03-25 16:19:23', '2018-11-20 18:24:10', 0);
INSERT INTO `to_do_item`
VALUES (69, 'sumwinghui',
        'There is no way to happiness. Happiness is the way. The Information Pane shows the                  ',
        '2011-08-25 00:59:03', '2013-02-28 00:57:23', 1);
INSERT INTO `to_do_item`
VALUES (70, 'wan3',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2007-02-01 13:10:30', '2016-08-19 22:33:56', 0);
INSERT INTO `to_do_item`
VALUES (71, 'tranma1105',
        'You cannot save people, you can just love them. Secure Sockets Layer(SSL) is a protocol             ',
        '2001-10-31 19:29:44', '2019-01-28 07:41:19', 0);
INSERT INTO `to_do_item`
VALUES (72, 'rmaeda102',
        'A man is not old until regrets take the place of dreams. To successfully establish                  ',
        '2016-04-21 10:50:46', '2022-06-11 16:51:32', 1);
INSERT INTO `to_do_item`
VALUES (73, 'fziy',
        'Such sessions are also susceptible to session hijacking, where a malicious user takes               ',
        '2015-02-16 15:04:37', '2011-02-09 11:09:24', 0);
INSERT INTO `to_do_item`
VALUES (74, 'hus10',
        'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ',
        '2018-04-07 13:50:50', '2015-03-26 15:07:44', 0);
INSERT INTO `to_do_item`
VALUES (75, 'hirano6',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2015-05-17 09:39:41', '2017-06-21 16:32:00', 0);
INSERT INTO `to_do_item`
VALUES (76, 'willifran2',
        'If the Show objects under schema in navigation pane option is checked at the Preferences            ',
        '2010-04-17 08:58:56', '2009-08-09 08:56:17', 1);
INSERT INTO `to_do_item`
VALUES (77, 'wong54',
        'All the Navicat Cloud objects are located under different projects. You can share                   ',
        '2018-07-03 12:05:39', '2021-12-24 00:51:47', 0);
INSERT INTO `to_do_item`
VALUES (78, 'bobbyco',
        'The past has no power over the present moment. A comfort zone is a beautiful place,                 ',
        '2012-11-11 21:07:46', '2009-01-22 15:58:29', 0);
INSERT INTO `to_do_item`
VALUES (79, 'aoi8', 'Success consists of going from failure to failure without loss of enthusiasm.',
        '2012-05-26 02:32:30', '2011-10-05 07:00:57', 1);
INSERT INTO `to_do_item`
VALUES (80, 'yuzhe',
        'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ',
        '2007-12-30 09:07:56', '2010-02-24 05:39:43', 0);
INSERT INTO `to_do_item`
VALUES (81, 'sharf214',
        'A comfort zone is a beautiful place, but nothing ever grows there. Navicat is a multi-connections   ',
        '2001-09-30 18:14:47', '2010-02-03 13:36:17', 1);
INSERT INTO `to_do_item`
VALUES (82, 'heungws1941', 'A comfort zone is a beautiful place, but nothing ever grows there.', '2000-05-02 16:52:39',
        '2016-12-30 18:33:39', 0);
INSERT INTO `to_do_item`
VALUES (83, 'tananqi1204', 'Difficult circumstances serve as a textbook of life for people.', '2000-09-05 18:42:04',
        '2018-12-12 08:43:32', 0);
INSERT INTO `to_do_item`
VALUES (84, 'etowens10', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2006-01-21 01:12:55', '2018-08-27 20:57:09', 0);
INSERT INTO `to_do_item`
VALUES (85, 'yotakobayashi716',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2003-02-20 09:41:36', '2023-03-06 08:44:42', 1);
INSERT INTO `to_do_item`
VALUES (86, 'wagnercharlotte4', 'The reason why a great man is great is that he resolves to be a great man.',
        '2014-08-26 07:36:38', '2010-04-08 07:23:12', 1);
INSERT INTO `to_do_item`
VALUES (87, 'misahayas', 'If the plan doesn’t work, change the plan, but never the goal.', '2009-01-23 01:12:10',
        '2023-03-01 11:20:31', 1);
INSERT INTO `to_do_item`
VALUES (88, 'zmao16',
        'If the plan doesn’t work, change the plan, but never the goal. In the Objects tab,                ',
        '2002-06-13 14:33:19', '2016-10-13 04:13:45', 0);
INSERT INTO `to_do_item`
VALUES (89, 'wdor6',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2001-06-15 04:26:51', '2009-04-11 19:54:38', 1);
INSERT INTO `to_do_item`
VALUES (90, 'zhangxiaoming',
        'There is no way to happiness. Happiness is the way. It can also manage cloud databases              ',
        '2019-04-01 12:13:58', '2014-06-14 17:45:01', 1);
INSERT INTO `to_do_item`
VALUES (91, 'nedeb',
        'Navicat authorizes you to make connection to remote servers running on different                    ',
        '2010-07-18 12:08:49', '2008-08-26 00:00:50', 0);
INSERT INTO `to_do_item`
VALUES (92, 'samomoe',
        'Creativity is intelligence having fun. SSH serves to prevent such vulnerabilities                   ',
        '2011-12-04 10:44:40', '2008-04-21 01:17:04', 0);
INSERT INTO `to_do_item`
VALUES (93, 'czhe6',
        'Navicat provides a wide range advanced features, such as compelling code editing                    ',
        '2019-07-30 21:28:56', '2021-06-26 01:39:28', 1);
INSERT INTO `to_do_item`
VALUES (94, 'hyhui',
        'Sometimes you win, sometimes you learn. Navicat Monitor requires a repository to                    ',
        '2021-09-24 00:27:33', '2013-12-29 15:51:00', 0);
INSERT INTO `to_do_item`
VALUES (95, 'matsudait',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2020-04-01 11:20:22', '2011-08-19 14:12:52', 1);
INSERT INTO `to_do_item`
VALUES (96, 'jiexi',
        'The reason why a great man is great is that he resolves to be a great man.                          ',
        '2008-10-10 04:28:47', '2012-08-23 21:07:44', 1);
INSERT INTO `to_do_item`
VALUES (97, 'chingwanwu',
        'It wasn’t raining when Noah built the ark. Navicat Monitor requires a repository                  ',
        '2008-12-20 16:38:02', '2014-09-19 07:39:51', 1);
INSERT INTO `to_do_item`
VALUES (98, 'winglo',
        'Navicat 15 has added support for the system-wide dark mode. All journeys have secret                ',
        '2007-05-01 17:27:50', '2013-03-16 00:45:06', 0);
INSERT INTO `to_do_item`
VALUES (99, 'aguipeg',
        'The first step is as good as half over. Anyone who has never made a mistake has never               ',
        '2019-01-18 16:49:05', '2012-12-28 20:18:44', 0);
INSERT INTO `to_do_item`
VALUES (100, 'oklo',
        'It wasn’t raining when Noah built the ark. Monitored servers include MySQL, MariaDB               ',
        '2001-01-21 09:09:46', '2014-04-28 21:11:01', 1);
INSERT INTO `to_do_item`
VALUES (101, 'tammboy3',
        'A man’s best friends are his ten fingers. Navicat Data Modeler is a powerful and                  ',
        '2004-05-30 12:23:32', '2015-11-12 03:11:53', 0);
INSERT INTO `to_do_item`
VALUES (102, 'michelle62', 'The reason why a great man is great is that he resolves to be a great man.',
        '2007-12-04 08:04:53', '2021-02-24 00:30:06', 1);
INSERT INTO `to_do_item`
VALUES (103, 'ramom219',
        'If the plan doesn’t work, change the plan, but never the goal. Genius is an infinite              ',
        '2014-06-18 04:09:02', '2021-02-05 13:41:27', 1);
INSERT INTO `to_do_item`
VALUES (104, 'rimai',
        'A query is used to extract data from the database in a readable format according                    ',
        '2006-01-23 00:13:20', '2023-04-16 11:38:25', 0);
INSERT INTO `to_do_item`
VALUES (105, 'sakaikenta89',
        'Navicat Monitor can be installed on any local computer or virtual machine and does                  ',
        '2013-05-31 23:57:24', '2014-03-25 06:16:51', 1);
INSERT INTO `to_do_item`
VALUES (106, 'anqi503',
        'In the middle of winter I at last discovered that there was in me an invincible summer.             ',
        '2007-06-18 09:20:19', '2020-07-13 17:14:48', 1);
INSERT INTO `to_do_item`
VALUES (107, 'foster318',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2002-12-10 19:40:50', '2020-08-25 17:20:35', 1);
INSERT INTO `to_do_item`
VALUES (108, 'lhou',
        'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ',
        '2020-06-04 19:54:37', '2019-04-27 08:03:32', 0);
INSERT INTO `to_do_item`
VALUES (109, 'xiaof',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2021-09-15 05:16:42', '2022-01-21 10:41:44', 1);
INSERT INTO `to_do_item`
VALUES (110, 'xyunxi5',
        'Navicat provides a wide range advanced features, such as compelling code editing                    ',
        '2001-04-22 11:59:04', '2013-08-25 18:37:16', 1);
INSERT INTO `to_do_item`
VALUES (111, 'miosuzuki', 'To connect to a database or schema, simply double-click it in the pane.',
        '2020-11-10 21:49:23', '2016-10-19 18:38:07', 0);
INSERT INTO `to_do_item`
VALUES (112, 'tong13',
        'The Information Pane shows the detailed object information, project activities, the                 ',
        '2014-12-22 13:22:10', '2010-08-16 16:31:52', 0);
INSERT INTO `to_do_item`
VALUES (113, 'marimille',
        'After comparing data, the window shows the number of records that will be inserted,                 ',
        '2007-10-10 19:13:20', '2011-10-26 00:23:21', 1);
INSERT INTO `to_do_item`
VALUES (114, 'txiuy',
        'All the Navicat Cloud objects are located under different projects. You can share                   ',
        '2005-09-21 00:16:40', '2018-07-31 03:16:03', 1);
INSERT INTO `to_do_item`
VALUES (115, 'momokamo1101',
        'To open a query using an external editor, control-click it and select Open with External            ',
        '2017-05-14 10:08:10', '2018-01-15 05:28:24', 1);
INSERT INTO `to_do_item`
VALUES (116, 'xianziyi',
        'The past has no power over the present moment. Navicat allows you to transfer data                  ',
        '2008-11-16 17:27:03', '2010-12-13 02:16:06', 0);
INSERT INTO `to_do_item`
VALUES (117, 'ywing818',
        'The Navigation pane employs tree structure which allows you to take action upon the                 ',
        '2018-10-01 09:33:18', '2018-09-24 04:18:43', 1);
INSERT INTO `to_do_item`
VALUES (118, 'ethsc',
        'You cannot save people, you can just love them. It provides strong authentication                   ',
        '2006-10-01 16:42:54', '2010-08-22 01:59:29', 1);
INSERT INTO `to_do_item`
VALUES (119, 'luf', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.',
        '2011-05-09 19:37:56', '2021-01-27 16:53:53', 0);
INSERT INTO `to_do_item`
VALUES (120, 'cjo', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.',
        '2017-08-12 01:42:27', '2013-08-03 05:18:45', 0);
INSERT INTO `to_do_item`
VALUES (121, 'zhennantang',
        'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ',
        '2003-03-26 08:00:04', '2021-05-11 03:59:27', 0);
INSERT INTO `to_do_item`
VALUES (122, 'seikos926', 'A comfort zone is a beautiful place, but nothing ever grows there.', '2003-10-18 18:18:34',
        '2020-03-11 11:13:42', 1);
INSERT INTO `to_do_item`
VALUES (123, 'chsw19',
        'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ',
        '2004-12-12 17:51:09', '2021-10-30 01:58:19', 1);
INSERT INTO `to_do_item`
VALUES (124, 'ryotanak',
        'In other words, Navicat provides the ability for data in different databases and/or                 ',
        '2008-09-17 17:54:41', '2009-06-18 12:57:09', 0);
INSERT INTO `to_do_item`
VALUES (125, 'douglasedwa1030',
        'After comparing data, the window shows the number of records that will be inserted,                 ',
        '2006-06-02 11:39:12', '2022-12-01 21:22:43', 0);
INSERT INTO `to_do_item`
VALUES (126, 'gonzalesw',
        'I will greet this day with love in my heart. Navicat Cloud provides a cloud service                 ',
        '2014-07-01 18:46:54', '2022-07-02 14:40:13', 0);
INSERT INTO `to_do_item`
VALUES (127, 'zhennanlu19',
        'To open a query using an external editor, control-click it and select Open with External            ',
        '2012-11-23 04:56:31', '2017-12-04 07:57:53', 1);
INSERT INTO `to_do_item`
VALUES (128, 'yoshren1128',
        'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ',
        '2008-04-22 11:05:45', '2010-02-20 06:29:39', 1);
INSERT INTO `to_do_item`
VALUES (129, 'lanliao',
        'You cannot save people, you can just love them. The Information Pane shows the detailed             ',
        '2003-08-27 14:57:28', '2008-07-13 03:08:27', 1);
INSERT INTO `to_do_item`
VALUES (130, 'liu3',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2020-08-09 16:16:09', '2016-08-22 00:46:13', 1);
INSERT INTO `to_do_item`
VALUES (131, 'yoshidamomoe', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.',
        '2007-09-19 14:38:57', '2018-10-07 15:40:33', 1);
INSERT INTO `to_do_item`
VALUES (132, 'stogeorge', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.',
        '2008-05-07 05:38:19', '2021-04-20 12:25:54', 1);
INSERT INTO `to_do_item`
VALUES (133, 'kaitootsuka',
        'Instead of wondering when your next vacation is, maybe you should set up a life you                 ',
        '2004-01-28 06:21:35', '2011-07-30 06:50:24', 1);
INSERT INTO `to_do_item`
VALUES (134, 'koowaisan1224',
        'In other words, Navicat provides the ability for data in different databases and/or                 ',
        '2009-02-08 22:37:15', '2010-11-08 16:37:03', 0);
INSERT INTO `to_do_item`
VALUES (135, 'lanyuan',
        'If it scares you, it might be a good thing to try. To open a query using an external                ',
        '2004-11-25 04:44:17', '2012-05-13 05:35:02', 0);
INSERT INTO `to_do_item`
VALUES (136, 'swta',
        'The reason why a great man is great is that he resolves to be a great man.                          ',
        '2011-11-29 04:08:54', '2008-04-12 21:24:10', 0);
INSERT INTO `to_do_item`
VALUES (137, 'karyan8',
        'Actually it is just in an idea when feel oneself can achieve and cannot achieve.                    ',
        '2003-03-07 12:13:00', '2015-12-18 08:13:49', 1);
INSERT INTO `to_do_item`
VALUES (138, 'jilu10',
        'Typically, it is employed as an encrypted version of Telnet. The reason why a great                 ',
        '2010-06-27 03:38:58', '2010-05-13 05:09:00', 0);
INSERT INTO `to_do_item`
VALUES (139, 'ishyamato6',
        'The Main Window consists of several toolbars and panes for you to work on connections,              ',
        '2021-09-18 13:02:09', '2017-05-27 03:51:59', 1);
INSERT INTO `to_do_item`
VALUES (140, 'wemedina', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.',
        '2014-01-19 23:55:03', '2017-08-27 01:23:38', 0);
INSERT INTO `to_do_item`
VALUES (141, 'adun13', 'The Synchronize to Database function will give you a full picture of all database differences.',
        '2020-03-03 08:58:53', '2017-12-31 10:00:32', 1);
INSERT INTO `to_do_item`
VALUES (142, 'fatl4',
        'Such sessions are also susceptible to session hijacking, where a malicious user takes               ',
        '2005-01-22 17:02:41', '2010-10-17 19:50:23', 0);
INSERT INTO `to_do_item`
VALUES (143, 'simmonsjoel7',
        'The Navigation pane employs tree structure which allows you to take action upon the                 ',
        '2002-12-09 10:26:49', '2020-02-26 01:45:55', 1);
INSERT INTO `to_do_item`
VALUES (144, 'wingsze524',
        'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ',
        '2009-05-10 06:41:15', '2016-10-03 06:17:22', 1);
INSERT INTO `to_do_item`
VALUES (145, 'daikwokming',
        'A man’s best friends are his ten fingers. It provides strong authentication and                   ',
        '2015-05-18 05:33:59', '2012-06-06 18:28:33', 1);
INSERT INTO `to_do_item`
VALUES (146, 'wul', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2018-11-26 01:22:36', '2023-02-07 11:52:45', 0);
INSERT INTO `to_do_item`
VALUES (147, 'cheungfs', 'Flexible settings enable you to set up a custom key for comparison and synchronization.',
        '2017-03-18 14:40:30', '2013-10-30 21:30:51', 1);
INSERT INTO `to_do_item`
VALUES (148, 'nakano74', 'Success consists of going from failure to failure without loss of enthusiasm.',
        '2009-08-17 10:35:16', '2008-02-04 11:18:12', 1);
INSERT INTO `to_do_item`
VALUES (149, 'xiangyu',
        'Export Wizard allows you to export data from tables, collections, views, or query                   ',
        '2010-06-06 09:41:54', '2019-01-21 22:21:30', 1);
INSERT INTO `to_do_item`
VALUES (150, 'zhiyujiang',
        'If it scares you, it might be a good thing to try. You cannot save people, you can just love them.',
        '2022-01-16 23:15:04', '2012-10-14 13:30:37', 0);
INSERT INTO `to_do_item`
VALUES (151, 'seikos1', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.',
        '2015-09-28 06:53:30', '2014-03-16 02:07:55', 1);
INSERT INTO `to_do_item`
VALUES (152, 'rurod107',
        'You must be the change you wish to see in the world. You cannot save people, you can just love them.',
        '2004-09-30 01:01:49', '2014-09-08 03:51:36', 0);
INSERT INTO `to_do_item`
VALUES (153, 'koonsumwing1',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.',
        '2015-12-18 17:39:00', '2019-04-30 06:35:46', 1);
INSERT INTO `to_do_item`
VALUES (154, 'fung1115', 'The past has no power over the present moment. It wasn’t raining when Noah built the ark.',
        '2007-09-24 00:53:04', '2022-05-01 09:23:33', 0);
INSERT INTO `to_do_item`
VALUES (155, 'kinoshita407',
        'In a Telnet session, all communications, including username and password, are transmitted           ',
        '2000-12-06 22:11:15', '2022-09-26 07:13:00', 0);
INSERT INTO `to_do_item`
VALUES (156, 'aokkasu',
        'A man’s best friends are his ten fingers. Navicat Monitor requires a repository                   ',
        '2001-01-12 03:40:17', '2015-11-24 17:08:15', 1);
INSERT INTO `to_do_item`
VALUES (157, 'ymitsuki6',
        'All journeys have secret destinations of which the traveler is unaware.                             ',
        '2018-07-12 22:22:54', '2013-05-24 08:57:13', 0);
INSERT INTO `to_do_item`
VALUES (158, 'ylchin2010', 'Success consists of going from failure to failure without loss of enthusiasm.',
        '2015-06-29 07:34:57', '2020-06-06 20:55:50', 1);
INSERT INTO `to_do_item`
VALUES (159, 'laufa2002',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2004-12-06 17:08:58', '2011-02-14 00:56:51', 1);
INSERT INTO `to_do_item`
VALUES (160, 'tifs', 'In the middle of winter I at last discovered that there was in me an invincible summer.',
        '2001-11-27 00:43:44', '2013-09-25 14:59:45', 0);
INSERT INTO `to_do_item`
VALUES (161, 'josemason2',
        'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2001-11-04 21:08:06', '2017-12-14 03:21:24', 1);
INSERT INTO `to_do_item`
VALUES (162, 'rui1985',
        'The Synchronize to Database function will give you a full picture of all database differences.      ',
        '2002-01-22 02:58:47', '2017-03-22 16:02:49', 0);
INSERT INTO `to_do_item`
VALUES (163, 'lauraross1973',
        'If opportunity doesn’t knock, build a door. The Information Pane shows the detailed               ',
        '2003-05-09 11:23:17', '2022-04-22 08:33:27', 0);
INSERT INTO `to_do_item`
VALUES (164, 'riceedna6',
        'If your Internet Service Provider (ISP) does not provide direct access to its server,               ',
        '2001-12-01 07:09:26', '2013-07-17 03:42:53', 1);
INSERT INTO `to_do_item`
VALUES (165, 'anqsh', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.',
        '2014-01-06 20:54:59', '2009-11-06 17:51:05', 0);
INSERT INTO `to_do_item`
VALUES (166, 'nakajima1957', 'Optimism is the one quality more associated with success and happiness than any other.',
        '2008-01-23 18:28:15', '2018-12-10 20:52:57', 1);
INSERT INTO `to_do_item`
VALUES (167, 'onfong',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2010-06-22 14:39:26', '2023-04-08 17:40:20', 1);
INSERT INTO `to_do_item`
VALUES (168, 'sasakiyam',
        'You can select any connections, objects or projects, and then select the corresponding              ',
        '2009-10-28 05:21:38', '2013-09-04 04:13:03', 0);
INSERT INTO `to_do_item`
VALUES (169, 'nelson1028',
        'If it scares you, it might be a good thing to try. In the Objects tab, you can use                  ',
        '2019-04-06 15:39:11', '2019-07-30 01:19:07', 0);
INSERT INTO `to_do_item`
VALUES (170, 'wflo',
        'It is used while your ISPs do not allow direct connections, but allows establishing                 ',
        '2019-08-11 17:23:23', '2017-06-27 16:48:49', 1);
INSERT INTO `to_do_item`
VALUES (171, 'fujiwaram',
        'Creativity is intelligence having fun. Navicat Monitor is a safe, simple and agentless              ',
        '2016-06-06 09:49:37', '2017-09-20 23:10:05', 1);
INSERT INTO `to_do_item`
VALUES (172, 'andrew8',
        'Creativity is intelligence having fun. Navicat Cloud provides a cloud service for                   ',
        '2021-12-10 22:55:43', '2020-05-30 11:56:00', 0);
INSERT INTO `to_do_item`
VALUES (173, 'tongonkay8',
        'The past has no power over the present moment. Always keep your eyes open. Keep watching.           ',
        '2017-06-17 03:40:02', '2016-02-12 09:13:49', 0);
INSERT INTO `to_do_item`
VALUES (174, 'fujyuna',
        'Difficult circumstances serve as a textbook of life for people. The On Startup feature              ',
        '2004-10-09 16:55:26', '2018-12-05 23:19:39', 1);
INSERT INTO `to_do_item`
VALUES (175, 'alip',
        'There is no way to happiness. Happiness is the way. Import Wizard allows you to import              ',
        '2000-01-31 13:52:10', '2009-04-14 08:03:26', 1);
INSERT INTO `to_do_item`
VALUES (176, 'khika',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2014-09-08 03:05:55', '2011-09-29 18:28:56', 1);
INSERT INTO `to_do_item`
VALUES (177, 'taniguchikasumi514',
        'How we spend our days is, of course, how we spend our lives. A man is not old until                 ',
        '2001-05-07 06:30:27', '2015-10-20 15:17:27', 1);
INSERT INTO `to_do_item`
VALUES (178, 'cy7',
        'Anyone who has ever made anything of importance was disciplined. Genius is an infinite              ',
        '2015-04-18 20:31:55', '2011-11-14 19:23:36', 1);
INSERT INTO `to_do_item`
VALUES (179, 'jianru1002',
        'The Synchronize to Database function will give you a full picture of all database differences.',
        '2000-06-21 11:36:05', '2015-12-17 10:27:54', 0);
INSERT INTO `to_do_item`
VALUES (180, 'wei1119',
        'It collects process metrics such as CPU load, RAM usage, and a variety of other resources           ',
        '2019-06-04 13:58:59', '2012-07-31 03:06:38', 0);
INSERT INTO `to_do_item`
VALUES (181, 'tikake48', 'The first step is as good as half over. You cannot save people, you can just love them.',
        '2010-10-29 15:25:59', '2013-05-05 04:06:27', 1);
INSERT INTO `to_do_item`
VALUES (182, 'ruichen6',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2002-04-05 06:35:43', '2017-01-21 21:06:31', 0);
INSERT INTO `to_do_item`
VALUES (183, 'xialu', 'A comfort zone is a beautiful place, but nothing ever grows there.', '2003-01-28 12:31:30',
        '2020-08-11 13:48:51', 0);
INSERT INTO `to_do_item`
VALUES (184, 'martin6',
        'Success consists of going from failure to failure without loss of enthusiasm.                       ',
        '2002-11-20 21:15:24', '2020-02-04 00:34:13', 1);
INSERT INTO `to_do_item`
VALUES (185, 'je1219',
        'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ',
        '2011-10-02 13:35:51', '2019-01-21 17:23:10', 0);
INSERT INTO `to_do_item`
VALUES (186, 'chenlan',
        'A man is not old until regrets take the place of dreams. The Main Window consists                   ',
        '2003-06-09 02:51:59', '2010-11-10 08:15:23', 0);
INSERT INTO `to_do_item`
VALUES (187, 'wangru712',
        'To start working with your server in Navicat, you should first establish a connection               ',
        '2004-11-17 11:06:03', '2015-02-27 11:34:50', 0);
INSERT INTO `to_do_item`
VALUES (188, 'kaitnakagawa',
        'Navicat allows you to transfer data from one database and/or schema to another with                 ',
        '2014-09-25 22:55:32', '2017-07-04 13:16:22', 1);
INSERT INTO `to_do_item`
VALUES (189, 'jasonrivera64',
        'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ',
        '2013-11-18 16:19:02', '2020-12-29 22:59:46', 1);
INSERT INTO `to_do_item`
VALUES (190, 'ealfred',
        'I destroy my enemies when I make them my friends. Navicat Cloud provides a cloud                    ',
        '2020-10-01 19:20:10', '2007-10-04 18:49:02', 0);
INSERT INTO `to_do_item`
VALUES (191, 'nanakudo',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2007-05-03 16:03:27', '2016-12-26 20:40:49', 1);
INSERT INTO `to_do_item`
VALUES (192, 'takuyafu',
        'The Information Pane shows the detailed object information, project activities, the                 ',
        '2018-11-17 00:35:49', '2019-10-07 03:45:42', 0);
INSERT INTO `to_do_item`
VALUES (193, 'minato9',
        'The Synchronize to Database function will give you a full picture of all database differences.',
        '2004-10-16 13:50:38', '2011-05-24 15:13:56', 0);
INSERT INTO `to_do_item`
VALUES (194, 'perrcathe',
        'Navicat Monitor can be installed on any local computer or virtual machine and does                  ',
        '2017-09-17 16:57:14', '2013-04-28 03:09:47', 1);
INSERT INTO `to_do_item`
VALUES (195, 'nanami505',
        'There is no way to happiness. Happiness is the way. What you get by achieving your                  ',
        '2010-12-14 19:15:40', '2021-02-16 22:10:02', 1);
INSERT INTO `to_do_item`
VALUES (196, 'ayota',
        'A man is not old until regrets take the place of dreams. Anyone who has ever made                   ',
        '2016-08-25 05:03:16', '2014-01-02 17:02:38', 0);
INSERT INTO `to_do_item`
VALUES (197, 'smlo10',
        'How we spend our days is, of course, how we spend our lives. Navicat Data Modeler                   ',
        '2018-05-18 05:46:01', '2013-12-05 17:05:30', 0);
INSERT INTO `to_do_item`
VALUES (198, 'aokik',
        'A query is used to extract data from the database in a readable format according                    ',
        '2010-02-27 06:11:21', '2010-12-19 01:07:24', 0);
INSERT INTO `to_do_item`
VALUES (199, 'yuenli2',
        'Genius is an infinite capacity for taking pains. To start working with your server                  ',
        '2009-09-17 00:56:55', '2019-10-10 06:29:53', 1);
INSERT INTO `to_do_item`
VALUES (200, 'qyun',
        'If the Show objects under schema in navigation pane option is checked at the Preferences            ',
        '2010-05-16 20:55:02', '2012-11-25 12:37:27', 0);
INSERT INTO `to_do_item`
VALUES (201, 'yin506', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2008-03-13 15:06:12', '2022-01-31 14:27:20', 1);
INSERT INTO `to_do_item`
VALUES (202, 'stanleyross1949',
        'Navicat allows you to transfer data from one database and/or schema to another with                 ',
        '2005-05-07 08:42:37', '2008-04-07 18:12:55', 1);
INSERT INTO `to_do_item`
VALUES (203, 'emma7',
        'A comfort zone is a beautiful place, but nothing ever grows there. The Synchronize                  ',
        '2019-05-30 21:34:18', '2014-06-29 03:35:50', 1);
INSERT INTO `to_do_item`
VALUES (204, 'saiwinghui',
        'A man is not old until regrets take the place of dreams. Navicat 15 has added support               ',
        '2001-06-18 07:02:54', '2017-01-29 17:37:10', 0);
INSERT INTO `to_do_item`
VALUES (205, 'yeow4',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2011-12-06 08:43:18', '2009-11-19 14:42:25', 0);
INSERT INTO `to_do_item`
VALUES (206, 'laura3', 'The Synchronize to Database function will give you a full picture of all database differences.',
        '2007-11-23 09:18:25', '2015-09-27 00:01:31', 1);
INSERT INTO `to_do_item`
VALUES (207, 'brendamyers',
        'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', '2003-04-16 13:46:44', '2009-08-12 22:41:36', 0);
INSERT INTO `to_do_item` VALUES (208, 'hazunakan', 'To connect to a database or schema,
        simply double-click it in the pane.                             ', '2003-09-26 17:17:24', '2020-11-09 14:36:33', 0);
INSERT INTO `to_do_item` VALUES (209, 'tsangyl', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ',
        '2005-06-07 04:34:12', '2015-08-10 10:40:42', 1);
INSERT INTO `to_do_item`
VALUES (210, 'miuyamamoto',
        'Secure SHell (SSH) is a program to log in into another computer over a network, execute             ',
        '2012-03-20 05:52:51', '2011-01-27 00:05:10', 1);
INSERT INTO `to_do_item`
VALUES (211, 'mori226',
        'What you get by achieving your goals is not as important as what you become by achieving your goals.',
        '2021-11-11 12:12:11', '2017-02-26 17:21:46', 0);
INSERT INTO `to_do_item`
VALUES (212, 'rijoseph',
        'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ',
        '2006-12-23 10:07:41', '2017-10-09 21:47:34', 0);
INSERT INTO `to_do_item`
VALUES (213, 'yuninl',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2005-05-09 03:07:18', '2008-07-08 03:28:59', 0);
INSERT INTO `to_do_item`
VALUES (214, 'jialu92',
        'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ',
        '2006-10-27 04:26:44', '2018-04-14 22:50:10', 1);
INSERT INTO `to_do_item`
VALUES (215, 'xiuying1945',
        'The reason why a great man is great is that he resolves to be a great man.                          ',
        '2001-08-07 05:35:34', '2019-04-01 07:24:17', 1);
INSERT INTO `to_do_item`
VALUES (216, 'wangyun58',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2006-05-04 13:30:15', '2022-07-02 07:18:25', 0);
INSERT INTO `to_do_item`
VALUES (217, 'juanitarod',
        'To clear or reload various internal caches, flush tables, or acquire locks, control-click           ',
        '2018-03-10 07:21:25', '2013-03-16 14:47:52', 0);
INSERT INTO `to_do_item`
VALUES (218, 'kwongsy',
        'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                  ',
        '2016-05-24 20:57:52', '2021-06-19 13:04:06', 0);
INSERT INTO `to_do_item`
VALUES (219, 'waimc',
        'What you get by achieving your goals is not as important as what you become by achieving your goals.',
        '2012-10-08 01:00:21', '2023-01-25 03:12:54', 0);
INSERT INTO `to_do_item`
VALUES (220, 'to114',
        'The first step is as good as half over. Import Wizard allows you to import data to                  ',
        '2013-01-29 16:40:40', '2014-06-22 22:39:37', 1);
INSERT INTO `to_do_item`
VALUES (221, 'tinl',
        'Typically, it is employed as an encrypted version of Telnet. After comparing data,                  ',
        '2007-12-16 19:43:28', '2018-10-26 22:05:54', 0);
INSERT INTO `to_do_item`
VALUES (222, 'ryotakondo718',
        'I will greet this day with love in my heart. SSH serves to prevent such vulnerabilities             ',
        '2009-01-07 03:04:46', '2016-04-14 09:42:43', 0);
INSERT INTO `to_do_item`
VALUES (223, 'takeuchi4',
        'A man is not old until regrets take the place of dreams. Navicat allows you to transfer             ',
        '2002-09-18 05:13:25', '2012-04-30 00:06:39', 1);
INSERT INTO `to_do_item`
VALUES (224, 'trod1207',
        'If you wait, all that happens is you get older. Monitored servers include MySQL,                    ',
        '2007-04-02 21:40:15', '2022-01-30 13:39:07', 1);
INSERT INTO `to_do_item`
VALUES (225, 'shimamo',
        'Remember that failure is an event, not a person. Difficult circumstances serve as                   ',
        '2016-03-21 10:38:03', '2009-04-11 23:43:23', 0);
INSERT INTO `to_do_item`
VALUES (226, 'angela306',
        'What you get by achieving your goals is not as important as what you become by achieving your goals.',
        '2017-10-11 17:22:58', '2016-09-02 20:22:47', 1);
INSERT INTO `to_do_item`
VALUES (227, 'wmleu1',
        'Export Wizard allows you to export data from tables, collections, views, or query                   ',
        '2018-11-28 14:34:12', '2022-04-22 23:38:51', 1);
INSERT INTO `to_do_item`
VALUES (228, 'dafox',
        'If you wait, all that happens is you get older. Navicat Data Modeler enables you                    ',
        '2017-09-20 17:21:23', '2011-08-05 01:31:38', 1);
INSERT INTO `to_do_item`
VALUES (229, 'mcm9',
        'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ',
        '2004-04-23 14:45:21', '2020-01-25 18:30:55', 1);
INSERT INTO `to_do_item`
VALUES (230, 'ren1',
        'Genius is an infinite capacity for taking pains. Export Wizard allows you to export                 ',
        '2001-10-24 21:44:54', '2009-02-24 19:03:16', 0);
INSERT INTO `to_do_item`
VALUES (231, 'tammy7',
        'In a Telnet session, all communications, including username and password, are transmitted           ',
        '2000-12-18 15:48:29', '2013-11-03 19:54:09', 0);
INSERT INTO `to_do_item`
VALUES (232, 'anqiyu',
        'To open a query using an external editor, control-click it and select Open with External            ',
        '2014-05-13 20:52:59', '2020-11-20 22:49:39', 0);
INSERT INTO `to_do_item`
VALUES (233, 'zhyunin',
        'In a Telnet session, all communications, including username and password, are transmitted           ',
        '2015-08-25 09:10:24', '2016-06-15 01:17:38', 1);
INSERT INTO `to_do_item`
VALUES (234, 'fat10',
        'With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and                  ',
        '2015-10-24 05:58:23', '2008-05-29 08:18:28', 0);
INSERT INTO `to_do_item`
VALUES (235, 'shinos717',
        'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2010-05-30 00:41:13', '2017-03-31 05:42:31', 0);
INSERT INTO `to_do_item`
VALUES (236, 'yungkm',
        'The Information Pane shows the detailed object information, project activities, the                 ',
        '2016-10-20 20:47:14', '2015-10-16 22:31:11', 0);
INSERT INTO `to_do_item`
VALUES (237, 'okadam',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2012-06-25 05:31:19', '2014-01-24 21:50:35', 0);
INSERT INTO `to_do_item`
VALUES (238, 'ziyire54',
        'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ', '2004-10-12 12:31:31', '2017-08-19 01:56:49', 0);
INSERT INTO `to_do_item` VALUES (239, 'wslam', 'Anyone who has ever made anything of importance was disciplined. You can select any                 ', '2012-05-29 18:20:42', '2021-10-17 12:50:23', 0);
INSERT INTO `to_do_item` VALUES (240, 'xixiuyi', 'Champions keep playing until they get it right. It is used while your ISPs do not                   ', '2015-08-22 12:05:52', '2021-12-11 20:24:12', 0);
INSERT INTO `to_do_item` VALUES (241, 'spencerjosep2001', 'SQL Editor allows you to create and edit SQL text, prepare
        and execute selected queries.', ' 2014- 07 - 24 22 : 05 : 54 ', ' 2020 - 03 - 03 22 : 44 : 26 ', 0);
INSERT INTO `to_do_item` VALUES (242, ' shihsu622 ', ' SQL Editor allows you to create and edit SQL text, prepare and
        execute selected queries.', ' 2011- 08 - 10 16 : 20 : 40 ', ' 2015 - 08 - 26 21 : 03 : 12 ', 0);
INSERT INTO `to_do_item` VALUES (243, ' dhe ', ' Champions keep playing until they get it right.I will greet this day
        with love in my heart.', ' 2007- 02 - 12 04 : 52 : 44 ', ' 2021 - 12 - 05 09 : 46 : 11 ', 0);
INSERT INTO `to_do_item` VALUES (244, ' syf ', ' To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2017-12-21 14:09:13', '2016-09-18 18:49:08', 0);
INSERT INTO `to_do_item` VALUES (245, 'twest', 'Navicat Monitor is a safe,
        simple and agentless remote server monitoring tool that                  ', '2007-07-15 09:18:21', '2015-11-06 20:47:00', 0);
INSERT INTO `to_do_item` VALUES (246, 'siuwaikoon', 'Navicat Data Modeler enables you to build high-quality conceptual,
        logical and physical ', '2002-03-23 21:58:02', '2015-01-25 18:54:14', 0);
INSERT INTO `to_do_item` VALUES (247, 'yuning14', 'If opportunity doesn’t knock,
        build a door. Navicat is a multi-connections Database               ', '2016-08-23 18:58:58', '2007-11-30 10:26:12', 1);
INSERT INTO `to_do_item` VALUES (248, 'onkay508', 'The repository database can be an existing MySQL, MariaDB,
        PostgreSQL, SQL Server, ', '2000 - 08 - 16 18:37:51', '2017-03-24 09:00:58', 0);
INSERT INTO `to_do_item` VALUES (249, 'bsullivan1112', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', '2019-08-20 13:07:51', '2011-08-05 03:17:17', 0);
INSERT INTO `to_do_item` VALUES (250, 'raylong', 'Anyone who has ever made anything of importance was disciplined. How we spend our                   ', '2010-07-22 19:54:18', '2010-04-04 05:30:49', 1);
INSERT INTO `to_do_item` VALUES (251, 'hayashih', 'The repository database can be an existing MySQL, MariaDB,
        PostgreSQL, SQL Server, ', '2001 - 03 - 12 03:54:18', '2019-06-19 21:39:24', 0);
INSERT INTO `to_do_item` VALUES (252, 'tgordon', 'It can also manage cloud databases such as Amazon Redshift,
        Amazon RDS, Alibaba Cloud.              ', '2009-01-07 07:27:15', '2013-07-10 11:48:14', 0);
INSERT INTO `to_do_item` VALUES (253, 'kasumisan94', 'You must be the change you wish to see in the world. If it scares you,
        it might be                  ', '2010-04-11 08:31:59', '2014-10-28 02:24:26', 1);
INSERT INTO `to_do_item` VALUES (254, 'wtakwah', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', '2016-09-01 00:18:01', '2010-02-16 14:33:25', 0);
INSERT INTO `to_do_item` VALUES (255, 'wkta', 'I destroy my enemies when I make them my friends. If the plan doesn’t work,
        change ', '2000-12-01 18:07:10', '2011-05-15 10:17:29', 1);
INSERT INTO `to_do_item` VALUES (256, 'kobayhikaru8', 'Export Wizard allows you to export data from tables, collections,
        views, or query ', ' 2007- 05 - 28 12 : 10 : 40 ', ' 2021 - 06 - 29 16 : 44 : 41 ', 1);
INSERT INTO `to_do_item` VALUES (257, ' luj91 ', ' After comparing data,
        the window shows the number of records that will be inserted, ', '2020 - 04 - 04 15:38:54', '2017-11-22 01:05:00', 1);
INSERT INTO `to_do_item` VALUES (258, 'aoshi48', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', '2021-08-31 19:53:42', '2011-10-04 21:15:04', 0);
INSERT INTO `to_do_item` VALUES (259, 'rui44', 'Genius is an infinite capacity for taking pains. The past has no power over the present moment.', '2007-08-11 16:05:43', '2008-04-20 12:33:30', 0);
INSERT INTO `to_do_item` VALUES (260, 'afang7', 'To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2017-09-30 06:46:50', '2011-11-15 22:56:16', 0);
INSERT INTO `to_do_item` VALUES (261, 'jiangxiuying', 'Champions keep playing until they get it right. A man is not old until regrets take                 ', '2004-11-15 22:36:30', '2009-10-06 15:55:57', 1);
INSERT INTO `to_do_item` VALUES (262, 'marcusco68', 'Navicat Cloud could not connect and access your databases. By which it means,
        it ', '2005-04-20 06:07:23', '2019-03-31 19:51:39', 1);
INSERT INTO `to_do_item` VALUES (263, 'jialum', 'Optimism is the one quality more associated with success and happiness than any other.              ', '2005-07-27 08:15:38', '2015-10-27 03:03:49', 1);
INSERT INTO `to_do_item` VALUES (264, 'tamkm', 'With its well-designed Graphical User Interface(GUI),
        Navicat lets you quickly and                  ', '2004-04-25 03:52:45', '2010-04-07 01:55:17', 0);
INSERT INTO `to_do_item` VALUES (265, 'taozhiyu', 'After logged in the Navicat Cloud feature,
        the Navigation pane will be divided into                 ', '2003-12-25 00:58:47', '2014-06-18 14:31:51', 0);
INSERT INTO `to_do_item` VALUES (266, 'hashimotoyota718', 'Import Wizard allows you to import data to tables/collections from CSV,
        TXT, XML, DBF and more.', '2014-02-12 03:24:15', '2019-01-01 09:19:37', 0);
INSERT INTO `to_do_item` VALUES (267, 'barnesjen53', 'With its well-designed Graphical User Interface(GUI),
        Navicat lets you quickly and                  ', '2011-06-24 01:33:38', '2009-11-24 10:06:55', 1);
INSERT INTO `to_do_item` VALUES (268, 'yuningliu10', 'Anyone who has never made a mistake has never tried anything new. After logged in                   ', '2015-06-06 02:40:52', '2019-12-16 01:58:16', 0);
INSERT INTO `to_do_item` VALUES (269, 'cailan', 'Navicat Data Modeler enables you to build high-quality conceptual,
        logical and physical ', '2012-06-11 17:41:08', '2017-02-25 00:47:16', 1);
INSERT INTO `to_do_item` VALUES (270, 'lis1220', 'After comparing data,
        the window shows the number of records that will be inserted, ', '2019 - 08 - 29 08:51:03', '2008-12-15 11:49:33', 1);
INSERT INTO `to_do_item` VALUES (271, 'gonzalez1946', 'You cannot save people,
        you can just love them. It collects process metrics such                    ', '2021-04-05 14:54:32', '2014-12-09 13:25:35', 0);
INSERT INTO `to_do_item` VALUES (272, 'hazuki8', 'Sometimes you win,
        sometimes you learn. What you get by achieving your goals is not                 ', '2003-05-09 06:17:12', '2021-10-20 16:51:16', 0);
INSERT INTO `to_do_item` VALUES (273, 'bakerlawrence05', 'To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2000-08-31 10:00:34', '2014-05-19 00:17:47', 0);
INSERT INTO `to_do_item` VALUES (274, 'takuya1', 'A man is not old until regrets take the place of dreams. A man is not old until regrets             ', '2019-09-05 17:53:50', '2021-06-16 16:08:48', 1);
INSERT INTO `to_do_item` VALUES (275, 'hkai224', 'It is used while your ISPs do not allow direct connections,
        but allows establishing                 ', '2017-06-28 01:50:58', '2019-10-18 21:43:33', 0);
INSERT INTO `to_do_item` VALUES (276, 'hiututang', 'To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2006-06-09 22:40:17', '2022-02-13 13:35:32', 0);
INSERT INTO `to_do_item` VALUES (277, 'mitsukishibata', 'Sometimes you win,
        sometimes you learn. The reason why a great man is great is that                 ', '2012-03-01 12:44:23', '2008-07-04 02:05:40', 1);
INSERT INTO `to_do_item` VALUES (278, 'yendo', 'In a Telnet session, all communications,
        including username and password, are transmitted ', ' 2001- 08 - 25 17 : 56 : 36 ', ' 2008 - 11 - 27 14 : 47 :
        18 ', 0);
INSERT INTO `to_do_item` VALUES (279, ' weljulia430 ', ' Import Wizard allows you to import data to tables / collections
        from CSV, TXT, XML, DBF and more.', '2019-11-20 04:04:52', '2013-03-05 20:03:05', 0);
INSERT INTO `to_do_item` VALUES (280, 'chtingfung824', 'It provides strong authentication and secure encrypted communications between two                   ', '2015-08-20 22:08:16', '2022-07-07 06:54:52', 1);
INSERT INTO `to_do_item` VALUES (281, 'wingszehui', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute
        ', ' 2020- 01 - 07 08 : 16 : 42 ', ' 2019 - 04 - 04 08 : 06 : 26 ', 0);
INSERT INTO `to_do_item` VALUES (282, ' htf ', ' Import Wizard allows you to import data to tables / collections from
        CSV, TXT, XML, DBF and more.', '2014-05-04 18:09:56', '2018-07-27 16:55:19', 0);
INSERT INTO `to_do_item` VALUES (283, 'hall01', 'The reason why a great man is great is that he resolves to be a great man.                          ', '2009-06-18 10:31:38', '2018-09-20 01:12:51', 0);
INSERT INTO `to_do_item` VALUES (284, 'yau96', 'The Synchronize to Database function will give you a full picture of all database differences.', '2021-09-23 02:50:51', '2012-02-26 11:23:05', 0);
INSERT INTO `to_do_item` VALUES (285, 'yuentingfung', 'Navicat Cloud provides a cloud service for synchronizing connections,
        queries, model ', '2000-04-16 20:51:08', '2017-08-14 10:09:37', 1);
INSERT INTO `to_do_item` VALUES (286, 'jiehong1989', 'Typically,
        it is employed as an encrypted version of Telnet. Navicat provides powerful              ', '2016-08-07 19:37:39', '2018-12-27 15:59:32', 1);
INSERT INTO `to_do_item` VALUES (287, 'takwah5', 'Navicat Cloud provides a cloud service for synchronizing connections,
        queries, model ', '2000-06-22 13:58:00', '2010-08-20 05:38:39', 1);
INSERT INTO `to_do_item` VALUES (288, 'llc', 'Instead of wondering when your next vacation is,
        maybe you should set up a life you                 ', '2011-08-04 17:30:28', '2008-03-06 00:45:23', 1);
INSERT INTO `to_do_item` VALUES (289, 'haroldgraha', 'If the Show objects under schema in navigation pane option is checked at the Preferences            ', '2012-02-02 09:16:22', '2010-09-05 15:35:49', 0);
INSERT INTO `to_do_item` VALUES (290, 'gutierrezmi87', 'You can select any connections, objects or projects, and then
        select the corresponding ', ' 2021- 11 - 15 09 : 46 : 16 ', ' 2020 - 07 - 07 13 : 11 : 35 ', 1);
INSERT INTO `to_do_item` VALUES (291, ' nakahika ', ' Import Wizard allows you to import data to tables / collections
        from CSV, TXT, XML, DBF and more.', '2010-05-27 16:21:12', '2018-12-20 02:31:28', 1);
INSERT INTO `to_do_item` VALUES (292, 'ellec', 'After logged in the Navicat Cloud feature,
        the Navigation pane will be divided into                 ', '2006-07-21 08:47:24', '2012-12-19 16:21:36', 1);
INSERT INTO `to_do_item` VALUES (293, 'choyee6', 'To connect to a database or schema,
        simply double-click it in the pane.', '2007-05-04 23:09:46', '2010-05-17 01:36:23', 0);
INSERT INTO `to_do_item` VALUES (294, 'jmao', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ', '2013-12-04 00:26:30', '2017-05-13 20:13:08', 0);
INSERT INTO `to_do_item` VALUES (295, 'maiono6', 'The On Startup feature allows you to control what tabs appear when you launch Navicat.              ', '2010-06-27 03:50:28', '2017-07-28 07:08:27', 1);
INSERT INTO `to_do_item` VALUES (296, 'tfs', 'You must be the change you wish to see in the world. Navicat allows you to transfer                 ', '2020-03-15 22:46:36', '2018-02-14 00:24:30', 1);
INSERT INTO `to_do_item` VALUES (297, 'olken', 'Difficult circumstances serve as a textbook of life for people.', '2005-08-19 13:08:47', '2017-07-07 17:59:53', 1);
INSERT INTO `to_do_item` VALUES (298, 'renahira', 'After logged in the Navicat Cloud feature,
        the Navigation pane will be divided into                 ', '2020-07-31 21:10:58', '2008-05-11 08:04:03', 0);
INSERT INTO `to_do_item` VALUES (299, 'tangziy', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', '2015-12-04 01:51:32', '2013-06-19 10:51:38', 0);
INSERT INTO `to_do_item` VALUES (300, 'nome', 'If your Internet Service Provider (ISP) does not provide direct access to its server,
        ', '2016 - 06 - 18 16:55:48', '2017-12-06 02:07:59', 0);
INSERT INTO `to_do_item` VALUES (301, 'zhiyuan44', 'I destroy my enemies when I make them my friends. In the middle of winter I at last                 ', '2016-08-01 01:21:00', '2020-06-30 18:08:56', 1);
INSERT INTO `to_do_item` VALUES (302, 'gibson4', 'The repository database can be an existing MySQL, MariaDB,
        PostgreSQL, SQL Server, ', '2005 - 04 - 20 05:49:50', '2010-11-24 05:33:14', 0);
INSERT INTO `to_do_item` VALUES (303, 'lly', 'It collects process metrics such as CPU load, RAM usage, and a variety of
        other resources ', ' 2008- 02 - 29 14 : 56 : 44 ', ' 2012 - 04 - 25 01 : 39 : 11 ', 0);
INSERT INTO `to_do_item` VALUES (304, ' hinachib9 ', ' The Synchronize to Database function will give you a full picture
        of all database differences.', ' 2015- 03 - 25 04 : 16 : 05 ', ' 2008 - 05 - 16 12 : 02 : 22 ', 0);
INSERT INTO `to_do_item` VALUES (305, ' onnachiang312 ', ' If opportunity doesn’t knock,
        build a door. If your Internet Service Provider (ISP)               ', '2007-04-29 23:01:24', '2013-03-15 12:37:43', 1);
INSERT INTO `to_do_item` VALUES (306, 'konomomoe4', 'Navicat Data Modeler enables you to build high-quality conceptual,
        logical and physical ', '2015-12-07 22:49:15', '2015-01-27 22:04:38', 1);
INSERT INTO `to_do_item` VALUES (307, 'cmla1123', 'There is no way to happiness. Happiness is the way. Export Wizard allows you to export              ', '2019-06-13 02:19:42', '2014-08-22 18:35:21', 0);
INSERT INTO `to_do_item` VALUES (308, 'jixue5', 'A man’s best friends are his ten fingers. All journeys have secret destinations                   ', '2011-11-14 09:44:40', '2008-01-15 12:23:15', 1);
INSERT INTO `to_do_item` VALUES (309, 'adamssara05', 'To open a query using an external editor,
        control - click it and select Open with External            ', '2002-06-10 17:42:02', '2012-12-03 10:09:40', 1);
INSERT INTO `to_do_item` VALUES (310, 'harrisheath', 'In the Objects tab, you can use the List List,
        Detail Detail and ER Diagram ER Diagram              ', '2005-12-21 12:43:07', '2011-01-02 10:20:56', 1);
INSERT INTO `to_do_item` VALUES (311, 'csilva', 'Navicat provides a wide range advanced features,
        such as compelling code editing                    ', '2006-01-19 01:15:39', '2012-10-31 01:23:09', 0);
INSERT INTO `to_do_item` VALUES (312, 'ziyshen7', 'In the Objects tab, you can use the List List,
        Detail Detail and ER Diagram ER Diagram              ', '2006-01-22 20:25:17', '2013-03-03 17:26:45', 0);
INSERT INTO `to_do_item` VALUES (313, 'soziyi', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute
        ', ' 2017- 08 - 27 23 : 59 : 43 ', ' 2019 - 03 - 19 03 : 41 : 10 ', 1);
INSERT INTO `to_do_item` VALUES (314, ' dyunx ', ' If the Show objects under schema in navigation pane option is checked
        at the Preferences ', ' 2016- 01 - 18 04 : 42 : 08 ', ' 2017 - 04 - 29 14 : 50 : 04 ', 0);
INSERT INTO `to_do_item` VALUES (315, ' lautakwah ', ' The past has no power over the present moment.To start working
        with your server ', ' 2010- 08 - 19 07 : 17 : 56 ', ' 2019 - 04 - 05 05 : 44 : 21 ', 0);
INSERT INTO `to_do_item` VALUES (316, ' sugiyamaayano ', ' It wasn’t raining when Noah built the ark.In a Telnet
        session, all communications, ', '2015 - 07 - 08 09:54:08', '2023-03-05 14:17:09', 0);
INSERT INTO `to_do_item` VALUES (317, 'mcraig', 'Navicat Cloud could not connect and access your databases. By which it means,
        it ', '2003-12-31 04:25:27', '2008-05-01 04:09:32', 0);
INSERT INTO `to_do_item` VALUES (318, 'yfk', 'You must be the change you wish to see in the world. Creativity is intelligence having fun.', '2004-04-21 05:16:18', '2012-10-24 17:14:53', 0);
INSERT INTO `to_do_item` VALUES (319, 'wansw', 'It collects process metrics such as CPU load, RAM usage, and a variety
        of other resources ', ' 2007- 02 - 13 09 : 51 : 51 ', ' 2017 - 12 - 07 22 : 26 : 33 ', 0);
INSERT INTO `to_do_item` VALUES (320, ' huntph ', ' It provides strong authentication and secure encrypted
        communications between two ', ' 2007- 02 - 03 21 : 08 : 47 ', ' 2008 - 04 - 29 23 : 42 : 59 ', 1);
INSERT INTO `to_do_item` VALUES (321, ' nomuraaoshi526 ', ' In other words,
        Navicat provides the ability for data in different databases and/or                 ', '2014-07-16 17:31:55', '2020-02-11 21:27:03', 1);
INSERT INTO `to_do_item` VALUES (322, 'suz', 'It provides strong authentication and secure encrypted communications between two                   ', '2006-07-06 11:13:53', '2019-03-06 05:48:46', 0);
INSERT INTO `to_do_item` VALUES (323, 'yuechingwan88', 'Difficult circumstances serve as a textbook of life for people. There is no way to                  ', '2007-03-06 22:43:07', '2012-04-05 14:18:11', 0);
INSERT INTO `to_do_item` VALUES (324, 'suzuki7', 'To successfully establish a new connection to local/remote server - no matter via                   ', '2019-09-16 23:40:14', '2020-05-19 14:38:01', 1);
INSERT INTO `to_do_item` VALUES (325, 'duanyunxi1', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', '2010-08-17 12:49:52', '2012-09-11 18:35:27', 0);
INSERT INTO `to_do_item` VALUES (326, 'smtang', 'The past has no power over the present moment. I will greet this day with love in my heart.         ', '2002-10-23 05:38:56', '2017-03-09 20:17:22', 0);
INSERT INTO `to_do_item` VALUES (327, 'hannom4', 'Navicat Monitor is a safe,
        simple and agentless remote server monitoring tool that                  ', '2001-03-10 16:48:20', '2012-03-10 12:07:28', 0);
INSERT INTO `to_do_item` VALUES (328, 'tam4', 'Navicat Monitor is a safe,
        simple and agentless remote server monitoring tool that                  ', '2002-07-30 09:43:37', '2014-11-11 05:07:16', 0);
INSERT INTO `to_do_item` VALUES (329, 'hanash84', 'The Information Pane shows the detailed object information,
        project activities, the ', '2010-03-19 07:00:43', '2014-06-03 09:33:52', 1);
INSERT INTO `to_do_item` VALUES (330, 'kathyevans', 'Navicat provides powerful tools for working with queries: Query Editor for editing                  ', '2013-08-15 15:08:17', '2014-05-18 18:43:55', 0);
INSERT INTO `to_do_item` VALUES (331, 'yulingleung9', 'A man is not old until regrets take the place of dreams. Monitored servers include                  ', '2004-04-10 00:24:50', '2015-11-15 10:37:39', 0);
INSERT INTO `to_do_item` VALUES (332, 'tangkaling614', 'Navicat authorizes you to make connection to remote servers running on different                    ', '2012-12-25 16:37:49', '2017-12-16 11:42:08', 1);
INSERT INTO `to_do_item` VALUES (333, 'jin10', 'Navicat Cloud provides a cloud service for synchronizing connections,
        queries, model ', '2015-09-22 11:20:11', '2007-10-27 00:53:11', 1);
INSERT INTO `to_do_item` VALUES (334, 'wmchu', 'To open a query using an external editor,
        control - click it and select Open with External            ', '2007-09-24 18:07:07', '2021-03-14 02:45:00', 0);
INSERT INTO `to_do_item` VALUES (335, 'mkw', 'Navicat provides a wide range advanced features,
        such as compelling code editing                    ', '2016-04-01 00:20:07', '2020-10-12 06:16:28', 0);
INSERT INTO `to_do_item` VALUES (336, 'trvincent6', 'Typically,
        it is employed as an encrypted version of Telnet. If your Internet Service               ', '2012-04-03 11:13:46', '2010-04-25 00:18:21', 1);
INSERT INTO `to_do_item` VALUES (337, 'reyesnich', 'In other words,
        Navicat provides the ability for data in different databases and/or                 ', '2015-03-09 03:57:53', '2012-06-19 14:51:14', 0);
INSERT INTO `to_do_item` VALUES (338, 'kaitokamoto06', 'Navicat provides a wide range advanced features,
        such as compelling code editing                    ', '2001-04-01 21:37:19', '2022-04-26 23:02:32', 0);
INSERT INTO `to_do_item` VALUES (339, 'lee70', 'If you wait, all that happens is you get older.To start working with
        your server ', ' 2015- 10 - 30 14 : 26 : 30 ', ' 2012 - 07 - 06 18 : 22 : 09 ', 0);
INSERT INTO `to_do_item` VALUES (340, ' bonnieschmidt2 ', ' The Navigation pane employs tree structure which allows you
        to take action upon the ', ' 2004- 05 - 27 23 : 19 : 59 ', ' 2011 - 08 - 21 03 : 54 : 26 ', 0);
INSERT INTO `to_do_item` VALUES (341, ' mitsukimurat1958 ', ' All journeys have secret destinations of which the
        traveler is unaware.', ' 2000- 09 - 06 21 : 05 : 13 ', ' 2013 - 03 - 28 18 : 03 : 11 ', 0);
INSERT INTO `to_do_item` VALUES (342, ' an7 ', ' The Main Window consists of several toolbars and panes for you to work
        on connections, ', '2000 - 06 - 18 08:49:48', '2015-09-13 16:30:26', 1);
INSERT INTO `to_do_item` VALUES (343, 'yue213', 'Anyone who has never made a mistake has never tried anything new. To successfully                   ', '2015-06-03 03:12:27', '2017-01-15 09:25:26', 1);
INSERT INTO `to_do_item` VALUES (344, 'daichia1', 'A man’s best friends are his ten fingers. Actually it is just in an idea when feel                ', '2021-11-18 05:44:17', '2015-10-20 17:18:51', 1);
INSERT INTO `to_do_item` VALUES (345, 'patel1980', 'What you get by achieving your goals is not as important as what you become by achieving your goals.', '2011-02-15 18:28:45', '2013-09-12 13:24:58', 1);
INSERT INTO `to_do_item` VALUES (346, 'nanammi108', 'I will greet this day with love in my heart. Monitored servers include MySQL,
        MariaDB ', '2008-12-21 11:44:37', '2017-07-17 11:26:09', 1);
INSERT INTO `to_do_item` VALUES (347, 'daisuke72', 'Export Wizard allows you to export data from tables, collections,
        views, or query ', ' 2003- 04 - 24 00 : 40 : 18 ', ' 2020 - 06 - 27 20 : 23 : 56 ', 1);
INSERT INTO `to_do_item` VALUES (348, ' bb5 ', ' Actually it is just in an idea when feel oneself can achieve and cannot
        achieve.', ' 2013- 02 - 25 00 : 11 : 13 ', ' 2017 - 11 - 26 08 : 37 : 03 ', 0);
INSERT INTO `to_do_item` VALUES (349, ' lupan ', ' In the middle of winter I at last discovered that there was in me an
        invincible summer.', ' 2020- 08 - 13 18 : 27 : 14 ', ' 2020 - 11 - 05 18 : 50 : 48 ', 0);
INSERT INTO `to_do_item` VALUES (350, ' choyee1997 ', ' Import Wizard allows you to import data to tables / collections
        from CSV, TXT, XML, DBF and more.', '2008-10-30 09:40:01', '2015-05-29 04:01:47', 0);
INSERT INTO `to_do_item` VALUES (351, 'ihik1017', 'Navicat is a multi-connections Database Administration tool allowing you to connect                 ', '2006-08-22 10:42:23', '2020-09-06 11:50:49', 1);
INSERT INTO `to_do_item` VALUES (352, 'hawaisan', 'Navicat authorizes you to make connection to remote servers running on different                    ', '2006-01-16 11:45:11', '2010-12-08 03:53:03', 0);
INSERT INTO `to_do_item` VALUES (353, 'anqilu617', 'The reason why a great man is great is that he resolves to be a great man.                          ', '2020-02-28 04:54:03', '2016-05-16 02:23:37', 1);
INSERT INTO `to_do_item` VALUES (354, 'chenms5', 'Optimism is the one quality more associated with success and happiness than any other.              ', '2014-10-25 09:50:44', '2010-08-21 10:42:12', 1);
INSERT INTO `to_do_item` VALUES (355, 'ziyixiang', 'Navicat Data Modeler enables you to build high-quality conceptual,
        logical and physical ', '2016-08-21 17:46:24', '2021-10-03 00:23:22', 0);
INSERT INTO `to_do_item` VALUES (356, 'chingwan95', 'You must be the change you wish to see in the world. HTTP Tunneling is a method for                 ', '2016-10-30 09:05:31', '2019-03-24 18:44:33', 1);
INSERT INTO `to_do_item` VALUES (357, 'lam1121', 'If you wait, all that happens is you get older.Success consists of
        going from failure ', ' 2014- 01 - 13 03 : 11 : 10 ', ' 2008 - 03 - 24 07 : 39 : 32 ', 1);
INSERT INTO `to_do_item` VALUES (358, ' morrisgrace ', ' You will succeed because most people are lazy.What you get by
        achieving your goals ', ' 2005- 10 - 31 16 : 01 : 45 ', ' 2008 - 07 - 14 09 : 47 : 54 ', 0);
INSERT INTO `to_do_item` VALUES (359, ' tawl ', ' To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2011-09-14 09:59:18', '2013-07-05 05:13:13', 0);
INSERT INTO `to_do_item` VALUES (360, 'otsukadai', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', '2021-03-01 06:55:53', '2019-12-19 02:44:34', 0);
INSERT INTO `to_do_item` VALUES (361, 'wingkuen7', 'The Main Window consists of several toolbars and panes for you to work on connections,
        ', '2011 - 08 - 28 18:10:21', '2009-12-19 19:18:18', 0);
INSERT INTO `to_do_item` VALUES (362, 'chesm', 'Navicat Cloud provides a cloud service for synchronizing connections,
        queries, model ', '2012-05-28 17:03:46', '2014-11-20 06:03:00', 0);
INSERT INTO `to_do_item` VALUES (363, 'lurui', 'Genius is an infinite capacity for taking pains. After logged in the Navicat Cloud                  ', '2017-04-23 21:37:09', '2012-12-20 15:05:15', 0);
INSERT INTO `to_do_item` VALUES (364, 'hth', 'Genius is an infinite capacity for taking pains. All the Navicat Cloud objects are                  ', '2021-11-23 01:11:11', '2008-01-08 01:23:39', 0);
INSERT INTO `to_do_item` VALUES (365, 'manste', 'Secure SHell (SSH) is a program to log in into another computer over a network, execute
        ', ' 2001- 07 - 26 07 : 41 : 12 ', ' 2014 - 09 - 20 06 : 01 : 39 ', 0);
INSERT INTO `to_do_item` VALUES (366, ' smwong1 ', ' HTTP Tunneling is a method for connecting to a server that uses the
        same protocol ', ' 2000- 12 - 07 00 : 49 : 48 ', ' 2013 - 11 - 08 02 : 30 : 11 ', 1);
INSERT INTO `to_do_item` VALUES (367, ' kakeung419 ', ' Navicat Monitor can be installed on any local computer or
        virtual machine and does ', ' 2022- 01 - 29 19 : 25 : 03 ', ' 2020 - 11 - 26 02 : 36 : 44 ', 1);
INSERT INTO `to_do_item` VALUES (368, ' yji ', ' The past has no power over the present moment.Anyone who has ever made
        anything ', ' 2016- 11 - 03 14 : 42 : 09 ', ' 2021 - 08 - 23 18 : 41 : 49 ', 1);
INSERT INTO `to_do_item` VALUES (369, ' yw2 ', ' Flexible settings enable you to set up a custom key for comparison and
        synchronization.', ' 2001- 03 - 02 10 : 36 : 28 ', ' 2019 - 01 - 30 15 : 16 : 52 ', 1);
INSERT INTO `to_do_item` VALUES (370, ' kasy ', ' If the plan doesn’t work, change the plan, but never the goal.', '2015-10-13 08:23:35', '2018-01-30 05:29:09', 1);
INSERT INTO `to_do_item` VALUES (371, 'manlingling', 'The past has no power over the present moment. Champions keep playing until they get it right.', '2020-10-03 06:12:43', '2009-06-26 23:38:14', 0);
INSERT INTO `to_do_item` VALUES (372, 'shinokono', 'After logged in the Navicat Cloud feature,
        the Navigation pane will be divided into                 ', '2012-06-22 16:03:49', '2013-10-01 02:58:20', 1);
INSERT INTO `to_do_item` VALUES (373, 'eitnaka', 'Navicat Monitor is a safe,
        simple and agentless remote server monitoring tool that                  ', '2018-10-17 07:17:18', '2018-01-16 10:14:07', 1);
INSERT INTO `to_do_item` VALUES (374, 'aguilar02', 'Monitored servers include MySQL, MariaDB and SQL Server, and
        compatible with cloud ', ' 2000- 07 - 23 16 : 58 : 34 ', ' 2020 - 06 - 28 03 : 29 : 20 ', 0);
INSERT INTO `to_do_item` VALUES (375, ' xue8 ', ' Secure Sockets Layer(SSL) is a protocol for transmitting private
        documents via the Internet.', ' 2000- 03 - 25 11 : 45 : 29 ', ' 2017 - 02 - 05 04 : 12 : 50 ', 1);
INSERT INTO `to_do_item` VALUES (376, ' chimingy ', ' The Information Pane shows the detailed object information,
        project activities, the ', '2018-06-07 06:32:42', '2019-09-27 12:33:12', 1);
INSERT INTO `to_do_item` VALUES (377, 'robinson12', 'If your Internet Service Provider (ISP) does not provide direct access to its server,
        ', '2000 - 04 - 12 16:49:55', '2016-01-15 22:20:17', 0);
INSERT INTO `to_do_item` VALUES (378, 'lu822', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', '2020-02-17 04:20:30', '2014-05-23 00:30:41', 1);
INSERT INTO `to_do_item` VALUES (379, 'kelleycarl1', 'The reason why a great man is great is that he resolves to be a great man.', '2012-11-17 07:00:59', '2021-12-26 04:02:20', 0);
INSERT INTO `to_do_item` VALUES (380, 'leuwingsuen', 'Actually it is just in an idea when feel oneself can achieve and cannot achieve.', '2013-02-21 15:22:24', '2018-09-24 23:23:58', 0);
INSERT INTO `to_do_item` VALUES (381, 'cush7', 'If opportunity doesn’t knock,
        build a door. Actually it is just in an idea when                   ', '2006-06-16 14:29:02', '2018-07-12 18:26:19', 1);
INSERT INTO `to_do_item` VALUES (382, 'sakh6', 'Navicat Data Modeler enables you to build high-quality conceptual,
        logical and physical ', '2019-07-19 17:14:43', '2015-02-27 22:02:40', 0);
INSERT INTO `to_do_item` VALUES (383, 'judithhic7', 'Difficult circumstances serve as a textbook of life for people. Navicat Cloud provides              ', '2007-07-27 14:32:18', '2016-01-10 12:49:20', 0);
INSERT INTO `to_do_item` VALUES (384, 'sestone', 'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ', '2014-12-03 09:54:18', '2015-07-12 16:53:32', 1);
INSERT INTO `to_do_item` VALUES (385, 'anl', 'Champions keep playing until they get it right. You must be the change you wish to see in the world.', '2018-09-17 05:09:58', '2023-04-19 14:20:47', 0);
INSERT INTO `to_do_item` VALUES (386, 'oh1948', 'Creativity is intelligence having fun. If the plan doesn’t work,
        change the plan, ', '2017 - 10 - 12 20:03:05', '2015-01-14 20:18:09', 1);
INSERT INTO `to_do_item` VALUES (387, 'andokasumi', 'There is no way to happiness. Happiness is the way. Instead of wondering when your                  ', '2005-03-26 19:33:42', '2023-02-18 22:36:19', 1);
INSERT INTO `to_do_item` VALUES (388, 'kwchung3', 'In the Objects tab, you can use the List List,
        Detail Detail and ER Diagram ER Diagram              ', '2000-01-06 14:46:47', '2013-08-29 22:49:06', 1);
INSERT INTO `to_do_item` VALUES (389, 'sainoue', 'In the middle of winter I at last discovered that there was in me an invincible summer.', '2016-07-10 14:18:03', '2020-09-07 18:33:32', 1);
INSERT INTO `to_do_item` VALUES (390, 'hwanda2013', 'In the Objects tab, you can use the List List,
        Detail Detail and ER Diagram ER Diagram              ', '2013-12-13 16:27:28', '2010-02-05 08:21:45', 1);
INSERT INTO `to_do_item` VALUES (391, 'cca', 'Such sessions are also susceptible to session hijacking, where a malicious
        user takes ', ' 2012- 09 - 16 05 : 11 : 53 ', ' 2018 - 02 - 03 16 : 59 : 55 ', 0);
INSERT INTO `to_do_item` VALUES (392, ' jimenhazel ', ' Creativity is intelligence having fun.If the plan doesn’t work,
        change the plan, ', '2001 - 03 - 24 22:01:36', '2019-04-03 07:15:58', 0);
INSERT INTO `to_do_item` VALUES (393, 'tszching16', 'Navicat Monitor requires a repository to store alerts and metrics for historical analysis.', '2008-05-02 01:28:34', '2015-05-07 19:41:30', 1);
INSERT INTO `to_do_item` VALUES (394, 'bakermartha', 'You can select any connections, objects or projects, and then
        select the corresponding ', ' 2006- 04 - 19 15 : 54 : 29 ', ' 2009 - 03 - 01 00 : 48 : 11 ', 1);
INSERT INTO `to_do_item` VALUES (395, ' nmio ', ' Actually it is just in an idea when feel oneself can achieve and
        cannot achieve.', ' 2000- 06 - 14 04 : 19 : 44 ', ' 2012 - 05 - 06 13 : 16 : 07 ', 1);
INSERT INTO `to_do_item` VALUES (396, ' brooksm306 ', ' The repository database can be an existing MySQL, MariaDB,
        PostgreSQL, SQL Server, ', '2017 - 01 - 18 01:44:13', '2019-12-31 00:27:11', 0);
INSERT INTO `to_do_item` VALUES (397, 'chfushing', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.                ', '2018-04-12 11:42:42', '2020-02-06 22:38:24', 1);
INSERT INTO `to_do_item` VALUES (398, 'lfushing', 'Anyone who has ever made anything of importance was disciplined.', '2010-06-19 16:44:25', '2015-01-20 14:00:42', 0);
INSERT INTO `to_do_item` VALUES (399, 'shing9', 'Genius is an infinite capacity for taking pains. A man is not old until regrets take                ', '2004-08-03 22:56:17', '2011-01-19 00:07:10', 1);
INSERT INTO `to_do_item` VALUES (400, 'lyta', 'A query is used to extract data from the database in a readable format according                    ', '2002-05-03 12:36:08', '2021-08-11 15:45:04', 1);
INSERT INTO `to_do_item` VALUES (401, 'shkw80', 'The past has no power over the present moment. Typically,
        it is employed as an encrypted            ', '2002-01-21 14:23:46', '2020-04-04 00:14:21', 1);
INSERT INTO `to_do_item` VALUES (402, 'ysiuwai', 'If your Internet Service Provider (ISP) does not provide direct access to its server,
        ', '2008 - 11 - 28 03:40:01', '2016-10-24 14:35:13', 1);
INSERT INTO `to_do_item` VALUES (403, 'theharris', 'If opportunity doesn’t knock,
        build a door. SQL Editor allows you to create and                   ', '2022-01-28 06:42:14', '2013-05-18 21:44:44', 0);
INSERT INTO `to_do_item` VALUES (404, 'yung717', 'Navicat authorizes you to make connection to remote servers running on different                    ', '2012-02-29 01:01:18', '2012-01-10 16:01:37', 0);
INSERT INTO `to_do_item` VALUES (405, 'heung5', 'To clear or reload various internal caches, flush tables, or acquire
        locks, control - click ', '2008-05-21 04:29:53', '2017-11-20 06:40:23', 1);
INSERT INTO `to_do_item` VALUES (406, 'yuensumwing3', 'The Main Window consists of several toolbars and panes for you to work on connections,
        ', '2009 - 01 - 19 11:42:07', '2008-09-12 08:20:48', 1);
INSERT INTO `to_do_item` VALUES (407, 'juliaromero', 'It provides strong authentication and secure encrypted communications between two                   ', '2007-01-02 12:27:31', '2023-04-17 04:46:02', 1);
INSERT INTO `to_do_item` VALUES (408, 'luly612', 'To connect to a database or schema,
        simply double-click it in the pane.                             ', '2012-11-01 07:17:45', '2011-02-20 02:11:28', 0);
INSERT INTO `to_do_item` VALUES (409, 'luo1973', 'If opportunity doesn’t knock,
        build a door. SSH serves to prevent such vulnerabilities            ', '2004-11-11 00:44:11', '2015-11-08 13:48:41', 0);
INSERT INTO `to_do_item` VALUES (410, 'gary01', 'To clear or reload various internal caches, flush tables, or acquire
        locks, control - click ', '2018-03-03 00:42:33', '2020-07-23 19:20:19', 0);
INSERT INTO `to_do_item` VALUES (411, 'lochun820', 'Navicat Monitor can be installed on any local computer or virtual machine and does                  ', '2006-02-04 03:05:40', '2018-06-02 05:29:49', 0);
INSERT INTO `to_do_item` VALUES (412, 'eiendo6', 'The Information Pane shows the detailed object information,
        project activities, the ', '2019-12-05 06:39:13', '2017-11-28 23:23:29', 0);
INSERT INTO `to_do_item` VALUES (413, 'shilu404', 'To start working with your server in Navicat,
        you should first establish a connection               ', '2015-07-04 04:14:36', '2017-04-22 04:22:43', 1);
INSERT INTO `to_do_item` VALUES (414, 'kwokkuens46', 'Anyone who has ever made anything of importance was disciplined.', '2012-06-28 14:44:17', '2022-11-07 13:04:20', 1);
INSERT INTO `to_do_item` VALUES (415, 'szeyu44', 'The Navigation pane employs tree structure which allows you to take action upon the                 ', '2000-11-13 03:25:09', '2019-08-14 13:31:32', 0);
INSERT INTO `to_do_item` VALUES (416, 'tranrodney5', 'Navicat allows you to transfer data from one database and/or schema to another with                 ', '2002-02-13 16:35:26', '2008-06-26 18:23:55', 0);
INSERT INTO `to_do_item` VALUES (417, 'xiaoz', 'You can select any connections, objects or projects, and then select the
        corresponding ', ' 2009- 04 - 23 04 : 28 : 15 ', ' 2009 - 01 - 03 13 : 16 : 36 ', 1);
INSERT INTO `to_do_item` VALUES (418, ' zitaomo ', ' To get a secure connection,
        the first thing you need to do is to install OpenSSL                    ', '2005-04-29 20:20:22', '2023-02-06 17:07:09', 1);
INSERT INTO `to_do_item` VALUES (419, 'kaman9', 'Navicat provides a wide range advanced features,
        such as compelling code editing                    ', '2003-02-13 09:47:10', '2017-04-07 01:52:28', 1);
INSERT INTO `to_do_item` VALUES (420, 'myuling44', 'Anyone who has never made a mistake has never tried anything new. If your Internet                  ', '2020-01-24 17:46:17', '2018-04-11 09:58:28', 0);
INSERT INTO `to_do_item` VALUES (421, 'anniem', 'Sometimes you win,
        sometimes you learn. Navicat Cloud provides a cloud service for                  ', '2012-06-05 18:18:30', '2016-03-27 18:41:21', 0);
INSERT INTO `to_do_item` VALUES (422, 'daisukeinoue', 'All journeys have secret destinations of which the traveler is unaware.                             ', '2011-04-19 14:38:07', '2015-12-04 06:22:34', 0);
INSERT INTO `to_do_item` VALUES (423, 'peree1010', 'All journeys have secret destinations of which the traveler is unaware.', '2003-10-09 14:38:39', '2008-01-31 14:48:21', 0);
INSERT INTO `to_do_item` VALUES (424, 'ernh', 'To open a query using an external editor,
        control - click it and select Open with External            ', '2015-02-14 04:22:41', '2021-10-02 03:31:24', 1);
INSERT INTO `to_do_item` VALUES (425, 'hychang', 'You must be the change you wish to see in the world. HTTP Tunneling is a method for                 ', '2010-03-16 19:53:00', '2008-11-10 02:03:48', 1);
INSERT INTO `to_do_item` VALUES (426, 'thepowell79', 'After logged in the Navicat Cloud feature,
        the Navigation pane will be divided into                 ', '2013-04-04 12:18:08', '2021-05-01 22:21:03', 1);
INSERT INTO `to_do_item` VALUES (427, 'kono202', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s               ',
        '2010-08-28 04:40:39', '2016-08-17 01:42:00', 1);
INSERT INTO `to_do_item`
VALUES (428, 'kmlo',
        'A query is used to extract data from the database in a readable format according                    ',
        '2001-10-28 03:44:22', '2015-01-23 14:34:13', 1);
INSERT INTO `to_do_item`
VALUES (429, 'cheungcm06',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2016-06-12 02:29:54', '2013-06-08 05:24:36', 1);
INSERT INTO `to_do_item`
VALUES (430, 'zanqi1990',
        'How we spend our days is, of course, how we spend our lives. Navicat Monitor is a                   ',
        '2006-09-09 02:50:21', '2010-03-03 20:04:42', 0);
INSERT INTO `to_do_item`
VALUES (431, 'hdonald51',
        'I destroy my enemies when I make them my friends. All journeys have secret destinations             ',
        '2010-09-18 06:02:15', '2014-01-20 02:54:20', 0);
INSERT INTO `to_do_item`
VALUES (432, 'kaowl', 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.',
        '2003-04-20 03:04:54', '2011-09-16 08:03:25', 1);
INSERT INTO `to_do_item`
VALUES (433, 'imaiayan',
        'Anyone who has ever made anything of importance was disciplined. The repository database            ',
        '2012-08-21 21:36:55', '2014-12-22 19:31:03', 0);
INSERT INTO `to_do_item`
VALUES (434, 'zhennan1227',
        'Instead of wondering when your next vacation is, maybe you should set up a life you                 ',
        '2005-04-16 04:17:24', '2015-09-18 01:29:07', 1);
INSERT INTO `to_do_item`
VALUES (435, 'pchavez2',
        'Difficult circumstances serve as a textbook of life for people. Sometimes you win,                  ',
        '2004-02-08 03:40:47', '2012-07-12 13:32:10', 1);
INSERT INTO `to_do_item`
VALUES (436, 'spencerdon',
        'A comfort zone is a beautiful place, but nothing ever grows there. The first step                   ',
        '2020-01-12 22:26:46', '2014-03-05 16:56:24', 0);
INSERT INTO `to_do_item`
VALUES (437, 'itsato',
        'A comfort zone is a beautiful place, but nothing ever grows there. Import Wizard                    ',
        '2019-04-17 23:58:48', '2017-08-21 19:14:25', 0);
INSERT INTO `to_do_item`
VALUES (438, 'sitcy', 'The reason why a great man is great is that he resolves to be a great man.',
        '2005-10-13 13:10:06', '2023-03-16 00:39:13', 0);
INSERT INTO `to_do_item`
VALUES (439, 'debramason',
        'You will succeed because most people are lazy. SSH serves to prevent such vulnerabilities           ',
        '2016-07-27 07:12:35', '2017-05-02 09:38:16', 1);
INSERT INTO `to_do_item`
VALUES (440, 'zhang7',
        'Anyone who has ever made anything of importance was disciplined. Navicat Monitor                    ',
        '2000-06-01 01:35:24', '2014-02-22 23:40:33', 1);
INSERT INTO `to_do_item`
VALUES (441, 'kco54',
        'If it scares you, it might be a good thing to try. You must be the change you wish                  ',
        '2004-10-29 22:05:43', '2020-01-25 00:41:23', 0);
INSERT INTO `to_do_item`
VALUES (442, 'sasaki1',
        'To successfully establish a new connection to local/remote server - no matter via                   ',
        '2011-12-22 11:34:59', '2014-09-11 09:07:35', 1);
INSERT INTO `to_do_item`
VALUES (443, 'ayano6',
        'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ',
        '2007-06-02 10:31:15', '2017-06-09 09:56:11', 0);
INSERT INTO `to_do_item`
VALUES (444, 'tamuraren',
        'Navicat provides powerful tools for working with queries: Query Editor for editing                  ',
        '2006-01-14 12:13:06', '2011-03-09 13:30:28', 0);
INSERT INTO `to_do_item`
VALUES (445, 'airinakayama',
        'A comfort zone is a beautiful place, but nothing ever grows there. Navicat provides                 ',
        '2018-05-25 00:33:20', '2010-09-01 17:45:00', 1);
INSERT INTO `to_do_item`
VALUES (446, 'koysakura',
        'Difficult circumstances serve as a textbook of life for people. The On Startup feature              ',
        '2015-09-30 14:27:58', '2021-03-14 15:27:43', 0);
INSERT INTO `to_do_item`
VALUES (447, 'fan309',
        'A man’s best friends are his ten fingers. Navicat authorizes you to make connection               ',
        '2009-04-18 20:19:59', '2020-06-10 03:53:48', 1);
INSERT INTO `to_do_item`
VALUES (448, 'jil',
        'The reason why a great man is great is that he resolves to be a great man.                          ',
        '2015-08-22 03:47:45', '2013-05-08 15:18:31', 1);
INSERT INTO `to_do_item`
VALUES (449, 'louch',
        'Navicat provides a wide range advanced features, such as compelling code editing                    ',
        '2017-05-12 02:52:59', '2019-05-14 17:29:32', 0);
INSERT INTO `to_do_item`
VALUES (450, 'yota1213',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.',
        '2016-04-13 22:10:15', '2012-05-06 21:53:40', 0);
INSERT INTO `to_do_item`
VALUES (451, 'yunsasaki',
        'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ',
        '2010-08-03 14:37:53', '2008-10-30 05:15:26', 1);
INSERT INTO `to_do_item`
VALUES (452, 'araiminat',
        'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud.              ',
        '2008-08-05 12:42:11', '2020-05-28 16:04:33', 0);
INSERT INTO `to_do_item`
VALUES (453, 'hana',
        'Navicat Data Modeler enables you to build high-quality conceptual, logical and physical             ',
        '2007-07-25 16:57:12', '2012-03-06 17:52:06', 0);
INSERT INTO `to_do_item`
VALUES (454, 'ziyi112',
        'The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server,                  ',
        '2007-10-20 09:00:38', '2019-12-06 05:20:25', 1);
INSERT INTO `to_do_item`
VALUES (455, 'chingwan1958',
        'If opportunity doesn’t knock, build a door. What you get by achieving your goals                  ',
        '2018-04-21 02:32:58', '2011-09-18 17:54:25', 0);
INSERT INTO `to_do_item`
VALUES (456, 'rui97', 'SQL Editor allows you to create and edit SQL text, prepare and execute selected queries.',
        '2002-11-30 15:08:50', '2008-09-04 10:23:13', 0);
INSERT INTO `to_do_item`
VALUES (457, 'tg122', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.',
        '2000-06-28 16:48:36', '2022-01-29 19:47:34', 1);
INSERT INTO `to_do_item`
VALUES (458, 'em421',
        'You must be the change you wish to see in the world. SSH serves to prevent such vulnerabilities     ',
        '2000-09-02 01:31:07', '2008-07-17 07:24:13', 1);
INSERT INTO `to_do_item`
VALUES (459, 'smomoka604',
        'To get a secure connection, the first thing you need to do is to install OpenSSL                    ',
        '2016-02-28 03:33:15', '2020-04-09 01:56:34', 0);
INSERT INTO `to_do_item`
VALUES (460, 'elsa',
        'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram              ',
        '2001-05-06 19:28:15', '2022-07-20 06:31:36', 1);
INSERT INTO `to_do_item`
VALUES (461, 'sakurh', 'A comfort zone is a beautiful place, but nothing ever grows there.', '2019-03-01 20:06:02',
        '2014-09-01 18:35:13', 1);
INSERT INTO `to_do_item`
VALUES (462, 'hpau',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2015-08-04 02:20:04', '2020-11-24 12:12:30', 1);
INSERT INTO `to_do_item`
VALUES (463, 'jessicamorri1954',
        'A man is not old until regrets take the place of dreams. The reason why a great man                 ',
        '2000-01-31 03:08:10', '2011-02-03 01:26:03', 1);
INSERT INTO `to_do_item`
VALUES (464, 'mingchoi5',
        'Navicat Monitor can be installed on any local computer or virtual machine and does                  ',
        '2007-03-21 22:01:09', '2009-07-20 19:32:39', 0);
INSERT INTO `to_do_item`
VALUES (465, 'zitaodai',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2008-07-22 23:04:39', '2020-11-15 03:58:04', 1);
INSERT INTO `to_do_item`
VALUES (466, 'hamisak720',
        'After comparing data, the window shows the number of records that will be inserted,                 ',
        '2006-08-07 02:21:49', '2015-06-13 12:17:21', 1);
INSERT INTO `to_do_item`
VALUES (467, 'kelka',
        'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ',
        '2012-10-09 10:34:51', '2019-06-06 08:01:54', 1);
INSERT INTO `to_do_item`
VALUES (468, 'baileruby',
        'The Navigation pane employs tree structure which allows you to take action upon the                 ',
        '2008-09-08 09:22:28', '2020-03-25 18:26:16', 1);
INSERT INTO `to_do_item`
VALUES (469, 'benner',
        'Navicat Monitor can be installed on any local computer or virtual machine and does                  ',
        '2001-04-25 02:26:31', '2016-05-23 04:51:24', 0);
INSERT INTO `to_do_item`
VALUES (470, 'okadas',
        'Remember that failure is an event, not a person. The Main Window consists of several                ',
        '2019-06-30 17:09:48', '2009-02-11 07:36:07', 1);
INSERT INTO `to_do_item`
VALUES (471, 'dunnm',
        'You must be the change you wish to see in the world. In a Telnet session, all communications,       ',
        '2005-09-03 15:30:30', '2015-02-25 07:34:19', 1);
INSERT INTO `to_do_item`
VALUES (472, 'tongfat9',
        'Champions keep playing until they get it right. After comparing data, the window                    ',
        '2009-05-14 03:30:21', '2019-06-28 04:19:50', 0);
INSERT INTO `to_do_item`
VALUES (473, 'ziyizhu',
        'If the Show objects under schema in navigation pane option is checked at the Preferences            ',
        '2018-12-20 23:09:32', '2013-02-03 11:15:06', 0);
INSERT INTO `to_do_item`
VALUES (474, 'caiz',
        'Navicat Cloud could not connect and access your databases. By which it means, it                    ',
        '2012-11-15 12:09:56', '2021-12-06 22:24:39', 0);
INSERT INTO `to_do_item`
VALUES (475, 'kazumas10', 'Typically, it is employed as an encrypted version of Telnet.', '2001-08-24 23:22:36',
        '2018-06-21 04:16:07', 1);
INSERT INTO `to_do_item`
VALUES (476, 'lsm', 'Optimism is the one quality more associated with success and happiness than any other.',
        '2004-04-16 14:14:06', '2021-10-31 21:19:22', 0);
INSERT INTO `to_do_item`
VALUES (477, 'fang1947',
        'A man’s best friends are his ten fingers. A comfort zone is a beautiful place,                    ',
        '2004-04-25 18:02:34', '2015-01-17 06:12:16', 0);
INSERT INTO `to_do_item`
VALUES (478, 'lai42',
        'Such sessions are also susceptible to session hijacking, where a malicious user takes               ',
        '2019-04-14 12:44:34', '2019-11-14 22:25:47', 0);
INSERT INTO `to_do_item`
VALUES (479, 'chku7',
        'Navicat Cloud provides a cloud service for synchronizing connections, queries, model                ',
        '2007-02-05 21:25:26', '2011-06-04 09:36:46', 1);
INSERT INTO `to_do_item`
VALUES (480, 'sofushing', 'Champions keep playing until they get it right. The first step is as good as half over.',
        '2018-10-25 05:40:06', '2022-02-16 05:47:22', 1);
INSERT INTO `to_do_item`
VALUES (481, 'meyapril',
        'If your Internet Service Provider (ISP) does not provide direct access to its server,               ',
        '2021-06-04 04:44:01', '2013-08-27 23:42:39', 0);
INSERT INTO `to_do_item`
VALUES (482, 'aouchida3', 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you.',
        '2013-04-24 13:51:21', '2013-10-17 13:28:02', 0);
INSERT INTO `to_do_item`
VALUES (483, 'otayuto', 'A comfort zone is a beautiful place, but nothing ever grows there.', '2004-10-05 04:41:30',
        '2020-03-15 06:29:25', 1);
INSERT INTO `to_do_item`
VALUES (484, 'tanakenta4',
        'If the plan doesn’t work, change the plan, but never the goal. Secure Sockets Layer(SSL)          ',
        '2004-12-20 19:38:24', '2021-04-26 18:02:25', 0);
INSERT INTO `to_do_item`
VALUES (485, 'kongxiuying627',
        'Navicat Cloud could not connect and access your databases. By which it means, it                    ',
        '2016-10-17 01:06:12', '2012-09-06 09:27:52', 1);
INSERT INTO `to_do_item`
VALUES (486, 'waimanyeung92',
        'Navicat allows you to transfer data from one database and/or schema to another with                 ',
        '2019-05-30 16:07:04', '2009-02-28 23:50:34', 0);
INSERT INTO `to_do_item`
VALUES (487, 'henrys',
        'The reason why a great man is great is that he resolves to be a great man.                          ',
        '2016-05-10 05:59:19', '2018-03-09 12:35:49', 0);
INSERT INTO `to_do_item`
VALUES (488, 'kaitonak7',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2020-11-16 02:12:13', '2022-07-26 04:39:50', 1);
INSERT INTO `to_do_item`
VALUES (489, 'russellgomez',
        'Navicat Data Modeler is a powerful and cost-effective database design tool which                    ',
        '2001-07-31 09:00:11', '2013-01-13 01:00:36', 1);
INSERT INTO `to_do_item`
VALUES (490, 'shimada6',
        'Navicat 15 has added support for the system-wide dark mode. With its well-designed                  ',
        '2012-01-23 17:47:55', '2018-09-16 12:55:39', 1);
INSERT INTO `to_do_item`
VALUES (491, 'yuitokudo930',
        'The past has no power over the present moment. All the Navicat Cloud objects are                    ',
        '2002-06-06 01:57:14', '2020-07-21 16:45:11', 1);
INSERT INTO `to_do_item`
VALUES (492, 'cflorence7',
        'The first step is as good as half over. Such sessions are also susceptible to session               ',
        '2003-03-14 06:04:49', '2016-11-13 03:03:59', 0);
INSERT INTO `to_do_item`
VALUES (493, 'tsarimura10',
        'A man is not old until regrets take the place of dreams. To clear or reload various                 ',
        '2010-08-10 03:04:48', '2021-01-18 01:11:59', 1);
INSERT INTO `to_do_item`
VALUES (494, 'weiz1219',
        'If opportunity doesn’t knock, build a door. A man is not old until regrets take                   ',
        '2008-01-12 04:13:53', '2018-12-21 03:12:25', 1);
INSERT INTO `to_do_item`
VALUES (495, 'kaitokimur55',
        'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.',
        '2012-01-01 21:57:33', '2013-01-20 04:14:59', 1);
INSERT INTO `to_do_item`
VALUES (496, 'kowingfat',
        'The Information Pane shows the detailed object information, project activities, the                 ',
        '2018-01-21 12:57:36', '2008-12-07 01:48:05', 0);
INSERT INTO `to_do_item`
VALUES (497, 'chejiehong',
        'HTTP Tunneling is a method for connecting to a server that uses the same protocol                   ',
        '2006-02-01 04:00:25', '2010-10-31 07:41:28', 0);
INSERT INTO `to_do_item`
VALUES (498, 'zhennanzh',
        'Navicat Monitor can be installed on any local computer or virtual machine and does                  ',
        '2011-03-30 17:10:05', '2011-06-17 01:57:39', 0);
INSERT INTO `to_do_item`
VALUES (499, 'clyue', 'I destroy my enemies when I make them my friends. Sometimes you win, sometimes you learn.',
        '2020-12-10 02:39:24', '2008-08-23 19:32:00', 1);
INSERT INTO `to_do_item`
VALUES (500, 'meyerjulie',
        'It provides strong authentication and secure encrypted communications between two                   ',
        '2009-09-16 15:42:39', '2022-04-13 12:56:09', 0);
INSERT INTO `to_do_item`
VALUES (501, 'jiyu',
        'If your Internet Service Provider (ISP) does not provide direct access to its server,               ',
        '2002-05-06 04:56:37', '2018-11-02 02:26:55', 1);
INSERT INTO `to_do_item`
VALUES (502, 'fazhiyuan',
        'After logged in the Navicat Cloud feature, the Navigation pane will be divided into                 ',
        '2018-05-15 00:59:55', '2009-02-09 01:24:29', 1);
INSERT INTO `to_do_item`
VALUES (503, 'rhayashi825', 'The past has no power over the present moment. It wasn’t raining when Noah built the ark.',
        '2013-09-30 04:37:31', '2011-09-11 00:00:59', 0);
INSERT INTO `to_do_item`
VALUES (504, 'anshi81', 'I may not have gone where I intended to go, but I think I have ended up where I needed to be.',
        '2015-01-26 15:28:18', '2021-05-29 10:34:52', 1);
INSERT INTO `to_do_item`
VALUES (505, 'daicuchid8',
        'You must be the change you wish to see in the world. Secure SHell (SSH) is a program                ',
        '2013-09-01 10:57:20', '2012-12-10 01:22:38', 1);
INSERT INTO `to_do_item`
VALUES (506, 'yuning117',
        'If your Internet Service Provider (ISP) does not provide direct access to its server,               ',
        '2019-12-01 18:45:16', '2021-10-25 13:16:41', 1);
INSERT INTO `to_do_item`
VALUES (507, 'zhiyjia',
        'The Information Pane shows the detailed object information, project activities, the                 ',
        '2000-08-16 14:26:39', '2016-06-01 09:53:07', 0);
INSERT INTO `to_do_item`
VALUES (508, 'beport2',
        'Navicat allows you to transfer data from one database and/or schema to another with                 ',
        '2007-09-15 03:46:02', '2015-02-28 22:36:38', 1);
INSERT INTO `to_do_item`
VALUES (509, 'kmchoi', 'Success consists of going from failure to failure without loss of enthusiasm.',
        '2013-01-24 12:51:05', '2008-10-29 19:19:14', 0);
INSERT INTO `to_do_item`
VALUES (510, 'iwasaki322', 'Sometimes you win, sometimes you learn. If it scares you, it might be a good thing to try.',
        '2019-05-23 07:42:42', '2013-04-14 16:12:49', 1);

SET
FOREIGN_KEY_CHECKS = 1;
