<%@ page import="com.store.impl.ItemImpl" %>
<%@ page import="com.model.Item" %>
<%@ page import="java.util.List" %>
<%@ page import="com.store.impl.CartImpl" %>
<%@ page import="com.model.Cart" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/5
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单管理</title>
</head>
<body>
<a href="sys_index.jsp">商品</a><a href="sys_order_manage.jsp">订单</a>
<h1>订单管理</h1>
<%
    if(request.getSession().getAttribute("admin?")==null){
        response.sendRedirect("../sys");
    }

    CartImpl ci = new CartImpl();
    ItemImpl ii = new ItemImpl();
    List<Item> il = ii.query();

%>
<table style="border: 1px solid;text-align: center">
    <thead>
    <tr>
        <th width="10%">id</th>
        <th width="10%">名称</th>
        <th width="10%">下单时间</th>
        <th width="10%">地址</th>
        <th width="10%">购物车id</th>
        <th width="10%">购物车状态</th>
    </tr>
    </thead>
    <tbody>
    <%for(Item item:il){
        List<Cart> i = ci.displayItem(item.getCart_id());
        Cart ic = i.get(0);
    %>
    <tr>
        <td width="10%"><%=item.getItem_id()%>
        </td>
        <td width="10%"><%=item.getGoods_name()%>
        </td>
        <td width="10%"><%=item.getItem_time()%>
        </td>
        <td width="10%"><%=item.getItem_address()%>
        </td>
        <td width="10%"><%=item.getCart_id()%>
        </td>
        <td width="10%"><%=ic.getDealt()%>
        </td>
        <td width="10%">
            <a href="../do_deal?cart=<%=item.getCart_id()%>">执行</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="javascript:void(0);">取消</a>
        </td>
        <%}%>
    </tr>
    </tbody>
</table>
</body>
</html>
