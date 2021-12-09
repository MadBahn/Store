<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/6
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <title>用户管理</title>
</head>
<body>
<%
    TypeImpl _ti = new TypeImpl();
    List<Type> typei = _ti.query();
%>
<%@include file="common/navbar.jsp"%>
<%
    if(useri == null){
        response.sendRedirect("login.jsp");
    }else{%>
<div class="class-content-box" style="min-height: 216px;">
    <h>账号修改</h>
    <a href="index.jsp">返回主页</a>
    <form action="" method="post">
        当前账号：
        <input name="id" value=""/>
        <br />
        新账号：
        <input name="n_id" type="password"/>
        <br />
        <input type="submit" value="确定">
    </form>
</div>
<%}%>

<%@include file="common/footer.jsp"%>
</body>
</html>

