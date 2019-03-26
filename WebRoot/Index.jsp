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

<style type="text/css">
.banner3 {
	background: url(<%=basePath%>images/3.jpg) no-repeat;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	-ms-background-size: cover;
	min-height: 600px;
}
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
.banner3 {
	background: url(<%=basePath%>images/18.jpg) no-repeat;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	-ms-background-size: cover;
	min-height: 600px;
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
						<a href="#">Baby Care</a>
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
					href="#">首页</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">发育评估<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="Fetal_development.jsp">胎儿发育评估</a></li>
							<li><a
								href="Infant_development.jsp">婴儿发育评估</a></li>
						</ul></li>
					<li><a
						href="Baby_diet.jsp">饮食推荐</a></li>
					<li><a data-toggle="modal" data-target="#myModal">发现专区</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
								<p class=" navbar-right">
				<a class="nav-link navbar-text"
					href="${pageContext.request.contextPath }/UserLogin.jsp"> <span
					class="glyphicon glyphicon-log-in"></span>会员注册/登录
				</a>
			</p>
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
								<h3>
								新生宝宝长得更像爸爸 真的吗
								</h3>
								<p>
										<a style="font-size: 20px;"
											href="<%=basePath%>singlepage4.jsp"> 点击查看
										</a>
									</p>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="banner2">
						<div class="container">
							<div class="banner-text">
								<h3>
								吓唬式教育 是管教还是伤害？
								</h3>
								<p><a style="font-size: 20px;"
											href="<%=basePath%>singlepage5.jsp"> 点击查看
										</a></p>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="banner3">
						<div class="container">
							<div class="banner-text">
								<h3>
								宝宝换牙期问题多 家长把好关
								</h3>
								<p><a style="font-size: 20px;"
											href="<%=basePath%>singlepage6.jsp"> 点击查看
										</a></p>
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
			<h2>育儿网络平台</h2>
			<div class="col-md-9 welcome-left wow fadeInLeft animated"
				data-wow-delay=".5s">
				<h5>在二胎开放的时代，从现代育儿需求出发，包涵今日热点、宝宝饮食、发育评估、发现专区、喂养记录等等功能。</h5>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--welcome-->


	<div class="events">
		<div class="container">
			<h3>最新发帖</h3>
			<div class="events-grid">
				
					<div class="col-md-4 events-grid-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<a
							href="<%=basePath%>singlepage1.jsp">
							<div class="events-grid-left-top">
								<p>
									<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>Tue Mar 05 09:17:00 CST 2019</span>
								</p>
							</div> <img src="http://localhost:8080/Childcare_system/cpts_998_bmx/images/11.jpg"
							class="img-responsive">
							<div class="events-pos">
								<p>春天到！宝贝适合春季入园吗？</p>
							</div>
						</a>
					</div>
				
					<div class="col-md-4 events-grid-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<a
							href="<%=basePath%>singlepage2.jsp">
							<div class="events-grid-left-top">
								<p>
									<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>Mon Mar 04 14:15:21 CST 2019</span>
								</p>
							</div> <img src="http://localhost:8080/Childcare_system/cpts_998_bmx/images/10.jpg"
							class="img-responsive">
							<div class="events-pos">
								<p>涨知识！宝宝要吃的辅食好讲究</p>
							</div>
						</a>
					</div>
				
					<div class="col-md-4 events-grid-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<a
							href="<%=basePath%>singlepage3.jsp">
							<div class="events-grid-left-top">
								<p>
									<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i><span>Sat Mar 02 17:16:40 CST 2019</span>
								</p>
							</div> <img src="http://localhost:8080/Childcare_system/cpts_998_bmx/images/7.jpg"
							class="img-responsive">
							<div class="events-pos">
								<p>526法则轻松避免辅食添加误区</p>
							</div>
						</a>
					</div>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--projects-->			
			
	<div class="project animated wow fadeInDown animated animated"
		data-wow-duration="1200ms" data-wow-delay="500ms">
		<div><h3 style="color:lightblue">晒娃栏</h3></div>
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
					<p>
						<a href="${pageContext.request.contextPath }/Login.jsp">管理员登录</a>
					</p>
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
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
					</button>
					<h4 class="modal-title" id="myModalLabel">
						进入失败
					</h4>
				</div>
				<div class="modal-body">
					登录后方可查看，按下 ESC 按钮退出。
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</body>
</html>