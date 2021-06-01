### 研究springmvc对静态资源的处理

#### 方式2

​    使用   <font color='orange'>`<mvc:resources />`</font> 配合 <font color='orange'>`< mvc:annotation-driven/ >`</font>标签

` <mvc:resources />`和`@RequestMapping`注解由冲突，
需要加入`annotation-driven`解决

```xml
    <!--mapping="images/**"  ** 可以匹配多级路径images/a/b/1.txt images/a/1.txt images/1.txt-->
    <!--location="/images/"  第一个/ 表示项目根目录 第二个/代表目录 两个/都不可以缺少-->
    <mvc:resources mapping="images/**" location="/images/"/>
    <mvc:resources mapping="js/**" location="/js/"/>
```

​    原理：<font color='green'>`Spring3.0`</font>版本后，`Spring`又定义了专门用于处理<font color='orange'>静态资源</font>访问请求的处理器：<font color='green'>`ResourceHttpRequestHandler`</font>
​        加入`<mvc:resources />`标签后，框架会创建`ResourceHttpRequestHandler`对象，这个对象处理静态资源请求。

   优点：不依赖`Tomcat`或其他`Servlet`容器是否有`default Servlet`方法

