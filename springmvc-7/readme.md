# ch07-ssm: SSM整合开发

>  SSM： SpringMVC + Spring + MyBatis.

`SpringMVC`:视图层，界面层，负责接收请求，显示处理结果的。
`Spring`：  业务层，管理service，dao，工具类对象的。
`MyBatis`：持久层， 访问数据库的

## `SSM`整合中有2个容器：

1. 第一个容器`SpringMVC`容器， 管理`Controller`控制器对象。
2. 第二个容器`Spring`容器，管理`Service`，`Dao`,工具类对象。

**`springmvc`容器是`spring`容器的子容器， 类似`java`中的继承。 子可以访问父的内容。**

## 整合步骤：

1. 新建`maven web`项目
2. 加入`springmvc`，`spring`，`mybatis`三个框架的依赖，`jackson`依赖、`mysql`驱动、`druid`连接池、`jsp`、`servlet`依赖
3. 写`web.xml`
   - 注册`DispatcherServlet `

   - 注册spring的监听器：`ContextLoaderListener`

   - 注册字符集过滤器，解决`post`请求乱码的问题

4. 创建包， `Controller`包，` service` ，`dao`，实体类包名创建好

5. 写`springmvc`，`spring`，`mybatis`的配置文件
   - `springmvc`配置文件
   - `spring`配置文件
   - `mybatis`主配置文件
   - 数据库的属性配置文件

6. 写代码， `dao`接口和`mapper`文件， `service`和实现类，`controller`， 实体类。
7. 写`jsp`页面

