<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/11/29
  Time: 8:55
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
    <title>登录</title>
</head>

<body>
<!-- 头部导航栏部分  start -->
<%
    TypeImpl _ti = new TypeImpl();
    List<Type> typei = _ti.query();
%>
<%@include file="common/navbar.jsp"%>

<!-- 登录页中间部分  start -->
<div class="login-background" style="height: 682px;">
    <div class="reg-content-box" style="width: 1200px; min-height: 216px;">
        <div class="form-login-box" style="right: 0px;">
            <div class="login-regi-title">
                <h2 class="regi-user">登录</h2>
            </div>
            <form action="login" method="post">
                <div class="form-content">
                    <ul class="reister-user">
                        <li>
                            <input type="text" name="login" autocomplete="off" autofocus="" maxlength="11" placeholder="请输入您的账号" id="telephone" tabindex="1" value="<%=request.getAttribute("regiName") == null ? "":request.getAttribute("regiName")%>">
                            <i></i>
                        </li>
                        <li>
                            <input type="password" name="password" autocomplete="off" maxlength="20" placeholder="输入密码" id="password" tabindex="2" value="<%=request.getAttribute("regiPwd") == null ? "":request.getAttribute("regiPwd")%>">
                            <i></i>
                        </li>
                        <%=request.getAttribute("error")==null?"":(String) request.getAttribute("error")%>
                        <div class="jvli">
                        </div>
                        <li>
                            <input type="submit" class="login-button" value="登录" id="goRegister">
                        </li>
                    </ul>
                </div>
                <div class="reading-protocol">
                    <label>
                        <input type="checkbox" name="agree" checked>
                        &nbsp;记住账号
                    </label>
                    <p><a href="zhaohui.html">忘记密码</a></p>
                    <p><a href="register.jsp">去注册</a></p>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 底部footer  start -->
<%@include file="common/footer.jsp"%>
<!-- 底部footer  end -->
</body>

</html>
