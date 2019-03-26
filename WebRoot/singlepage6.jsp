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
				宝宝换牙期问题多 家长把好关
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　宝宝出生后几个月就开始长牙，此时长出的牙齿称为乳牙，今后会脱落，由恒牙取而代之。恒牙将会伴随着孩子今后的人生，恒牙长得好不好，不仅会影响到孩子的日常饮食，还会影响其容貌。因此，在孩子换牙的关键时期，家长要把好关，确保乳牙在该脱落的时候脱落，恒牙在该萌出的时候萌出。</p><p><span style="color:#008000;"><strong>　　▍宝宝什么时候开始换牙？</strong></span></p><p>　　人的牙齿有乳牙和恒牙两个阶段。乳牙20只，通常6个月左右开始萌出，2-3岁长齐；恒牙28-32只（其中智齿0-4只），通常6岁前后开始长出，12-13岁长齐28只（智齿因人而异）。</p><p>　　换牙是乳牙脱落，恒牙长出的过程。宝宝什么时候开始换牙呢？<strong>换牙期通常是在宝宝6-12岁期间</strong>。通常情况下，宝宝6岁左右，下颌的乳中切牙开始摇动、脱落，不久，在此处便会长出恒中切牙；同时，在第二乳磨牙的后方会长出第一磨牙；此后，其他牙也陆续替换。</p><p>　　当然有些宝宝换牙比较早，从4岁就开始换牙了，也有些宝宝换牙比较迟，到了7岁才掉第一颗乳牙。</p><p>　　乳牙期贯穿了幼儿和儿童阶段，而接替乳牙的恒牙却几乎能够陪伴宝宝走完一生。恒牙的生长情况直接关系到宝宝今后的牙齿是否整齐、美观，更重要的是恒牙会影响饮食、面貌。因而，宝宝换牙时期的保健和护理尤为重要。</p><p><span style="color:#008000;">　<strong>　▍宝宝牙齿松动了怎么办？</strong></span></p><p>　　牙齿松动一般出现在换牙时期，如果只是乳牙松动没有新牙长出来，可以先观察一段时间，但若有新牙长出来，就要及时把乳牙拔掉，以免影响恒牙的萌出。</p><p>　　乳牙松动，最好是让其自行脱落，但如果乳牙影响恒牙生长可以去医院拔除。以前老一辈的做法就是，小孩子牙齿松了，就一律拿个钳子帮他把牙齿拔了，现在看来这种做法也真是够暴力的。</p><p>　　牙齿从牙根开始松动到脱落，通常会持续几个月，自行脱落的时间因人而异。若牙齿始终不能自行脱落，而恒牙又开始冒出来了，那就要试着让孩子把牙齿摇松，如果牙根完全脱离了，轻微旋转就会让它掉下来。但是，切不可勉强，不能猛拉，自己用钳子拔牙的做法更不推崇。若处理不当，容易造成损伤和感染，建议还是去医院进行拔除。</p><p><span style="color:#008000;"><strong>　　▍宝宝换牙期常遇到的问题解答</strong></span></p><p><strong>　　问题一：换牙期，宝宝爱用舌头舔松动的牙齿，有影响吗？</strong></p><p>　　【解答】：儿童换牙期较长，一般需要6-7年，这段时期如果孩子有用舌头舔松动的牙、咬唇、舔唇、咬舌、伸舌、吮指、咬指甲等不良习惯，容易造成牙列不齐、咬合错乱和面部不对称等畸形，影响牙齿功能和面部美观。所以，家长要时刻注意，及时提醒及帮孩子纠正这些不良习惯。若他自己不能纠正，就需到口腔科就诊，借助矫治器纠正。</p><p><strong>　　问题二：宝宝乳牙迟早要换，乳牙蛀了或者不小心磕碰掉了也不打紧吧？</strong></p><p>　　【解答】：要注意乳磨牙龋病的及时治疗和预防，绝不能有&ldquo;乳牙迟早要换，坏了也不必治&rdquo;的错误观念。应当尽量使乳牙保留到恒牙萌出，如乳牙过早缺失，常导致继发性恒牙萌出间隙不足而引起牙列不齐。</p><p><strong>　　问题三：宝宝之前的乳牙许多都蛀了，刚换了新牙，一切都从新开始，但还是害怕长出来的恒牙很快又蛀了，怎么办？</strong></p><p>　　【解答】：这个时期不要频繁给孩子食用零食，特别是甜食。牛奶对孩子的身体发育有很大的帮助，但饮料会让孩子的口腔长期处于pH值较低的环境下，牙齿容易发生龋坏。此外，还要养成刷牙的好习惯。</p><p>　　牙齿影响孩子的一生，想让孩子拥有更出彩的人生，父母应该尽力帮助孩子从小养成爱牙护牙的好习惯，为孩子把好关，让一口健康漂亮的好牙齿伴其一生。</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Tue Feb 05 14:00:02 CST 2019</span></li>
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
									<li><span class="left-at">admin</span></li>
									<li><span class="right-at">Sun Feb 03 00:00:00 CST 2019</span></li>
									<li><a class="reply">回复</a></li>
								</ul>
								<p>
									回复211
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
