﻿SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `ff_admin` (
  `admin_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_pwd` char(32) NOT NULL,
  `admin_count` smallint(6) NOT NULL,
  `admin_ok` varchar(50) NOT NULL,
  `admin_del` bigint(1) NOT NULL,
  `admin_ip` varchar(40) NOT NULL,
  `admin_email` varchar(40) NOT NULL,
  `admin_logintime` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
INSERT INTO `ff_admin` (`admin_id`, `admin_name`, `admin_pwd`, `admin_count`, `admin_ok`, `admin_del`, `admin_ip`, `admin_email`, `admin_logintime`) VALUES
(1, 'admin', '7fef6171469e80d32c0559f88b377245', 206, '1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1', 0, '127.0.0.1', 'admin@qq.com', 1503632165);


CREATE TABLE IF NOT EXISTS `ff_ads` (
  `ads_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `ads_name` varchar(50) NOT NULL,
  `ads_content` text NOT NULL,
  PRIMARY KEY (`ads_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
INSERT INTO `ff_ads` (`ads_id`, `ads_name`, `ads_content`) VALUES
(1, '90_m', '工具>网站广告管理>广告标识（90_m）'),
(2, '60_m', '工具>网站广告管理>广告标识（60_m）'),
(3, '300_250', '工具>网站广告管理>广告标识（300_250）'),
(4, '300_250m', '工具>网站广告管理>广告标识（300_250m）'),
(5, '300_300', '工具>网站广告管理>广告标识（300_300）'),
(6, '960_90', '工具>网站广告管理>广告标识（960_90）'),
(7, '300_15', '<a class="btn btn-block btn-success" href="http://www.feifeicms.org" target="_blank">运营>广告管理>广告标识（300_15）</a>'),
(8, '300_15m', '<a class="btn btn-block btn-success radius-0" href="http://www.feifeicms.org" target="_blank">运营>广告管理>广告标识（300_15m）</a>');

CREATE TABLE IF NOT EXISTS `ff_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(64) NOT NULL,
  `card_face` mediumint(8) NOT NULL,
  `card_uid` int(11) NOT NULL DEFAULT '0',
  `card_status` tinyint(1) NOT NULL DEFAULT '0',
  `card_addtime` int(11) NOT NULL,
  `card_usetime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_cj` (
  `cj_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cj_name` varchar(255) NOT NULL,
  `cj_url` varchar(255) NOT NULL,
  `cj_type` tinyint(2) NOT NULL DEFAULT '1',
  `cj_appid` varchar(50) NOT NULL,
  `cj_appkey` varchar(50) NOT NULL,
  PRIMARY KEY (`cj_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
INSERT INTO `ff_cj` (`cj_id`, `cj_name`, `cj_url`, `cj_type`, `cj_appid`, `cj_appkey`) VALUES
(1, '影视聚合库1', 'http://cdn.feifeicms.co/api/hao123/', 1, '', ''),
(2, '影视资源库2', 'http://cdn.feifeicms.co/api/hao124/', 1, '', ''),
(3, '用户资源库', 'http://cdn.feifeicms.co/api/hao123/', 4, '', ''),
(4, '评论资源库', 'http://cdn.feifeicms.co/api/hao123/', 5, '', ''),
(5, '剧情采集库', 'http://cdn.feifeicms.co/api/hao123/', 6, '', ''),
(6, '影视资讯库', 'http://cdn.feifeicms.co/api/hao123/', 2, '', ''),
(7, '明星资源库', 'http://cdn.feifeicms.co/api/hao123/', 8, '', ''),
(8, '角色资源库', 'http://cdn.feifeicms.co/api/hao123/', 9, '', '');

CREATE TABLE IF NOT EXISTS `ff_forum` (
  `forum_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `forum_cid` mediumint(9) NOT NULL,
  `forum_cid_ep` smallint(5) NOT NULL,
  `forum_sid` tinyint(1) NOT NULL DEFAULT '1',
  `forum_uid` mediumint(9) NOT NULL DEFAULT '1',
  `forum_pid` mediumint(9) NOT NULL DEFAULT '0',
  `forum_title` varchar(255) NOT NULL,
  `forum_content` text NOT NULL,
  `forum_up` mediumint(9) NOT NULL DEFAULT '0',
  `forum_down` mediumint(9) NOT NULL DEFAULT '0',
  `forum_reply` mediumint(9) NOT NULL DEFAULT '0',
  `forum_report` mediumint(9) NOT NULL DEFAULT '0',
  `forum_ip` varchar(20) NOT NULL,
  `forum_addtime` int(11) NOT NULL,
  `forum_status` tinyint(1) NOT NULL DEFAULT '0',
  `forum_istop` tinyint(1) NOT NULL DEFAULT '0',
  `forum_referer` varchar(150) NOT NULL,
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `ff_link` (
  `link_id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL,
  `link_logo` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_order` tinyint(4) NOT NULL,
  `link_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
INSERT INTO `ff_link` (`link_id`, `link_name`, `link_logo`, `link_url`, `link_order`, `link_type`) VALUES
(1, '飞飞影视导航系统', '', 'http://www.feifeicms.org', 1, 1),
(3, '大错应用开发', '', 'http://www.daicuo.net', 2, 1);

CREATE TABLE IF NOT EXISTS `ff_list` (
  `list_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `list_pid` smallint(3) NOT NULL,
  `list_oid` smallint(3) NOT NULL,
  `list_sid` tinyint(1) NOT NULL,
  `list_name` char(20) NOT NULL,
  `list_skin` char(20) NOT NULL,
  `list_skin_detail` varchar(20) NOT NULL DEFAULT 'detail',
  `list_skin_play` varchar(20) NOT NULL DEFAULT 'play',
  `list_skin_type` varchar(20) NOT NULL DEFAULT 'type',
  `list_dir` varchar(90) NOT NULL,
  `list_status` tinyint(1) NOT NULL DEFAULT '1',
  `list_keywords` varchar(255) NOT NULL,
  `list_title` varchar(50) NOT NULL,
  `list_description` varchar(255) NOT NULL,
  `list_copyright` smallint(3) NOT NULL,
  `list_ispay` tinyint(1) NOT NULL DEFAULT '0',
  `list_price` smallint(6) NOT NULL DEFAULT '0',
  `list_trysee` smallint(6) NOT NULL DEFAULT '0',
  `list_extend` text,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
INSERT INTO `ff_list` (`list_id`, `list_pid`, `list_oid`, `list_sid`, `list_name`, `list_skin`, `list_skin_detail`, `list_skin_play`, `list_skin_type`, `list_dir`, `list_status`, `list_keywords`, `list_title`, `list_description`, `list_copyright`, `list_ispay`, `list_price`, `list_trysee`, `list_extend`) VALUES
(1, 0, 4, 1, '电影', 'channel', 'detail', 'play', 'type', 'dianying', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(2, 0, 1, 1, '电视剧', 'channel', 'detail', 'play', 'type', 'dianshiju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(3, 0, 2, 1, '动漫', 'channel', 'detail', 'play', 'type', 'dongman', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"\\u5185\\u5730,\\u7f8e\\u56fd,\\u9999\\u6e2f,\\u53f0\\u6e7e,\\u97e9\\u56fd,\\u65e5\\u672c,\\u6cd5\\u56fd,\\u82f1\\u56fd,\\u5fb7\\u56fd,\\u6cf0\\u56fd,\\u5370\\u5ea6,\\u5176\\u5b83","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(4, 0, 3, 1, '综艺', 'channel', 'detail', 'play', 'type', 'zongyi', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"\\u5185\\u5730,\\u7f8e\\u56fd,\\u9999\\u6e2f,\\u53f0\\u6e7e,\\u97e9\\u56fd,\\u65e5\\u672c,\\u6cd5\\u56fd,\\u82f1\\u56fd,\\u5fb7\\u56fd,\\u6cf0\\u56fd,\\u5370\\u5ea6,\\u5176\\u5b83","year":"2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(5, 1, 5, 1, '动作电影', 'list', 'detail', 'play', 'type', 'dongzuo', 1, '', '', '', 0, 0, 0, 0, '{"type":"\\u7231\\u60c5,\\u52a8\\u4f5c,\\u559c\\u5267,\\u6218\\u4e89,\\u79d1\\u5e7b,\\u5267\\u60c5,\\u6b66\\u4fa0,\\u5192\\u9669,\\u67aa\\u6218,\\u6050\\u6016,\\u5fae\\u7535\\u5f71,\\u5176\\u5b83","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(6, 1, 6, 1, '喜剧电影', 'list', 'detail', 'play', 'type', 'xiju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(7, 1, 7, 1, '爱情电影', 'list', 'detail', 'play', 'type', 'aiqing', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(8, 1, 8, 1, '科幻电影', 'list', 'detail', 'play', 'type', 'kehuan', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(9, 1, 9, 1, '恐怖电影', 'list', 'detail', 'play', 'type', 'kongbu', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"\\u5185\\u5730,\\u7f8e\\u56fd,\\u9999\\u6e2f,\\u53f0\\u6e7e,\\u97e9\\u56fd,\\u65e5\\u672c,\\u6cd5\\u56fd,\\u82f1\\u56fd,\\u5fb7\\u56fd,\\u6cf0\\u56fd,\\u5370\\u5ea6,\\u5176\\u5b83","year":"2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(10, 1, 10, 1, '剧情电影', 'list', 'detail', 'play', 'type', 'juqing', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(11, 1, 11, 1, '战争电影', 'list', 'detail', 'play', 'type', 'zhanzheng', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(12, 1, 12, 1, '纪录电影', 'list', 'detail', 'play', 'type', 'jilu', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(13, 1, 13, 1, '动画电影', 'list', 'detail', 'play', 'type', 'donghua', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(14, 1, 14, 1, '伦理电影', 'list', 'detail', 'play', 'type', 'lunli', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(15, 1, 15, 1, '微电影', 'list', 'detail', 'play', 'type', 'wei', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":""}'),
(16, 2, 16, 1, '国产电视剧', 'list', 'detail', 'play', 'type', 'neidi', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(17, 2, 17, 1, '香港电视剧', 'list', 'detail', 'play', 'type', 'gangju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(18, 2, 18, 1, '韩国电视剧', 'list', 'detail', 'play', 'type', 'hanju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(19, 2, 19, 1, '欧美电视剧', 'list', 'detail', 'play', 'type', 'meiju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(20, 2, 20, 1, '台湾电视剧', 'list', 'detail', 'play', 'type', 'taiwan', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(21, 2, 21, 1, '日本电视剧', 'list', 'detail', 'play', 'type', 'riju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(22, 2, 22, 1, '泰国电视剧', 'list', 'detail', 'play', 'type', 'taiju', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(23, 2, 23, 1, '海外电视剧', 'list', 'detail', 'play', 'type', 'haiwai', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"2020,2019,2018,2017,2016,2015,2014,2013,2012,2011,2010,2009,2008,2007,2006,2005,2004,2003,2002,2001,2000","star":"","state":"","language":"","version":"","weekday":"\\u4e00,\\u4e8c,\\u4e09,\\u56db,\\u4e94,\\u516d,\\u65e5"}'),
(24, 0, 24, 3, '专题', 'list', 'detail', 'play', 'type', 'zhuanti', 1, '', '', '', 0, 0, 0, 0, '{"type":"","area":"","year":"","star":"","state":"","language":"","version":"","weekday":""}');

CREATE TABLE IF NOT EXISTS `ff_nav` (
  `nav_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nav_pid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nav_oid` tinyint(3) NOT NULL DEFAULT '1',
  `nav_title` varchar(50) NOT NULL DEFAULT '',
  `nav_tips` varchar(50) NOT NULL DEFAULT '',
  `nav_link` varchar(255) NOT NULL DEFAULT '',
  `nav_status` tinyint(1) NOT NULL DEFAULT '1',
  `nav_target` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;
INSERT INTO `ff_nav` (`nav_id`, `nav_pid`, `nav_oid`, `nav_title`, `nav_tips`, `nav_link`, `nav_status`, `nav_target`) VALUES
(1, 0, 1, '首页', 'index', '/', 1, 0),
(2, 0, 2, '电视剧', 'dianshiju', '/?s=list-read-id-2.html', 1, 0),
(3, 0, 3, '电影', 'dianying', '/?s=list-read-id-1.html', 1, 0),
(4, 0, 4, '动漫', 'dongman', '/?s=list-read-id-3.html', 1, 0),
(5, 0, 5, '综艺', 'zongyi', '/?s=list-read-id-4.html', 1, 0),
(6, 2, 6, '内地', 'neidi', '/?s=list-read-id-16.html', 1, 0),
(7, 2, 7, '港剧', 'gangju', '/?s=list-read-id-17.html', 1, 0),
(8, 0, 8, '专题', 'zhuanti', '/?s=list-read-id-24.html', 1, 0),
(9, 2, 9, '韩剧', 'hanju', '/?s=list-read-id-18.html', 1, 0),
(10, 2, 10, '美剧', 'meiju', '/?s=list-read-id-19.html', 1, 0),
(11, 2, 11, '台剧', 'taiwan', '/?s=list-read-id-20.html', 1, 0),
(12, 2, 12, '泰剧', 'taiju', '/?s=list-read-id-22.html', 1, 0),
(13, 2, 13, '日剧', 'riju', '/?s=list-read-id-21.html', 1, 0),
(14, 3, 14, '动作片', 'dongzuo', '/?s=list-read-id-5.html', 1, 0),
(15, 3, 15, '喜剧片', 'xiju', '/?s=list-read-id-6.html', 1, 0),
(16, 3, 16, '爱情片', 'aiqing', '/?s=list-read-id-7.html', 1, 0),
(17, 3, 17, '科幻片', 'kehuan', '/?s=list-read-id-8.html', 1, 0),
(18, 3, 18, '恐怖片', 'kongbu', '/?s=list-read-id-9.html', 1, 0),
(19, 3, 19, '剧情片', 'juqing', '/?s=list-read-id-10.html', 1, 0),
(20, 3, 20, '战争片', 'zhanzheng', '/?s=list-read-id-11.html', 1, 0),
(21, 3, 21, '纪录片', 'jilu', '/?s=list-read-id-12.html', 1, 0),
(22, 3, 22, '动画片', 'donghua', '/?s=list-read-id-13.html', 1, 0),
(23, 3, 23, '福利片', 'lunli', '/?s=list-read-id-14.html', 1, 0),
(24, 2, 24, '海外', 'haiwai', '/?s=list-read-id-23.html', 1, 0);

CREATE TABLE IF NOT EXISTS `ff_news` (
  `news_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_cid` smallint(6) NOT NULL DEFAULT '0',
  `news_name` varchar(255) DEFAULT NULL,
  `news_ename` varchar(255) NOT NULL,
  `news_keywords` varchar(255) NOT NULL,
  `news_type` varchar(255) DEFAULT NULL,
  `news_color` char(8) NOT NULL,
  `news_pic` varchar(255) NOT NULL,
  `news_pic_bg` varchar(255) DEFAULT NULL,
  `news_pic_slide` varchar(255) DEFAULT NULL,
  `news_inputer` varchar(50) NOT NULL,
  `news_reurl` varchar(255) NOT NULL,
  `news_remark` text NOT NULL,
  `news_content` text NOT NULL,
  `news_hits` mediumint(8) NOT NULL,
  `news_hits_day` mediumint(8) NOT NULL,
  `news_hits_week` mediumint(8) NOT NULL,
  `news_hits_month` mediumint(8) NOT NULL,
  `news_hits_lasttime` int(11) NOT NULL,
  `news_stars` tinyint(1) NOT NULL,
  `news_status` tinyint(1) NOT NULL DEFAULT '1',
  `news_up` mediumint(8) NOT NULL,
  `news_down` mediumint(8) NOT NULL,
  `news_jumpurl` varchar(255) NOT NULL,
  `news_letter` char(2) NOT NULL,
  `news_addtime` int(8) NOT NULL,
  `news_skin` varchar(30) NOT NULL,
  `news_gold` decimal(3,1) NOT NULL,
  `news_golder` smallint(6) NOT NULL,
  `news_series` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`),
  KEY `news_cid` (`news_cid`),
  KEY `news_up` (`news_up`),
  KEY `news_down` (`news_down`),
  KEY `news_gold` (`news_gold`),
  KEY `news_hits` (`news_hits`,`news_cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `ff_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_sign` varchar(32) NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT '0',
  `order_uid` mediumint(8) NOT NULL DEFAULT '0',
  `order_gid` mediumint(8) NOT NULL DEFAULT '0',
  `order_total` smallint(6) NOT NULL,
  `order_money` decimal(18,2) NOT NULL DEFAULT '0.00',
  `order_ispay` tinyint(1) NOT NULL DEFAULT '0',
  `order_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `order_addtime` int(11) NOT NULL,
  `order_paytime` int(11) NOT NULL,
  `order_confirmtime` int(11) NOT NULL,
  `order_info` tinytext NOT NULL,
  `order_paytype` varchar(64) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_cid` smallint(6) NOT NULL DEFAULT '0',
  `person_sid` tinyint(3) NOT NULL DEFAULT '8',
  `person_name` varchar(255) NOT NULL,
  `person_alias` varchar(255) NOT NULL,
  `person_ename` varchar(255) NOT NULL,
  `person_blood` varchar(5) NOT NULL,
  `person_gender` varchar(20) NOT NULL,
  `person_weight` smallint(6) NOT NULL,
  `person_height` smallint(6) NOT NULL,
  `person_nationality` varchar(50) NOT NULL,
  `person_birthday` varchar(50) NOT NULL,
  `person_astrology` varchar(50) NOT NULL,
  `person_profession` varchar(255) NOT NULL,
  `person_school` varchar(120) NOT NULL,
  `person_broker` varchar(120) NOT NULL,
  `person_pic` varchar(255) NOT NULL,
  `person_pic_bg` varchar(255) NOT NULL,
  `person_pic_slide` varchar(255) NOT NULL,
  `person_intro` varchar(255) NOT NULL,
  `person_achievement` text NOT NULL,
  `person_content` text NOT NULL,
  `person_addtime` int(11) NOT NULL,
  `person_status` tinyint(1) NOT NULL DEFAULT '1',
  `person_stars` tinyint(1) NOT NULL DEFAULT '0',
  `person_letter` char(2) NOT NULL,
  `person_up` int(11) NOT NULL,
  `person_down` int(11) NOT NULL,
  `person_gold` decimal(3,1) NOT NULL DEFAULT '0.0',
  `person_golder` int(11) NOT NULL,
  `person_hits` int(11) NOT NULL,
  `person_hits_day` int(11) NOT NULL,
  `person_hits_week` int(11) NOT NULL,
  `person_hits_month` int(11) NOT NULL,
  `person_hits_lasttime` int(11) NOT NULL,
  `person_type` varchar(255) NOT NULL,
  `person_title` varchar(255) NOT NULL,
  `person_keywords` varchar(255) NOT NULL,
  `person_description` varchar(255) NOT NULL,
  `person_skin` varchar(30) NOT NULL,
  `person_reurl` varchar(255) NOT NULL,
  `person_father_id` int(11) NOT NULL,
  `person_father_name` varchar(255) NOT NULL,
  `person_object_id` int(11) NOT NULL,
  `person_object_name` varchar(255) NOT NULL,
  `person_douban_id` int(11) NOT NULL,
  `person_douban_celebrities` int(11) NOT NULL,
  `person_douban_name` varchar(255) NOT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `person_id` (`person_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_player` (
  `player_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `player_name_zh` varchar(128) NOT NULL,
  `player_name_en` varchar(128) NOT NULL,
  `player_info` varchar(250) NOT NULL,
  `player_order` smallint(3) NOT NULL DEFAULT '0',
  `player_status` tinyint(1) NOT NULL DEFAULT '1',
  `player_copyright` smallint(3) NOT NULL DEFAULT '0',
  `player_jiexi` varchar(120) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;
INSERT INTO `ff_player` (`player_id`, `player_name_zh`, `player_name_en`, `player_info`, `player_order`, `player_status`, `player_copyright`, `player_jiexi`) VALUES
(1, '框架引用', 'iframe', 'iframe引用任何网页', 1, 1, 0, ''),
(2, '影音先锋', 'xfplay', '需下载安装影音先锋', 2, 1, 0, ''),
(3, '西瓜影音', 'xigua', '需下载安装西瓜播放器', 3, 1, 0, ''),
(4, '吉吉影音', 'jjvod', '需下载安装吉吉影音播放器', 4, 1, 0, ''),
(5, '非凡影音', 'ffhd', '需下载安装非凡影音播放器', 5, 1, 0, ''),
(6, '优酷网', 'youku', '优酷网', 6, 1, 0, ''),
(7, '腾讯视频', 'qq', '腾讯视频', 9, 1, 0, ''),
(8, '爱奇艺', 'iqiyi', '爱奇艺', 8, 1, 0, ''),
(9, '乐视网', 'letv', '乐视', 25, 1, 0, ''),
(10, '搜狐', 'sohu', '搜狐网', 7, 1, 0, ''),
(11, '土豆网', 'tudou', '土豆网', 13, 1, 0, ''),
(12, 'PPTV', 'pptv', 'pptv', 14, 1, 0, ''),
(13, '芒果TV', 'mgtv', '芒果TV', 10, 1, 0, ''),
(14, '华数TV', 'wasu', 'wasu', 15, 1, 0, ''),
(15, '响巢看看', 'kankan', '迅雷看看', 24, 1, 0, ''),
(16, 'Mp4', 'mp4', 'Mp4播放器', 35, 1, 0, ''),
(17, 'Dplayer', 'dplayer', 'Dplayer', 31, 1, 0, ''),
(18, '下载', 'down', '视频下载', 12, 1, 0, ''),
(19, 'AcFun', 'acfun', 'A站', 18, 1, 0, ''),
(20, '百度视频', 'baishi', '百度视频', 20, 1, 0, ''),
(21, '风行', 'fun', '风行', 22, 1, 0, ''),
(22, '天翼', 'tv189', '电信天翼', 29, 1, 0, ''),
(23, '暴风', 'baofeng', '暴风', 27, 1, 0, ''),
(24, '迅雷', 'xunlei', '迅雷下载', 28, 1, 0, ''),
(25, 'M1905', 'm1905', '时光网', 21, 1, 0, ''),
(26, 'CNTV', 'cntv', '央视', 16, 1, 0, ''),
(27, 'BiLiBiLi', 'bilibili', 'B站', 19, 1, 0, ''),
(28, 'Video', 'video', 'html5的video标签', 30, 1, 0, ''),
(29, 'CCTV', 'cctv', '央视', 17, 1, 0, ''),
(30, 'PPS', 'pps', 'PPS', 23, 1, 0, ''),
(31, 'IFENG', 'ifeng', '凤凰网', 26, 1, 0, ''),
(32, '片花', 'yugao', '预告.花絮专用', 11, 1, 0, ''),
(34, 'M3u8', 'm3u8', 'M3u8播放器', 34, 1, 0, ''),
(35, 'kuyun', 'kuyun', '云播kuyun', 36, 1, 0, ''),
(36, '33uu', '33uu', '云播33uu', 37, 1, 0, ''),
(37, 'Ckm3u8', 'ckm3u8', 'M3u8播放器', 33, 1, 0, ''),
(38, 'Flv', 'flv', 'Flv播放器', 38, 1, 0, '');

CREATE TABLE IF NOT EXISTS `ff_record` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_uid` mediumint(8) NOT NULL DEFAULT '1',
  `record_sid` mediumint(8) NOT NULL DEFAULT '1',
  `record_did` mediumint(8) NOT NULL,
  `record_did_sid` tinyint(3) NOT NULL,
  `record_did_pid` smallint(6) NOT NULL,
  `record_type` tinyint(2) NOT NULL,
  `record_time` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `record_id` (`record_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_score` (
  `score_id` int(10) NOT NULL AUTO_INCREMENT,
  `score_uid` mediumint(8) NOT NULL,
  `score_sid` tinyint(3) NOT NULL,
  `score_did` mediumint(8) NOT NULL,
  `score_type` tinyint(3) NOT NULL,
  `score_ext` mediumint(8) NOT NULL,
  `score_addtime` int(11) NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `score_id` (`score_id`),
  KEY `score_uid` (`score_uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_slide` (
  `slide_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `slide_oid` tinyint(3) NOT NULL,
  `slide_cid` tinyint(3) NOT NULL DEFAULT '1',
  `slide_name` varchar(255) NOT NULL,
  `slide_logo` varchar(255) NOT NULL,
  `slide_pic` varchar(255) NOT NULL,
  `slide_url` varchar(255) NOT NULL,
  `slide_content` varchar(255) NOT NULL,
  `slide_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
INSERT INTO `ff_slide` (`slide_id`, `slide_oid`, `slide_cid`, `slide_name`, `slide_logo`, `slide_pic`, `slide_url`, `slide_content`, `slide_status`) VALUES
(1, 1, 1, '首页轮播添加说明', '', 'http://demo.feifeicms.org/Up/slide/2017-09-03/59abe3febb0d4.png', '#', '运营》首页轮播（图片大小670*288）', 1);

CREATE TABLE IF NOT EXISTS `ff_special` (
  `special_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `special_cid` smallint(6) NOT NULL DEFAULT '0',
  `special_banner` varchar(150) NOT NULL,
  `special_logo` varchar(150) NOT NULL,
  `special_name` varchar(150) NOT NULL,
  `special_type` varchar(255) NOT NULL,
  `special_ename` varchar(255) DEFAULT NULL,
  `special_tag_name` varchar(255) NOT NULL,
  `special_ids_vod` varchar(255) DEFAULT NULL,
  `special_ids_news` varchar(255) DEFAULT NULL,
  `special_title` varchar(150) DEFAULT NULL,
  `special_keywords` varchar(150) NOT NULL,
  `special_description` varchar(255) NOT NULL,
  `special_color` char(8) NOT NULL,
  `special_skin` varchar(50) NOT NULL,
  `special_addtime` int(11) NOT NULL,
  `special_hits` mediumint(8) NOT NULL,
  `special_hits_day` mediumint(8) NOT NULL,
  `special_hits_week` mediumint(8) NOT NULL,
  `special_hits_month` mediumint(8) NOT NULL,
  `special_hits_lasttime` int(11) NOT NULL,
  `special_stars` tinyint(1) NOT NULL DEFAULT '1',
  `special_status` tinyint(1) NOT NULL,
  `special_content` text NOT NULL,
  `special_up` mediumint(8) NOT NULL,
  `special_down` mediumint(8) NOT NULL,
  `special_gold` decimal(3,1) NOT NULL,
  `special_golder` smallint(6) NOT NULL,
  PRIMARY KEY (`special_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `ff_tag` (
  `tag_id` mediumint(8) NOT NULL,
  `tag_cid` tinyint(2) DEFAULT '0',
  `tag_name` varchar(50) NOT NULL,
  `tag_list` varchar(32) DEFAULT 'vod_tag' COMMENT 'vod_tag|news_tag|vod_type|news_type',
  `tag_ename` varchar(255) DEFAULT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `tag_cid` (`tag_cid`),
  KEY `tag_list` (`tag_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ff_user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_pid` mediumint(8) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_pwd` char(32) NOT NULL,
  `user_score` mediumint(9) NOT NULL,
  `user_status` tinyint(1) NOT NULL DEFAULT '1',
  `user_follow` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` tinyint(1) NOT NULL,
  `user_logip` varchar(16) NOT NULL,
  `user_lognum` smallint(5) NOT NULL DEFAULT '1',
  `user_logtime` int(10) NOT NULL,
  `user_joinip` varchar(16) NOT NULL,
  `user_jointime` int(10) NOT NULL,
  `user_deadtime` int(10) NOT NULL,
  `user_qq` varchar(20) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_face` varchar(50) NOT NULL,
  `user_up` mediumint(8) NOT NULL DEFAULT '0',
  `user_down` mediumint(9) NOT NULL DEFAULT '0',
  `user_hits` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `ff_user` (`user_id`, `user_pid`, `user_name`, `user_pwd`, `user_score`, `user_status`, `user_follow`, `user_group`, `user_logip`, `user_lognum`, `user_logtime`, `user_joinip`, `user_jointime`, `user_deadtime`, `user_qq`, `user_email`, `user_face`, `user_up`, `user_down`, `user_hits`) VALUES
(1, 0, '游客', '7fef6171469e80d32c0559f88b377245', 842, 1, 0, 0, '127.0.0.1', 1, 1502804676, '', 1970, 1503236536, '', '271513820@qq.com', '', 0, 0, 0);

CREATE TABLE IF NOT EXISTS `ff_vod` (
  `vod_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vod_cid` smallint(6) NOT NULL,
  `vod_name` varchar(255) NOT NULL,
  `vod_ename` varchar(255) DEFAULT '',
  `vod_title` varchar(255) DEFAULT '',
  `vod_keywords` varchar(255) DEFAULT '',
  `vod_type` varchar(255) DEFAULT '',
  `vod_color` char(8) DEFAULT '',
  `vod_actor` varchar(255) DEFAULT '',
  `vod_director` varchar(255) DEFAULT '',
  `vod_content` text,
  `vod_pic` varchar(255) DEFAULT '',
  `vod_pic_bg` varchar(255) DEFAULT '',
  `vod_pic_slide` varchar(255) DEFAULT '',
  `vod_area` char(10) DEFAULT '',
  `vod_language` char(10) DEFAULT '',
  `vod_year` smallint(4) DEFAULT '0',
  `vod_continu` varchar(20) DEFAULT '0',
  `vod_total` mediumint(9) DEFAULT '0',
  `vod_isend` tinyint(1) DEFAULT '1',
  `vod_addtime` int(11) DEFAULT '0',
  `vod_filmtime` int(11) DEFAULT '0',
  `vod_hits` mediumint(8) DEFAULT '0',
  `vod_hits_day` mediumint(8) DEFAULT '0',
  `vod_hits_week` mediumint(8) DEFAULT '0',
  `vod_hits_month` mediumint(8) DEFAULT '0',
  `vod_hits_lasttime` int(11) DEFAULT '0',
  `vod_stars` tinyint(1) DEFAULT '1',
  `vod_status` tinyint(1) DEFAULT '1',
  `vod_up` mediumint(8) DEFAULT '0',
  `vod_down` mediumint(8) DEFAULT '0',
  `vod_ispay` tinyint(1) DEFAULT '0',
  `vod_price` smallint(6) DEFAULT '0',
  `vod_trysee` smallint(6) NOT NULL DEFAULT '0',
  `vod_play` varchar(255) DEFAULT '',
  `vod_server` varchar(255) DEFAULT '',
  `vod_url` longtext,
  `vod_inputer` varchar(30) DEFAULT '',
  `vod_reurl` varchar(255) DEFAULT '',
  `vod_jumpurl` varchar(150) DEFAULT '',
  `vod_letter` char(2) DEFAULT '',
  `vod_skin` varchar(30) DEFAULT '',
  `vod_gold` decimal(3,1) DEFAULT '0.0',
  `vod_golder` smallint(6) DEFAULT '0',
  `vod_length` smallint(6) DEFAULT '0',
  `vod_weekday` varchar(60) DEFAULT '',
  `vod_series` varchar(120) DEFAULT '',
  `vod_copyright` smallint(3) DEFAULT '0',
  `vod_state` varchar(30) DEFAULT '',
  `vod_version` varchar(30) DEFAULT '',
  `vod_tv` varchar(30) DEFAULT '',
  `vod_douban_id` int(11) DEFAULT '0',
  `vod_douban_score` decimal(3,1) DEFAULT '0.0',
  `vod_scenario` longtext,
  `vod_lines` text NOT NULL,
  `vod_watch` text NOT NULL,
  `vod_ending` text NOT NULL,
  `vod_writer` varchar(255) NOT NULL,
  `vod_producer` varchar(255) NOT NULL,
  `vod_camera` varchar(255) NOT NULL,
  `vod_editor` varchar(255) NOT NULL,
  `vod_music` varchar(255) NOT NULL,
  `vod_art` varchar(255) NOT NULL,
  `vod_extend` text,
  PRIMARY KEY (`vod_id`),
  KEY `vod_cid` (`vod_cid`),
  KEY `vod_up` (`vod_up`),
  KEY `vod_down` (`vod_down`),
  KEY `vod_addtime` (`vod_addtime`,`vod_cid`),
  KEY `vod_hits` (`vod_hits`,`vod_cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;