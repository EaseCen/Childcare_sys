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

<script type="text/javascript">
	$(function() {
		init();
	});

	function init() {
		var text = $("posts.text").text(); //先取出未转换格式前端数据
		var des = text.replace(/\r\n/g, '<br/>').replace(/\n/g, '<br/>')
				.replace(/\s/g, ' '); //转换格式
		$("posts.text").empty();
		$("posts.text").append(des);
	}
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
					<c:if test="${user1.per==2}">
						<li><a
							href="${pageContext.request.contextPath }/posts/toAddPosts.action">发表帖子</a></li>
					</c:if>
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
		<div class="container">
			<h2>
				<c:out value="${posts.name}"></c:out>
			</h2>
			<div class="single-page-artical">
				<div class="artical-content">${posts.text}</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span><c:out value="${posts.time}"></c:out></span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span><c:out
										value="${posts.author}"></c:out></span></a></li>
					</ul>
				</div>
				<div class="comment-grid-top">
					<h3>回复</h3>
					<div class="comments-top-top">
						<div class="top-comment-left"></div>
						<c:forEach items="${posts1}" var="posts1">
							<div class="top-comment-right">
								<ul>
									<li><span class="left-at"><c:out
												value="${posts1.repost_user}"></c:out></span></li>
									<li><span class="right-at"><c:out
												value="${posts1.time}"></c:out></span></li>
									<li><a class="reply">回复</a></li>
								</ul>
								<p>
									<c:out value="${posts1.text}"></c:out>
								</p>
							</div>
						</c:forEach>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="artical-commentbox">
					<h3>leave a comment</h3>
					<div class="table-form">
						<form
							action="${pageContext.request.contextPath }/posts/addReposts.action"
							method="post">
							<input type="hidden" id="adduser" name="repost_user" value="${user1.username }" />
							<c:set var="now" value="<%=new java.util.Date()%>" />
							<input type="hidden" class="form-control input-lg" id="addtime" name="time"
								value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${now}" />"
								required autofocus readonly="readonly">
							<input type="hidden" id="addrepost_id" name="repost_id" value="${posts.id }" />
							
							<textarea placeholder="Message" name="text"></textarea>
							<input type="submit" value=发送">
						</form>
					</div>
				</div>
			</div>
		</div>
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
