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
					<li><a href="${pageContext.request.contextPath }/posts/findSameCityAndAge.action?author=${user1.username}">发现专区</a></li>
					<li><a href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}">养育记录</a></li>
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
	<div class="banner">
		<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li>
						<div class="banner1">
							<div class="container">
								<div class="banner-text">
									<p>Vivamus id dui et augue</p>
									<h3>Caring Baby Sitters For Your Kids</h3>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="banner2">
							<div class="container">
								<div class="banner-text">
									<p>Vivamus id dui et augue</p>
									<h3>Caring Baby Sitters For Your Kids</h3>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="banner1">
							<div class="container">
								<div class="banner-text">
									<p>Vivamus id dui et augue</p>
									<h3>Caring Baby Sitters For Your Kids</h3>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="banner2">
							<div class="container">
								<div class="banner-text">
									<p>Vivamus id dui et augue</p>
									<h3>Donec eu dolor ac erat sodales rutrum</h3>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</section>

	</div>
	<!--banner-end-->
	<!--FlexSlider-->
	<link rel="stylesheet"
		href="<%=basePath%>cpts_998_bmx/css/flexslider.css" type="text/css"
		media="screen" />
	<script defer src="<%=basePath%>cpts_998_bmx/js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!--End-slider-script-->
	<!--welcome-->
	<div class="welcome">
		<div class="container">
			<h2>育儿网络平台设计与开发</h2>
			<div class="col-md-9 welcome-left wow fadeInLeft animated"
				data-wow-delay=".5s">
				<h5>在二胎开放的时代，从现代育儿需求出发，主要完成个人基本信息、今日育儿热点、宝宝饮食、发育评估、发现专区、喂养记录、个人中心等等。</h5>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--welcome-->

	<!--projects-->
	<div class="project animated wow fadeInDown animated animated"
		data-wow-duration="1200ms" data-wow-delay="500ms">
		<div class="container"></div>
		<div class="gallery-cursual">
			<!--requried jsfiles for owl-->
			<script src="<%=basePath%>cpts_998_bmx/js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 4,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
			<!--//requried-jsfiles-for owl-->
			<!--start content_slider-->
			<div id="owl-demo" class="owl-carousel text-center">
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/17.jpg"
						"img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/15.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/14.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/13.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/12.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/11.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/10.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/9.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/8.jpg"
						class="img-responsive" alt="name">
				</div>
				<div class="item">
					<img class="lazyOwl"
						data-src="<%=basePath%>cpts_998_bmx/images/7.jpg"
						class="img-responsive" alt="name">
				</div>
			</div>
			<!--sreengallerycursual-->
		</div>
	</div>
	<!--projects-->
	<div class="events">
		<div class="container">
			<h3>今日热点</h3>
			<div class="events-grid">
				<c:forEach items="${pageInfo.list}" var="posts" end="2">
					<div class="col-md-4 events-grid-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<a href="${pageContext.request.contextPath }/posts/getPostsById.action?id=${posts.id}">
							<div class="events-grid-left-top">
								<p>
									<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>${posts.time }</span>
								</p>
							</div> <img src="<%=basePath%>cpts_998_bmx/images/${posts.id}.jpg" class="img-responsive">
							<div class="events-pos">
								<p>${posts.name }</p>
							</div>
						</a>
					</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer-starts-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-6 footer-right wow fadeInLeft animated"
					data-wow-delay=".5s">
					<form action="#" method="post">
						<input type="text" value="Your Email" name="email"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Your Email';}">
						<input type="submit" value="Subscribe">
					</form>
				</div>
				<div
					class="col-md-3 footer-left animated wow fadeInUp animated animated"
					data-wow-duration="1200ms" data-wow-delay="500ms">
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
				<div class="col-md-3 footer-left wow fadeInRight animated"
					data-wow-delay=".5s">
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
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">申请会员</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath }/member/addMember.action"
					method="post" id="form" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">申请原因:</label>
							<div class="col-sm-5">
								<input type="hidden" id="addusername" name="username"
									value="${user1.username}" />
								<textarea class="form-control input-lg" id="addreason"
									name="reason" style="width: 426px; height: 214px;" required
									autofocus>
								</textarea>
							</div>
						</div>
					</div>
					<!-- 模态框底部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="save">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>