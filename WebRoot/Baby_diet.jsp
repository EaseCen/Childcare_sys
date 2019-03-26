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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>胎儿发育评估</title>
<link rel="shortcut icon" href="images/favicon.png" />




<!-- Style Sheet-->
<link rel="stylesheet" href="mstp_35_knowledge/css/style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='mstp_35_knowledge/css/bootstrap5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='mstp_35_knowledge/css/responsive5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='mstp_35_knowledge/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css'
	href='mstp_35_knowledge/css/main5152.css?ver=1.0' type='text/css'
	media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='mstp_35_knowledge/css/custom5152.html?ver=1.0' type='text/css'
	media='all' />
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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script></script>
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

.main-nav {
	position: fixed;
	top: 5px;
	left: 0;
}

.main-nav1 {
	position: fixed;
	top: 5px;
	right: 0;
}

.navbar1 {
	background-color: #0d192f;
	border-color: #0d192f;
	font-size: 16px;
}

.navbar {
	margin-bottom: 0;
	line-height: 0;
}

.navbar .nav {
    margin: 6px 10px 0 0;
}
</style>
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
		role="navigation" style="height: 50px;">
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



	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">

					<article class=" page type-page hentry clearfix">
					<h1 class="post-title">
						<a href="#">宝宝饮食</a>
					</h1>
					<hr>
					</article>

					<div class="faqs clearfix">
						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">宝宝几个月可以添加辅食</a>
						</h3>
						<div class="faq-answer">
							<p>世界卫生组织、美国儿科学会和英国政府卫生部都建议，纯母乳喂养至少应该进行6个月，6个月之后，才开始给宝宝添加辅食。因为母乳能够满足6个月前包括水在内的全部营养需求。而作为母乳的模仿品和替代品的按比例冲调的配方奶，也同样能够满足宝宝6个月前的全部营养需求。</p>
							<p>如果妈妈因为某些原因无法继续纯母乳喂养，与此同时宝宝也出现了添加辅食的生理信号，比如挺舌反应消失、能自主挺直脖子、对食物感兴趣等，这时也可以开始添加辅食。但最早不能早于17周龄，最晚不能晚于26周龄。</p>
							<p>宝宝的第一口辅食应该满足富含铁、易消化、不容易过敏这三个条件，因此建议选择强化铁的婴儿米粉作为宝宝的第一口辅食，最好是购买大品牌生产的成品辅食，因为这些辅食的是采取专业的工业技术制造的，能最大化保留食物中的营养，家庭自制辅食暂时无法做到这点。目前市面上的大品牌成品辅食都很受欢迎，比如亨氏铁锌钙营养奶米粉，是片状的米粉，冲调后非常细腻，不会结块，而且含有丰富的铁锌钙等营养素，容易被宝宝娇嫩的肠胃吸收消化，非常适合刚开始添加辅食的宝宝吃。</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#"> 为什么要添加辅食</a>
						</h3>
						<div class="faq-answer">
							<p>
								1、满足宝宝不断发展的营养需求。宝宝满6月龄后，单一的母乳喂养已不能完全满足其对营养的需求，需要在坚持母乳喂养的基础上，通过添加辅食补充足够的能量、蛋白质，以及铁、锌、维生素A和B族维生素等多种关键营养素，特别需要补充铁，如果不及时添加辅食，让宝宝从其他食物中获取足够的铁，则可能导致缺铁性贫血。所以，通常都会建议及时给宝宝添加辅食，第一口辅食最好是富含铁的婴儿米粉或米糊，如亨氏铁锌钙营养奶米粉，含有丰富的铁锌钙，而且质地细腻，营养好吸收，非常适合刚开始添加辅食的宝宝。除了铁之外，辅食还能提供更多元、均衡的营养，包括蛋白质、热量、维生素、微量元素等，满足宝宝的营养需求。</p>
							<p>
								2、锻炼咀嚼吞咽能力。6-12个月正是发展咀嚼与吞咽的关键期，对于宝宝来说，咀嚼与吞咽能力是需要学习的，如果没有练习，到了1岁以后，就很可能会拒绝尝试，即使宝宝肯吃，有时也会马上吐掉，造成喂食上的困难。所以在宝宝满7月龄以后，应逐渐加入不同种类不同口味不同形状的辅食。以很多妈妈都选择的亨氏成品辅食为例，可以先从胡萝卜营养米粉、混合蔬菜营养米粉开始，逐渐过渡到五谷杂粮营养米粉，1岁以后则换成西兰花香菇面条、营养南瓜面条等面食类。让宝宝从小适应多种口味，避免日后出现挑食、偏食的现象，同时锻炼咀嚼吞咽能力。</p>
							<p>3、锻炼肠胃消化能力。宝宝4-6个月大的时候，开始分泌唾液淀粉酶，尽管含量不高，但代表着宝宝的消化及吸收功能正在逐渐发育，这时练习吃辅食，可以帮助锻炼肠胃消化能力。
							</p>
							<p>4、促进生长发育。宝宝满6月龄时，他的口腔运动功能，味觉、嗅觉、触觉等感知觉，以及心理、认知和行为能力基本上已经准备好接受新的食物。此时开始添加辅食，不仅能满足宝宝的营养需求，也能满足其心理需求，并促进其感知觉、心理及认知和行为能力的发展。</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">四个月宝宝辅食食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								四个月宝宝主食食谱<br>4-6个月是宝宝刚开始接触辅食的阶段，最好以味道清淡的食物开始尝试，需要看宝宝的发育状况，改变食物的种类和硬度。不容易引起宝宝过敏的米汤，是比较适合让宝宝尝试的第一次主食类辅食。
							</p>
							<p>
								四个月宝宝蔬菜食谱<br>辅食初期可以单纯的单一菜汤为主，记得煮汤时不要添加调味料。因为宝宝的味觉细胞很敏感，蔬菜的原味对宝宝来说已经是全新的尝试了。
							</p>
							<p>
								四个月宝宝摄取蛋白质食谱<br>豆类制品对宝宝来说很重要，因为可以提供植物性蛋白质，是宝宝的氨基酸来源。蛋白质有促进人体生长发育和新陈代谢的作用。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">五个月宝宝辅食食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								五个月宝宝主食食谱 <br>宝宝看到成人吃饭时会伸手去抓或嘴唇动、流口水，这时就可以考虑给宝宝添加一些辅食，为将来的断奶做准备了。
							</p>
							<p>
								五个月宝宝蔬菜食谱 <br>有很多蔬菜都适合做蔬菜汁或者蔬菜汤，例如胡萝卜、菠菜、青江菜、高丽菜、小白菜等，妈妈可以依据当季季节来选择适当的蔬菜种类。
							</p>
							<p>
								五个月宝宝摄取蛋白质食谱 <br>两种或多种来源的蛋白质同时食用时，其中所含的必需氨基酸相互取长补短，使混合蛋白质的营养价值提高，这称为蛋白质营养互补作用。妈妈日常可以尝试给予宝宝多种蛋白质搭配的食物。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">六个月宝宝辅食食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								六个月宝宝主食食谱 <br>六个月宝宝主食食谱

								六个月大的宝宝可以正式开始添加辅食，先吃富含铁的米粉或肉泥、再吃菜泥、果泥、蛋黄等。这阶段，宝宝主食食谱暂时以质地细腻容易消化的糊状米粉为主，例如亨氏铁锌钙营养奶米粉，能让宝宝容易接受。等宝宝适应良好后，可逐渐换成亨氏婴儿营养米粉、混合蔬菜营养米粉、胡萝卜营养米粉等。
							</p>
							<p>
								六个月宝宝蔬菜食谱 <br>蔬菜浓汤
								食材：西红柿400克、茭瓜300克、芹菜200克、香菜50克、豆芽50克、牛奶500克、奶油50克、胡椒粉2克、盐5克、蒜末10克。做法：芹菜放入搅拌机;打成泥备用;西红柿、茭瓜切块备用;热锅加入奶油，加入蒜末爆香，加入芹菜泥和牛奶，熬到开;加入西红柿、茭瓜继续煮10分钟。加入豆芽、香菜、胡椒粉、盐调味，就可以吃了。营养提示：喝蔬菜浓汤，有利于增强人体抵抗力，而芹菜中含有的铁和钙，有助于补充微量元素。
							</p>
							<p>
								六个月宝宝摄取蛋白质食谱 <br>鱼类对于宝宝的发育非常重要，其中含有丰富的蛋白质和维生素，有利于宝宝智力的发育。给六个月的宝宝添加辅食可以适当准备一些鱼类食谱，鱼肉含磷脂、蛋白质很高，并且细嫩易消化，适合婴儿发育的营养需要，但是一定要选购新鲜的鱼。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">七个月宝宝辅食食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								七个月宝宝辅食食谱 <br>在给宝宝添加碎菜、肉末时，要从少量逐步递增。在出牙时期，可以尝试给宝宝吃小饼干、烤馒头片等，让他练习咀嚼
							</p>
							<p>
								7个月宝宝辅食应如何添加 <br>主要食物：母乳或配方奶<br>
								辅助食物：白开水、鱼肝油（维生素A、维生素D比例为3:1）、水果汁、菜汁、菜汤、肉汤、米粉（糊）、蛋黄泥、菜泥、水果泥、粥、烂面条、肝泥、肉泥、动物血、豆腐
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">八个月宝宝食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								八个月宝宝食谱 <br>8个月宝宝辅食，可食用碎菜、蛋黄、粥、面条、鱼、肉末等。辅食的性质还应以柔嫩、半固体为好。给宝宝做的蔬菜品种应多样，如：胡萝卜、西红柿、洋葱等，对经常便秘的宝宝可选菠菜、卷心菜、萝卜、葱头等含纤维多的食物。
							</p>
							<p>
								宝宝8个月需要补充哪些营养 <br>1.
								热量：这个时期的宝宝的体重如果大幅度增加，80%是摄取了过多的热量，如果宝宝很瘦小或发育很慢，很可能是热量不足。
								宝宝所需的热量开始大半从母乳或奶粉中摄取，后逐渐转变为从固体食物中摄取。 <br> 2.
								蛋白质：肉、鸡、鱼以及豆腐里都含有优质蛋白质，可以把这些做成宝宝能吃的食物喂给宝宝，但一次不要太多，应给宝宝调剂着吃。 <br>
								3.
								谷类和其他碳水化合物：一天给宝宝吃2～4匙的谷类食品，就能提供给宝宝基本的维生素、矿物质及蛋白质。谷类食物中有全谷类麦片、米片、粥或面条等。
								<br> 4. 水分：不要因为母乳或奶粉量的递减而减少宝宝对水分的摄取，尤其在夏天，更要多喂水或稀释过的果汁。 <br>
								5. 铁质：由于这个时期宝宝储存的铁质已快要耗尽，需及时补充含铁质的食物。
							</p>
							<p>
								8个月宝宝辅食应如何添加 <br>主要食物：母乳或配方奶 <br>
								辅助食物：白开水、鱼肝油(维生素A、维生素D比例为3:1)、水果汁、菜汁、菜汤、肉汤、米粉(糊)、蛋黄泥、菜泥、水果泥、肉末、碎菜末、稠粥、烂面条、肝泥、肉泥、动物血、豆腐
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">九个月宝宝食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								九个月宝宝主食食谱 <br>九个月的宝宝已经进入了长牙期，你可以选择宝宝喜欢的进食方式，给宝宝做一些可以用牙床捻碎柔软的固体食物，或给一些酥软的手指状食物，如碎菜、碎肉、烂面、饼干及面包等，这样不仅可以锻炼宝宝的咀嚼功能，也可以训练宝宝的吞咽动作和他的手指抓握感。在主食方面，宝宝可以吃多种面食和粥类，你可以将主食做得绵烂一些，方便宝宝咀嚼。
							</p>
							<p>
								九个月宝宝蔬菜食谱 <br>蔬菜是胡萝卜素、维生素C、矿物质、蛋白质等应营养物质的良好来源，对宝宝的健康成长有很大帮助。你可以和以前一样把蔬菜打成汁喂给宝宝，也可以用蔬菜烹饪一些绵软的菜肴，锻炼宝宝的咀嚼能力。
							</p>
							<p>
								九个月宝宝摄取蛋白质食谱 <br>9个月的宝宝身体已经能分泌可以充分消化蛋白质的消化酶了，此时妈妈可以给宝宝多喂些含蛋白质丰富的辅食，让宝宝吸收足够的蛋白质，以满足身体生长需求。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">十个月宝宝食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								十个月宝宝主食食谱 <br>十个月的宝宝能够吃大部分食物了，此时应以饭食为三餐主食，在早餐、午餐和晚餐二小时后可以给宝宝添加水果和牛奶。在主食方面，浓稠的米粥、软面包、软面条等都可以给宝宝喂食。
							</p>
							<p>
								十个月宝宝蔬菜食谱 <br>十个月的宝宝已经开始出牙，消化系统进一步发育，胃容量逐渐增加，此时可以给宝宝喂菜泥。菜泥不仅可以补充丰富的纤维素、矿物质和维生素C，还可以使婴儿的食物从菜水类流质向菜泥类饮食逐渐过度，从而顺应消化功能的改变，满足宝宝的生理需要，为断奶做准备，同时还可以锻炼宝宝的咀嚼能力。
							</p>
							<p>
								十个月宝宝摄取蛋白质食谱 <br>十个月的宝宝可以开始摄取富含含蛋白质的食物了，蛋黄、鱼、肉、豆腐等食物蛋白质含量丰富、吸收率高，适合喂食给宝宝。需要注意的是，过敏体质的宝宝不能吃蛋白，以免造成过敏。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">十一个月宝宝食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								十一个月宝宝主食食谱 <br>十一个月宝宝已经有一定的咀嚼和吞咽能力，可以给宝宝做些碎菜或颗粒食物。黄瓜、冬瓜、西红柿、青菜、芹菜、西蓝花、蘑菇、胡萝卜、香菇、木耳、笋瓜、茄子、土豆、豆腐、鱼、牛肉、鸡肉、猪肉等等都可以做给宝宝吃，肉类里有丰富的蛋白质，荤素合理搭配，营养均衡。
							</p>
							<p>
								十一个月宝宝蔬菜食谱 <br>随着宝宝逐渐长大，宝宝的辅食越来越丰富了，宝宝可以吃各种蔬菜水果了。可以将蔬菜和水果切成立方体或条状，有利于锻炼宝宝咀嚼和吞咽能力。
							</p>
							<p>
								十一个月宝宝摄取蛋白质食谱 <br>宝宝逐渐长大，对营养需求也越来越大，十一个月宝宝可以适当摄入蛋白质丰富的食材。肉类、蛋类、豆制品等富含蛋白质，搭配蔬菜，味道鲜美，营养均衡。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">一岁宝宝食谱</a>
						</h3>
						<div class="faq-answer">
							<p>
								一岁宝宝主食食谱 <br>此时，绝大部分食物都可以喂给一岁的宝宝吃了，在设计宝宝的菜单时，应保证包括谷类、蔬菜、水果、肉类、禽蛋等等种类。随着宝宝咀嚼能力的加强，要注意控制宝宝的进餐时间和进餐习惯，以培养宝宝良好的饮食习惯，如进餐时间以20-30分为限，让宝宝坐在儿童餐椅上，和大人异同吃饭等。同时要记住脂肪对宝宝生长发育的重要性，所以在这个时期应合理摄入，而不是限制。
								<br>
								在辅食的实际制作中，爸妈可以为宝宝制作一些烂饭、馒头、饼干机肉末、碎菜和水果等食物，丰富食物种类。还可以适当增加宝宝的食量，每日喂食2-3次辅食，代替1-2次母乳，以补充宝宝身体发育所需的营养元素。不过口味不要太重，并且要避开刺激性较强的调味料，以免宝宝对其他食品产生厌恶感。
							</p>
							<p>
								一岁宝宝蔬菜食谱 <br>此时的宝宝在饮食上越来越接近大人，不再像以前那样总是吃软烂的食物，他/她可以享受更多更美味的食物了。由于宝宝可以吃的食物和种类大大增多，包括软饭、面包、面条、通心粉、薯类等等。对于宝宝而言，新鲜而多样的蔬菜水果也是必不可少的，可以给宝宝适当吃些蔬果条，如苹果条、土豆条、南瓜条、黄瓜条等，做成手指大小的放在宝宝的餐具上，吸引宝宝自己动手拿来吃。
								<br>
								但要注意，在辅食添加初期，蔬果类食物一定要泥状才好，方便宝宝消化吸收。一开始最好是蔬菜泥或水果泥，等宝宝慢慢接受后，可以给他尝试混合的蔬菜水果泥，如亨氏的苹果西梅泥、甜嫩蔬菜泥、混合蔬菜泥等，同时补充膳食纤维，预防宝宝便秘。
							</p>
							<p>
								一岁宝宝摄取蛋白质食谱 <br>1岁的宝宝，每日蛋白质的供给量大概为35—40克，这个阶段宝宝的饮食已经非常丰富，爸妈可以通过肉、蛋、鱼、豆类及各种谷物类来给宝宝提供足够的蛋白质。例如：每天400—500毫升乳制品+鱼肉类100克(约等于大排半块、或两片鱼肉)+豆制品类50—100克+蔬菜水果类各50—100克(约等于5颗小青菜或一根香蕉)+米饭类100克(约等于1/3碗的饭)。
								<br>
								补充蛋白质时要注意奶类与固体食物的比例应为40：60，每天应该给宝宝提供乳类500毫升，如果是在一岁以前断奶，应当喝婴儿配方奶粉，喝母乳的量逐渐减少，要逐渐增加喝牛奶的量。广泛地选择各类食物并增加食物在形状、颜色上的巧妙搭配，可以让宝宝愉快地吃下他不喜欢的食物。
							</p>
						</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end of page content -->



	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jflickrfeed.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jquery.liveSearch.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jquery.form.js'></script>
	<script type='text/javascript'
		src='mstp_35_knowledge/js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='mstp_35_knowledge/js/custom.js'></script>

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
