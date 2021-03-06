<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/4
  Time: 16:09
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
<%if(useri==null){
    response.sendRedirect("login.jsp");
}else{%>
<div class="class-content-box" style="min-height: 216px;">
    <h>信息修改</h>
    <form action="mo_user" method="post">
        姓名：
        <input name="name" value="<%=useri.getUser_name()==null?"":useri.getUser_name()%>"/>
        <br />
        性别：
        <select name="sex">
            <option value="m" <%=(useri.getUser_sex()!=null&&useri.getUser_sex().equals("m") )? "selected":""%>>男</option>
            <option value="f" <%=(useri.getUser_sex()!=null&&useri.getUser_sex().equals("f") ) ? "selected":""%>>女</option>
        </select>
        <br />
        生日：
        <input name="birthday" type="date" value="<%=useri.getUser_birthday() == null ? "":useri.getUser_birthday()%>"/>
        <br />
        电话号码：
        <input name="phone" value="<%=useri.getUser_phone() == null ? "" :useri.getUser_phone()%>"/>
        <br />
        邮箱：
        <input name="email" value="<%=useri.getUser_email() == null ? "" : useri.getUser_email()%>"/>
        <br />
        地址：
        <input name="address" value="<%=useri.getUser_address() == null ? "" : useri.getUser_address()%>"/>
        <br />
        <input type="submit" value="确定">
    </form>
    <a href="user_id.jsp">修改账号</a>
    &nbsp;&nbsp;&nbsp;
    <a href="user_password.jsp">修改密码</a>
</div>
<%}%>

    <%@include file="common/footer.jsp"%>
</body>
</html>
