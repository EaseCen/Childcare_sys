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
			<h2>人工喂养是一种成熟的养育方式</h2>
			<div class="single-page-artical">
				<div class="artical-content">
					<p>
						欢迎来到快乐呱呱【<strong>妈妈学园</strong>】，在这里，你将学习到育儿领域内顶级专家团共同打造的新手妈妈必修课程，掌握破解宝宝营养、睡眠、常见病、早教启蒙等育儿难题的方法，进阶为合格妈妈。
					</p>
					<p>
						母乳一直被认为是婴儿喂养的金标准，世界卫生组织、美国儿科学会等权威组织都建议，在婴儿最初6个月内给予纯母乳喂养。因为大量的研究表明，母乳喂养对宝宝和妈妈的健康都有利，能够增进母婴之间的感情，而且安全经济又方便，对整个社会而言，可以帮助节约医疗资源，减轻医务人员的负担，还能促进环境的可持续发展。</p>
					<p>
						近年来，我们国家不断加大对母乳喂养的宣传和推广力度，越来越多的新手妈妈知道母乳喂养的好处，纷纷加入到母乳喂养的大军中来，这是好事。</p>
					<p>
						但有的妈妈过分执着于母乳喂养，一会担心母乳不够宝宝吃，一会又怕营养不能满足宝宝的需求，其实这些担心都是多余的。正常情况下，妈妈分泌的乳汁量超过宝宝所需，而且宝宝吃得越多，吸吮乳头越频繁，乳房产生的乳汁会越多。就好比海绵里的水，吸一吸，总会有的。至于母乳的营养，妈妈也不用担心。母乳是种聪明的食物，会随着宝宝月龄的改变自动调整，以满足宝宝前6个月的营养需求。等宝宝满6个月以后，需要的营养量增多，仅靠母乳无法满足，需要添加辅食来补充一部分营养。</p>
					<p>
						还有的妈妈把母乳喂养当成了一种&ldquo;政治正确&rdquo;，好像宝宝不吃母乳就比别人家的孩子差一大截一样。最典型的例子是觉得母乳喂养的宝宝更聪明。这个结论的依据是母乳中含有DHA等长链多不饱和脂肪酸，有利于宝宝神经发育，而且在一些关于喂养方式对婴儿智力影响的研究中，研究者们发现母乳喂养的宝宝获得了更高的分数。但仅凭这些不足以说明母乳对智力发育真有什么帮助。有人发现，这些研究选择的样本大多是家庭条件比较好、社会经济地位比较高的家庭，而这些家庭本身就有基因和教育上的优势。所以宝宝更聪明到底是因为母乳喂养，还是因为基因和教育呢？伦敦大学的冯&bull;斯塔姆博士带领团队做了一项研究，他们发现喝母乳长大的孩子并不会更聪明。</p>
					<p>
						所以在母乳喂养这件事上，妈妈们要客观看待，能坚持最好，但在多次尝试后，依然没办法实现或继续母乳喂养时，也不用焦虑，更不要有心理负担，毕竟母乳喂养是一件自然而然的事，强求不得。比如患有乙肝、肺结核等严重传染病的妈妈，我们是不建议母乳喂养的，以免哺乳时传染给宝宝。还有一些妈妈身体比较虚弱，没有足够的体力和精力哺乳宝宝、或者没有能力产出足量的母乳，我们也不建议硬要母乳喂养宝宝。另外，宝宝如果有氨基酸代谢异常等情况，也是不适合吃母乳的。妈妈可以选择相应的配方奶，进行人工喂养。</p>
					<p>
						虽然配方奶的营养没母乳好，也远不如喂母乳来的方便，但目前普遍认为配方奶是母乳最好的替代品。而且宝宝不会因为吃配方奶而跟妈妈不亲，也不会因为这个，身体和各方面的能力就比吃母乳的孩子差，所以我们也没必要排斥人工喂养。</p>
					<p>
						事实上，人工喂养跟母乳喂养一样，都是一种喂养方式，不管妈妈是出于客观条件还是主观选择，最终采取了人工喂养，都不应该因此而招致道德谴责。要知道，自主选择喂养方式是每个妈妈的权利。对于那些强忍疼痛、孤独追奶、坚持上班背奶的母乳妈妈，我们报以掌声和敬意；对于那些因为种种原因选择人工喂养的妈妈，我们同样理解和支持。因此，到底选择母乳喂养还是人工喂养，真没那么纠结，只要适合自己和宝宝的就是最好的。</p>
					">
				</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Thu Feb 14 00:00:00 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>test</span></a></li>
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
