<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>非/WEB-INF/目录  从request作用域获取数据</h3><br/>
    <h3>msg数据：${msg}</h3><br/>
    <h3>fun数据：${fun}</h3>
    <h3>取参数数据：<%=request.getParameter("name")%></h3>
</body>
</html>
