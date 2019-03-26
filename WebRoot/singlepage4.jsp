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
			<h2>
				新生宝宝长得更像爸爸 真的吗
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　宝宝出生了，众人围观的时候最津津乐道的就是孩子到底像谁。</p><p>　　@家是唯一的港湾：我宝宝生出来，简直就是迷你版的老公，好可爱~</p><p>　　@雀斑羊羊羊：我儿子生出来有黄疸，皮肤黄黄的，很丑。但眼睛脸型嘴巴和老公一个模子刻出来。</p><p>　　@大枣子鸭：女儿刚生出来，亲戚们都说长得像我老公，不过后面慢慢长开了，跟我越来越像了。</p><p>　　有没有发现孩子刚出生后，很多人乍眼一看会觉得像爸爸多些，但后来孩子越长越像妈妈？这是什么原因导致的呢？</p><p><span style="color:#008000;">　　<strong>有人说，这是生物的自我保护本能！</strong></span></p><p>　　这个回答非常有意思，有人认为<a class="cmsLink" href="//baike.pcbaby.com.cn/xinshenger.html" target="_blank">新生儿</a>最初长得像爸爸，是生物的<strong>自我保护机制</strong>。因为在古代，男子看到孩子不像自己时，会怀疑孩子不是亲生的而休妻。出于&ldquo;自保&rdquo;，宝宝在出生时会像爸爸，用自己的长相向爸爸宣布：&ldquo;<strong>我是你的孩子，你要负责养我哦！</strong>&rdquo;，保证自己不被爸爸抛弃。</p><p>　　哈哈哈，难怪人类可以进化成最高级的生物，原来从新生儿开始就这么机智哇~</p><p>　　当然，<strong>这个说法并不科学</strong>，大家听听娱乐一下就好啦。</p><p><span style="color:#008000;">　<strong>　新生宝宝，一般长相都有这些特点&darr;</strong></span></p><p>　　虽然这个说法没有科学依据，但反映了大家对新生儿相貌的关心。宝宝像谁，刚开始还无法判断，但新生宝宝的外貌却有着不少共同点：</p><p><strong>　　皮肤：</strong>胎宝宝在羊水里浸泡了十个月，因此<strong>刚出生的时候皮肤是灰紫色</strong>，而且<strong>皮肤上有一层白色油腻的皮脂。</strong></p><p><strong>　　头型：</strong>顺产时，宝宝从狭长的产道里冲刺，而宝宝的骨骼系统还没发育完全，容易变型，经过产道时被这一挤，头型难免会被挤得比较难看。不过宝妈不用担心，慢慢长开了就好。</p><p><strong>　　头发：</strong>有些爸爸妈妈会觉得，为何宝宝的头发这么少这么黄，怎么跟自己不像啊？其实，新生儿的头发不全是遗传父母亲的，还跟在子宫里的营养有关。如果孕妈的营养状态好，宝宝的头发会长得浓密些。等宝宝慢慢生长发育，发量就会慢慢增加。</p><p><strong>　　眼睛：有些新生儿的眼睛在出生后不久变得肿胀或浮肿</strong>。这是由于产道内的压力造成的，会持续几天，慢慢地宝宝的眼睛就会消肿。</p><p><strong>　　鼻子：</strong>不少新生儿的<strong>鼻子是塌塌的</strong>。这个同样也有顺产的原因，因为宝宝在经过狭长的产道时，鼻子也会受到产道的挤压，因此会看起来塌塌的。但是，如果宝爸宝妈是高鼻梁，那么宝宝长大后高鼻梁的几率还是比较高的。</p><p>　　从基因的角度来说，孩子像爸爸和妈妈的概率是一样的，并不存在宝宝先像爸爸后像妈妈的说法哦。随着宝宝的发育和营养的摄入、习惯的影响，宝宝的颜值都会有很大变化。</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Fri Feb 01 00:00:00 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>admin</span></a></li>
					</ul>
				</div>
				<div class="comment-grid-top">
					<h3>回复</h3>
					<div class="comments-top-top">
						<div class="top-comment-left"></div>
						
							<div class="top-comment-right">
								<ul>
									<li><span class="left-at">test</span></li>
									<li><span class="right-at">Fri Feb 01 00:00:00 CST 2019</span></li>
									<li><a class="reply">回复</a></li>
								</ul>
								<p>
									回复111
								</p>
							</div>
						
							<div class="top-comment-right">
								<ul>
									<li><span class="left-at">admin</span></li>
									<li><span class="right-at">Sun Feb 03 00:00:01 CST 2019</span></li>
									<li><a class="reply">回复</a></li>
								</ul>
								<p>
									回复4
								</p>
							</div>
						
						<div class="clearfix"></div>
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
