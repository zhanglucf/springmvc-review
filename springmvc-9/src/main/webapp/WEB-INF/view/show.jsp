<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>/WEB-INF/view/show.jsp从request作用域获取数据</h3><br/>
    <h3>msg数据：${msg}</h3><br/>
    <h3>fun数据：${fun}</h3>
    <h3>取request name:参数：<%=request.getParameter("name")%></h3>
    <h3>取request age参数：<%=request.getParameter("age")%></h3>
</body>
</html>
