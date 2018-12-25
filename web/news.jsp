<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理 - 易买网</title>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
    <div id="logo"><img src="images/logo.gif"/></div>
    <div class="help"><a href="index.html">返回前台页面</a></div>
    <div class="navbar">
        <ul class="clearfix">
            <li><a href="indexs.jsp">首页</a></li>
            <li><a href="user.html">用户</a></li>
            <li><a href="product.jsp">商品</a></li>
            <li><a href="order.html">订单</a></li>
            <li><a href="guestbooks.html">留言</a></li>
            <li class="current"><a href="news.jsp">新闻</a></li>
        </ul>
    </div>
</div>
<div id="childNav">
    <div class="welcome wrap">
        管理员pillys您好，今天是2012-12-21，欢迎回到管理后台。
    </div>
</div>
<div id="position" class="wrap">
    您现在的位置：<a href="indexs.jsp">易买网</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
        <div id="menu-mng" class="lefter">
        <div class="box">
            <dl>
                <dt>用户管理</dt>
                <dd><a href="user.html">用户管理</a></dd>
                <dt>商品信息</dt>
                <dd><em><a href="productClass-add.jsp">新增</a></em><a href="productClass.jsp">分类管理</a></dd>
                <dd><em><a href="product-add.jsp">新增</a></em><a href="product.jsp">商品管理</a></dd>
                <dt>订单管理</dt>
                <dd><a href="order.html">订单管理</a></dd>
                <dt>留言管理</dt>
                <dd><a href="guestbooks.html">留言管理</a></dd>
                <dt>新闻管理</dt>
                <dd><em><a href="news-add.html">新增</a></em><a href="news.jsp">新闻管理</a></dd>
            </dl>
        </div>
    </div>
    <div class="main">
        <h2>新闻管理</h2>
        <div class="manage">
            <table class="list" id="tit">
                <tr>
                    <th>ID</th>
                    <th>新闻标题</th>
                    <th>操作</th>
                </tr>

            </table>
            <div><h4>总页数:<span id="conut"></span></h4>
                <h3 onclick="show(-1)">上一页</h3>
                <h3 onclick="show(1)">下一页</h3>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(function () {
            show(0);
        })

        var currentCount = 5;
        var currentPageNo = 1;

        function show(num) {

            if (num == -1 && currentPageNo == 1) {
                return;
            } else if (num == 1 && currentPageNo == currentCount) {
                return;
            }
            currentPageNo = currentPageNo + num;
            $.ajax({
                url: "/newsByPage",
                type: "GET",
                data: {pageNo: currentPageNo, pageSize: 3},
                dateType: "JSON",
                success: function (result) {
                   $("#tit").text("");
                    var date = result.data;
                    for (var i = 0; i < date.length; i++) {
                        var _li = $(' <tr>\n' +
                            '                    <td class="first w4 c">' + date[i].id + '</td>\n' +
                            '                    <td>' + date[i].title + '</td>\n' +
                            '                    <td class="w1 c"><a href="news-modify.html">修改</a> <a class="manageDel"\n' +
                            '                                                                          href="javascript:void(0)">删除</a></td>\n' +
                            '                </tr>');
                        $("#tit").append(_li);
                    }
                    currentCount=result.pageCount;
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
<div id="footer">
    Copyright &copy; 2013 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
