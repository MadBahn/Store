<%@ page import="com.model.Goods" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.model.Partition" %>
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
    <title>修改商品</title>
</head>
<body>
<%
    if(request.getSession().getAttribute("admin?")==null){
        response.sendRedirect("/sys");
    }

    GoodsImpl gi = new GoodsImpl();
    String id = request.getParameter("id");
    Goods gr = gi.editGoods(request.getParameter("id")).get(0);
    TypeImpl ti = new TypeImpl();
    PartitionImpl pi = new PartitionImpl();
    List<Type> tl = ti.query();
    List<Partition> pl = pi.query();
%>
<form action="../goods_manage" method="get">
    <input name="action" value="edit" type="hidden">
    id
    <input name="id" value="<%=gr.getGoods_id()%>" readonly>
    <br>
    商品名
    <input name="name" value="<%=gr.getGoods_name()%>">
    <br>
    价格
    <input name="price" value="<%=gr.getGoods_price()%>">
    <br>
    描述
    <input name="info" value="<%=gr.getGoods_info()%>">
    <br>
    库存
    <input name="stock"  value="<%=gr.getGoods_stock()%>">
    <br>
    图片
    <input name="photo_url"  value="<%=gr.getGoods_photourl()%>">
    <br>
    分区
    <select name="partition">
        <%for(Partition i:pl){%>
        <option value="<%=i.getPartition_id()%>" <%=i.getPartition_id().equals(gr.getPartition_id()) ?"selected":""%>>
            <%=i.getPartition_name()%>
        </option>
        <%}%>
    </select>
    <br>
    类型
    <select name="type">
        <%for(Type i:tl){%>
        <option value="<%=i.getType_id()%>" <%=i.getType_id().equals(gr.getType_id()) ?"selected":""%>>
            <%=i.getType_name()%>
        </option>
        <%}%>
    </select>
    <input type="submit" value="确定">
</form>

</body>
</html>
