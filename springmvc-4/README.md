# 过滤器

-  多个Filter的执行顺序，有filter-mapping标签的配置顺序决定， filter-mappint靠前，则filter先执行，靠后则后执行。

# servlet/filter/listener/interceptor区别与联系

## `servlet`

### 概念：

- `servlet`是一种运行`服务器端`的`java`应用程序，可以动态的生成`web`页面，它工作在`客户端请求`与`服务器响应`的`中间层`。

- 最早支持` Servlet `技术的是 `JavaSoft `的 `Java Web Server`。此后，一些其它的基于` Java `的 `Web Server` 开始支持标准的 `Servlet API`。

- `Servlet` 的主要功能在于交互式地`浏览`和`修改`数据，生成动态` Web `内容。

### 过程：

1. `客户端`发送请求至`服务器端 `
2. `服务器`将请求信息发送至 `Servlet`
3. `Servlet`动态生成响应内容并将其传给`服务器`
4. `服务器`将`响应`返回给`客户端`

### 说明：

- 在` Web` 应用程序中，一个 `Servlet `在一个时刻可能被多个用户同时访问。这时 `Web `容器将为每个用户创建一个线程来执行 `Servlet`。
- 如果` Servlet `不涉及共享资源的问题，不必关心多线程问题。但如果` Servlet `需要共享资源，需要保证 `Servlet` 是线程安全的。
- 最新版本3.1，为了简化开发流程，`Servlet 3.0` 引入了注解（`annotation`），这使得` web` 部署描述符 `web.xml `不再是必须的选择。



## filter：

### 概念：

- `filter`是一个可以复用的代码片段，可以用来转换`HTTP`请求、响应和头信息。
- 它只是修改对某一资源的请求，或者修改从某一的响应。
- `Servlet`中的过滤器`Filter`是实现了`javax.servlet.Filter`接口的服务器端程序，主要的用途是过滤`字符编码`、`权限判断`等。
- 它主要用于对用户请求进行预处理，也可以对`HttpServletResponse`进行后处理，是个典型的处理链。
- `Filter`对用户请求进行预处理，接着将请求交给`Servlet`进行处理并生成响应，最后Filter再对服务器响应进行后处理。

> **`Filter`有如下几个种类。**

- - `用户授权`的`Filter`：`Filter`负责检查用户请求，根据请求过滤用户非法请求。
  - 日志`Filter`：详细记录某些特殊的用户请求。
  - 负责解码的`Filter`：包括对非标准编码的请求解码。
  - `Filter`可负责拦截多个`请求`或`响应`；
  - 一个请求或响应也可被多个Filter拦截。

> **创建一个`Filter`只需两个步骤：**

- - 建`Filter`处理类；
  - `web.xml`文件中配置`Filter`。



## listener

### 概念：

- 监听`web`服务器中某一个执行动作，并根据其要求作出相应的响应。通俗的语言说就是在application，session，request三个对象创建消亡或者往其中添加修改删除属性时自动执行代码的功能组件。比如spring 的总监听器 会在服务器启动的时候实例化我们配置的bean对象 

## interceptor：

- 是在面向切面编程的，是基于JAVA的反射机制。比如动态代理就是拦截器的简单实现。



## 生命周期

### `servlet`：

- 一般继承`HttpServlet`，`web.xml`配置`servlet`时如果加上`load-on-start`为1时候，`Web`应用启动时候加载`Servlet`。当`servlet`被部署在应用服务器中（应用服务器中用于管理Java组件的部分被抽象成为[容器](http://zh.wikipedia.org/wiki/容器_(计算机科学))）以后，由容器控制`servlet`的生命周期。

1. `装入`：启动服务器时加载`Servlet`的实例；
2. `初始化`：`web`服务器启动时或`we`b服务器接收到请求时，或者两者之间的某个时刻启动。初始化工作由`init()`方法负责执行完成；
3. `调用`：从第一次到以后的多次访问，都是只调用`doGet()`或`doPost()`方法； 
4. `销毁`：停止服务器时调用`destroy()`方法，销毁实例。 



### filter：

- 必须实现javax.Servlet.Filter接口，并且必须定义以下三个方法:init(),destory(),doFilter()，空实现也行
1. 启动服务器时加载过滤器的实例，并调用init()方法来初始化实例；
2. 每一次请求时都只调用方法doFilter()进行处理； 
3. 停止服务器时调用destroy()方法，销毁实例。



### interceptor：

1. 以`springmvc`的拦截器为例，加载了`springmvc`配置文件以后，初始化相应拦截器
2. 当请求来时调用preHandle()，接着调用目标方法，调用postHandle(),afterCompletion()
3. 服务器停止销毁interceptor



### 执行流程图：

### servlet

![servlet执行流程图](C:\Users\zzh\Desktop\asdsa.png)



### filter

![image-20210601155133949](C:\Users\zzh\AppData\Roaming\Typora\typora-user-images\image-20210601155133949.png)



