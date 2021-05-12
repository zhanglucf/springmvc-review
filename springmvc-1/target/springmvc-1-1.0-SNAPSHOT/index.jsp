<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>这是springmvc项目的第一个示例</h3>
<%--
    不需要带斜杠"/",
    带了斜杠,发送的请求为http://localhost:8080/some.do
    不带斜杠"/",发送的请求为http://localhost:8080/springmvc_1/some.do
--%>
    <a href="some.do">发送some.do请求</a>
</body>
</html>
