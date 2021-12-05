<%@ page import="com.model.Type" %>
<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="com.model.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.User" %><%--
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
            <li><a href="class.jsp" target="_blank">全部</a></li>
            <%for(Type item: typei){%>
            <li><a href="${pageContext.request.contextPath}/advanced?typeid=<%=item.getType_id()%>&partitionid=&search="  target="_blank">
                <%=item.getType_name()%>
            </a></li>
            <%}%>
        </ul>
        <ul class="join">
            <%
                User useri = (User) session.getAttribute("USER");
                if(useri!=null){
            %>
            <li><b style="TEXT-ALIGN: right;font-size: 15px;font-weight:15;color: cornflowerblue;">欢迎:
                &nbsp;&nbsp;&nbsp;
                <%=useri.getUser_name() == null?"用户"+useri.getUser_id():useri.getUser_name()%></b>
                &nbsp;&nbsp;&nbsp;<a href="user_self_manage.jsp">管理</a>
                &nbsp;&nbsp;&nbsp;<a href="logout.jsp">退出</a></li>
            <li class="cart">
                <a href="cart.jsp"><i></i></a></li>
            <%}else{%>
            <li><a href="login.jsp">登录</a>/<a href="register.jsp">注册</a></li>
            <%}%>

        </ul>
    </div>
</header>
