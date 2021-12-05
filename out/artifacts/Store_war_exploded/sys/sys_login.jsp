<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/11/25
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台登录</title>
</head>
<body>
    <div style="width: 600px; margin: 0 auto;">
        <h1>糕点系统后台登录</h1>
        <form action="admin_login" method="post">
            用户名
            <input name="admin_name"/>
            <br>
            密码
            <input name="admin_pwd" type="password"/>
            <br>
            <%=request.getAttribute("error")==null?"":request.getAttribute("error")%>
            <br>
            <input type="submit" value="登录"/>
        </form>
    </div>
</body>
</html>
