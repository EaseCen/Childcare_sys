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
				526法则轻松避免辅食添加误区
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　欢迎来到快乐呱呱【<strong>妈妈学园</strong>】，在这里，你将学习到育儿领域内顶级专家团共同打造的新手妈妈必修课程，掌握破解宝宝营养、睡眠、常见病、早教启蒙等育儿难题的方法，进阶为合格妈妈。</p><p>　　今天来学习澳大利亚DAA认证注册执业营养师刘遂谦的&ldquo;<strong>添加辅食误区</strong>&rdquo;课程。</p><p>　　通过上节课的学习，你可能已经知道怎么给宝宝添加辅食了，但宝宝能吃什么不能吃什么你能说清楚吗？如果不能，那么在给宝宝添加辅食时，你很可能会陷入各种误区。不过，学完今天这节课，记住&ldquo;526&rdquo;法则，你也许就可以轻松避免大部分误区了。</p><p>　　解释一下，&ldquo;526&rdquo;法则就是：添加辅食必备的五类食物、不适合过早添加的两类食物、以及好辅食的六大特征，下面我们一个个说。</p><p>　　首先说说添加辅食必备的五类食物：</p><p>　　<strong>①谷物。</strong>是碳水化合物的主要来源，可为宝宝提供能量。刚开始添加辅食时，以富含铁的谷物类食物为主，包括含铁米粉、婴儿麦片或家庭自制的米糊等，等宝宝适应后再增加食物的种类。</p><p><strong>　　②肉类。</strong>富含优质蛋白质、铁、维生素A等营养素，是宝宝不可或缺的营养来源。包括红肉和白肉，红肉以瘦猪肉、牛肉、肝脏为主，其中的血红素铁易于宝宝吸收利用;白肉以鸡肉、鱼肉、虾肉为主。给宝宝添加时，可做成肉泥单独给宝宝吃，也可加到米粉或面条中混合着吃，但要注意观察宝宝是否会出现过敏等情况。</p><p>　　<strong>③蔬果类。</strong>是维生素、纤维素和矿物质的重要来源之一，而且口味和质地多样，有助于宝宝适应多重口味、锻炼咀嚼和吞咽能力。添加的方法跟肉类一样，可做成蔬菜泥、水果泥直接给宝宝吃，也可以加入适量植物油和肉泥、米粉等混在一起给宝宝吃。</p><p>　<strong>　④奶和奶制品。</strong>是优质蛋白质的主要来源。宝宝从添加辅食开始到1岁，需每天保证不少于600ML的母乳或配方奶，月龄越小，奶量需要更多，在保证奶量的基础上，按需求添加其他类别的食物;1-2岁期间，每天喝500ML的奶，可引入少量鲜牛奶、酸奶、或奶酪作为辅食的一部分，其他食物按宝宝需求而定。</p><p style="text-align: center;">图片来源：@视觉中国</p><p>　　<strong>⑤豆类及豆制品。</strong>包括煮熟的豆浆和豆腐，都是优质蛋白质的补充来源。有的妈妈可能担心豆制品可能有激素之类的，不适合给宝宝吃。其实豆制品中的类激素不会影响到人的身体健康，只要宝宝对豆制品不过敏，是可以吃的，但量不要太多，每次控制在30g以内。</p><p>　　以上五类食物能为宝宝提供较为全面而均衡的营养，但宝宝辅食除了营养外，还强调适合。适合就好比排在前面的1，营养则是后面的0，没有了1，0也就没有了意义。所以，为了避免踩坑，妈妈应该要知道哪些食物适合给宝宝吃，哪些不适合过早吃。前面提到的五类食物都是适合给宝宝吃的，而下面这两类则不适合过早给宝宝吃，特别是1岁以下的宝宝。</p><p><strong>　　①饮品类：包括果汁、纯牛奶、菜水、米汤、蜂蜜水等。</strong></p><p>　　果汁香甜可口，喝惯了果汁的宝宝，发生肥胖和龋齿的风险更高一些，还可能导致宝宝拒绝喝白开水。如果想给宝宝吃水果，做成水果泥、水果条给TA吃更好。</p><p>　　纯牛奶中含有高浓度的蛋白质和矿物质，会给宝宝还没成熟的肾脏带来负担，而且纯牛奶中含铁比较少，宝宝喝太多可能有缺铁性贫血的风险。菜水和米汤中的营养很有限，且容易让宝宝养成不喝白水的习惯，因此不适合给宝宝喝。蜂蜜可能含有肉毒杆菌毒素，为了安全起见，不建议给宝宝喝蜂蜜水。</p><p><strong>　　②调味品：盐、糖、酱油等。</strong></p><p>　　宝宝从平时的饮食中可以获得足够的钠，不需要额外加盐、酱油等调味品，以免养成重口味，同时也给肾脏造成负担。另外，大部分宝宝都喜欢吃甜的东西，妈妈可以利用天然的蔬菜、水果中的甜味，让宝宝爱上辅食。但加糖就没必要了，以免增加宝宝龋齿和超重肥胖的风险。</p><p>　　如果把不适合过早给宝宝吃的食物，统称为不好的辅食。那么好的辅食应该是怎样的呢？好辅食必然少不了六大特征：</p><p><strong>　　①安全</strong></p><p>　　这是饮食的最高标准，辅食也不例外。在准备辅食过程中要保持卫生，以免导致宝宝拉肚子。</p><p><strong>　　②营养密度高</strong></p><p>　　宝宝胃容量有限，吃不了太多东西，这就要求辅食能提供丰富而全面的营养，尤其是能量和蛋白质、铁等营养素。</p><p><strong>　　③易消化</strong></p><p>　　宝宝的咀嚼能力和消化吸收能力还不完善，容易消化的辅食可以减轻宝宝肠胃负担，从而更好地吸收和利用营养。</p><p><strong>　　④不含骨头等坚硬的碎块</strong></p><p>　　宝宝还小，吃有骨头和鱼刺的辅食容易呛到或扎到。</p><p><strong>　　⑤清淡不油腻</strong></p><p>　　口感天然，原汁原味的辅食，有利于提高宝宝对不同天然食物口味的接受度，减少偏食挑食的风险，对预防肥胖也有帮助。</p><p><strong>　　⑥易处理</strong></p><p>　　好的辅食除了本身具备各种优点外，还应容易处理，包括易清洗、易切割、易蒸煮、不粘锅等等，这可以大大节省加工的时间和精力，增加妈妈做辅食的幸福感。当然，如果妈妈把做辅食当成一种闲暇的乐趣，幸福感也会蹭蹭上升。</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Sat Mar 02 17:16:40 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>root</span></a></li>
					</ul>
				</div>
				<div class="comment-grid-top">
					<h3>回复</h3>
					<div class="comments-top-top">
						<div class="top-comment-left"></div>
						
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
							<input type="hidden" id="addrepost_id" name="repost_id" value="7" />
							
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
