追梦少年博客：

> https://blog.csdn.net/weixin_45606067


### 介绍

blog是基于SpringBoot 搭建的个人博客，响应式

前端技术：html、css、js、jq、bootstrap

后台技术：springboot、thymeleaf、mybatis、mysql、lombok
&nbsp;

前台主要功能
- 查看文章列表、阅读文章
- 列出新发布的文章、点击量靠前的文章
- 可根据关键字检索文章，根据标签查看相关文章
- 可评论文章
  &nbsp;

后台主要功能
- 文章管理：编写、修改、发布、删除文章，编辑器使用的是markdown，实时在线预览
- 文章分类管理：设置、修改、删除分类
- 评论管理：审核、回复、删除评论
- 网站配置：网站logo、描述、header、body等
- 个人信息修改：昵称、密码

### 使用
- 新建数据库 db_blog ，运行sql文件
- 修改 application.properties 中的数据库连接信息
- 修改 config 包下 Constants 类中设置的上传文件保存目录
- 项目使用了 lombok，IDEA需要安装 lombok 插件

运行项目，访问地址 127.0.0.1:9501 ，后台地址 127.0.0.1:9501/admin，用户名 admin ，密码 123456



### 前台效果图
首页：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122606973.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122700287.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)


&nbsp;

文章：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122745600.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

### 后台效果图
数据统计：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122826599.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

文章编写：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122858896.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

文章管理：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122922821.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

分类管理：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121122952343.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

评论管理：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121123014878.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

友情链接：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121123129346.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

网站设置：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121123033384.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)

&nbsp;

个人信息修改：

![在这里插入图片描述](https://img-blog.csdnimg.cn/20201121123050256.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80NTYwNjA2Nw==,size_16,color_FFFFFF,t_70#pic_center)
