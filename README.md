# solost
基于springboot的个人博客,诞生与暑假练手

博客地址  [https://solost.springboot3.com](https://solost.springboot3.com/)
# 项目技术栈

前端:vue-cli3 vue.js2.0 element-ui vuex vue-router vue-resource showdown

后端:springboot2.0 springdatajpa 

数据库:mysql5.7
# 项目介绍
项目是基于springboot的前后的分离项目,使用的脚手架是vue-cli,前端ui使用的是element-ui,使用的markdown文本编辑器

# 项目部署
1. 配置application.properties中的数据库信息
2. 数据库中要新建数据库,表会在启动时候自动生成,但是前提是数据库存在的情况(创建数据库名称:  solost    )
3. 如果项目要打包的话把测试类给屏蔽掉(我以前用旧版本的idea不需要,但是自从跟新后不屏蔽就报错,方法在后端代码文件夹下了)
4. 前端使用的时vue-cli3.0,配置好环境
5. 进入前端项目
6. 拉取依赖 npm install
7. 运行项目 npm run serve 
8. solost\src\api\index.js  这个文件时所有请求方法,可以设置你的测试接口地址
## 前台显示

##### 首页模块
1. 首页轮播图(只为美观)
2. 首页显示文章列表(在后台添加文章时可以设置是否显示)
3. 分类列表(马上开学了,没时间写,点击跳转功能一直放着,没办法,太懒了)
4. 最新文章(在后台添加文章时可以设置是否显示)
5. 分页(首页显示的文章初始化每页数量为4)
6. 登陆(没有写,还是没时间,哪位大哥解决吧)
7. 赞助本站

##### 文章模块
1. 模糊查询(若为空则查询全部)
2. 文章列表

##### 文章内容
1. markdown解析
2. markdown.css(自己写的样式,前端代码里有)

##### 归档模块
1. 查询所有文章

##### 友链模块
1. 友链显示(如果添加的友链不支持https,那么你的网站也会显示不安全)

##### 关于模块
1. markdown文本解析(方便以后修改)

## 后台管理员
##### 信息总览
##### 文章管理
##### 文章添加
##### 友链管理
##### 轮播图管理



