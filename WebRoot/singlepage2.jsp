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
				涨知识！宝宝要吃的辅食好讲究
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　欢迎来到快乐呱呱【轻听&middot;1000天】，从怀孕到宝宝2岁，为你专属定制孕育知识!宝宝的生长发育情况，怀孕和育儿阶段的各种困惑，高质量的陪伴方法，每天一篇轻知识，让孕育变得更轻松、有趣!</p><p>　　今天呱呱为你推荐的是宝宝5个月24天，有关于&ldquo;<strong>宝宝辅食添加</strong>&rdquo;的内容。</p><p>　　世界卫生组织建议，宝宝满6个月以后，为了满足TA越来越高的营养需求，在继续母乳喂养的同时，要给宝宝添加辅食。宝宝马上就要满6个月了，呱呱今天就来跟你聊聊辅食添加的那些事儿。</p><p>　　首先，<strong>宝宝的第一口辅食，可以从富含铁的婴儿米粉开始添加</strong>。之所以强调铁，是因为宝宝6个月以后，从娘胎和母乳中获得的铁，已经不能满足TA的需求了，这时需要从辅食中补充铁，避免造成缺铁和缺铁性贫血。而选择米粉，则是因为相对于肉泥、蛋黄而言，婴儿米粉的营养会比较均衡。</p><p>　　其次，第一次加辅食的时间，也很有讲究。呱呱建议你选择宝宝身体健康并且情绪比较好的时候来加。为了让宝宝更好地接受辅食，你可以先给TA喂一点奶，然后用小勺子喂辅食，最后又再喂一点奶。这样就可以避免宝宝在很饿的时候，由于不习惯辅食而发脾气。当宝宝顺利接受辅食以后，你就可以尝试在早、中或者晚餐的时间来喂辅食，因为添加辅食的目的，就是为了以后逐渐用辅食来代替这顿奶。</p><p>　　最后，呱呱还要提醒的是，给宝宝添加辅食，要遵循一定的原则。辅食的量，要<strong>由少量到多量</strong>，通常第一次只需要尝试1小勺就够了，之后再慢慢加量。<strong>辅食的性状，也要从泥糊状开始，逐渐过渡半固体和固体食物</strong>。另外要注意的是，<strong>每次只能添加一种新食物，并且要观察2-3天</strong>，看宝宝有没有食物过敏反应。如果宝宝适应良好，才可以增加另一种新食物。相反，如果宝宝出现腹泻、呕吐、皮疹等不良反应，就要立即停止添加的新食物，等宝宝症状消失以后，再从小量开始添加，如果还是出现同样的不良反应，要咨询医生，看看宝宝是不是食物过敏。</p><p>　　听完呱呱的讲解，又涨知识了!现在快点给宝宝选购好婴儿米粉吧，记住，要富含铁哦!</p><p>　　了解轻听&middot;1000天的更多内容，<strong>倾听专属定制的短音频</strong>，请下载&ldquo;<strong>快乐妈咪</strong>&rdquo;APP，或者打开微信扫一扫下图的&ldquo;<strong>快乐呱呱</strong>&rdquo;小程序码!</p><p>　　辅食营养在宝宝成长过程中是不可或缺的，奠定了宝宝健康生长发育的基础，如果不能科学有序地添加，很可能引起各种营养失衡、缺乏等情况。</p><h2 style="width:550px;font:normal 22px/21px 微软雅黑;text-align:left;border-bottom:1px solid #000000;color:#000000;padding-left:5px;padding-bottom:4px;margin-bottom:20px;">问：什么时候可以给宝宝添加辅食?</h2><p>　　刘长伟营养医师解答：</p><p>　　对于健康、发育良好的宝宝一般建议满六个月后开始添加辅食，但要看孩子具体发育的情况，对于特殊的情况例如早产的宝宝，要等到纠正月龄满六个月以后。母乳喂养的宝宝，如果妈妈四个月后母乳不多了，也可以考虑加点辅食，但一般情况下还是建议六个月以后再添加。 可以通过以下4个信号来判断能否给宝宝添加辅食： (1)抬舌反射是否消失了，4个月之前宝宝吃固体或半固体辅食舌头就会往外推，不会下咽，这是自我保护的一种机制，如果要吃辅食就意味着要等抬舌反应消失之后才可以。 (2)对辅食要感兴趣，如果宝宝不感兴趣而家长强行喂食，宝宝会产生厌恶感。 (3)有一定的动手能力，可以用手抓或把食物放嘴里。 (4)能坐稳或者相对能坐得起来。</p><h2 style="width:550px;font:normal 22px/21px 微软雅黑;text-align:left;border-bottom:1px solid #000000;color:#000000;padding-left:5px;padding-bottom:4px;margin-bottom:20px;">问：怎样的辅食是好辅食，怎样的辅食是糟糕的辅食?</h2><p>　　刘长伟营养医师解答：</p><p>　　辅食的好坏区别主要是在营养密度，指的就是我们所说的碳水化合物，脂肪和蛋白质的含量，还有微量营养素，B族维生素，维生素C和E，铁、锌等等。好的辅食营养密度更高一些，比如强化剂的谷类辅食比白稀饭营养密度要高一些，肉泥比骨头汤营养密度高，吃点西兰花比喝菜汁营养密度又高一些。给宝宝最初的辅食营养密度要高一些，而不能太多的汤汤水水，包括果汁，维生素膳食纤维含量低，糖分相对高一些，营养密度并不是很好，也相当于糟糕的辅食。 六个月以后的宝宝面临缺铁问题，尤其是母乳喂养的宝宝，母乳里铁含量低，如果长期给宝宝吃不含铁的辅食，容易给宝宝造成贫血，长期缺铁贫血的影响很多，比如免疫力，甚至影响到智力发育，而且不可逆的，影响后是无法恢复正常了。</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Mon Mar 04 14:15:21 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>test</span></a></li>
					</ul>
				</div>
				<div class="comment-grid-top">
					<h3>回复</h3>
					<div class="comments-top-top">
						<div class="top-comment-left"></div>
						
							<div class="top-comment-right">
								<ul>
									<li><span class="left-at">test</span></li>
									<li><span class="right-at">Thu Mar 07 00:00:00 CST 2019</span></li>
									<li><a class="reply">回复</a></li>
								</ul>
								<p>
									11111111111
								</p>
							</div>
						
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="artical-commentbox">
					<h3>leave a comment</h3>
					<div class="table-form">
						<form
							action="/Childcare_system/posts/addReposts.action"
							method="post">
							<input type="hidden" id="adduser" name="repost_user" value="test" />
							
							<input type="hidden" class="form-control input-lg" id="addtime" name="time"
								value="2019-03-09"
								required autofocus readonly="readonly">
							<input type="hidden" id="addrepost_id" name="repost_id" value="10" />
							
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
