# ch09-exception-handler:异常处理

## 异常处理步骤：

1. 新建一个`自定义异常类 `

2. 在需要的地方抛出自定义异常类 

3. 创建一个全局异常处理类
   - 在类的上面加入`@ControllerAdvice`
   - 方法的上面加入`@ExceptionHandler`

4. 创建处理异常的视图页面
5. 创建`springmvc`的配置文件
   - 组件扫描器 ，扫描`@Controller`注解
   - 组件扫描器，扫描`@ControllerAdvice`所在的包名
   - 声明注解驱动

```xml
    <context:component-scan base-package="com.bjpowernode.handler" />
    <mvc:annotation-driven />
```

