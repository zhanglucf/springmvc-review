没有声明注解驱动:`<mvc:annotation-driven/>`时，`消息转换器`默认只有四个实现类
<font color='cornflowerblue'>`ByteArrayHttpMessageConverter`</font>
<font color='cornflowerblue'>`StringHttpMessageConverter`</font>,
<font color='cornflowerblue'>`SourceHttpMessageConverter`</font>,
<font color='cornflowerblue'>`AllEncompassingFormHttpMessageConverter`</font>,
声明注解驱动后，默认实现增加到八个
<font color='cornflowerblue'>`ByteArrayHttpMessageConverter`</font>
<font color='cornflowerblue'>`StringHttpMessageConverter`</font>,
<font color='cornflowerblue'>`SourceHttpMessageConverter`</font>,
<font color='cornflowerblue'>`AllEncompassingFormHttpMessageConverter`</font>,
<font color='orange'>`org.springframework.http.converter.ResourceHttpMessageConverter`</font>,
<font color='orange'>`org.springframework.http.converter.ResourceRegionHttpMessageConverter`</font>,
<font color='orange'>`org.springframework.http.converter.xml.Jaxb2RootElementHttpMessageConverter`</font>,
<font color='orange'>`org.springframework.http.converter.json.MappingJackson2HttpMessageConverter`</font>

两种方式返回Json格式数据：

方式1:

```java
    @RequestMapping(value = "/_ajax.do", method = RequestMethod.GET)
    public void method2(HttpServletResponse response,Student student) throws IOException {
        PrintWriter writer = response.getWriter();
        ObjectMapper om = new ObjectMapper();
        String json = om.writeValueAsString(student);
        writer.write(json);
        response.setContentType("application/json; charset=UTF-8");
    }
```

方法返回值类型为`void`,手动将数据转成json,设置`ContentType`为`application/json; charset=UTF-8`

方式二：

```java
    @ResponseBody
    @RequestMapping(value = "/_ajax2.do", method = RequestMethod.GET)
    public Student method3(Student student) throws IOException {
        return student;
    }
```

使用`@ResponseBody`注解  这种方式最简洁，也是推荐的方式。