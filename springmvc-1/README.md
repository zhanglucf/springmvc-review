### 第一节，重点在理解`视图解析器`

#### 先说说组件扫描器：

我们常用的注解如`@Controller` `@Service` `@Component` `@Repository`等可以把对象交给`IOC`容器管理，要想这些注解生效，就必须注册`组件扫描器`。

```xml
<context:component-scan base-backage="com.example"></context:component-scan>
```

#### JSP文件为什么要放到`WEB-INF`下面?

- `WEB-INF`下的资源是受保护的,不会被随意访问到

使用`视图解析器` `InternalResourceViewResolver`为试图配置前缀和后缀用于简化开发。