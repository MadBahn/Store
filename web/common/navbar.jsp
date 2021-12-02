<%@ page import="com.model.Type" %>
<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="com.model.Goods" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/2
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <div class="inner">
        <div class="logo">
            <img src="img/logo.png" width="120px" height="44px" alt="21cake 蛋糕官网">
        </div>
        <ul class="nav">
            <li><a href="index.jsp" target="_blank">首页</a></li>
<%--            <%for(Type item: typei){%>--%>
<%--            <li><a href="class.jsp"><%=item.getType_name()%></a></li>--%>
<%--            <%}%>--%>
<%--            <li>--%>
<%--                <form action="search" method="post">--%>
<%--                    <input name="search" type="text" style="width: 120px" placeholder="请输入商品关键字">--%>
<%--                    <input value="检索" type="submit"/>--%>
<%--                </form>--%>
<%--            </li>--%>
            <li><a href="class.jsp" target="_blank">商品</a></li>
        </ul>
        <ul class="join">
            <li><a href="login.html">登录</a>/<a href="register.html">注册</a></li>
            <li class="cart">
                <a href="cart.html"><i></i></a></li>
        </ul>
    </div>
</header>
