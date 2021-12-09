<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.model.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Partition" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="com.model.Type" %>
<%@ page import="com.store.impl.TypeImpl" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/11/25
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
</head>
<body>
<div style="min-width: 600px;margin: 0 auto;">
    <a href="sys_index.jsp">商品</a><a href="sys_order_manage.jsp">订单</a>
    <h1>商品管理</h1>
    <%
        if(request.getSession().getAttribute("admin?")==null){
            response.sendRedirect("../sys");
        }

        GoodsImpl gi = new GoodsImpl();
        PartitionImpl pi = new PartitionImpl();
        TypeImpl ti = new TypeImpl();
        List<Goods> gl = gi.query();
    %>
    <a href="sys_goods_add.jsp">添加</a>
    <table style="border: 1px solid;text-align: center">
        <thead>
        <tr>
            <th width="10%">id</th>
            <th width="10%">名称</th>
            <th width="10%">价格</th>
            <th width="10%">描述</th>
            <th width="10%">库存</th>
            <th width="10%">图片</th>
            <th width="10%">分区</th>
            <th width="10%">类型</th>
            <th width="10%">操作</th>
        </tr>
        </thead>
        <tbody>
        <%for(Goods item:gl){
            Partition p = pi.findByIndex(item.getPartition_id()).get(0);
            Type t = ti.findByIndex(item.getType_id()).get(0);
        %>
        <tr>

            <td width="10%"><%=item.getGoods_id()%>
            </td>
            <td width="10%"><%=item.getGoods_name()%>
            </td>
            <td width="10%">￥<%=item.getGoods_price()%>
            </td>
            <td width="10%"><%=item.getGoods_info()%>
            </td>
            <td width="10%"><%=item.getGoods_stock()%>
            </td>
            <td width="10%">
                <img style="width: 50px;height: 50px" src="<%=item.getGoods_photourl()%>">
            </td>
            <td width="10%"><%=p.getPartition_name()%>
            </td>
            <td width="10%"><%=t.getType_name()%>
            </td>
            <td width="10%">
                <a href="./sys_goods_edit.jsp?id=<%=item.getGoods_id()%>">修改</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:void(0);" onclick="Wait('<%=item.getGoods_id()%>')">删除</a>
            </td>
            <%}%>
        </tr>
        </tbody>
    </table>
    <script>
        function Wait(id){
            if(window.confirm("是否删除商品："+id+"?")){
                window.location.href = "../goods_manage?action=del&id="+id;
            }
        }
    </script>


</div>
</body>
</html>
