<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: alan.wang
  Date: 2018/12/12
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>易买网 - 首页</title>
  <link type="text/css" rel="stylesheet" href="css/style.css" />
  <script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
  <%--<script type="text/javascript" src="scripts/function.js"></script>--%>
  <script type="text/javascript">
      $(function($) {
          toPage(0);
      });
      var currentPageCount = 1;//最大页码
      var currentPageNo = 1;//当前的页码

      function toPage(num)
      {
          if(num == -1 && currentPageNo == 1)
          {
              return;
          } else if(num == 1 && currentPageNo == currentPageCount)
          {
              return;
          }

          currentPageNo = currentPageNo + num;
          $.get("/selectByPage?pageNo=" + currentPageNo + "&pageSize=8" , function(pageHelper){
              var html = "";
              for(var i = 0 ; i < pageHelper.data.length ; i++){
                  var data = pageHelper.data;
                  html += "<li>\n" +
                      "          <dl>\n" +
                      "            <dt><a href=\"product-view.html\"  target=\"_self\"><img src=\"images/product/" + data[i].fileName + "\" /></a></dt>\n" +
                      "            <dd class=\"title\"><a href=\"product-view.html\" target=\"_self\">" + data[i].name + "</a></dd>\n" +
                      "            <dd class=\"price\">￥" + data[i].price + "</dd>\n" +
                      "          </dl>\n" +
                      "        </li>";
              }
              $("#ul-product").html(html);
              currentPageCount = pageHelper.pageCount;
              $("#span-pageCount").html(pageHelper.pageCount);
          });
      }

  </script>
</head>
<body>
<div id="welcomeImage">
  <img width="100%" height="150" src="images/banner.jpg" alt="welcome">
</div>
<div id="header" class="wrap">
  <div id="logo"><img src="images/logo.gif" /></div>
  <div class="help"><a href="shopping.html" id="shoppingBag" class="shopping">购物车X件</a><a href="login.html">登录</a><a class="button" id="logout" href="javascript:void(0);">注销</a><a href="register.html">注册</a><a href="guestbook.html">留言</a><a href="manage/index.html">后台管理</a></div>
  <div class="navbar">
    <ul class="clearfix">
      <li class="current"><a href="#">首页</a></li>
      <li><a href="#">图书</a></li>
      <li><a href="#">百货</a></li>
      <li><a href="#">品牌</a></li>
      <li><a href="#">促销</a></li>
    </ul>
  </div>
</div>
<div id="childNav">
  <div class="wrap">
    <ul class="clearfix">
      <li class="first"><a href="#">音乐</a></li>
      <li><a href="#">影视</a></li>
      <li><a href="#">少儿</a></li>
      <li><a href="#">动漫</a></li>
      <li><a href="#">小说</a></li>
      <li><a href="#">外语</a></li>
      <li><a href="#">数码相机</a></li>
      <li><a href="#">笔记本</a></li>
      <li><a href="#">羽绒服</a></li>
      <li><a href="#">秋冬靴</a></li>
      <li><a href="#">运动鞋</a></li>
      <li><a href="#">美容护肤</a></li>
      <li><a href="#">家纺用品</a></li>
      <li><a href="#">婴幼奶粉</a></li>
      <li><a href="#">饰品</a></li>
      <li class="last"><a href="#">Investor Relations</a></li>
    </ul>
  </div>
</div>
<div id="main" class="wrap">
  <div class="lefter">
    <div class="box">
      <h2>商品分类</h2>
      <dl>
        <dt>图书音像</dt>
        <dd><a href="product-list.html">图书</a></dd>
        <dd><a href="product-list.html">音乐</a></dd>
        <dt>百货</dt>
        <dd><a href="product-list.html">运动健康</a></dd>
        <dd><a href="product-list.html">服装</a></dd>
        <dd><a href="product-list.html">家居</a></dd>
        <dd><a href="product-list.html">美妆</a></dd>
        <dd><a href="product-list.html">母婴</a></dd>
        <dd><a href="product-list.html">食品</a></dd>
        <dd><a href="product-list.html">手机数码</a></dd>
        <dd><a href="product-list.html">家具首饰</a></dd>
        <dd><a href="product-list.html">手表饰品</a></dd>
        <dd><a href="product-list.html">鞋包</a></dd>
        <dd><a href="product-list.html">家电</a></dd>
        <dd><a href="product-list.html">电脑办公</a></dd>
        <dd><a href="product-list.html">玩具文具</a></dd>
        <dd><a href="product-list.html">汽车用品</a></dd>
      </dl>
    </div>
    <div class="spacer"></div>
    <div class="last-view">
      <h2>最近浏览</h2>
      <dl class="clearfix">
        <dt><img src="images/product/10_small.jpg" /></dt>
        <dd><a href="product-view.html"  target="_self">利仁2018M福满堂电饼铛 好用实惠</a><a href="product-view.html"></a></dd>
        <dt>&nbsp;</dt>
        <dd>&nbsp;</dd>
      </dl>
    </div>
  </div>
  <div class="main">
    <div class="price-off">
      <div class="slideBox">
        <ul id="slideBox">
          <li><img src="images/product/banner_1.jpg"/></li>
          <li><img src="images/product/banner_2.jpg"/></li>
          <li><img src="images/product/banner_3.jpg"/></li>
          <li><img src="images/product/banner_4.jpg"/></li>
        </ul>
      </div>
      <h2>商品列表</h2>
      <ul class="product clearfix" id="ul-product">

<!--
        <li>
          <dl>
            <dt><a href="product-view.html"  target="_self"><img src="images/product/xx.jpg" /></a></dt>
            <dd class="title"><a href="product-view.html" target="_self">a</a></dd>
            <dd class="price">￥22</dd>
          </dl>
        </li>
-->

      </ul>
      <div><h4>总页数:<span id="span-pageCount"></span></h4>
        <h4 onclick="toPage(-1)">上一页</h4>
        <h4 onclick="toPage(1)">下一页</h4>
      </div>
    </div>
    <div class="side">
      <div class="spacer"></div>
      <div class="news-list">
        <h4>新闻动态</h4>
        <ul>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
          <li><a href="news-view.html"  target="_self">抢钱啦</a></li>
        </ul>
      </div>
    </div>
    <div class="spacer clear"></div>
  </div>
</div>
<div id="footer">
  Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>


