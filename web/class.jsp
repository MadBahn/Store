<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.model.Type" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.Goods" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.model.Partition" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/11/25
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <title>分类</title>
</head>

<body>
<!-- 头部导航栏部分  start -->
<%--<header>--%>
    <%
        TypeImpl _ti = new TypeImpl();
        GoodsImpl gi = new GoodsImpl();
        PartitionImpl pi = new PartitionImpl();
        List<Goods> test2 = new ArrayList<>();
        test2 = gi.query();
        List<Partition> par_li = pi.query();
        List<Type> typei = _ti.query();
    %>

<%@include file="common/navbar.jsp" %>

<div class="class-content-box" style="min-height: 216px;">
    <div class="pro-list-content">
        <%
            String order = (String) request.getAttribute("action");
            String index = request.getAttribute("index") == null ? "" : (String) request.getAttribute("index");
            String typeindex = request.getAttribute("typeindex") == null ? "": (String) request.getAttribute("typeindex");
            String parindex = request.getAttribute("parindex") == null ? "": (String) request.getAttribute("parindex");
            if(order!=null) {
                if (order.equals("search")) {
                    test2 = gi.findByIndex(index);
                } else if (order.equals("type")) {
                    test2 = gi.queryByType(typeindex);
                } else if(order.equals("partition")){
                    test2 = gi.queryByPartition(parindex);
                } else if(order.equals("advanced")){
                    test2 = gi.advancedQuery(typeindex,parindex,index);
                }
            }
            else{
                test2 = gi.query();
            }
        %>
        <div class="pro-list-filter">
            <dl class="cat-list">
                <dt>分类：</dt>
                <dd class="active" onclick="">
                    <a href="${pageContext.request.contextPath}/advanced?typeid=&partitionid=<%=parindex%>&search=<%=index%>">全部分类</a>
                </dd>
                <%for(Type item: typei){%>
                    <dd class="active">
                        <a href="${pageContext.request.contextPath}/advanced?typeid=<%=item.getType_id()%>&partitionid=<%=parindex%>&search=<%=index%>">
                            <%if(item.getType_id().equals(typeindex)){%>
                            ==
                            <%}%>
                            <%=item.getType_name()%>
                        </a>
                    </dd>
                <%}%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </dl>
            <dl class="tag-list">
                <dt>分区：</dt>
                <dd class="active">
                    <a href="${pageContext.request.contextPath}/advanced?typeid=<%=typeindex%>&partitionid=&search=<%=index%>">全部分区</a>
                </dd>
                <%for(Partition item:par_li){
                if(!item.getPartition_name().equals("测试")){%>
                    <dd class="active">
                        <a href="${pageContext.request.contextPath}/advanced?typeid=<%=typeindex%>&partitionid=<%=item.getPartition_id()%>&search=<%=index%>">
                            <%if(item.getPartition_id().equals(parindex)){%>==<%}%>
                            <%=item.getPartition_name()%></a>
                    </dd>
                <%}
                }%>
            </dl>
            <dl class="tag-list">
                <dt>搜索：</dt>
                <dd class="active">
                    <form action="advanced" method="get">
                        <input name="search" value="<%=index%>" type="text" style="width: 120px" placeholder="请输入商品关键字">
                        <input name="typeid" value="<%=typeindex%>" hidden>
                        <input name="partitionid" value="<%=parindex%>" hidden>
                        <input value="检索" type="submit"/>
                    </form>
                </dd>
            </dl>
        </div>
        <div class="pro-list-box">
            <ul class="pro-list-pr">
                <%
                    for(Goods item : test2){
                List<Partition> tmp_p = pi.findByIndex(item.getPartition_id());
                Partition p = tmp_p.get(0);%>
                <li>
                    <div class="pro-list-su">
                        <a href="" class="goods-list">
                            <img src=<%=item.getGoods_photourl()%> alt="" class="lazy" style="display: inline;">
                            <h3><%=item.getGoods_name()%></h3>
                            <span>¥<%=item.getGoods_price()%></span>
                        </a>
                        <div class="label-entrance">
                            <a href="#"><%=p.getPartition_name()%></a>
                        </div>
                        <a href="" class="pro-list-addcart">
                            <i></i> 加入购物车
                        </a>
                        <div class="label">
                            <img src="img/label-1.png" alt="">
                        </div>
                    </div>
                </li>
                <%}%>
            </ul>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp"%>

</body>

</html>