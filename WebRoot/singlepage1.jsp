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
					href="#">首页</a>
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
	<div class="banner-1"></div>
	<!--banner-end-->
	<!--single-page-->
	<div class="single">
		<div class="container">
			<h2>
				春天到！宝贝适合春季入园吗？
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　这几天，春季正悄然来临，伴随着一阵春意盎然的微风，一部名为《幼儿园新生入园》的灾难片正在热映。</p><p>　　有些家长们会选择将自己的宝宝春季就送入幼儿园，从来没接触过集体生活的宝宝，可能就会发出下列动作：</p><p><span style="color:#696969;">　　有的宝宝惊天地泣鬼神地蹦出一句：妈妈，你不爱我了吗?</span></p><p><span style="color:#696969;">　　有的宝宝求生欲爆棚，死死抱住妈妈，哭着说：妈妈不要丢下我!</span></p><p>　　总之，宝宝的每个毛孔都在拒绝上幼儿园!宝宝这种&ldquo;第一天上幼儿园&rdquo;的伤感离别，分分钟和家长演出琼瑶苦情戏。</p><p>　　幼儿园新生，都要经历一次与家庭精神上的&ldquo;断奶&rdquo;。</p><p>　　每每想到宝贝不可避免的撕心裂肺的哭声，有些家长们觉得，相比每年9月新学期开学时孩子们集体痛哭的场面，不如让宝宝在春季插班。</p><p>　　对于春季插班入园，很多妈妈也表示很支持~</p><p><strong>　　宝妈六六：避免不良情绪的传染</strong></p><p style="margin:0 22px 0 15px;border-left:5px solid #e2e2e2;padding:10px 15px;background:#f2f2f2;">　　我女儿就是插班生。我当时觉得几十个宝宝一起哭，那场面不哭都要被&ldquo;吓哭&rdquo;。这种悲伤的情绪，我女儿听到后肯定会放大悲声。所以我选择为女儿插班，让她和那些情绪稳定的&ldquo;老生&rdquo;沉浸在一片欢乐之中。</p><p>&nbsp;</p><p><strong>　　宝妈琪琪：得到更多的关注</strong></p><p style="margin:0 22px 0 15px;border-left:5px solid #e2e2e2;padding:10px 15px;background:#f2f2f2;">　　我儿子刚好3周岁，但是他的自理能力不强，所以我想春季插班生少的多，老师可能会有更多的时间去关心，照顾一下自己的孩子。这样可以缩短一下&ldquo;家园过渡&rdquo;的过程，帮助孩子排忧解虑。</p><p>&nbsp;</p><p><strong>　　宝妈燕燕：多了一份选择</strong></p><p style="margin:0 22px 0 15px;border-left:5px solid #e2e2e2;padding:10px 15px;background:#f2f2f2;">　　如果是春季的话，我觉得我可以多去选择班级。在入园前就多多跟孩子家长了解到哪个班老师的口碑比较好。这样的话我会更放心把孩子送进去。反而9月份的入园季是统一分班，没有了主动性。</p><p>&nbsp;</p><p><strong>　　宝妈红红：减少生病几率</strong></p><p style="margin:0 22px 0 15px;border-left:5px solid #e2e2e2;padding:10px 15px;background:#f2f2f2;">　　俗话说，多事之秋!如果秋天入园的话，岂不是活生生把宝宝送入了&ldquo;生病的季节&rdquo;?秋冬可是呼吸道感染的高发季节，再加上班里同学可能还会带来传染，我还是觉得春季入园更棒。</p><p>&nbsp;</p><p>　　但随之而来的，也会带来一些<span style="color:#008000;"><strong>不利的因素</strong></span>。</p><p>　　如比较内向宝宝在说自己是&ldquo;新来的同学&rdquo;的时候，加深了孩子的陌生感，会产生一种被孤立、被排斥的感觉;</p><p>　　有些宝宝也可能会跟不上大家的节奏，在集体活动中感到无所适从，从而产生挫败感，不自觉地就会发脾气。</p><p>　　所以是否选择春季入园，各位粑粑麻麻们也要摸清宝宝的脾性，提前为宝宝把关哦~</p><p>　　为了让宝宝很快融入美好的入园生活，<span style="color:#008000;"><strong>以下准备你也一定要做足</strong></span>!</p><p><span style="color:#008000;"><strong>　　一、宝宝入园的能力训练</strong></span></p><p><strong>　　1、自己解决大小便问题</strong></p><p>　　一般来说，宝宝<strong>过了18个月就可以开始如厕训练</strong>了，而上幼儿园通常是在宝宝3岁的时候。因此有足够的时间训练宝宝自己如厕。</p><p>　　要知道，幼儿园的老师照看不少孩子，如果宝宝在幼儿园尿湿了裤子，这会引起其他小伙伴的吐槽，不利于孩子身心发育。</p><p><strong>　　2、自己解决吃饭喝水问题</strong></p><p>　　父母总是特别操心吃饭问题，毕竟有的宝宝在家里依旧是妈妈、奶奶或者其他长辈追着宝宝喂饭，但是在幼儿园吃饭的时间就只能自食其力。</p><p>　　所以在入园前一定要做好这个训练。另外，喝水也是大问题，一定要教会宝宝自己掌控喝水的时间，不要一直不喝水。</p><p><strong>　　3、自己独立入睡的问题</strong></p><p>　　宝宝一整天在幼儿园里，基本上是玩、吃、睡，吃完午饭后一般会睡2个小时。</p><p>　　许多小朋友在家里的是通常是一直疯玩不睡，要么就要哄着才能睡觉，这到了幼儿园之后肯定会不适应。因此，在入园准备中，一定要培养宝宝独立入睡的习惯。</p><p><strong>　　4、学会表达自己的想法</strong></p><p>　　在家里，父母、长辈一家子人看着一个宝宝，稍微有一点不高兴，全家人都开始揣测宝宝的心思。</p><p>　　但是在幼儿园里，老师并不能时时刻刻关注到每个孩子的情绪以及想法，因此要教会孩子主动表达自己的想法。比如，想喝水了要直接说，想尿尿了要直接说。</p><p><span style="color:#008000;"><strong>　　二、宝宝入园需要做好4项准备</strong></span></p><p><strong>　　1、个人用品准备</strong></p><p>　　个人物品包括开学用品、学习用品以及生活用品。比如，简单安全的学习用具，并告诉他这些东西的用途。</p><p>　　另外，准备一个他喜欢的小书包(大部分幼儿园有专用的书包)，书包里可以装下宝宝喜欢的小手巾、水壶等。</p><p><strong>　　2、环境准备</strong></p><p>　　提前带孩子去幼儿园周边感受上学的氛围，参观并且了解幼儿园，看看大型户外运动玩具，有利于提前适应。</p><p><strong>　　3、宝宝的心理准备</strong></p><p>　　大部分宝宝第一次上幼儿园会有分离焦虑症，上学第一天甚至第一个星期都哭得稀里哗啦的。</p><p>　　这就需要父母提前做好宝宝的入园心理准备，增加宝宝对幼儿园、老师与小朋友的熟悉感与认同感，给宝宝讲一讲上幼儿园的趣事，培养他们对幼儿园的向往。</p><p><strong>　　4、个人习惯准备</strong></p><p>　　集体生活都是有制度的，父母需要帮助准备上幼儿园的宝宝了解作息制度，熟悉幼儿园的一日生活，比如，大概什么时间段要做什么，不能任由自己的性子。</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Tue Mar 05 09:17:00 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>ease</span></a></li>
					</ul>
				</div>
				<div class="comment-grid-top">
					<h3>回复</h3>
					<div class="comments-top-top">
						<div class="top-comment-left"></div>
						
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

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">进入失败</h4>
				</div>
				<div class="modal-body">登录后方可查看，按下 ESC 按钮退出。</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>
