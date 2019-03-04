<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>index.html</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="<%=basePath%>bootstrap-4.1.3-dist/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<!--JS for animate-->
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>

<body>
	<nav
		class="site-header sticky-top navbar navbar-expand-lg navbar-dark bg-dark ">
	<a class="navbar-brand" href="#">首页</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="http://play9.pcbaby.com.cn/baby131209/index.jsp">发育评估</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 育儿推荐 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">饮食推荐</a> <a class="dropdown-item"
						href="#">书籍推荐</a> <a class="dropdown-item" href="#">互动推荐</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">注意事项</a>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/posts/showAllPost.action">发现专区</a></li>

			<!--
					<li class="nav-item dropdown">
					<a
						class="nav-link dropdown-toggle" href="post.html" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 发现专区 </a>
						
						
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="same_age_post.html">发现圈子--同龄</a> <a
								class="dropdown-item" href="same_city_post.html">发现圈子--同城</a>
						</div>
						</li>
						-->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 实用工具 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">预产期计算器</a> <a
						class="dropdown-item" href="#">胎儿体重计算</a> <a class="dropdown-item"
						href="#">身高体重计算</a>
				</div></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li>
				<a class="nav-link" href="${pageContext.request.contextPath }/UserLogin.jsp">
					<span class="glyphicon glyphicon-log-in"></span>会员注册/登录
				</a>
			</li>
		</ul>
	</div>
	</nav>


	<div
		class="position-relative overflow-hidden p-2 p-md-4 m-md-2 text-center bg-light">
		<div class="col-md-5 p-lg-1 mx-auto my-5">
			<h4 class="display-4 font-weight-normal">育儿网络平台设计与开发</h4>
			<p class="lead font-weight-normal">在二胎开放的时代，从现代育儿需求出发，主要完成个人基本信息、今日育儿热点、宝宝饮食、发育评估、发现专区、喂养记录、个人中心等等。</p>
		</div>
	</div>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- 指示符 -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>
					<!-- 轮播图片 -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
							<div class="carousel-caption">
								<h3>第一张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
							<div class="carousel-caption">
								<h3>第二张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
							<div class="carousel-caption">
								<h3>第三张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
					</div>

					<!-- 左右切换按钮 -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	<br>
	<br>

	<div class="services">
		<div class="container text-center">
			<h3 class="title">每日导读</h3>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<div class="card" style="width: 300px">
					<tr>
						<th>帖子标题</th>
						<th>帖子内容</th>
						<th>发帖时间</th>
						<th>发帖人</th>
						<th colspan="3">操作</th>
					</tr>
					<c:forEach items="${pageInfo.list}" var="posts">
						<tr align="center">
							<td>${posts.name }</td>
							<td>${posts.text }</td>
							<td><fmt:formatDate value="${posts.time}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${posts.author }</td>

							<!-- 删除操作-带id参数 -->
							<td><a
								href="${pageContext.request.contextPath }/posts/del.action?id=${posts.id}"><button
										type="button" class="btn btn-success btn-lg"
										onclick="return confirm('确定要删除帖子吗？') ">
										<span class="glyphicon glyphicon-trash"></span> 删除
									</button></a></td>
							<!-- 修改操作 -->
							<td><a
								href="${pageContext.request.contextPath }/posts/findOne.action?id=${posts.id}"><button
										type="button" class="btn btn-success btn-lg">
										<span class="glyphicon glyphicon-edit"></span> 修改
									</button></a></td>
						</tr>
					</c:forEach>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
	<br>
	<br>

	<nav class="navbar navbar-default navbar-fixed-top "
		style="background: #ee723c;">
	<div class="container text-center	">
		<h2>母婴知识</h2>
	</div>
	</nav>
	<br>
	<br>
	<nav class="navbar navbar-default navbar-fixed-top "
		style="background: #96b97d;">
	<div class="container text-center	">
		<h2>育儿社区</h2>
	</div>
	</nav>
	<br>
	<br>

	<nav class="navbar navbar-default navbar-fixed-top bg-dark ">
	<div class="container  text-white">
		<h2>晒娃栏</h2>
	</div>
	</nav>

	<br>
	<br>
	<div class="jumbotron text-center" style="margin-bottom: 0">
		<p>
			<a class="nav-link" href="${pageContext.request.contextPath }/Login.jsp"><span
				class="glyphicon glyphicon-log-in"></span>管理员登录</a>
		</p>
	</div>

</body>
</html>
