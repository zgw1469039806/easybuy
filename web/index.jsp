<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>易买网 - 首页</title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="welcomeImage">
    <img width="100%" height="150" src="images/banner.jpg" alt="welcome">
</div>
<div id="header" class="wrap">
    <div id="logo"><img src="images/logo.gif"/></div>
    <div class="help"><a href="shopping.html" id="shoppingBag" class="shopping">购物车X件</a><a href="login.jsp">登录</a><a
            class="button" id="logout" href="javascript:void(0);">注销</a><a href="register.jsp">注册</a><a
            href="guestbook.html">留言</a><a href="/quePro">后台管理</a></div>
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
            <dl id="zuijia">
                <dt>图书音像</dt>
                <dd><a href="product-list.jsp">图书</a></dd>
                <dd><a href="product-list.jsp">音乐</a></dd>
                <dt>百货</dt>
            </dl>
        </div>

        <script type="text/javascript">
            $.ajax({
                url: "/selAll",
                type: "GET",
                data: {},
                dateType: "JSON",
                success: function (result) {
                    for (var i = 0; i < result.length; i++) {
                        var _dl = $('  <dd><a href="javascript:;" onclick="show(1,'+result[i].type+','+result[i].id+')">' + result[i].cname + '</a></dd>');
                        $("#zuijia").append(_dl);
                    }
                }
            });
        </script>
        <div class="spacer"></div>
        <div class="last-view">
            <h2>最近浏览</h2>
            <dl class="clearfix">
                <dt><img src="images/product/10_small.jpg"/></dt>
                <dd><a href="product-view.html" target="_self">利仁2018M福满堂电饼铛 好用实惠</a><a href="product-view.html"></a>
                </dd>
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
            <ul class="product clearfix" id="shop">


            </ul>
        </div>

        <script type="text/javascript">
            var firs1 = 0;
            $(function () {
                show(firs1,0)
            })

            function show(firs1,type,id) {
                $.ajax({
                    url: "/selPage",
                    type: "GET",
                    data: {firs: firs1,type:type,id:id},
                    dateType: "JSON",
                    success: function (result) {

                        var _Da = '';
                        for (var i = 0; i < result.length; i++) {
                            _Da += '<li>\n' +
                                '           ' +
                                '         <dl>\n' +
                                '                        <dt><a href="product-view.html" target="_self"><img src="images/product/"/></a>\n' +
                                '                        </dt>\n' +
                                '                        <dd class="title"><a href="javascript:;" onclick="">' + result[i].name + '</a></dd>\n' +
                                '                        <dd class="price">￥' + result[i].price + '</dd>\n' +
                                '                    </dl>\n' +
                                '                </li>';

                        }
                        _Da += '<li><a href="javascript:;" onclick="show(firs1--)">上一页</a> </li>';

                        _Da += '<li><a href="javascript:;" onclick="show(firs1++)">下一页</a> </li>';
                        $("#shop").html(_Da);
                    }
                });
            }

        </script>
        <div class="side">
            <div class="spacer"></div>
            <div class="news-list">
                <h4>新闻动态</h4>
                <ul>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
                    <li><a href="news-view.html" target="_self">抢钱啦</a></li>
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


