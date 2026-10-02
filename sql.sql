DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` text COMMENT '添加字段：',
  `field_set` text COMMENT '修改字段：',
  `field_get` text COMMENT '查询字段：',
  `table_nav_name` varchar(500) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(500) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限管理';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传';
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告';
insert into `notice` values ('1','网站公告','<p>公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。</p>','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0');
insert into `notice` values ('2','关于我们','<p>       一个网站要取得成功，要有先进的理念、先进的思想，更为重要的是抢占先机，及时行动。网络世界可谓一日千里、 日新月异，一个网站只有把握先机，抓住机遇，才</p><p>可能有更多的机会获得成功，可能处于网络行业发展的致高点，可能创建出成功的网站，才能能获得成功。要知道一种网站新模式在网络上只有保持几天的优势,因为人们很容易“COPY" 和模仿，因此，唯有不</p><p>断创新，不失时机地推出新的服务、新的模式、新的思想，网站才可能长久立于不败之地。</p>','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0');
insert into `notice` values ('3','联系方式','<h3>网站内容及品牌合作</h3><p>Email：xxxx@qq.com</p><h3>商务合作</h3><p>电话：010-xxxxxxx</p><p>Email：xxxx@qq.com</p><h3><br></h3><h3><br></h3><p><br></p>','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0');
insert into `notice` values ('4','网站介绍','<p>此处可上传文字、图片、视频、超链接、表格等内容区</p>','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0');
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章分类';
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞';
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登陆访问时长';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
insert into `access_token` values ('101','84e31b291f2bde6b7ceb27af5fe8eee3',null,'2','2023-05-30 18:21:49.0','2023-05-30 18:21:49.0','1');
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='用户点击';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏';
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员','2023-05-04 16:42:42.0',null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/admin_avatar.jpg','2023-05-30 17:35:13.0');
DROP TABLE IF EXISTS `enterprise_users`;
CREATE TABLE `enterprise_users`(enterprise_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '企业用户ID',
`enterprise_name` varchar(64) NOT NULL UNIQUE comment '企业名称',
`business_address` varchar(64) comment '企业地址',
`enterprise_telephone` varchar(64) comment '企业电话',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (enterprise_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '企业用户';

DROP TABLE IF EXISTS `student_users`;
CREATE TABLE `student_users`(student_users_id int(11) NOT NULL AUTO_INCREMENT COMMENT '学生用户ID',
`student_no` varchar(64) comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_gender` varchar(64) comment '学生性别',
`major` varchar(64) comment '专业',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (student_users_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '学生用户';

DROP TABLE IF EXISTS `recruitment_information`;
CREATE TABLE `recruitment_information`(recruitment_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '招聘信息ID',
`position_name` varchar(64) comment '岗位名称',
`cover` varchar(255) comment '封面',
`education_scope` varchar(64) comment '学历范围',
`professional_scope` varchar(64) comment '专业范围',
`salary` varchar(64) comment '薪资',
`enterprise_users` int(11) DEFAULT 0 comment '企业用户',
`enterprise_name` varchar(64) comment '企业名称',
`business_address` varchar(64) comment '企业地址',
`enterprise_telephone` varchar(64) comment '企业电话',
`job_description` longtext comment '岗位说明',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (recruitment_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '招聘信息';
insert into `recruitment_information` values (1,'岗位名称1','/api/upload/1575397714261180417.jpg','学历范围1','专业范围1','薪资1',0,'企业名称1','企业地址1','企业电话1','此处可上传文字、图片、视频、超链接、表格等内容区1',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (2,'岗位名称2','/api/upload/1575397763896573953.jpg','学历范围2','专业范围2','薪资2',0,'企业名称2','企业地址2','企业电话2','此处可上传文字、图片、视频、超链接、表格等内容区2',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (3,'岗位名称3','/api/upload/1575397910399418368.jpg','学历范围3','专业范围3','薪资3',0,'企业名称3','企业地址3','企业电话3','此处可上传文字、图片、视频、超链接、表格等内容区3',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (4,'岗位名称4','/api/upload/1575398019988193281.jpg','学历范围4','专业范围4','薪资4',0,'企业名称4','企业地址4','企业电话4','此处可上传文字、图片、视频、超链接、表格等内容区4',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (5,'岗位名称5','/api/upload/1575397556257554432.jpg','学历范围5','专业范围5','薪资5',0,'企业名称5','企业地址5','企业电话5','此处可上传文字、图片、视频、超链接、表格等内容区5',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (6,'岗位名称6','/api/upload/1575397962840801281.jpg','学历范围6','专业范围6','薪资6',0,'企业名称6','企业地址6','企业电话6','此处可上传文字、图片、视频、超链接、表格等内容区6',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (7,'岗位名称7','/api/upload/1575397845459009536.jpg','学历范围7','专业范围7','薪资7',0,'企业名称7','企业地址7','企业电话7','此处可上传文字、图片、视频、超链接、表格等内容区7',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `recruitment_information` values (8,'岗位名称8','/api/upload/1575397648104423424.jpg','学历范围8','专业范围8','薪资8',0,'企业名称8','企业地址8','企业电话8','此处可上传文字、图片、视频、超链接、表格等内容区8',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');

DROP TABLE IF EXISTS `application_information`;
CREATE TABLE `application_information`(application_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '应聘信息ID',
`application_number` varchar(64) comment '应聘编号',
`position_name` varchar(64) comment '岗位名称',
`education_scope` varchar(64) comment '学历范围',
`professional_scope` varchar(64) comment '专业范围',
`salary` varchar(64) comment '薪资',
`enterprise_users` int(11) DEFAULT 0 comment '企业用户',
`enterprise_name` varchar(64) comment '企业名称',
`business_address` varchar(64) comment '企业地址',
`enterprise_telephone` varchar(64) comment '企业电话',
`student_users` int(11) DEFAULT 0 comment '学生用户',
`student_no` varchar(64) comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_gender` varchar(64) comment '学生性别',
`major` varchar(64) comment '专业',
`curriculum_vitae` varchar(255) comment '个人简历',
`examine_state` varchar(16) DEFAULT '未审核' NOT NULL comment '审核状态',
`examine_reply` varchar(16) DEFAULT '' comment '审核回复',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (application_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '应聘信息';
insert into `application_information` values (1,'应聘编号1','岗位名称1','学历范围1','专业范围1','薪资1',0,'企业名称1','企业地址1','企业电话1',0,'学生学号1','学生姓名1','学生性别1','专业1','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (2,'应聘编号2','岗位名称2','学历范围2','专业范围2','薪资2',0,'企业名称2','企业地址2','企业电话2',0,'学生学号2','学生姓名2','学生性别2','专业2','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (3,'应聘编号3','岗位名称3','学历范围3','专业范围3','薪资3',0,'企业名称3','企业地址3','企业电话3',0,'学生学号3','学生姓名3','学生性别3','专业3','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (4,'应聘编号4','岗位名称4','学历范围4','专业范围4','薪资4',0,'企业名称4','企业地址4','企业电话4',0,'学生学号4','学生姓名4','学生性别4','专业4','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (5,'应聘编号5','岗位名称5','学历范围5','专业范围5','薪资5',0,'企业名称5','企业地址5','企业电话5',0,'学生学号5','学生姓名5','学生性别5','专业5','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (6,'应聘编号6','岗位名称6','学历范围6','专业范围6','薪资6',0,'企业名称6','企业地址6','企业电话6',0,'学生学号6','学生姓名6','学生性别6','专业6','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (7,'应聘编号7','岗位名称7','学历范围7','专业范围7','薪资7',0,'企业名称7','企业地址7','企业电话7',0,'学生学号7','学生姓名7','学生性别7','专业7','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `application_information` values (8,'应聘编号8','岗位名称8','学历范围8','专业范围8','薪资8',0,'企业名称8','企业地址8','企业电话8',0,'学生学号8','学生姓名8','学生性别8','专业8','','未审核','',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');

DROP TABLE IF EXISTS `interview_invitation`;
CREATE TABLE `interview_invitation`(interview_invitation_id int(11) NOT NULL AUTO_INCREMENT COMMENT '面试邀请ID',
`application_number` varchar(64) NOT NULL UNIQUE comment '应聘编号',
`position_name` varchar(64) comment '岗位名称',
`education_scope` varchar(64) comment '学历范围',
`professional_scope` varchar(64) comment '专业范围',
`salary` varchar(64) comment '薪资',
`enterprise_users` int(11) DEFAULT 0 comment '企业用户',
`enterprise_name` varchar(64) comment '企业名称',
`business_address` varchar(64) comment '企业地址',
`enterprise_telephone` varchar(64) comment '企业电话',
`student_users` int(11) DEFAULT 0 comment '学生用户',
`student_no` varchar(64) comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_gender` varchar(64) comment '学生性别',
`major` varchar(64) comment '专业',
`curriculum_vitae` varchar(255) comment '个人简历',
`interview_date` date comment '面试日期',
`interview_information` text comment '面试信息',
`interview_status` varchar(64) comment '面试状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (interview_invitation_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '面试邀请';
insert into `interview_invitation` values (1,'应聘编号1','岗位名称1','学历范围1','专业范围1','薪资1',0,'企业名称1','企业地址1','企业电话1',0,'学生学号1','学生姓名1','学生性别1','专业1','','2023-05-05','面试信息1','面试状态1',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (2,'应聘编号2','岗位名称2','学历范围2','专业范围2','薪资2',0,'企业名称2','企业地址2','企业电话2',0,'学生学号2','学生姓名2','学生性别2','专业2','','2023-05-05','面试信息2','面试状态2',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (3,'应聘编号3','岗位名称3','学历范围3','专业范围3','薪资3',0,'企业名称3','企业地址3','企业电话3',0,'学生学号3','学生姓名3','学生性别3','专业3','','2023-05-05','面试信息3','面试状态3',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (4,'应聘编号4','岗位名称4','学历范围4','专业范围4','薪资4',0,'企业名称4','企业地址4','企业电话4',0,'学生学号4','学生姓名4','学生性别4','专业4','','2023-05-05','面试信息4','面试状态4',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (5,'应聘编号5','岗位名称5','学历范围5','专业范围5','薪资5',0,'企业名称5','企业地址5','企业电话5',0,'学生学号5','学生姓名5','学生性别5','专业5','','2023-05-05','面试信息5','面试状态5',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (6,'应聘编号6','岗位名称6','学历范围6','专业范围6','薪资6',0,'企业名称6','企业地址6','企业电话6',0,'学生学号6','学生姓名6','学生性别6','专业6','','2023-05-05','面试信息6','面试状态6',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (7,'应聘编号7','岗位名称7','学历范围7','专业范围7','薪资7',0,'企业名称7','企业地址7','企业电话7',0,'学生学号7','学生姓名7','学生性别7','专业7','','2023-05-05','面试信息7','面试状态7',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `interview_invitation` values (8,'应聘编号8','岗位名称8','学历范围8','专业范围8','薪资8',0,'企业名称8','企业地址8','企业电话8',0,'学生学号8','学生姓名8','学生性别8','专业8','','2023-05-05','面试信息8','面试状态8',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');

DROP TABLE IF EXISTS `employment_information`;
CREATE TABLE `employment_information`(employment_information_id int(11) NOT NULL AUTO_INCREMENT COMMENT '就业信息ID',
`application_number` varchar(64) NOT NULL UNIQUE comment '应聘编号',
`position_name` varchar(64) comment '岗位名称',
`education_scope` varchar(64) comment '学历范围',
`professional_scope` varchar(64) comment '专业范围',
`salary` varchar(64) comment '薪资',
`enterprise_users` int(11) DEFAULT 0 comment '企业用户',
`enterprise_name` varchar(64) comment '企业名称',
`business_address` varchar(64) comment '企业地址',
`enterprise_telephone` varchar(64) comment '企业电话',
`student_users` int(11) DEFAULT 0 comment '学生用户',
`student_no` varchar(64) comment '学生学号',
`student_name` varchar(64) comment '学生姓名',
`student_gender` varchar(64) comment '学生性别',
`major` varchar(64) comment '专业',
`employment_status` varchar(64) comment '就业状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (employment_information_id))ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '就业信息';
insert into `employment_information` values (1,'应聘编号1','岗位名称1','学历范围1','专业范围1','薪资1',0,'企业名称1','企业地址1','企业电话1',0,'学生学号1','学生姓名1','学生性别1','专业1','就业状态1',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (2,'应聘编号2','岗位名称2','学历范围2','专业范围2','薪资2',0,'企业名称2','企业地址2','企业电话2',0,'学生学号2','学生姓名2','学生性别2','专业2','就业状态2',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (3,'应聘编号3','岗位名称3','学历范围3','专业范围3','薪资3',0,'企业名称3','企业地址3','企业电话3',0,'学生学号3','学生姓名3','学生性别3','专业3','就业状态3',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (4,'应聘编号4','岗位名称4','学历范围4','专业范围4','薪资4',0,'企业名称4','企业地址4','企业电话4',0,'学生学号4','学生姓名4','学生性别4','专业4','就业状态4',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (5,'应聘编号5','岗位名称5','学历范围5','专业范围5','薪资5',0,'企业名称5','企业地址5','企业电话5',0,'学生学号5','学生姓名5','学生性别5','专业5','就业状态5',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (6,'应聘编号6','岗位名称6','学历范围6','专业范围6','薪资6',0,'企业名称6','企业地址6','企业电话6',0,'学生学号6','学生姓名6','学生性别6','专业6','就业状态6',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (7,'应聘编号7','岗位名称7','学历范围7','专业范围7','薪资7',0,'企业名称7','企业地址7','企业电话7',0,'学生学号7','学生姓名7','学生性别7','专业7','就业状态7',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');
insert into `employment_information` values (8,'应聘编号8','岗位名称8','学历范围8','专业范围8','薪资8',0,'企业名称8','企业地址8','企业电话8',0,'学生学号8','学生姓名8','学生性别8','专业8','就业状态8',0,'2023-05-05 14:48:50','2023-05-05 14:48:50');

insert into `auth` values ('1','管理员','企业用户','enterprise_users','企业用户','/enterprise_users/table','','_blank','1','1','1','1','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{"examine":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('2','管理员','企业用户','enterprise_users','企业用户详情','/enterprise_users/view','','_blank','1','1','1','1','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('3','管理员','学生用户','student_users','学生用户','/student_users/table','','_blank','1','1','1','1','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('4','管理员','学生用户','student_users','学生用户详情','/student_users/view','','_blank','1','1','1','1','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('5','管理员','招聘信息','recruitment_information','招聘信息','/recruitment_information/table','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_show_comment":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('6','管理员','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/view','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('7','管理员','招聘信息','recruitment_information','招聘信息','/recruitment_information/list','top','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('8','管理员','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/details','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('9','管理员','应聘信息','application_information','应聘信息','/application_information/table','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{"examine":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('10','管理员','应聘信息','application_information','应聘信息详情','/application_information/view','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('11','管理员','应聘信息','application_information','应聘信息','/application_information/edit','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('12','管理员','面试邀请','interview_invitation','面试邀请','/interview_invitation/table','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('13','管理员','面试邀请','interview_invitation','面试邀请详情','/interview_invitation/view','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('14','管理员','就业信息','employment_information','就业信息','/employment_information/table','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{"figure":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('15','管理员','就业信息','employment_information','就业信息详情','/employment_information/view','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('16','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('17','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('18','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('19','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('20','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('21','管理员','新闻','article','新闻列表','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true,"import_db":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('22','管理员','新闻','article','新闻详情','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('23','管理员','新闻','article','新闻资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('24','管理员','新闻','article','新闻详情','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('25','管理员','新闻分类','article_type','新闻分类','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('26','管理员','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('27','管理员','公告','notice','公告列表','/notice/table','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('28','管理员','公告','notice','公告详情','/notice/view','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('29','管理员','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('30','管理员','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('31','游客','企业用户','enterprise_users','企业用户','/enterprise_users/table','','_blank','1','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{"examine":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('32','游客','企业用户','enterprise_users','企业用户详情','/enterprise_users/view','','_blank','1','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('33','游客','学生用户','student_users','学生用户','/student_users/table','','_blank','1','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('34','游客','学生用户','student_users','学生用户详情','/student_users/view','','_blank','1','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('35','游客','招聘信息','recruitment_information','招聘信息','/recruitment_information/table','','_blank','0','0','0','0','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_show_comment":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('36','游客','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/view','','_blank','0','0','0','0','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('37','游客','招聘信息','recruitment_information','招聘信息','/recruitment_information/list','top','_blank','0','0','0','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('38','游客','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/details','','_blank','0','0','0','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_comment":false,"can_show_comment":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('39','游客','应聘信息','application_information','应聘信息','/application_information/table','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{"examine":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('40','游客','应聘信息','application_information','应聘信息详情','/application_information/view','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('41','游客','应聘信息','application_information','应聘信息','/application_information/edit','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('42','游客','面试邀请','interview_invitation','面试邀请','/interview_invitation/table','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('43','游客','面试邀请','interview_invitation','面试邀请详情','/interview_invitation/view','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('44','游客','就业信息','employment_information','就业信息','/employment_information/table','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{"figure":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('45','游客','就业信息','employment_information','就业信息详情','/employment_information/view','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('46','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('47','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('48','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('49','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('50','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('51','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('52','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('53','游客','新闻','article','新闻资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('54','游客','新闻','article','新闻详情','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_comment":false,"can_show_comment":true}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('55','游客','新闻分类','article_type','新闻分类','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('56','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('57','游客','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `auth` values ('58','游客','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('59','游客','公告','notice','公告','/notice/list','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('60','游客','公告','notice','公告详情','/notice/details','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('61','企业用户','企业用户','enterprise_users','企业用户','/enterprise_users/table','','_blank','0','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{"examine":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('62','企业用户','企业用户','enterprise_users','企业用户详情','/enterprise_users/view','','_blank','0','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('63','企业用户','学生用户','student_users','学生用户','/student_users/table','','_blank','0','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('64','企业用户','学生用户','student_users','学生用户详情','/student_users/view','','_blank','0','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('65','企业用户','招聘信息','recruitment_information','招聘信息','/recruitment_information/table','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_show_comment":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('66','企业用户','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/view','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('67','企业用户','招聘信息','recruitment_information','招聘信息','/recruitment_information/list','top','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('68','企业用户','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/details','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('69','企业用户','应聘信息','application_information','应聘信息','/application_information/table','','_blank','0','1','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{"examine":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('70','企业用户','应聘信息','application_information','应聘信息详情','/application_information/view','','_blank','0','1','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('71','企业用户','应聘信息','application_information','应聘信息','/application_information/edit','','_blank','0','0','0','0','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('72','企业用户','面试邀请','interview_invitation','面试邀请','/interview_invitation/table','','_blank','1','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('73','企业用户','面试邀请','interview_invitation','面试邀请详情','/interview_invitation/view','','_blank','1','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,interview_date,interview_information','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,interview_date,interview_information','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,interview_date,interview_information',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('74','企业用户','就业信息','employment_information','就业信息','/employment_information/table','','_blank','1','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{"figure":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('75','企业用户','就业信息','employment_information','就业信息详情','/employment_information/view','','_blank','1','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('76','企业用户','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('77','企业用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('78','企业用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('79','企业用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('80','企业用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('81','企业用户','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('82','企业用户','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('83','企业用户','新闻','article','新闻资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('84','企业用户','新闻','article','新闻详情','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('85','企业用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('86','企业用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('87','企业用户','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('88','企业用户','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('89','企业用户','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('90','企业用户','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('91','学生用户','企业用户','enterprise_users','企业用户','/enterprise_users/table','','_blank','0','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{"examine":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('92','学生用户','企业用户','enterprise_users','企业用户详情','/enterprise_users/view','','_blank','0','0','0','0','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone','enterprise_name,business_address,enterprise_telephone',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('93','学生用户','学生用户','student_users','学生用户','/student_users/table','','_blank','0','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('94','学生用户','学生用户','student_users','学生用户详情','/student_users/view','','_blank','0','0','0','0','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major','student_no,student_name,student_gender,major',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('95','学生用户','招聘信息','recruitment_information','招聘信息','/recruitment_information/table','','_blank','0','0','0','0','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_show_comment":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('96','学生用户','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/view','','_blank','0','0','0','0','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('97','学生用户','招聘信息','recruitment_information','招聘信息','/recruitment_information/list','top','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('98','学生用户','招聘信息','recruitment_information','招聘信息详情','/recruitment_information/details','','_blank','1','1','1','1','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description','position_name,cover,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,job_description',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('99','学生用户','应聘信息','application_information','应聘信息','/application_information/table','','_blank','0','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{"examine":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('100','学生用户','应聘信息','application_information','应聘信息详情','/application_information/view','','_blank','0','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('101','学生用户','应聘信息','application_information','应聘信息','/application_information/edit','','_blank','1','1','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('102','学生用户','面试邀请','interview_invitation','面试邀请','/interview_invitation/table','','_blank','0','0','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('103','学生用户','面试邀请','interview_invitation','面试邀请详情','/interview_invitation/view','','_blank','0','0','1','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status','interview_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,curriculum_vitae,interview_date,interview_information,interview_status',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('104','学生用户','就业信息','employment_information','就业信息','/employment_information/table','','_blank','0','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{"figure":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('105','学生用户','就业信息','employment_information','就业信息详情','/employment_information/view','','_blank','0','0','0','1','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status','application_number,position_name,education_scope,professional_scope,salary,enterprise_users,enterprise_name,business_address,enterprise_telephone,student_users,student_no,student_name,student_gender,major,employment_status',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('106','学生用户','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('107','学生用户','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('108','学生用户','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('109','学生用户','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('110','学生用户','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('111','学生用户','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false,"import_db":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('112','学生用户','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('113','学生用户','新闻','article','新闻资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('114','学生用户','新闻','article','新闻详情','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_comment":true,"can_show_comment":true}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('115','学生用户','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('116','学生用户','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('117','学生用户','公告','notice','公告列表','/notice/table','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('118','学生用户','公告','notice','公告详情','/notice/view','','_blank','0','0','0','0','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('119','学生用户','公告','notice','公告','/notice/list','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `auth` values ('120','学生用户','公告','notice','公告详情','/notice/details','','_blank','1','1','1','1','','','',null,'0','{}','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `user_group` values ('1','100','管理员',null,'','','0','0','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `user_group` values ('2','100','游客',null,'','','0','0','2023-05-05 14:48:50.0','2023-05-05 14:48:50.0');
insert into `user_group` values ('3','100','企业用户',null,'enterprise_users','enterprise_users_id','0','1','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `user_group` values ('4','100','学生用户',null,'student_users','student_users_id','0','3','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/1575396868240703489.jpg','439','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/1599967239379877888.jpg','113','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/1575396758849060865.jpg','140','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
insert into `article` values ('1','五险一金万元高薪，东营大型现场招聘会来了，赶紧来！','招聘','878','0','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0',null,null,null,'<p>金三银四招聘季 求职招聘在年后</p><p>√年后考虑换工作？</p><p>√正愁找工作越来越难？</p><p>√想要升职加薪走上人生巅峰？</p><p>本周六，东营这里即将人从众叕！</p><p><img src="https://n.sinaimg.cn/sinakd20220217s/33/w500h333/20220217/82f3-7d72a38a0dc696fa3d03699ffaa31736.gif"></p><p>2022东营春季大型招聘会第一场</p><p>将于 2月19日（本周六）</p><p>在东营西城万达广场火热举行！</p><p>总有一“岗”适合您！</p><p>要找工作的小伙伴火速围观！</p><p><img src="https://n.sinaimg.cn/sinakd20220217s/356/w750h1206/20220217/8f43-bc0394744a463efcb03bd8778ef7f180.png"></p><p><strong>东营春季大型人才招聘会</strong></p><p><strong>JOIN&nbsp;US</strong></p><p><strong>招聘会时间</strong></p><p>2022年2月19日（周六）10:00—16:00</p><p><strong>现场招聘地点</strong></p><p>东营西城万达广场一楼东厅</p><p><strong>参会企业及岗位人数</strong></p><p>本次招聘会<strong>将有近100家企业</strong>参与</p><p>面向应往届高校毕业生（含技校、高职毕业生）；农村劳动力；失业人员；退役军人；就业困难人员；其他有就业创业意愿的劳动者；脱贫人口（包括中西部来东营务工脱贫人口）；边缘易致贫人口；依法成立的各类用人单位提供上千个岗位。</p><p><strong>求职者需知</strong></p><p>求职者免费参加，带上简历直接来</p><p><strong>疫情防控及注意事项</strong></p><p>1、所有参会者提前注册健康码，持绿码进入会场，黄码、红码人员不得入内；</p><p>2、此外所有参会者均佩戴口罩进场，接受体温检测，体温高于37.3℃的人员不得入内；</p><p>3、招聘信息必须属实，严禁使用虚假信息；</p><p>4、各参展单位必须严格遵守主办方统一调度、安排；</p><p>5、近14天内有发热、咳嗽等症状未痊愈的不得入内。</p><p><strong>NO.1</strong></p><p><strong>活动组织单位</strong></p><p><strong>【主办单位】</strong></p><p>东营市人力资源服务产业园、黄三角早报</p><p><strong>【协办单位】</strong></p><p>东营西城万达广场</p><p>正在找工作的你千万别犹豫</p><p>招聘会当天云聚</p><p>东营各大极具潜力企业</p><p>高端化工、软件开发工程师、医药技术研发</p><p>新媒体运营、人事、行政、财务、服务行业等高薪岗位</p><p>等待梦想与潜力兼具的你！</p><p><strong>NO.2</strong></p><p><strong>参会企业</strong></p><p><strong>以下企业不分排名，按照报名顺序排列</strong></p><p><br></p><p><strong><img src="https://n.sinaimg.cn/sinakd20220217s/470/w647h3823/20220217/5363-b31e529a6ff9beca5f9544626133b0d3.png"></strong></p><p><br></p>','/api/upload/1575399268217257984.jpg',null);
insert into `article` values ('2','早安·西安丨6万+岗位 大型网络视频招聘会来了','招聘','826','0','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0',null,null,null,'<p>近日，西安市商务局制定发布《“相约春天·嗨购西安”2022年一季度促消费活动实施方案》，通过16项活动，全面提升消费市场服务质量，营造促消费氛围，释放消费潜力，拉动消费增长，促进消费市场快速恢复发展，保持一季度消费市场运行稳健，为保质保量完成2022年我市社会消费品零售总额指标打下坚实基础。（记者 轩辕杨子）</p><p><img src="https://n.sinaimg.cn/sinakd20220218s/491/w640h651/20220218/7cbd-ae5e162c0c3d0febc052eb1bd8972116.jpg"></p><p><strong>6万+岗位 春季大型网络视频招聘会来了</strong></p><p>2月17日，西安市总工会、西安市人力资源和社会保障局、西安市工商联联合举办“真情送岗暖民心 就业援助见实效”春季大型网络视频招聘会。此次招聘活动提供各类工作岗位6万个以上，其中特别为新就业形态工作者和农民工群体，提供1万个就业岗位。活动将持续至3月底。（记者 袁玥）</p><p><img src="https://n.sinaimg.cn/sinakd20220218s/320/w640h480/20220218/e772-e92427b4a12a1ba93822967e25d1be16.jpg"></p><p><br></p><p><br></p><p><strong>陕西调整汽、柴油最高零售价 95号汽油迎来“8”时代</strong></p><p>2月17日，记者从陕西省发展改革委获悉，我省汽油、柴油最高零售价格进行调整，自17日24时起执行。调整后西安市场95号汽油为8.16元每升。（记者 高乐）</p><p><strong>国家卫健委：正在研究建立全国统一的电子病历</strong></p><p>据国家卫健委网站消息，我国正研究建立全国统一的电子健康档案、电子病历、医保等信息标准体系，将逐步实现互联互通、信息共享和业务协同。（据央视）</p><p><strong>教育部：每所中小学校至少配备1名法治副校长</strong></p><p>记者从教育部17日召开的新闻发布会上了解到，《中小学法治副校长聘任与管理办法》5月1日起实施，每所中小学校将至少配备1名法治副校长，偏远地区、农村地区学校和城市薄弱学校优先配备法治副校长。（据新华社）</p>','/api/upload/1575399620152918017.jpg',null);
insert into `article` values ('3','厦门节后招聘开启 30岁以上求职者占比较大','招聘','849','0','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0',null,null,null,'<p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220218s/683/w300h383/20220218/5355-3a533065365dae41e8cd595539131499.jpg"><strong>&nbsp;</strong></p><p class="ql-align-center"><strong>人才市场年后首场交流会现场，求职者正在投递简历。</strong></p><p>厦门网讯 (文/图厦门日报记者 卢琛) 前日上午，市人才市场年后首场线下交流会“开市”，记者走访发现现场求职者中有不少已经超过30岁，目的是为寻求更有发展性的企业与公司；首日现场的招聘方提供的职位，则多为工程师、销售工程师、技术专员等带有专业技术性的岗位。</p><p>厦门人才市场2022年春节后(截至2月16日)共举办6场交流会，本场为线下，其余5场均为线上。另外，记者从多家企业与公司了解到，目前线上招聘比线下更为热门，越来越多的求职者偏向于参加线上招聘会。</p><p><strong>　求职者:期待更有发展性的企业</strong></p><p>前日上午10时，记者来到位于湖滨东路的厦门市人才市场，此时人才市场内正在举行2022年春节后首场线下招聘会。记者走访发现，相比往年大多是毕业生或年轻人，今年来到现场的求职者，大部分已经30岁以上。市民刘小姐说:“我想着现在正值开春，一年之计在于春嘛，加上今天又是年后的第一次线下招聘，于是今早就来人才市场看看。”她希望能找到销售类型的工作，比起薪资，她更看重企业或公司是否具有发展性。</p><p>市民李先生自去年便遇到了自己工作上的瓶颈，一直得不到突破。于是他当日来到人才市场，除了想多看看是否有更适合自己的岗位，顺便也多了解一下如今的招聘市场情况。</p><p><strong>　招聘方:希望招聘更有创造力的职工</strong></p><p>“我们今年将在翔安开设新的工厂，需要很多相关的技术人才。”一家企业负责人李小姐谈到，他们原工厂在泉州，这次招聘也希望通过较高的薪资待遇，吸引到更多的人才。另一家企业人事告诉记者，在他看来，年轻职工在学习能力及创造力上都更胜一筹，因此他们希望能有更多的年轻求职者前来咨询。</p><p><br></p><p>经过对现场多家企业的了解，记者注意到，虽然现场企业的招聘栏上没有提及，但不少招聘单位都倾向于招聘更加年轻、有创造力的职工。</p><p>记者从市人才中心工作人员处了解到，首场线下交流会共有42家参会单位，提供180个岗位，需求751人。厦门人才市场在做好疫情防控的前提下，计划每周定期于周二、周三、周五举办现场交流会。</p><p><strong>【链接】</strong></p><p><strong>视频面试越来越流行</strong></p><p>视频面试在节约招聘成本和提高招聘效率方面具有优势，逐渐成为更多企业和求职者的选择。记者从智联招聘发布的《2022年春招市场行情周报》第一期中了解到，智联招聘面向企业的调研数据显示，63.8%的企业在今年春招时采用了视频面试、视频介绍或线上双选会等可视化招聘方式。其中，视频面试是企业招聘的最主要方式，55.1%的企业使用过。视频面试不单是企业的选择，也是职场人广泛使用的求职方式。智联招聘面向职场人的调研数据显示，78.4%的求职者在今年春招使用过可视化求职方式，6成人依赖视频面试找工作。</p>','/api/upload/1575398869473165313.jpg',null);
insert into `article` values ('4','节后逛了5场招聘会 发现这些职场新变化','招聘','731','0','2023-05-05 14:48:51.0','2023-05-05 14:48:51.0',null,null,null,'<p>春节后，也正式迈入求职、招聘的旺季，从2月7日郑州农村人力资源中心市场举行首届线下招聘会开始，郑州市职介中心、郑州市人才市场及郑州市公共就业人才服务中心相继举行了线下招聘会，每一次都深受求职者及企业方欢迎。节后，记者也参与了郑州举行的每一场线下招聘会，发现这些职场新变化。</p><p><img src="https://n.sinaimg.cn/sinakd20220218s/358/w669h489/20220218/3b46-1751a496037acb66eb4a5e8fbc67ad1b.jpg"></p><p>招聘市场“一席难求”</p><p>&nbsp;&nbsp;&nbsp;&nbsp;业内感慨就业压力大</p><p>“差一点没约上位置。”2月15日上午，在郑州市人才市场，巴氏鲜奶负责人说，除了线上招聘，往年他们都会在线下开展三四场招聘，郑州市人才市场对企业免费，这里也成为公司的首选。</p><p>相比往年就业市场，今年的春招热度来的更早，“往年我们都是过完元宵节才开始，今年没想到招聘方这么积极。”</p><p>这一点市场方负责人高巍深有感触，“我们中心举行的首场招聘会，两天前就已经预约满了，甚至年前都不少企业打听。”高巍表示，目前中心在做好疫情防控的基础上，每周二和周六固定举行招聘会，企业预约已经排到了三月中旬。</p><p>这一点在其他招聘市场也是如此，“每一场招聘会，我们都是有担忧的。”2月16日，郑州市公共就业人才服务中心举行的大型综合招聘会在郑州市体育馆开招，负责此次招聘活动的李春一直在忙前忙后，“求职者比我们预料的要多的多，做好疫情防控的压力比较大。”</p><p>2月17日，又一场名企招聘会将在中国郑州人力资源市场举行，不到俩小时，企业名额报满，在总结经验的基础上，同样负责此次招聘活动的李春实施了线上预约制，分时段让求职者进场。“今年的就业压力不小，我们尽可能为企业和求职者搭建好平台。”</p><p>“万元薪资”岗年年招人难</p><p>节后首周，根据智联招聘发布的数据显示，月薪过万行业数量较去年有明显增加，其中，保险行业也在“万元俱乐部”中。</p><p><img src="https://n.sinaimg.cn/sinakd20220218s/341/w664h477/20220218/bab8-aeebeb4c8b2ac89af69aeb1aebe51d2a.jpg"></p><p>不仅春招如此，在年度盘点中，保险这个行业一直都在“万元薪资”岗上榜上有名。但值得关注的是，这一行业每年都缺人，每年也都在招人，但求职者仿佛就是不买账，业内人士都感慨，保险行业是最难招人的行业，没有之一。</p><p>2月7日，在郑州农村人力资源中心市场，一位保险行业人资负责人表示，他们把底薪从有责3000提升到无责3500，还是招不满，即便招过来了留人也很难，“是现在的年轻人太浮躁了还是他们不缺钱？”</p><p>“理财主管啊，优才主管啊，说白了还是卖保险的，业绩考核压力太大，也不利于个人长远发展。”求职者贾丽说。</p><p>一位长期为保险行业输送人员的业内人士表示，保险公司大都采取直销的营销制度，就是通过不断地招保险代理人来推销产品，也造成了大家感觉到保险行业不停在招人的现状，另外，推销保险前期的工作是非常辛苦的，“一个新人在没有资源和能力的前提下是很难开单的，没有开单就没有收入，所以有很多人做这个工作，最多不到两个月就会放弃了。”</p><p>无独有偶，在2月16日郑州市体育馆招聘会场，5家保险公司在同时招聘，综金经理、预备主管、优才主管、网点负责人、经理助理等多个岗位开招，给出的薪资高、福利好，但感兴趣的求职者并不算多。</p><p>针对这个情况，国寿财富中心未女士有话说，“大家对这个行业是有误解的。”未女士表示，大家对保险行业的理解就是“找熟人，卖保险”，现在从国家层面，保险这个行业不论是从培训还是服务来说，口碑都是在提升的，未女士坦言，去年受疫情影响，招聘行情不好，今年春招才刚开始，每天的面试量都在增加，随着现在的年轻人对保险行业理解在逐步增加，她对今年的招聘充满信心。</p><p>“00后”上阵 高薪并不是唯一吸引力</p><p>今年招聘市场，有不少“00后”的身影。对于Z世代求职者来说，记者发现，高薪并不是唯一吸引力。</p><p><img src="https://n.sinaimg.cn/sinakd20220218s/294/w676h418/20220218/c3c5-654de0cb8793315753b8e94ad2c52251.jpg"></p><p>2月16日在郑州市体育馆，逛了20分钟的靳子涛在一家文旅公司前停住了脚步，详细了解了薪资待遇，抱着试一试的心态，靳子涛填写了基本信息，出生于2001年的他，是郑州一所职业院校的毕业生，他坦言，自己家就在郑州，父母还没有退休，目前他求职主要看重职场环境和企业人文关怀，而郑州这家文旅公司，薪资并不算高，但每年两次的集体出游、每季度一次的集体生日及聚餐式会议，让他非常心动。“我本身是做设计的，这个工作环境，会让人非常有创造性。”</p><p>&nbsp;“我们的工作是在超市，工作不累，每天也就说说笑笑、蹦蹦跳跳、打打闹闹。”会场，一国企人资负责拉着一新毕业小伙卖力的介绍自家岗位，当他得知求职者想找一个轻松的岗位，在工作期间流出足够的时间来充电和考证时，该负责人打着包票说，“只要你来，你考啥，我们都支持，并报销部分费用。”</p><p><br></p><p>随后采访中，记者了解到，该小伙名叫武泽宇，00年出生，是一名大四毕业生，工商管理专业，期待找氛围轻松活泼的单位，“不想去氛围沉闷的公司，如果单位里有古风或者游戏爱好者，那就更好了。”</p><p>招聘会场，该国企负责人坦言，从疫情以来，他们就发现，现在的年轻人求职，高薪吸引力已经“过时了”，而且每个招聘会场，高薪岗都不少，企业还要“拼”人文关怀、职场环境、工作氛围、职业成长等，所以，今年招聘中，他们着重在这些方面花了不少心思。</p><p>另外，今年春招中，也涌现了不少新兴职业，如平台主播、抖音经纪人等，这些新兴职业，对学历无甚要求，企业更看重求职者自身的业务能力，尤其是沟通能力和镜头感。销售还是一如既往的难招，相比年轻人，30至45岁的求职者仍然是这一行业的中流砥柱。</p><p>春招还在火热进行中，求职要规避哪些坑？招聘中的那些文字游戏你懂吗？新瓶装老酒的职场套路你能识别吗？大象新闻记者仍将为您持续报道。</p>','/api/upload/1575398442115530752.jpg',null);
insert into `article_type` values ('1','100','招聘','0',null,null,null,'2023-05-05 14:48:51.0','2023-05-05 14:48:51.0');
