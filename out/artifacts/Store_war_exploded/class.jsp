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
        List<Type> typei = _ti.query();
    %>
<%--    <%@include file="include_test.jsp"%>--%>
<%--    <div class="inner">--%>
<%--        <div class="logo">--%>
<%--            <img src="img/logo.png" width="120px" height="44px" alt="21cake 蛋糕官网">--%>
<%--        </div>--%>
<%--        <ul class="nav">--%>
<%--            <li><a href="index.jsp">首页</a></li>--%>
<%--            <%for(Type item:typei){%>--%>
<%--            <li><a href="class.jsp"><%=item.getType_name()%></a></li>--%>
<%--            <%}%>--%>
<%--            <li>--%>
<%--                <form action="search" method="post">--%>
<%--                    <input name="search" type="text" style="width: 120px" placeholder="请输入商品关键字">--%>
<%--                    <input value="检索" type="submit"/>--%>
<%--                </form>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--        <ul class="join">--%>
<%--            <li><a href="#">APP下载</a></li>--%>
<%--            <li><a href="#">成都</a><i class="city"></i></li>--%>
<%--            <li><a href="#">消息</a></li>--%>
<%--            <li><a href="login.html">登录</a>/<a href="register.html">注册</a></li>--%>
<%--            <li class="cart">--%>
<%--                <a href="cart.html"><i></i></a></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</header>--%>

<%@include file="common/navbar.jsp" %>

<div class="class-content-box" style="min-height: 216px;">
    <div class="pro-list-content">
        <div class="pro-list-filter">
            <dl class="cat-list">
                <dt>分类：</dt>
                <dd class="active">全部分类</dd>
                <%for(Type item: typei){%>
                    <dd class="active"><%=item.getType_name()%></dd>
                <%}%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </dl>
            <dl class="tag-list">
                <dt>搜索：</dt>
                <dd class="active">
                    <form action="search" method="post">
                        <input name="search">
                        <input type="submit" value="确认">
                    </form>
                </dd>
<%--                <dd class="active">乳脂奶油</dd>--%>
<%--                <dd class="active">慕斯</dd>--%>
<%--                <dd class="active">慕斯乳酪</dd>--%>
<%--                <dd class="active">巧克力</dd>--%>
<%--                <dd class="active">坚果</dd>--%>
<%--                <dd class="active">水果</dd>--%>
<%--                <dd class="active">含酒</dd>--%>
<%--                <dd class="active">咖啡</dd>--%>
<%--                <dd class="active">冰淇淋</dd>--%>
            </dl>
        </div>
        <div class="pro-list-box">
            <ul class="pro-list-pr">
                <%

//                    从Servlet获取指令数据，如果为空则直接读取数据库
                    String order = (String) request.getAttribute("action");
                    if(order!=null&&order.equals("search")){
                      test2 = gi.findByIndex((String) request.getAttribute("index"));
                    }
                    else{
                      test2 = gi.query();
                    }
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