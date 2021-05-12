<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: zzh
  Date: 2021/5/10
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show页面</title>
    <script src="js/jquery-3.5.1.js"></script>
    <script type="application/javascript">
        $(function () {
            $("#btn").click(function () {
                $.ajax({
                    url:"_ajax.do",
                    dataType:"json",
                    contentType:"application/json",
                    data:{name:'张三',age:21},
                    success:function (data) {
                        var json = JSON.stringify(data);
                        $("p").append(json).append("<br/>")
                    }
                })
            })
        })
        $(function () {
            $("#btn2").click(function () {
                $.ajax({
                    url:"_ajax2.do",
                    dataType:"json",
                    contentType:"application/json",
                    data:{name:'张三',age:21},
                    success:function (data) {
                        $("#pid").html("")
                        var json = JSON.stringify(data);
                        $("#pid").append(json).append("<br/>")
                    }
                })
            })
        })
    </script>
</head>
    <body>
    <%
        SimpleDateFormat sim=new SimpleDateFormat("yyyy年MM月dd日 a hh点mm分ss秒");
        String newTime = sim.format(new Date());
    %>
    现在是：<%=newTime %>
        <br />
        <br />
        <br />
        <h3 align="center">滕王高阁临江渚，佩玉鸣鸾罢歌舞。</h3>

        <h3 align="center"> 画栋朝飞南浦云，珠帘暮卷西山雨。</h3>

        <h3 align="center"> 闲云潭影日悠悠，物换星移几度秋。</h3>

        <h3 align="center"> 阁中帝子今何在？槛外长江空自流。</h3>

        <br />
        <br />
        <br />
        <button id="btn" align="center">发起异步请求</button>
        <br />
        <button id="btn2" align="center">发起异步请求2</button>
        <p id="pid"> <p/>
        <br />
        <img src="images/1.jpeg" height="300" width="400">
        <img src="images/2.jpeg" height="300" width="400">
        <img src="images/3.jpeg" height="300" width="400">
        <img src="images/4.jpeg" height="300" width="400">
        <img src="images/5.jpeg" height="300" width="400">
        <img src="images/6.jpg"  height="300" width="400">
        <img src="images/7.jpeg" height="300" width="400">
        <img src="images/8.jpeg" height="300" width="400">
        <br />
        <br />
        <br />
    </body>
</html>
