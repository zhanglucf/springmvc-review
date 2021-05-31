### 多个`拦截器`

#### 正常场景`拦截器`执行流程：

1. interceptor1-`preHandle`
2. interceptor2-`preHandle`
3. target method
4. interceptor2-`postHandle`
5. intercepter1-`postHandle`
6. interceptor2-`afterCompletion`
7. interceptor1-`afterCompletion`

#### 如果目标方法出现异常，`拦截器`执行流程：

1. interceptor1-`preHandle`
2. interceptor2-`preHandle`
3. target method
4. interceptor2-`afterCompletion`
5. interceptor1-`afterCompletion`



### `过滤器`、`拦截器`、`aop`的区别？

- 过滤器是`J2EE`规范，`servlet`2.3开始引入。多个过滤器形成过滤器链，过滤器执行顺序取决于`web.xml`中定义的顺序。
- 拦截器的概念基于`springmvc`,基于反射机制，代理模式实现。
  - `AOP`是`OOP`的延续，用于降低业务逻辑各部分之间的耦合度，提高程序的可重用性。只能应用于由 `Spring `容器管理的` bean`

#### `过滤器`主要用于：

- 用户访问权限处理
- 设置字符集乱码处理
- 过滤敏感词汇、压缩响应信息

#### `拦截器`主要用于：

- 用户访问权限处理
- 登记日志

#### `aop`主要用于：

- 日志记录
- 性能统计
- 安全控制
- 事务处理
- 异常处理

#### 三者执行顺序：` 过滤器 `-> `拦截器` -> `AOP`