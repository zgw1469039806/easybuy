<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <title>易买网 - 首页</title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="images/logo.gif"/></div>
    <div class="help"><a href="shopping.html" class="shopping">购物车X件</a><a href="login.jsp">登录</a><a
            href="register.jsp">注册</a><a href="guestbook.html">留言</a><a href="indexs.jsp">后台管理</a></div>
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
<div id="position" class="wrap">
    您现在的位置：<a href="index.html">易买网</a> &gt; <a href="product-list.jsp">图书音像</a> &gt; 图书
</div>
<div id="main" class="wrap">
    <div class="lefter">
        <div class="box">
            <h2>商品分类</h2>
            <dl>
                <dt>图书音像</dt>
                <dd><a href="product-list.jsp">图书</a></dd>
                <dd><a href="product-list.jsp">音乐</a></dd>
                <dt>百货</dt>
                <dd><a href="product-list.jsp">运动健康</a></dd>
                <dd><a href="product-list.jsp">服装</a></dd>
                <dd><a href="product-list.jsp">家居</a></dd>
                <dd><a href="product-list.jsp">美妆</a></dd>
                <dd><a href="product-list.jsp">母婴</a></dd>
                <dd><a href="product-list.jsp">食品</a></dd>
                <dd><a href="product-list.jsp">手机数码</a></dd>
                <dd><a href="product-list.jsp">家具首饰</a></dd>
                <dd><a href="product-list.jsp">手表饰品</a></dd>
                <dd><a href="product-list.jsp">鞋包</a></dd>
                <dd><a href="product-list.jsp">家电</a></dd>
                <dd><a href="product-list.jsp">电脑办公</a></dd>
                <dd><a href="product-list.jsp">玩具文具</a></dd>
                <dd><a href="product-list.jsp">汽车用品</a></dd>
            </dl>
        </div>
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
            <script type="text/javascript">
                document.write("Cookie中记录的购物车商品ID：" + getCookie("product") + "，可以在动态页面中进行读取");
            </script>
        </div>
    </div>
    <div class="main">
        <div class="product-list">
            <h2>全部商品</h2>
            <div class="clear"></div>
            <ul class="product clearfix" id="lipage">


            </ul>
            <div><h4>总页数:<span id="conut"></span></h4>
                <h3 onclick="pagelist(-1)">上一页</h3>
                <h3 onclick="pagelist(1)">下一页</h3>
            </div>
            <script type="text/javascript">
                $(function () {
                    pagelist(0);
                });

                var currentCount = 5;//最大页码
                var currentPageNo = 1;//当前页码

                function pagelist(num) {

                    if (num == -1 && currentPageNo == 1) {
                        return;
                    } else if (num == 1 && currentPageNo == currentCount) {
                        return;
                    }
                    currentPageNo = currentPageNo + num;
                    $.ajax({
                        url: "/selByPage",
                        type: "GET",
                        data: {pageNo: currentPageNo, pageSize: 8},
                        dateTpye: "JSON",
                        success: function (result) {
                             $("#lipage").text("");
                            var date = result.data;
                            for (var i = 0; i < date.length; i++) {
                                var _li = $('<li>\n' +
                                    '                    <dl>\n' +
                                    '                        <dt><a href="product-view.html" target="_self"><img src="images/product/1.jpg"/></a></dt>\n' +
                                    '                        <dd class="title"><a href="product-view.html" target="_self">' + date[i].name + '</a></dd>\n' +
                                    '                        <dd class="price">' + date[i].price + '</dd>\n' +
                                    '                    </dl>\n' +
                                    '                </li>');
                                $("#lipage").append(_li);
                            }
                            currentCount = result.pageCount;
                           $("#conut").html(result.pageCount);
                        }
                    });

                }
            </script>
            <div class="clear"></div>
            <div class="pager">
                <ul class="clearfix">
                    <li><a>首页</a></li>
                    <li>...</li>
                    <li><a>4</a></li>
                    <li class="current">5</li>
                    <li><a>6</a></li>
                    <li>...</li>
                    <li><a>尾页</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">
    Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
