# ch08-forard-redirect:转发和重定向

> `forward`：转发
> `redirect`：重定向

`forward`和`redirect`都是关键字， 有一个共同的特点:<font color='orange'>不和视图解析器一同工作</font>

- `forward`和`redirect`他们都可以访问 视图文件，比如某个`jsp` ，`html`
    forward:/hello.jsp  forward:/main.html
- `forward`和`redirect`他们都可以访问其它的`controller`
     forward:/some.do , redirect:/other.do
- `处理器`方法可以返回`ModelAndView`, `String` ,` void` ,都可以使用`forward`，`redirect`



#### 小结：重定向和转发的区别

| **区别**                 | **转发forward()**  | **重定向sendRedirect()** |
| ------------------------ | ------------------ | ------------------------ |
| **根目录**               | 包含项目访问地址   | 没有项目访问地址         |
| **地址栏**               | 不会发生变化       | 会发生变化               |
| **哪里跳转**             | 服务器端进行的跳转 | 浏览器端进行的跳转       |
| **请求域中数据**         | 不会丢失           | 会丢失                   |
| 能否访问WEB-INF 目录资源 | 可以               | 不可以                   |



#### 转发和重定向的选择

- 重定向的速度比转发慢，因为浏览器还得发出一个新的请求，如果在使用转发和重定向都无所谓的时候建议使用转发。

- 因为转发只能访问当前WEB的应用程序，所以不同WEB应用程序之间的访问，特别是要访问到另外一个WEB站点上的资源的情况，这个时候就只能使用重定向了。

