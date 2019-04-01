<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>婴儿发育评估</title>
<link rel="shortcut icon" href="images/favicon.png" />




<!-- Style Sheet-->
<link rel="stylesheet" href="mstp_35_knowledge/css/style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='mstp_35_knowledge/css/bootstrap5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='mstp_35_knowledge/css/responsive5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='mstp_35_knowledge/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css'
	href='mstp_35_knowledge/css/main5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='mstp_35_knowledge/css/custom5152.html?ver=1.0' type='text/css'
	media='all' />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", 
			function() {
		 		setTimeout(hideURLbar, 0); 
		 		}, false); 
	 		function hideURLbar(){ 
	 			window.scrollTo(0,1); 
	 			} 




</script>

<style type="text/css">
#content-sec3 {
	position: relative;
	max-width: 100%;
	height: auto;
	background-size: 100% auto;
	text-align: center;
}

#content-sec3 .title {
	margin-top: 5px;
	font-family: 微软雅黑;
	font-size: 20px;
	color: #333333;
}

#content-sec3 .title-sub-line {
	margin-top: 15px;
	margin-bottom: 18px;
	font-family: 微软雅黑;
	font-size: 12px;
	color: #CCCCCC;
	text-align: center;
}

#content-sec3 .title-more {
	margin-bottom: 10px;
	font-family: 微软雅黑;
	font-size: 12px;
	color: #2E84E9;
	text-align: center;
	cursor: pointer;
}
</style>
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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script></script>
                <![endif]-->

</head>
<style>
.main-nav {
	position: absolute;
	top: 5px;
	left: 0;
}

.main-nav div>ul>li a {
	font-size: 17px;
}

.main-nav {
	position: fixed;
	top: 5px;
	left: 0;
}

.main-nav1 {
	position: fixed;
	top: 5px;
	right: 0;
}

.navbar1 {
	background-color: #0d192f;
	border-color: #0d192f;
	font-size: 16px;
}

.navbar {
	margin-bottom: 0;
	line-height: 0;
}

.navbar .nav {
	margin: 6px 10px 0 0;
}

body {
	color: #3a3a3a;
}
</style>
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
						<c:if test="${user1.per==1}">
							<li><a class="dropdown-item" data-toggle="modal"
								data-target="#myModal">申请为会员</a></li>
						</c:if>
						<li><a class="dropdown-item"
							href="${pageContext.request.contextPath }/user/LogOut.action">&nbsp;&nbsp;&nbsp;&nbsp;注销</a></li>
					</ul></li>
			</ul>
		</div>

	</div>
	</nav>
	<!--navigation-end-->



	<!-- Start of Search Wrapper -->
	<div class="search-area-wrapper">
		<div class="search-area container">
			<p class="search-tag-line">如果您有任何疑问，可以在下面询问或输入您要找的内容！</p>

			<form id="search-form" class="search-form clearfix" method="post"
				action="${pageContext.request.contextPath }/posts/getPostsByName.action"
				autocomplete="off">
				<input class="search-term required" type="text" id="s_name"
					name="name" placeholder="输入内容进行搜索"
					title="* Please enter a search term!" style="height: 49px;"
					onkeyup="this.value=this.value.replace(/^ +| +$/g,'')" /> <input
					class="search-btn" type="submit" value="搜索" />
				<div id="search-error-container"></div>
			</form>
		</div>
	</div>
	<!-- End of Search Wrapper -->



	<div class="row home-listing-area">
		<div class="span1"></div>
		<div class="span11">
			<h1>同城交流</h1>
		</div>
	</div>

	<div class="row separator">
		<!-- Start of Page Container -->
		<div class="page-container">
			<div class="container">
				<div class="span2"></div>

				<div class="row span10">
					<!-- start of page content -->
					<div class="span9 main-listing">
						<article class="format-standard type-post hentry clearfix">
						<c:forEach items="${pageInfo1.list}" var="posts" end="4">
							<header class="clearfix">
							<h3 class="post-title">
								<a style="font-size: 30px; color: #a94442;"
									href="${pageContext.request.contextPath }/posts/getPostsById.action?id=${posts.id}">${posts.name }</a>
							</h3>
							<div class="post-meta clearfix">
								<span class="date">${posts.time }</span> <span>By:${posts.author }</span>
							</div>
							<!-- end of post meta --> </header>
							<c:if test="${fn:length(posts.text) > 150 }">
							${fn:substring(posts.text,0,150)}...
							</c:if>
							<c:if test="${fn:length(posts.text)  <= 150 }">
								<a style="color: #777">${posts.text}</a>
							</c:if>
							<br>
							<br>
							<br>
						</c:forEach> </article>
					</div>
					<!-- end of page content -->
				</div>
			</div>
		</div>
	</div>
	<!-- End of Page Container -->

	<div class="row home-listing-area">
		<div class="span1"></div>
		<div class="span11">
			<h1>同龄分享</h1>
		</div>
	</div>
	<div class="row separator">
		<!-- Start of Page Container -->
		<div class="page-container">
			<div class="container">
				<div class="span1"></div>

				<div class="row span11">

					<!-- start of page content -->
					<div class="span9 main-listing">
						<article class="format-standard type-post hentry clearfix">
						<c:forEach items="${pageInfo2.list}" var="posts" end="4">
							<header class="clearfix">
							<h3 class="post-title">
								<a style="font-size: 30px; color: #a94442;"
									href="${pageContext.request.contextPath }/posts/getPostsById.action?id=${posts.id}">${posts.name }</a>
							</h3>
							<div class="post-meta clearfix">
								<span class="date">${posts.time }</span> <span>By:${posts.author }</span>
							</div>
							<!-- end of post meta --> </header>
							<c:if test="${fn:length(posts.text) > 20 }">
							${fn:substring(posts.text,0,200)}...
							</c:if>
							<c:if test="${fn:length(posts.text)  <= 20 }">
								<c:out value="${posts.text}"></c:out>
							</c:if>
							<br>
							<br>
							<br>
						</c:forEach> </article>
					</div>
					<!-- end of page content -->
				</div>
			</div>
		</div>
	</div>
	<!-- End of Page Container -->
	<!-- Start of Footer -->
	<footer id="footer-wrapper">
	<div id="footer" class="container"></div>
	<!-- end of #footer --> <!-- Footer Bottom -->
	<div id="footer-bottom-wrapper"></div>
	<!-- End of Footer Bottom --> </footer>
	<!-- End of Footer -->
	<!-- 添加帖子的模态框-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 模态框的标题 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">发表帖子</h4>
				</div>
				<!-- 模态框的主体-表单头部 -->
				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath }/posts/addPosts.action"
					method="post" id="form" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group  form-group-lg">
							<label for="firstname" class="col-sm-3 control-label">帖子标题:</label>
							<div class="col-sm-5">
								<input type="text" class="form-control input-lg" id="addname"
									name="name" placeholder="请输入标题" required autofocus>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">帖子内容:</label>
							<div class="col-sm-5">
								<textarea rows="25" cols="50" id="addtext" name="text">${posts.text }</textarea>
							</div>
						</div>
						<div class="form-group  form-group-lg">
							<label for="lastname" class="col-sm-3 control-label">发帖时间:</label>
							<div class="col-sm-5">
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<input type="text" class="form-control input-lg" id="addtime"
									name="time"
									value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${now}" />"
									required autofocus readonly="readonly">
							</div>
						</div>
						<input type="hidden" name="author" value="${user1.username}" />


					</div>
					<!-- 模态框的尾部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="save">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		/* 以json的格式提交登录传参 */
		$("#select").click(
				function() {
					var text = document.getElementById("text").value;
					var checkSelectResult = document
							.getElementById("checkSelectResult"); //提示语句
					if (text.trim().length == 0) {
						checkSelectResult.innerHTML = "搜索內容不能为空";
						obj.focus();
					}
				});
	</script>



	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jflickrfeed.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jquery.liveSearch.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jquery.form.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/jquery.validate.min.js'></script>
	<script type='text/javascript'
		src='<%=basePath%>mstp_35_knowledge/js/custom.js'></script>
</body>
</html>