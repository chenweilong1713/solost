/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50726
Source Host           : 47.102.205.139:3306
Source Database       : solost

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-25 16:00:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('1', '## 关于我\n####  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;陈威龙，男，一枚99年刚入坑的程序员。目前大二,热衷于web\"后端\"技术(哈哈！主\"后端\"，副\"前端\"！)。做这个博客主要是想拥有自己的一个个人网站，记录自己学习的过程!\n\n![image](https://solost.springboot3.com/solost/b2de9c82d158ccbf883b32a7e753a93bb035413d.jpeg)\n## 关于本站\n#### 域名:solost.springboot3.com (二级域名)\n#### 服务器:阿里云服务器\n#### 备案号：苏ICP备19025063号\n#### 后端语言：java\n#### 后端技术：SpringBoot+spring Data jpa\n#### 前端技术: vue全家桶+Emelent-Ui\n#### 数据库: mysql\n#### 其它: 前端页面存储在又拍云存储服务\n## 联系方式\n#### QQ:2502906272\n#### 邮箱:2502906272@qq.com\n#### 交流群:809268008(全栈开发成长群)\n\n\n');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `a_name` varchar(255) DEFAULT NULL,
  `a_password` varchar(255) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '2019-08-18', 'solost', '1682239281', '2019-08-18');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `a_preface` varchar(255) DEFAULT NULL,
  `a_title` varchar(255) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `a_content` longtext,
  `a_cover` varchar(255) DEFAULT NULL,
  `a_leave_number` int(11) DEFAULT NULL,
  `a_volume` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `c_flag` bit(1) DEFAULT NULL,
  `a_category_name` varchar(255) DEFAULT NULL,
  `a_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `FKm3lykr3s286vuky45mp2f5mav` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '2019-07-22', 'CORS配置跨域问题,通过注解的方式和通过配置类的方式,两种方式解决跨域问题', 'springboot中解决跨域问题', '2019-07-22', '#### CORS是由W3C制定的一种跨域资源共享技术标准,其目的就是为了解决前端跨域的问题.\n## 一.注解方式\n#### 标注在Controller类下的方法上\n@CrossOrigin(value = \"http://springboot3.com\" ,maxAge = 1800 , allowedHeaders = \"*\")\n1. value表示支持的域\n2. maxAge表示请求的有效期\n3. allowedHeaders表示允许的请求头\n\n## 二.配置类实现\n```\n@Configuration\npublic class MyMvcConfig implements WebMvcConfigurer {\n\n    /**\n     *  配置跨域\n     * @param registry\n     */\n    @Override\n    public void addCorsMappings(CorsRegistry registry) {\n           \n            registry.addMapping(\"/**\")\n            .allowedHeaders(\"*\")\n            .allowedMethods(\"*\")\n            .maxAge(1800)\n            .allowedOrigins(\"http://springboot3.com\");\n    }\n  \n\n    //其它更多全局定制接口\n}\n\n```\n1. addMapping 表示对哪种路径的请求进行跨域配置\n2. allowedHeaders 表示允许的请求头,默认允许全部\n3. maxAge 表示请求的有效期\n4. allowedOrigins 表示支持的域名', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '21', '1', '', 'springboot', '0');
INSERT INTO `article` VALUES ('11', '2019-07-31', 'vue路由的的创建和使用等等', 'vue路由', '2019-07-31', '\r\n## 安装\r\n```\r\nnpm install vue-router --save\r\n```\r\n\r\n1.创建router.js\r\n```\r\nimport Vue from \"vue\";\r\nimport Router from \"vue-router\";\r\n\r\n//组件模块\r\nimport Lifi from \"./components/Lifi.vue\";\r\nimport Home from \"./components/Home.vue\";\r\n\r\nVue.use(Router);\r\n\r\nexport default new Router({\r\n  routes: [\r\n    { path: \"/lifi\", name: \"Lifi\", component: Lifi },\r\n    { path: \"/home\", name: \"Home\", component: Home }\r\n  ]\r\n});\r\n```\r\n\r\n2.在main.js中引入router.js\r\n```\r\nimport router from \"./router\";\r\n```\r\n3.挂载到vue中\r\n```\r\nnew Vue({\r\n  router,\r\n  render: h => h(App)\r\n}).$mount(\"#app\");\r\n\r\n```\r\n\r\n4.使用方法\r\n```\r\n<router-link to=\"/home\">主页</router-link>     //切换到指定的组件\r\n<router-link to=\"/lifi\">lifi</router-link>\r\n        \r\n<router-view></router-view>  //组件显示的地方\r\n```\r\n\r\n5.也可通过事件的方法来使用路由\r\n```\r\nmethods:{\r\n  toMain() {\r\n    this.$router.push(\'./main\');  //跳转到指定组件\r\n  },\r\n \r\n  //使用路由返回上一级\r\n  goBack() {\r\n    window.history.length > 1 ? this.$router.go(-1) : this.$router.push(\"/\");\r\n  },\r\n}\r\n```\r\n\r\n5.配置默认路由\r\n```\r\nroutes: [\r\n    { path: \'*\', redirect: \'/home\' }\r\n  ]\r\n```\r\n6.动态路由方式传值\r\n```\r\n{ path: \'/user/:id\', component: User }\r\n```\r\n\r\n    这里记得to前面加冒号  : \r\n    <router-link :to=\"/content/123\">{{key}}---{{item}}</router-link>\r\n\r\n\r\n获取路由传过来的值(传过来的是一个对象)\r\n```\r\nthis.$route.params\r\n```\r\n\r\n7.get方式传值\r\n\r\n```\r\n不同的是这里\r\n <router-link :to=\"\'/pcontent/?id=\'+ index\">{{index}}---{{item}}</router-link>\r\n\r\n\r\n正常配置即可\r\n{ path: \"/pcontent\", name: \"pcontent\", component: Pcontent },\r\n```\r\n\r\n\r\n获取传值(一样是对象)\r\n```\r\nthis.$route.query\r\n```\r\n\r\n\r\n8.编程式导航(js操作路由)\r\n```\r\nthis.$router.push({path:\'main\'});\r\nor\r\nthis.$router.push(\'./main\');\r\nor\r\nthis.$router.push({name:\'main\'});\r\nor\r\nthis.$router.push({name:\'main\',params:{id:123}});\r\n\r\n```\r\n9.hash模式和history模式\r\n```\r\n默认是hash模式,如果想改为history模式,实例化router是加上mode\r\nconst router = new VueRouter({\r\n  mode: \'history\',\r\n  routes: [...]\r\n})\r\n\r\n```\r\n10.路由嵌套\r\n```\r\n几个注意点,嵌套是在上一个路由里嵌套,并且path没有  \"  /  \"\r\nroutes: [\r\n    { path: \'/user/:id\', component: User,\r\n      children: [\r\n        {\r\n          // 当 /user/:id/profile 匹配成功，\r\n          // UserProfile 会被渲染在 User 的 <router-view> 中\r\n          path: \'profile\',\r\n          component: UserProfile\r\n        },\r\n        {\r\n          // 当 /user/:id/posts 匹配成功\r\n          // UserPosts 会被渲染在 User 的 <router-view> 中\r\n          path: \'posts\',\r\n          component: UserPosts\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n```\r\n', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '5', '5', '', '笔记', '1');
INSERT INTO `article` VALUES ('12', '2019-08-01', 'js数组的一下常用方法', 'js数组', '2019-08-01', '表示在数据中删除key下表的元素\r\n```\r\nthis.list.splice(key,1)\r\n```\r\n\r\n返回逆序数组\r\n```\r\nArray.reverse()\r\n```\r\n\r\n返回指定数组的片段或者子数组。不会改变原数组\r\n 第一个参数是截取开始的位置（包括），第二个参数是截取结束的位置（不包括）\r\n```\r\nArray.slice()\r\n```\r\n\r\n尾部添加\r\n```\r\npush()\r\n```\r\n\r\n尾部删除\r\n```\r\npop()\r\n```\r\n```\r\nindexOf()和lastIndexOf()\r\n```\r\n这两个方法都是用来搜索整个数组中具有给定值的元素，返回找到的第一个元素的索引，如果没找到，则返回-1。\r\n区别在于indexOf()从头至尾搜索，而后者则是反向搜索。\r\n\r\n\r\n```\r\nunshift()方法与shift()方法\r\n\r\nunshift()方法类似于push()不同的是，他是在数组头部添加，其他都一样\r\n\r\nshift()方法则类比pop()方法。\r\n\r\ntoString()方法将每个元素转化为字符串，类似于不传参的join()方法。\r\n```', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '6', '5', '', '前端', '1');
INSERT INTO `article` VALUES ('13', '2019-08-18', '父组件,子组件相互使用数据和方法', '组件主动获取组件的方法和数据', '2019-08-18', '## 组件主动获取组件的方法和数据\r\n\r\n父组件主动获取子组件的数据和方法\r\n\r\n1.调用子组件的时候定义一个  ref\r\n```\r\n<v-header ref=\"header></v-header>\r\n```\r\n\r\n2.在父组件里使用\r\n```\r\nthis.$refs.header.属性\r\nor\r\nthis.$refs.header.方法\r\n```\r\n\r\n子组件主动获取父组件里的属性和方法\r\n```\r\nthis.$parent.属性\r\nor\r\nthis.$parent.方法\r\n```\r\n\r\n\r\n非父子关系获取数据\r\n\r\n1.新建一个js文件,创建vue实例\r\n// 实现非父子组件之间的传值\r\n```\r\n//1.引入空vue的实例\r\n\r\nimport Vue from \"vue\";\r\n\r\nvar VueEvent = new Vue();\r\n\r\nexport default VueEvent;\r\n\r\n```\r\n\r\n2.在组件A中关播\r\n```\r\nmethods: {\r\n    emitNew() {\r\n      //广播数据\r\n      VueEvent.$emit(\"to-news\", this.mes);\r\n    }\r\n}\r\n\r\n3.在组件B中接受广播\r\nmounted() {\r\n    VueEvent.$on(\"to-news\", data => {\r\n      alert(data);\r\n    });\r\n}\r\n```\r\n', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '5', '5', '\0', '笔记', '1');
INSERT INTO `article` VALUES ('2', '2019-07-23', '听说学了这个会大大的提高个人开发效率,记录一下学习笔记!', 'JPA方法个人总结', '2019-07-23', '### 根据id查询一个对象\n\n```\nfindOne(id)//2.0以删除\n\nfindById(id).get();\n```\n\n### 根据是否有id来决定更新还是添加\n```\nsave(Object)\n```\n\n\n### 根据id来删除一条数据\n```\ndelete(id)\n```\n\n### 查询所有数据\n```\nfindAll()\n```\n\n### 查询数量\n```\ncount()\n```\n\n### 根据id查询是否存在\n```\nexists(id)\n```', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '19', '5', '\0', '笔记', '0');
INSERT INTO `article` VALUES ('3', '2019-07-24', 'springMVC单文件上传,基于springboot,简单四步骤,傻瓜式!', '单文件上传', '2019-07-24', '#### springMVC文件上传做了简化,本篇文章在springboot基础上实现\n## 一.单文件上传\n1. 引入pom依赖\n```\n<dependency>\n    <groupId>org.springframework.boot</groupId>\n    <artifactId>spring-boot-starter-web</artifactId>\n</dependency>\n```\n2. 上传文件大小限制(application.properties)\n```\n# 上传文件总的最大值\nspring.servlet.multipart.max-request-size=20MB\n# 单个文件的最大值\nspring.servlet.multipart.max-file-size=10MB\n```\n3. 前端代码\n```\n<!--    注意:method=\"post\" enctype=\"multipart/form-data\" -->\n<form action=\"/uploading\" method=\"post\" enctype=\"multipart/form-data\">\n        <p>\n            选择文件:<input type=\"file\" name=\"file\">\n        </p>\n        <p>\n            <input type=\"submit\" value=\"上传\">\n        </p>\n</form>\n```\n4. Controller代码实现\n```\n    private String name=null;\n\n    /**\n     * 单文件上传\n     * @param file\n     * @return\n     */\n    @PostMapping(\"/uploading\")\n    public String HandleFormUpload(MultipartFile file){\n        //判断是否为空\n        if(!file.isEmpty()){\n            //获取文件名称,主要是获取文件的\"扩展名\"\n            name=file.getOriginalFilename();\n            System.out.println(\"name:\"+name);\n            //随机生成不重复的名称+文件扩展名\n            UUID uuid = UUID.randomUUID();\n            System.out.println(\"name:\"+uuid+name);\n            //确定最终保存的名称\n            String pathFile=uuid+name;\n            \n            File file1 = new File(\"G://file/\"+pathFile);\n            try{\n                //保存文件\n                file.transferTo(file1);\n            }catch (Exception e){\n                System.out.println(e);\n            }\n            System.out.println(\"上传文件的名为:\"+pathFile);\n        }else{\n            System.out.println(\"上传内容为空\");\n        }\n        return \"uploadfiles\";\n    }\n```', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '16', '5', '\0', '笔记', '0');
INSERT INTO `article` VALUES ('4', '2019-07-24', '多文件跟单文件上传没有什么区别,后端处理时也就多了一个循环过程.', '多文件上传', '2019-07-24', '#### springMVC文件上传做了简化,本篇文章在springboot基础上实现,多文件跟单文件上传没有什么区别,后端处理时也就多了一个循环过程.\n## 一.多文件上传\n1. 老样子,引入pom依赖\n```\n<dependency>\n    <groupId>org.springframework.boot</groupId>\n    <artifactId>spring-boot-starter-web</artifactId>\n</dependency>\n```\n2. 上传文件大小限制(application.properties)\n```\n# 上传文件总的最大值\nspring.servlet.multipart.max-request-size=20MB\n# 单个文件的最大值\nspring.servlet.multipart.max-file-size=10MB\n```\n3. 前端代码\n```\n 多文件上传(对比单文件上传多了几个文件框)\n    <br>\n    <form action=\"/uploadFiles\" method=\"post\" enctype=\"multipart/form-data\">\n        <p>\n            选择文件:<input type=\"file\" name=\"file\">\n        </p>\n        <p>\n            选择文件:<input type=\"file\" name=\"file\">\n        </p>\n        <p>\n            选择文件:<input type=\"file\" name=\"file\">\n        </p>\n        <p>\n            选择文件:<input type=\"file\" name=\"file\">\n        </p>\n        <p>\n            <input type=\"submit\" value=\"上传\">\n        </p>\n    </form>\n```\n4. Controller代码实现\n```\n    //MultipartFile[] 因为接受的不只一个,所以这里用数组接收\n    @PostMapping(\"uploadFiles\")\n    public String HandleFormUploads(MultipartFile[] file){\n\n        for (int i = 0; i < file.length; ++i) {\n                if(!file[i].isEmpty()){\n                    try {\n                        name=file[i].getOriginalFilename();\n                        UUID uuid = UUID.randomUUID();\n                        System.out.println(\"name:\"+uuid+name);\n                        String pathFile=uuid+name;\n                        File file1 = new File(\"G://file/\"+pathFile);\n                        file[i].transferTo(file1);\n                    }catch (Exception e){\n                        System.out.println(e);\n                    }\n                }else{\n                    System.out.println(\"为空\");\n                }\n        }\n        //返回视图\n        return \"uploadfiles\";\n    }\n```', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '21', '5', '', '笔记', '0');
INSERT INTO `article` VALUES ('10', '2019-07-30', '记录一下String字符串的常用方法', 'String字符串', '2019-07-30', '#### 字符串不变,它们的值在创建后不能被更改。 字符串缓冲区支持可变字符串。 因为String对象是不可变的，它们可以被共享。\r\n### 例如:\r\n```\r\n    String str = \"abc\";\r\n    相当于：\r\n    char data[] = {\'a\', \'b\', \'c\'};\r\n    String str = new String(data);\r\n```\r\n所引用的是同一个地址对象\r\n\r\n### 构造方法\r\n```\r\nString()\r\n\r\nString(byte[] bytes)\r\n```\r\n\r\n### 常用方法\r\n```\r\ncharAt(int index)\r\n返回char指定索引处的值\r\n\r\nconcat(String str)\r\n将指定的字符串连接到该字符串的尾部\r\n\r\nequals(Object object)\r\n将此字符串与指定的字符串进行比较\r\n\r\nformat(String  format,Object args)\r\n将字符串按指定的格式进行返回\r\n\r\nhashCode()\r\n放回此字符串的哈希码\r\n\r\nindexOf(int ch)\r\n返回指定字符出现的索引\r\n\r\nindexOf(int ch ,int formIndex)\r\n放回指定字符出现的索引,并按指定的索引开始\r\n\r\nindexOf(String  str)\r\n返回指定的子字符串第一次出现的索引位置\r\n\r\nlenght()\r\n返回此字符串的长度\r\n\r\nsqlit(String regex)\r\n将此字符串按指定的方式进行分割,返回一个数组\r\n```\r\n\r\n', 'https://solost.springboot3.com/solost/article/text02.jpg', '0', '6', '5', '', '笔记', '0');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_text` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'springboot', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('2', 'mybatis', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('3', '微服务', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('4', '前端', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('5', '笔记', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('6', '问题', '2019-07-19', '2019-07-19');
INSERT INTO `category` VALUES ('7', '其它', '2019-07-19', '2019-07-19');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `f_domain` varchar(255) DEFAULT NULL,
  `f_head` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `f_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('20', '2019-08-25', 'https://www.qingxing.top/', 'https://www.qingxing.top/upload/image/tx.jpg', 'Sober', '2019-08-25', '清醒的去做每一件事');
INSERT INTO `friend` VALUES ('21', '2019-08-25', 'https://www.iscolt.com/', 'https://www.iscolt.com/upload/2019/4/%E4%B8%80%E4%B8%AA%E4%BC%9A%E4%B8%A2%E4%BC%9E%E7%9A%84%E4%BA%BA20190521113445489.png', '似小马的博客', '2019-08-25', '');

-- ----------------------------
-- Table structure for leaves
-- ----------------------------
DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of leaves
-- ----------------------------
INSERT INTO `leaves` VALUES ('1', '1', '测试数据', '2019-07-21', '1', '2019-07-21');
INSERT INTO `leaves` VALUES ('2', '1', '测试数据2', '2019-07-21', '1', '2019-07-21');
INSERT INTO `leaves` VALUES ('3', '1', '测试数据2', '2019-07-25', '1', '2019-07-25');
INSERT INTO `leaves` VALUES ('4', '1', '测试数据2', '2019-07-28', '1', '2019-07-28');
INSERT INTO `leaves` VALUES ('5', '1', '测试数据2', '2019-07-28', '1', '2019-07-28');

-- ----------------------------
-- Table structure for slideshow
-- ----------------------------
DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_url` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of slideshow
-- ----------------------------
INSERT INTO `slideshow` VALUES ('1', 'https://solost.springboot3.com/solost/1.jpg', '2019-07-17', '2019-07-17');
INSERT INTO `slideshow` VALUES ('2', 'https://solost.springboot3.com/solost/962bd40735fae6cd8fd2281f42bde32042a70f79.jpeg', '2019-07-17', '2019-07-17');
INSERT INTO `slideshow` VALUES ('3', 'https://solost.springboot3.com/solost/b2de9c82d158ccbf883b32a7e753a93bb035413d.jpeg', '2019-07-17', '2019-07-17');
INSERT INTO `slideshow` VALUES ('4', 'https://solost.springboot3.com/solost/u=1284088025,3433263019&fm=214&gp=0.jpg', '2019-07-28', '2019-07-28');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2019-07-22', '2502906272@qq.com', '3889271', '2019-07-22');
