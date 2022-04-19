/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : db_blog

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 19/04/2022 10:29:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user`;
CREATE TABLE `tb_admin_user`  (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin_user
-- ----------------------------
INSERT INTO `tb_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 0);

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog`  (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '博客表主键id',
  `blog_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客标题',
  `blog_sub_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客自定义路径url',
  `blog_cover_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客封面图',
  `blog_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客内容',
  `blog_category_id` int(11) NOT NULL COMMENT '博客分类id',
  `blog_category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客分类(冗余字段)',
  `blog_tags` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客标签',
  `blog_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-草稿 1-发布',
  `blog_views` bigint(20) NOT NULL DEFAULT 0 COMMENT '阅读量',
  `enable_comment` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-允许评论 1-不允许评论',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES (1, 'Java学习的完整路线', 'java-study', 'http://localhost:9501/admin/dist/img/rand/12.jpg', '# 第一阶段 JavaSE \nJavaSE : Java基础阶段只有打好了基础才会走得更远。\n\n1. 计算机基础\n2. Java入门学习\n3. Java基础语法\n4. 流程控制和方法\n5. 数组\n6. 面向对象编程\n7. 异常\n8. 常用美\n9. 集合框架\n10. IO\n11. 多线程\n12. GUI编程\n13. 网络编程\n14. 注解和反射\n15. JUC编程\n16. JVM探究\n17. 23种设计模式\n18. 数据结构和算法\n19. 正则表达式\n\n\n# 第二阶段 JavaWeb\nJavaWeb：迈向互联网全栈工程师的第一步\n\n1. MySQL初级\n2. JDBC\n3. HTML2\n4. CSS3\n5. JavaScript\n6. jQuery\n7. Layuil & BootStrap\n8. Http协议\n9. Tomcat\n10. Servlet\n11. Cookie & Sessio\n12. JSP\n13. JSTL&EL表达式\n14. MVC三层架构\n15. 过滤器\n16. 监听器\n17. 文件上传下载\n18. 邮件收发\n19. 富文本编辑器\n\n\n# 第三阶段 SSM\nSSM框架:脱离原始开发.工作中的框架必须要掌握\n\n1. Maven\n2. Junit\n3. Log4J\n4. MyBatis\n5. Spring\n6. SpringMVC\n7. JSON\n8. Ajax\n9. SSM框架整合\n10. Shiro\n11. Solr\n12. Git\n13. MyBatis-Plus\n14. MySQL高级\n15. Netty\n16. MyCat\n\n\n# 第四阶段 Linux运维\n\nLinux运维：大部分服务器都是Linux系统，不会点Linux，能叫全栈？\n\n1. Linux基础\n2. Shell编程\n3. Linux系统管理\n4. Linux网络\n5. LAMP平台部署\n6. LNMP平台部署\n7. Nginx\n8. ELK日志分析\n9. MySQL集群\n10. Redis\n11. Linux集群\n12. Docker\n13. OpenStack\n14. Kubernetes\n\n# 第五阶段 微服务和分布式\n微服务和分布式：随着公司规模慢慢变大，分布式的开发变得就异常重要了。\n\n1. Vue\n2. NodeJS\n3. SpringBoot原理\n4. SpringBootWeb开发\n5. SpringData\n6. SpringSecurity\n7. SpringBoot分布式开发\n8. ActiveMQ\n9. Elsticsearch\n10. Dobbo+ Zookeeper\n11. SpringCloud Netflix全家桶\n12. SpringCloud Alibaba全家桶\n\n\n# 第六阶段 大数据开发\n大数据开发：如果你觉得分布式已经完全掌握了，那你可以学习大数据，以自己升值。\n\n1. 负载均衡\n2. Hadoop\n3. Hive\n4. HBase\n5. Flume\n6. Sqoop\n7. Zookeeper\n8. Impala\n9. Scala编程\n10. Spark系列\n11. Kafka\n\n# 第七阶段 持续学习\n\n持续学习：即使在小的帆也能远航，程序员，一个不断学习和追求新技术的群体，不持续学习机就会被时代抛弃。\n\n1. Java8新特性\n2. Java9新特性\n3. Java10新特性\n4. Java11新特性\n5. Java12新特性\n6. Service Mesh\n7. 计算机网络原理\n8. 操作系统\n\n\n\n', 1, 'Java', 'Java', 1, 3, 0, 0, '2022-04-19 10:12:46', '2022-04-19 10:12:46');
INSERT INTO `tb_blog` VALUES (2, '尚医通【预约挂号系统】总结', 'hospital', 'http://localhost:9501/admin/dist/img/rand/29.jpg', '## 1、项目介绍\n\n尚医通即为网上预约挂号系统，网上预约挂号是近年来开展的一项便民就医服务，旨在缓解看病难、挂号难的就医难题，许多患者为看一次病要跑很多次医院，最终还不一定能保证看得上医生。网上预约挂号全面提供的预约挂号业务从根本上解决了这一就医难题。随时随地轻松挂号！不用排长队！\n\n## 2、技术点\n\n后端：\n* SpringBoot：简化新Spring应用的初始搭建以及开发过程\n* SpringCloud：基于Spring Boot实现的云原生应用开发工具，SpringCloud使用的技术：（SpringCloudGateway、Spring Cloud Alibaba Nacos、Spring Cloud Alibaba Sentinel、SpringCloud Task和SpringCloudFeign等）\n* MyBatis-Plus：持久层框架\n* Redis：内存缓存（验证码有效时间、支付二维码有效时间）\n* MongoDB：面向文档的NoSQL数据库（医院相关数据）\n* EasyExcel：操作excel表格，进行行读写操作\n* RabbitMQ：消息中间件（订单相关操作）\n* HTTPClient: Http协议客户端\n* Nginx：负载均衡\n* Mysql：关系型数据库\n\n\n前端：\n* Vue.js：web 界面的渐进式框架\n* Node.js： JavaScript 运行环境\n* Axios：Axios 是一个基于 promise 的 HTTP 库\n* NPM：包管理器\n* Babel：转码器\n* Webpack：打包工具\n* ECharts：图标展示\n\n其他：\n* Lombok\n* Swagger2：Api接口文档工具\n* Docker	：容器技术\n* Git：代码管理工具\n* 阿里云oss\n* 阿里云短信服务\n* 微信登录、支付\n* 定时任务\n\n## 3、业务流程\n\n![请添加图片描述](https://img-blog.csdnimg.cn/ec865bb9f4e042618246906beb626f22.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n## 4、项目架构\n\n![请添加图片描述](https://img-blog.csdnimg.cn/8504d13f2fb24d749cc576e7c7d5127d.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n## 5、项目源码（包含sql）\n\ngitee 后端地址：[https://gitee.com/StarSea007/yyds-parent](https://gitee.com/StarSea007/yyds-parent)\n\ngitee 后台前端地址：[https://gitee.com/StarSea007/yyds-vue-font](https://gitee.com/StarSea007/yyds-vue-font)\n\ngitee 用户前端地址：[https://gitee.com/StarSea007/yyds-vue-site](https://gitee.com/StarSea007/yyds-vue-site)\n\n\n## 6、启动步骤\n\n1. 项目克隆到本地，导入到idea中\n2. docker，启动mongodb，rabbitmq\n3. nacos, 在目录下，打开bin文件夹，双击 `startup.cmd`\n4. redis，在目录下，使用cmd，然后输入 `redis-server redis.windows.conf`\n5. 修改配置文件地址（包含mysql、nacos、redis、mongodb、rabbitmq、短信、微信登录 / 支付），启动前后端项目\n6. 访问地址如下：\n模拟医院的管理系统地址：http://localhost:9998/\n预约挂号管理端地址：http://localhost:9528/\n预约挂号用户端地址：http://localhost:3000/\n医院设置后台swagger地址（举例）：http://localhost:8201/swagger-ui.html\nRabbitmq访问地址（guest/guest）：http://ip:15672/\n\n\n注意：前期学习阶段使用了nginx, 在目录下，使用cmd，然后输入nginx.exe。\n\n## 7、项目模块说明\n\n**后端项目**：\n```java\nyyds-parent：根目录，管理子模块\n	common：公共模块父节点\n		common-util：工具类模块，所有模块都可以依赖于它\n		rabbit-util：rabbitmq业务封装\n		service-util：service服务的工具包，包含service服务的公共配置类，所有service模块依赖于它\n	doc：课件文档及笔记\n	hospital-manage：医院接口模拟端\n	model：实体类模块\n	server-gateway：服务网关\n	service：api接口服务父节点\n		service-cmn：字典api接口服务\n		service-hosp：医院api接口服务\n		service-order：订单api接口服务\n		service-oss：文件存储api接口服务\n		service-sms：短信api接口服务\n		service-statistics：统计api接口服务\n		service-task：定时任务服务\n		service-user：用户api接口服务\n	service-client：feign服务调用父节点\n		service-cmn-client：字典api接口\n		service-hosp-client：医院api接口\n		service-order-client：订单api接口\n		service-user-client：用户api接口\n	sql：项目涉及的sql文件\n```\n\n**后台前端项目**：\n\n* 预约挂号管理端\n```java\nyyds-vue-font\n	bulid：构建相关\n	config：全局配置\n	src：源代码\n		api：所有请求\n		assets：主题 字体等静态资源\n		components：全局公共组件\n		icons：项目所有svg icons\n		router：路由\n		store：全局store管理\n		styles：全局样式\n		utils：全局公用方法\n		views：视图	\n		App.vue：入口页面\n		main.js：入口 加载组件 初始化等\n		permission.js：权限管理\n	static：静态资源\n	.babelrc：babel-loader配置\n	.eslintrc.js：eslint配置项\n	.gitignore：git忽略项\n	package.json：依赖管理\n```\n* 预约挂号用户端\n```java\nyyds-vue-site\n	assets：资源目录\n	components：组件目录\n	layouts：布局页面\n	pages：页面目录\n	plugins：插件目录\n	nuxt.config.js：nuxt.js应用的个性化配置\n```\n\n\n## 8、项目功能总结\n\n**后台页面包括**：\n\n```java\n数据管理\n	数据字典（字典树形展示、导入、导出）\n医药管理\n	医院设置（列表、添加、修改、删除）\n	医药列表（列表、详情、排班、下线）\n会员管理\n	会员列表（列表、查看、锁定）\n	认证审批列表\n订单管理\n	订单列表（列表、详情）\n统计管理\n	预约统计\n```\n\n**前端页面包括**：\n\n```java\n首页数据展示\n	医院列表\n医院详情展示\n	医院科室展示\n用户登录功能\n	手机号登录（短信验证码发送）\n	微信登录\n用户实名认证\n就诊人管理\n	列表、添加、详情、删除	\n预约挂号功能\n	排版和挂号详情信息\n	确认挂号信息\n	生成预约挂号订单\n	挂号订单支付（微信）\n	取消预约订单\n就医提醒功能\n```\n\n## 9、效果图\n\n### 后台管理端\n![在这里插入图片描述](https://img-blog.csdnimg.cn/9a847fee32f5492ebd7214ad2c288627.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/938acebc2b9e4da9ab3f9e2783397d50.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n\n### 前端展示端\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/75006c32bbcf49218882400024b27504.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/3bf92a0ec2df46afa7b86cbde23e49a1.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/c848a58622b343b2a843283edd53433a.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/3abcce8524034b3698a1b0a64402748f.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n\n### 数据库\n![在这里插入图片描述](https://img-blog.csdnimg.cn/73a6e29a94ef4149bfb7707a0ab91975.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5pif5rW35bCR5bm0,size_20,color_FFFFFF,t_70,g_se,x_16)\n\n', 7, '项目', '项目', 1, 1, 0, 0, '2022-04-19 10:20:12', '2022-04-19 10:20:12');

-- ----------------------------
-- Table structure for tb_blog_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_category`;
CREATE TABLE `tb_blog_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表主键',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类的名称',
  `category_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类的图标',
  `category_rank` int(11) NOT NULL DEFAULT 1 COMMENT '分类的排序值 被使用的越多数值越大',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blog_category
-- ----------------------------
INSERT INTO `tb_blog_category` VALUES (1, 'Java', '/admin/dist/img/category/00.png', 4, 0, '2022-04-19 09:56:38');
INSERT INTO `tb_blog_category` VALUES (2, 'Linux', '/admin/dist/img/category/13.png', 1, 0, '2022-04-19 09:56:46');
INSERT INTO `tb_blog_category` VALUES (3, '微服务', '/admin/dist/img/category/17.png', 1, 0, '2022-04-19 09:57:06');
INSERT INTO `tb_blog_category` VALUES (4, 'MySQL', '/admin/dist/img/category/00.png', 1, 0, '2022-04-19 09:57:15');
INSERT INTO `tb_blog_category` VALUES (5, 'Redis', '/admin/dist/img/category/07.png', 1, 0, '2022-04-19 09:57:56');
INSERT INTO `tb_blog_category` VALUES (6, '多线程', '/admin/dist/img/category/05.png', 1, 0, '2022-04-19 09:58:10');
INSERT INTO `tb_blog_category` VALUES (7, '项目', '/admin/dist/img/category/08.png', 2, 0, '2022-04-19 10:21:16');

-- ----------------------------
-- Table structure for tb_blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_comment`;
CREATE TABLE `tb_blog_comment`  (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `blog_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联的blog主键',
  `commentator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者名称',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论人的邮箱',
  `website_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网址',
  `comment_body` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `comment_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论提交时间',
  `commentator_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论时的ip地址',
  `reply_body` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `comment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否审核通过 0-未审核 1-审核通过',
  `is_deleted` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blog_comment
-- ----------------------------
INSERT INTO `tb_blog_comment` VALUES (1, 1, '热巴', '1065510476@qq.com', '', '欢迎大家来评论', '2022-04-19 10:18:03', '', '', '2022-04-19 10:18:03', 1, 0);

-- ----------------------------
-- Table structure for tb_blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_tag`;
CREATE TABLE `tb_blog_tag`  (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表主键id',
  `tag_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blog_tag
-- ----------------------------
INSERT INTO `tb_blog_tag` VALUES (1, 'Java', 0, '2022-04-19 09:53:23');
INSERT INTO `tb_blog_tag` VALUES (2, 'JVM', 0, '2022-04-19 09:55:03');
INSERT INTO `tb_blog_tag` VALUES (3, 'Redis', 0, '2022-04-19 09:55:15');
INSERT INTO `tb_blog_tag` VALUES (4, '框架', 0, '2022-04-19 09:55:27');
INSERT INTO `tb_blog_tag` VALUES (5, '分布式', 0, '2022-04-19 09:55:32');
INSERT INTO `tb_blog_tag` VALUES (6, '数据结构与算法', 0, '2022-04-19 09:55:50');
INSERT INTO `tb_blog_tag` VALUES (7, '微服务', 0, '2022-04-19 09:55:58');
INSERT INTO `tb_blog_tag` VALUES (8, '项目总结', 0, '2022-04-19 09:56:12');
INSERT INTO `tb_blog_tag` VALUES (9, '项目', 0, '2022-04-19 10:20:12');

-- ----------------------------
-- Table structure for tb_blog_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_tag_relation`;
CREATE TABLE `tb_blog_tag_relation`  (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系表id',
  `blog_id` bigint(20) NOT NULL COMMENT '博客id',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blog_tag_relation
-- ----------------------------
INSERT INTO `tb_blog_tag_relation` VALUES (328, 1, 1, '2022-04-19 10:12:46');
INSERT INTO `tb_blog_tag_relation` VALUES (331, 2, 9, '2022-04-19 10:21:26');

-- ----------------------------
-- Table structure for tb_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_config`;
CREATE TABLE `tb_config`  (
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置项的名称',
  `config_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置项的值',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`config_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_config
-- ----------------------------
INSERT INTO `tb_config` VALUES ('footerAbout', '星海博客', '2018-11-11 20:33:23', '2022-04-19 01:48:36');
INSERT INTO `tb_config` VALUES ('footerCopyRight', '2020 starsea', '2018-11-11 20:33:31', '2022-04-19 01:48:36');
INSERT INTO `tb_config` VALUES ('footerICP', '15', '2018-11-11 20:33:27', '2022-04-19 01:48:36');
INSERT INTO `tb_config` VALUES ('footerPoweredBy', 'https://github.com/StarSea99', '2018-11-11 20:33:36', '2022-04-19 01:48:36');
INSERT INTO `tb_config` VALUES ('footerPoweredByURL', 'https://github.com/StarSea99', '2018-11-11 20:33:39', '2022-04-19 01:48:36');
INSERT INTO `tb_config` VALUES ('websiteDescription', '星海博客是SpringBoot2+Thymeleaf+Mybatis建造的个人博客网站', '2018-11-11 20:33:04', '2022-04-19 02:15:35');
INSERT INTO `tb_config` VALUES ('websiteIcon', '/admin/dist/img/favicon.png', '2018-11-11 20:33:11', '2022-04-19 02:15:35');
INSERT INTO `tb_config` VALUES ('websiteLogo', '/admin/dist/img/photo4.jpg', '2018-11-11 20:33:08', '2022-04-19 02:15:35');
INSERT INTO `tb_config` VALUES ('websiteName', '星海博客', '2018-11-11 20:33:01', '2022-04-19 02:15:35');
INSERT INTO `tb_config` VALUES ('yourAvatar', '/admin/dist/img/user1-128x128.jpg', '2018-11-11 20:33:14', '2022-04-19 02:16:49');
INSERT INTO `tb_config` VALUES ('yourEmail', '1065510476@qq.com', '2018-11-11 20:33:17', '2022-04-19 02:16:49');
INSERT INTO `tb_config` VALUES ('yourName', 'starsea', '2018-11-11 20:33:20', '2022-04-19 02:16:49');

-- ----------------------------
-- Table structure for tb_link
-- ----------------------------
DROP TABLE IF EXISTS `tb_link`;
CREATE TABLE `tb_link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友链表主键id',
  `link_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '友链类别 0-友链 1-推荐 2-个人网站',
  `link_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站名称',
  `link_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站链接',
  `link_description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站描述',
  `link_rank` int(11) NOT NULL DEFAULT 0 COMMENT '用于列表排序',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否删除 0-未删除 1-已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_link
-- ----------------------------
INSERT INTO `tb_link` VALUES (1, 0, '星海少年的CSDN', 'https://blog.csdn.net/weixin_45606067', '学习笔记，复习模板', 0, 0, '2022-04-19 09:49:41');
INSERT INTO `tb_link` VALUES (2, 0, '星海少年的Github', 'https://github.com/StarSea99', '项目仓库', 1, 0, '2022-04-19 09:50:15');
INSERT INTO `tb_link` VALUES (3, 0, '星海少年的Gitee', 'https://gitee.com/StarSea007', '项目仓库', 2, 0, '2022-04-19 09:51:20');

SET FOREIGN_KEY_CHECKS = 1;
