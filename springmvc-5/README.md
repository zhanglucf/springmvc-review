### 研究`springmvc`对静态资源的处理

#### 方式1

​    使用 <font color='orange'>`< mvc:default-servlet-handler >`</font> 配合 <font color='orange'>< mvc:annotation-driven/ ></font>

​    原理：当使用`< mvc:default-servlet-handler>`标签好，`springmvc`框架会创建`控制器对象`：
​        `DefaultServletHttpRequestHandler`(类似我们自定义的`Controller`),`DispatcherServlet`的  `url-pattern` 配置为斜杠”/“,这样所有的请求都被拦截。    `DefaultServletHttpRequestHandler` 把请求再次转发给`tomcat`名为`default`的`servlet`。实际上我们希望静态资源由`default servlet`处理，
其他请求还是让我们自定义的controller处理。
`default-servlet-handler`和`@RequestMapping`注解由冲突，需要加入`annotation-driven`解决
 优点：方便
 缺点：要求`Tomcat`有`default Servlet`

方式2
    见springmvc-6 readme

:dog2: 

```xml
    <context:component-scan base-package="com.example"/>
    <!--解决中央控制器 url-pattern 为斜杠”/“时，静态资源404的问题-->
    <mvc:default-servlet-handler/>
```



### `annotation-driven`有哪些作用？

- 因为`default-servlet-handler`和`RequestMapping`有冲突，`annotation-driven`可以解决这个问题
- `Controller`返回对象，实现对象转`json`的功能，有了这个驱动，框架会生成`HttpMessageConverter`接口的实现类
        ` MappingJackson2HttpMessageConverter`，从而自动完成对象到`json`的转换