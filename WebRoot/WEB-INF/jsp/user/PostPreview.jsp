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
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Knowledge Base Theme</title>

<link rel="shortcut icon" href="images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="<%=basePath%>mstp_35_knowledge/style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='<%=basePath%>mstp_35_knowledge/css/bootstrap5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='<%=basePath%>mstp_35_knowledge/css/responsive5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='<%=basePath%>mstp_35_knowledge/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css'
	href='<%=basePath%>mstp_35_knowledge/css/main5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='<%=basePath%>mstp_35_knowledge/css/custom5152.html?ver=1.0'
	type='text/css' media='all' />


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script>
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
</style>

<body>
	<div class="header-wrapper">
		<header>
		<div class="container" style="width: 2000px;">
			<!-- Start of Main Navigation -->
			<nav class="main-nav">
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="clearfix">
					<li><a href="${pageContext.request.contextPath }/posts/showIndex.action">首页</a></li>
					<li><a>发育评估</a>
						<ul class="sub-menu">
							<li><a
								href="${pageContext.request.contextPath }/user/Fetal_development.action">胎儿发育评估</a></li>
							<li><a
								href="${pageContext.request.contextPath }/user/Infant_development.action">婴儿发育评估</a></li>
						</ul></li>
					<li>
					<a
						href="${pageContext.request.contextPath }/user/Baby_diet.action">饮食推荐</a></li>
					<li><a href="${pageContext.request.contextPath }/posts/findSameCityAndAge.action?author=${user1.username}">发现专区</a></li>
					<li><a href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}">养育记录</a></li>
				</ul>
			</div>

			</nav>
			<!-- End of Main Navigation -->

		</div>
		</header>
	</div>



	<!-- Start of Search Wrapper -->
	<div class="search-area-wrapper">
		<div class="search-area container">
			<p class="search-tag-line">如果您有任何疑问，可以在下面询问或输入您要找的内容！</p>

			<form id="search-form" class="search-form clearfix" method="get"
				action="#" autocomplete="off">
				<input class="search-term required" type="text" id="select"
					name="select" placeholder="输入内容进行搜索"
					title="* Please enter a search term!" /> <input class="search-btn"
					type="submit" value="搜索" />
				<div id="search-error-container"></div>
			</form>
		</div>
	</div>
	<!-- End of Search Wrapper -->


	<div class="row home-listing-area">
		<div class="span2"></div>
		<div class="span10">
			<h1>同城交流</h1>
		</div>
	</div>

	<div class="row separator">
		<!-- Start of Page Container -->
		<div class="page-container">
			<div class="container">
				<div class="row">
						<!-- start of page content -->
						<div class="span9 main-listing">
						<article class="format-standard type-post hentry clearfix">
						<c:forEach items="${pageInfo1.list}" var="posts" end="4">
							<header class="clearfix">
							<h3 class="post-title">
								<a href="${pageContext.request.contextPath }/posts/getPostsById.action?id=${posts.id}">${posts.name }</a>
							</h3>
							<div class="post-meta clearfix">
								<span class="date">${posts.time }</span> 
								<span>By:${posts.author }</span>
							</div>
								<!-- end of post meta -->
							</header>
							<c:if test="${fn:length(posts.text) > 150 }">
							${fn:substring(posts.text,0,150)}...
							</c:if>
							<c:if test="${fn:length(posts.text)  <= 150 }">
							${posts.text}
							</c:if>
							<br>
						</c:forEach> 
						</article>
						</div>
					<!-- end of page content -->
				</div>
			</div>
		</div>
	</div>
	<!-- End of Page Container -->

	<div class="row home-listing-area">
		<div class="span2"></div>
		<div class="span10">
			<h1>同龄分享</h1>
		</div>
	</div>
	<div class="row separator">
		<!-- Start of Page Container -->
		<div class="page-container">
			<div class="container">
				<div class="row">

					<!-- start of page content -->
					<div class="span9 main-listing">
						<article class="format-standard type-post hentry clearfix">
						<c:forEach items="${pageInfo2.list}" var="posts" end="4">
							<header class="clearfix">
							<h3 class="post-title">
								<a href="${pageContext.request.contextPath }/posts/getPostsById.action?id=${posts.id}">${posts.name }</a>
							</h3>
							<div class="post-meta clearfix">
								<span class="date">${posts.time }</span> 
								<span>By:${posts.author }</span>
							</div>
								<!-- end of post meta -->
							</header>
							<c:if test="${fn:length(posts.text) > 20 }">
							${fn:substring(posts.text,0,200)}...
							</c:if>
							<c:if test="${fn:length(posts.text)  <= 20 }">
							<c:out value="${posts.text}"></c:out>
							</c:if>
							<br>
						</c:forEach> 
						</article>
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



	<script type="text/javascript">
		/* 以json的格式提交登录传参 */
		$("#select")
				.click(
						function() {
							var text = document.getElementById("text").value;
							var checkSelectResult = document
									.getElementById("checkSelectResult"); //提示语句

							if (text.trim().length == 0) {
								checkSelectResult.innerHTML = "搜索內容不能为空";
								obj.focus();
							} else {
								checkSelectResult.innerHTML = "";
								$
										.ajax({
											type : 'post',
											//提交路径
											url : '${pageContext.request.contextPath}/post/checkSelect.action',
											//声明为json格式
											contentType : 'application/json;charset=utf-8',
											//转为json格式
											data : JSON.stringify({
												"text" : $("#text").val(),
											}),
											//点击登录以后拿到数据
											success : function(data) {
												//判断
												if (data == "" || data == null) {
													$("#message").html(
															"搜索內容出錯！");
												} else {
													//正常跳转
													window.location.href = "${pageContext.request.contextPath}/post/queryPost.action";
												}
											}
										});
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