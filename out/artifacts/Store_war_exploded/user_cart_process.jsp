<%@ page import="com.store.impl.CartImpl" %>
<%@ page import="com.model.Cart" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/6
  Time: 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
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
    <%--    <img style="align-items: center" src="img\child-cake-2.png">--%>
    <%
        CartImpl ci = new CartImpl();
        GoodsImpl gi = new GoodsImpl();
        List<Cart> cl = ci.displayProcess(useri);
    %>
    <%for(Cart item:cl){%>
    <div style="margin: 10px">
        <%--            <img src="<%=gi.editGoods(item.getCart_id()).get(0).getGoods_photourl()%>" sizes="100px">--%>
        <p>id：<%=item.getCart_id()%></p>
        <p>商品名：<%=item.getCart_information()%></p>
        <p>单价：<%=item.getCart_univalence()%></p>
        <p>状态：<%=item.getDealt()%></p>
    </div>
    <br><br><br>
    <%}%>
    <br><br><br>
</div>
<%}%>
<%@include file="common/footer.jsp"%>
</body>
</html>
