<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.model.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="com.store.impl.GoodsImpl" %>
<%@ page import="com.service.GoodsService" %>
<%@ page import="com.store.impl.TypeImpl" %>
<%@ page import="com.model.Type" %>
<%@ page import="com.store.impl.PartitionImpl" %>
<%@ page import="com.model.Partition" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/10/28
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style.css">
  <title>21cake</title>
</head>

<body>
<%
  TypeImpl _ti = new TypeImpl();
  GoodsImpl gi = new GoodsImpl();
  PartitionImpl pi = new PartitionImpl();
  List<Goods> goodsi = gi.query();
  List<Type> typei = _ti.query();
%>
<%@include file="common/navbar.jsp" %>
<!-- 轮播图部分 -->
<div class="slider">
  <img src="img/slider-1.jpg" alt="">
  <img src="#" alt="">
  <img src="#" alt="">
</div>
<%--    从数据库取出--%>
<!-- List<Partition> tmp_p = pi.findByIndex(item.getPartition_id());
                Partition p = tmp_p.get(0); -->
<div class="content">
  <div class="home-module home-menu">
    <a href="#1">
      <img src="img/menu-1.jpg" alt="新品" title="新品">
    </a>
    <a href="#2">
      <img src="img/menu-2.jpg" alt="新品" title="新品">
    </a>
    <a href="#3">
      <img src="img/menu-3.jpg" alt="新品" title="新品">
    </a>
    <a href="#4">
      <img src="img/menu-4.jpg" alt="新品" title="新品">
    </a>
  </div>
  <!-- 新品专区  P005-->
  <div class="home-module home-colorful" id="1">
<%--    <%=goodsi.toString()%>--%>
    <h4 class="home-module-title">
      新品
      <span>/</span>
      <span>专区</span>
    </h4>
    <div class="colorful-top-banner">
      <a href="${pageContext.request.contextPath}/advanced?partitionid=P005&typeid=&search=" target="_blank">
        <img src="img/menu-top-1.jpg" alt="">
      </a>
    </div>
    <div class="colorful-product-list">
      <div class="list-box">
        <ul>
          <%for(Goods item: goodsi){
            List<Partition> l_p = pi.findByIndex("P005");
            Partition tmp_p = l_p.get(0);
//            tmp_p.getPartition_id()
            if(item.getPartition_id().equals("P005")){%>
          <li>
            <a href="#">
              <img src="<%=item.getGoods_photourl()%>" alt="">
            </a>
            <a href="#">
              <h6><%=item.getGoods_name()%></h6>
            </a>
            <a href="">
              <p><%=item.getGoods_info()%></p>
            </a>
            <div class="cart-info">
              <span class="spec">¥<%=item.getGoods_price()%></span>
              <a href="#" class="add-cart">加入购物车</a>
            </div>
          </li>
          <%}
          }%>
        </ul>
      </div>
    </div>
  </div>
  <!-- 生日专区  P002-->
  <div class="home-module home-colorful" id="2">
    <h4 class="home-module-title">
      生日
      <span>/</span>
      <span>专区</span>
    </h4>
    <div class="colorful-top-banner">
      <a href="${pageContext.request.contextPath}/advanced?partitionid=P002&typeid=&search=" target="_blank">
        <img src="img/menu-top-2.jpg" alt="">
      </a>
    </div>
    <div class="colorful-product-list">
      <div class="list-box">
        <ul>
          <%for(Goods item: goodsi){
            List<Partition> l_p = pi.findByIndex("P002");
            Partition tmp_p = l_p.get(0);
//            System.out.println(l_p.toArray());
//            tmp_p.getPartition_id()
          if(item.getPartition_id().equals("P002"))
            {%>
          <li>
            <a href="#">
              <img src="<%=item.getGoods_photourl()%>" alt="">
            </a>
            <a href="#">
              <h6><%=item.getGoods_name()%></h6>
            </a>
            <a href="">
              <p><%=item.getGoods_info()%></p>
            </a>
            <div class="cart-info">
              <span class="spec">¥<%=item.getGoods_price()%></span>
              <a href="#" class="add-cart">加入购物车</a>
            </div>
          </li>
          <%}
          }%>
        </ul>
      </div>
    </div>
  </div>
  <!-- 儿童专区  P004-->
  <div class="home-module home-colorful" id="3">
    <h4 class="home-module-title">
      儿童
      <span>/</span>
      <span>专区</span>
    </h4>
    <div class="colorful-top-banner">
      <a href="${pageContext.request.contextPath}/advanced?partitionid=P004&typeid=&search=" target="_blank">
        <img src="img/menu-top-3.jpg" alt="">
      </a>
    </div>
    <div class="colorful-product-list">
      <div class="list-box">
        <ul>
          <%for(Goods item: goodsi){
            List<Partition> l_p = pi.findByIndex("P004");
            Partition tmp_p = l_p.get(0);
//            tmp_p.getPartition_id()
            if(item.getPartition_id().equals("P004"))
            {%>
          <li>
            <a href="#">
              <img src="<%=item.getGoods_photourl()%>" alt="">
            </a>
            <a href="#">
              <h6><%=item.getGoods_name()%></h6>
            </a>
            <a href="">
              <p><%=item.getGoods_info()%></p>
            </a>
            <div class="cart-info">
              <span class="spec">¥<%=item.getGoods_price()%></span>
              <a href="#" class="add-cart">加入购物车</a>
            </div>
          </li>
          <%}
          }%>
        </ul>
      </div>
    </div>
  </div>
  <!-- 聚会专区  P003-->
  <div class="home-module home-colorful" id="4">
    <h4 class="home-module-title">
      聚会
      <span>/</span>
      <span>专区</span>
    </h4>
    <div class="colorful-top-banner">
      <a href="${pageContext.request.contextPath}/advanced?partitionid=P003&typeid=&search=" target="_blank">
        <img src="img/menu-top-4.jpg" alt="">
      </a>
    </div>
    <div class="colorful-product-list">
      <div class="list-box">
        <ul>
          <%for(Goods item: goodsi){
            List<Partition> l_p = pi.findByIndex("P003");
            Partition tmp_p = l_p.get(0);
//            tmp_p.getPartition_id()
            if(item.getPartition_id().equals("P003"))
            {%>
          <li>
            <a href="#">
              <img src="<%=item.getGoods_photourl()%>" alt="">
            </a>
            <a href="#">
              <h6><%=item.getGoods_name()%></h6>
            </a>
            <a href="">
              <p><%=item.getGoods_info()%></p>
            </a>
            <div class="cart-info">
              <span class="spec">¥<%=item.getGoods_price()%></span>
              <a href="#" class="add-cart">加入购物车</a>
            </div>
          </li>
          <%}
          }%>
        </ul>
      </div>
    </div>
  </div>
  <br>

  <%@include file="common/footer.jsp"%>
</div>
</body>
</html>
