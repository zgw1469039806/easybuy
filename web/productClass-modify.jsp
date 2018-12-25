<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 易买网</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="scripts/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<div id="header" class="wrap">
	<div id="logo"><img src="images/logo.gif" /></div>
	<div class="help"><a href="index.html">返回前台页面</a></div>
	<div class="navbar">
		<ul class="clearfix">
			<li><a href="indexs.jsp">首页</a></li>
			<li><a href="user.html">用户</a></li>
			<li class="current"><a href="product.jsp">商品</a></li>
			<li><a href="order.html">订单</a></li>
			<li><a href="guestbooks.html">留言</a></li>
			<li><a href="news.jsp">新闻</a></li>
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
				<dd><em><a href="user-add.html">新增</a></em><a href="user.html">用户管理</a></dd>
				<dt>商品信息</dt>
				<dd><em><a href="/Seltypeid">新增</a></em><a href="/proType">分类管理</a></dd>
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
		<h2>修改分类</h2>
		<div class="manage">
			<form action="/updd">
				<table class="form">
					<c:forEach items="${qid}" var="q">
						<tr>
							<td class="field">&nbsp;&nbsp;&nbsp;&nbsp;当前id：${q.id}</td>
							<td>
							<input type="text" hidden name="id" value="${q.id}">
							</td>
						</tr>
						<tr>
							<td class="field">父分类：</td>
							<td>
								<select name="type">

									<option value="1">└一级分类</option>
									<c:forEach var="t1" items="${tpid1}">
										<option value="${t1.type}">${t1.cname}</option>
									</c:forEach>
									<option value="2">└二级分类</option>
									<c:forEach var="t2" items="${tpid2}">
										<option value="${t2.type}">${t2.cname}</option>
									</c:forEach>
									<option value="3">└三级分类</option>
									<c:forEach var="t3" items="${tpid3}">
										<option value="${t3.type}">${t3.cname}</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td class="field">分类名称：</td>
							<td><input type="text" class="text" name="cname" value="${q.cname}" /></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit" name="submit" value="更新" /></label></td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 北大青鸟 All Rights Reserved. 京ICP证1000001号
</div>
</body>
</html>
