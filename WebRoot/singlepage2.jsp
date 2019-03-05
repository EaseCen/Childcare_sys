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
				<a class="navbar-brand" href="#">首页</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">发育评估<b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath }/Fetal_development.jsp">胎儿发育评估</a></li>
							<li><a
								href="${pageContext.request.contextPath }/Infant_development.jsp">婴儿发育评估</a></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath }/Baby_diet.jsp">饮食推荐</a></li>
					<li><a data-toggle="modal" data-target="#myModal">发现专区</a></li>
					<li><a href="${pageContext.request.contextPath }/UserLogin.jsp">登录后更多功能..</a></li>
				</ul>
			</div>
			<p class=" navbar-right">
				<a class="nav-link navbar-text"
					href="${pageContext.request.contextPath }/UserLogin.jsp"> <span
					class="glyphicon glyphicon-log-in"></span>会员注册/登录
				</a>
			</p>
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
				<h2>孩子不听话 可能是缺乏安全感</h2>
				<div class="single-page-artical">
					<div class="artical-content">
						<p>　　常听身边的宝妈抱怨：宝宝不听话、爱捣蛋。其中一个原因是宝宝缺乏安全感哦。安全感是孩子的基本需求，会影响到孩子身心的健康成长。孩子要是缺乏安全感，容易变得胆小、怯懦，和周围的小朋友格格不入。相反，安全感充足的孩子大方自信。</p><p><strong>　　</strong>给孩子充足安全感，和爸妈平常的行为习惯是分不开的。但是不少爸妈却经常在不经意中伤害了孩子的安全感。</p><p><strong>　　1）对孩子撒谎</strong></p><p>　　爸妈都会教育孩子不要撒谎骗人，要是孩子对爸妈撒谎免不了一顿骂。</p><p>　　爸妈可曾想过自己也会对孩子撒谎，为了安抚孩子的情绪，经常说些甜蜜的谎言搪塞孩子。虽然是善意的谎言，但是有时候给孩子内心造成不小的伤害，对爸妈产生不信任，同时孩子也会学爸妈撒谎。</p><p>　　虽说是为了哄孩子，但哄里若带着&ldquo;骗&rdquo;的成分，那爸妈就要注意了。</p><p>　　相信大部分爸妈都说过：&ldquo;妈妈（爸爸）要出门了，宝宝乖乖在家等，回来给你带好吃的。&rdquo;然而其实回来时双手空空；或者孩子一哭闹，爸妈就会说：&ldquo;警察和乞丐最爱抓爱哭的小朋友。&rdquo;。</p><p>　　孩子经受&ldquo;欺骗&rdquo;后，几次之后也会有戒备心，很难再相信爸妈类似的话。这些看似无伤大雅的谎话能不用最好不用。或者爸妈可以尝试换种方式哄孩子：详细告诉孩子原因，安抚孩子的情绪，鼓励孩子。</p><p><strong>　　2）说&ldquo;不要孩子&rdquo;之类的话</strong></p><p>　　当孩子调皮捣蛋惹爸妈生气的时候，爸妈会说：&ldquo;你再这样，我就不要你了。&rdquo;&ldquo;你再这样，警察叔叔来抓你了。&rdquo;......类似这样吓唬孩子，相信每个人都听过。</p><p>　　有些爸妈就有疑问：我也是这样长大的，不也没长歪吗？虽说如此，但每个孩子性格、心理承受能力不同，不排除这样的话会对孩子造成伤害的可能性。虽然这些话有震慑孩子的作用，没在孩子心里留下阴影最好，但真的就万一有影响了呢？</p><p>　　孩子长大后确实懂得爸妈小时候是在骗人，但是这种话真的非说不可吗？孩子听完这些话，可能信以为真，爸爸妈妈真的不要我吗？说不定会对爸妈的爱产生怀疑。</p><p>　　有的孩子经常问&ldquo;我从哪来的呢&rdquo;，许多家长都不会正面回答，会说类似&ldquo;你是垃圾桶（车站）里捡来的&rdquo;&ldquo;冲话费送的&rdquo;的话。这个问题除了是性教育的缺失，也是对孩子安全感的伤害，会让孩子质疑自己是否真的与爸妈没有任何关系，爸妈是否会突然抛弃ta。</p><p>　　那么<span style="color:#008000;"><strong>呵护孩子的安全感，为人父母该做些什么呢？</strong></span></p><p><strong>　　1）学会聆听孩子心理的声音</strong></p><p>　　特别是内心比较敏感的孩子，常常会因为长辈的一句无心之言，而产生挫败感。作为爸妈，要学会在孩子突然不高兴或哭闹不止时，耐心了解ta的需求，而不是忽略或不耐烦地指责孩子，容易让孩子产生反逆心理。</p><p><strong>　　2）多给孩子爱的抱抱和鼓励</strong></p><p>　　拥抱是肢体语言里最有温暖的力量，在孩子受挫时、软弱时，给ta一个拥有爱的抱抱，胜过所有的语言。一个长期缺乏拥抱的孩子，势必是更容易缺乏安全感，更叛逆不听话。</p><p>　　内心的安宁才是安全感的来源，孩子的安全感需要爸爸妈妈细心的呵护，要是孩子有什么不好的行为，爸爸妈妈要正面引导孩子，帮其改正错误，而不是对孩子说气话，挑动孩子的情绪。</p>
">
					</div>
					<div class="artical-links">
						<ul>
							<li><i class="glyphicon glyphicon-calendar"
								aria-hidden="true"></i><span>Thu Feb 14 00:00:00 CST 2019</span></li>
							<li><a href="#"><i class="glyphicon glyphicon-user"
									aria-hidden="true"></i><span>admin</span></a></li>
						</ul>
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
