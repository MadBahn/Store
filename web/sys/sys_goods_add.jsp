<%@ page import="com.model.Partition" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.model.Goods" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Type" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/12/5
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品</title>
</head>
<body>
<%
    if(request.getSession().getAttribute("admin?")==null){
        response.sendRedirect("../sys");
    }

    TypeImpl ti = new TypeImpl();
    PartitionImpl pi = new PartitionImpl();
    List<Type> tl = ti.query();
    List<Partition> pl = pi.query();
%>
<form action="../goods_manage" method="get">
    <input name="action" value="add" type="hidden">
    id
    <input name="id">
    <br>
    商品名
    <input name="name">
    <br>
    价格
    <input name="price">
    <br>
    描述
    <input name="info">
    <br>
    库存
    <input name="stock">
    <br>
    图片
    <input name="photo_url">
    <br>
    分区
    <select name="partition">
        <%for(Partition i:pl){%>
        <option value="<%=i.getPartition_id()%>">
            <%=i.getPartition_name()%>
        </option>
        <%}%>
    </select>
    <br>
    类型
    <select name="type">
        <%for(Type i:tl){%>
        <option value="<%=i.getType_id()%>">
            <%=i.getType_name()%>
        </option>
        <%}%>
    </select>
    <input type="submit" value="确定">
</form>

</body>
</html>
