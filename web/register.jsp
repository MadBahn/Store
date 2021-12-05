<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>注册</title>
</head>

<body>
<!-- 头部导航栏部分  start -->
<%
    TypeImpl _ti = new TypeImpl();
    List<Type> typei = _ti.query();
%>
<%@include file="common/navbar.jsp"%>

<!-- 注册页中间部分 -->
<div class="login-background" style="height: 682px;">
    <div class="reg-content-box" style="width: 1200px; min-height: 216px;">
        <div class="form-login-box" style="right: 0px;">
            <div class="login-regi-title">
                <h2 class="regi-user">用户注册</h2>
            </div>
            <form action="register" method="post">
                <div class="form-content">
                    <ul class="reister-user">
                        <li>
                            <input type="text" name="loginName" autocomplete="off" autofocus="" maxlength="11" data-required="0" placeholder="输入手机号" id="telephone" tabindex="1">
                            <i></i>
                        </li>
                        <%if(request.getAttribute("error_id") != null){%>
                            <li class="err-text">
                                    <span>
                                        <i></i>
                                        <%=request.getAttribute("error_id")%>
                                    </span>
                            </li>
                        <%}%>
                        <li>
                            <input type="password" name="password" autocomplete="off" maxlength="20" data-required="0" placeholder="密码：请输入8～20字符" id="password" tabindex="2">
                            <i></i>
                        </li>
                        <%if(request.getAttribute("error_pw") != null){%>
                            <li class="err-text">
                                <span>
                                        <i></i>
                                        <%=request.getAttribute("error_pw")%>
                                    </span>
                            </li>
                        <%}%>
                        <li>
                            <input type="password" name="rePassword" autocomplete="off" maxlength="20" placeholder="确认密码" data-required="0" id="rePassword" tabindex="3">
                            <i></i>
                        </li>
                        <%if(request.getAttribute("error_repw") != null){%>
                            <li class="err-text">
                                <span>
                                        <i></i>
                                        <%=request.getAttribute("error_repw")%>
                                    </span>
                            </li>
                        <%}%>
                        <li>
                            <input id="email" name="email" placeholder="请输入邮箱" data-required="0" class="hasDatepicker">
                        </li>
                        <%if(request.getAttribute("error_email") != null){%>
                        <li class="err-text">
                            <span>
                                <i></i>
                                <%=request.getAttribute("error_email")%>
                            </span>
                        </li>
                        <%}%>
                        <li>
                            <input id="birthday" type="date" name="birthday" data-toggle="date" placeholder="请选择生日" data-required="0" class="hasDatepicker">
                        </li>
                        <%if(request.getAttribute("error_date") != null){%>
                            <li class="err-text">
                                <span>
                                    <i></i>
                                    <%=request.getAttribute("error_date")%>
                                </span>
                            </li>
                        <%}%>
                        <li>
                            <input type="submit" class="login-button" value="注册" id="goRegister">
                        </li>
                    </ul>
                </div>
                <div class="reading-protocol">
                    <label>
                        <input type="checkbox" name="agree" checked>
                        &nbsp;已阅读并同意
                    </label>
                    <a href="#">21客会员协议</a>和
                    <a href="#">隐私保护政策</a>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp"%>
</body>
</html>
