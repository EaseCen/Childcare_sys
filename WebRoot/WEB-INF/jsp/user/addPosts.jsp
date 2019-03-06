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

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", 
			function() {
		 		setTimeout(hideURLbar, 0); 
		 		}, false); 
	 		function hideURLbar(){ 
	 			window.scrollTo(0,1); 
	 			} 

</script>
<link href="<%=basePath%>cpts_998_bmx/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<link href="<%=basePath%>cpts_998_bmx/css/style.css" rel='stylesheet'
	type='text/css' />
<link href="<%=basePath%>cpts_998_bmx/css/owl.carousel.css"
	rel="stylesheet">
<script src="<%=basePath%>cpts_998_bmx/js/jquery.min.js"></script>
<!--JS for animate-->
<link href="<%=basePath%>cpts_998_bmx/css/animate.css" rel="stylesheet"
	type="text/css" media="all">
<script src="<%=basePath%>cpts_998_bmx/js/wow.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	new WOW().init();
</script>
<!--//end-animate-->
<style type="text/css">
.navbar1 {
	background-color: #0d192f;
	border-color: #0d192f;
	font-size: 16px;
}

.navbar {
	margin-bottom: 0;
	line-height: 0;
}
</style>


</head>
<body>
	<!--header-top-->
	<div class="header-top">
		<div class="container">
			<div class="head-main">
				<div class="col-md-4 head-right wow fadeInLeft animated"></div>
				<div
					class="col-md-4 head-middle animated wow fadeInDown animated animated"
					data-wow-duration="1200ms" data-wow-delay="500ms">
					<h1>
						<a href="index.html">Baby Care</a>
					</h1>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--header-top-->
	<!--navigation-starts-->
	<nav class="navbar navbar1 navbar-inverse navbar-static-top"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath }/posts/showIndex.action">首页</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">发育评估<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath }/user/Fetal_development.action">胎儿发育评估</a></li>
							<li><a
								href="${pageContext.request.contextPath }/user/Infant_development.action">婴儿发育评估</a></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath }/user/Baby_diet.action">饮食推荐</a></li>
					<li><a
						href="${pageContext.request.contextPath }/posts/findSameCityAndAge.action?author=${user1.username}">发现专区</a></li>
					<li><a
						href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}">养育记录</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">欢迎您:&nbsp;&nbsp;<span
							class="glyphicon glyphicon-user"><strong>${user1.username }</strong></span>
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" data-toggle="modal"
								data-target="#myModal">申请为会员</a></li>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath }/user/LogOut.action">&nbsp;&nbsp;&nbsp;&nbsp;注销</a></li>
						</ul></li>
				</ul>
			</div>

		</div>
	</nav>
	<!--navigation-end-->
	<!--script-for-menu-->
	<script>
		$("span.menu").click(function() {
			$(" ul.navig").slideToggle("slow", function() {
			});
		});
	</script>
	<!--script-for-menu-->
	<!--banner-starts-->
	<div class="banner-1"></div>
	<!--banner-end-->
	<!--single-page-->
	<div class="single">
	<form role="form" action="${pageContext.request.contextPath }/posts/addPosts.action"
					method="post"> 
		<div class="container">
			<h2>
				<input type="text" class="form-control input-lg" id="name"
					name="name" maxlength="16" minlength="6" placeholder="输入帖子标题" required autofocus>
			</h2>
			<div class="single-page-artical">
				<div class="artical-content">
				
					<textarea rows="25" style="min-width: 90%" name="text" wrap="hard">${posts.text }</textarea>
				</div>
				<div class="artical-links">
					<ul>
						<li>
						<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>
						<span> <c:set var="now" value="<%=new java.util.Date()%>" /> 
						<input type="text" class="form-control input-lg" id="addtime" name="time"
								value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${now}" />"
								required autofocus readonly="readonly">
						</span>
						</li>
						<li>
						<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
						<span><input type="text" class="form-control input-lg" id="addauthor" name="author"
								value="${user1.username}"
								required autofocus readonly="readonly"></span>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" id="save">提交</button>
			</div>
		</div>
			</form>
	</div>
	<!--single-page-->
	<!--footer-starts-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-6 footer-right">
					<form action="#" method="post">
						<input type="text" value="Your Email" name="email"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Your Email';}">
						<input type="submit" value="Subscribe">
					</form>
				</div>
				<div class="col-md-3 footer-left">
					<div class="a-1">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>The company name, Glasglow Dr 40 Fe 72.</p>
					</div>
					<div class="a-2">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						<p>
							<a href="mailto:example@email.com">contact@example.com</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 footer-left">
					<div class="a-1">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						<p>+122 265 8822</p>
					</div>
					<div class="a-2">
						<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
						<p>+134 326 3695</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer-end-->
</body>
</html>
