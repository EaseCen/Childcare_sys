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
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>婴儿发育评估</title>

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
</style>
<body>
	<div class="header-wrapper">
		<header>
		<div class="container">
			<!-- Start of Main Navigation -->
			<nav class="main-nav">
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="clearfix">
					<li><a href="${pageContext.request.contextPath }/Index.jsp">首页</a></li>
					<li><a>发育评估</a>
						<ul class="sub-menu">
							<li><a
								href="${pageContext.request.contextPath }/Fetal_development.jsp">胎儿发育评估</a></li>
							<li><a
								href="${pageContext.request.contextPath }/Infant_development.jsp">婴儿发育评估</a></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath }/Baby_diet.jsp">饮食推荐</a></li>
					<li><a data-toggle="modal" data-target="#myModal">发现专区</a></li>
					<li><a
						href="${pageContext.request.contextPath }/UserLogin.jsp">登录后更多功能..</a></li>
				</ul>
			</div>
			</nav>
		</div>
		</header>
	</div>



	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">

					<article class=" page type-page hentry clearfix">
					<h1 class="post-title">
						<a href="#">婴儿发育评估</a>
					</h1>
					<hr>
					</article>

					<div class="faqs clearfix">
						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">宝宝视力发育指标</a>
						</h3>
						<div class="faq-answer">
							<p>
								1个月：出生一周，宝宝的视力趋向于近视，可以把视力集中于8至15厘米远的物体上，还能够用眼追随移动的物体。到1个多月时，宝宝已经能看清眼前15—30厘米内的物体，并能开始注视物体了。
							</p>
							<p>2个月：宝宝视觉集中的现象就越来越明显，喜欢看活动的物体和熟悉的大人的脸。能协调的注视物体，能区分颜色，但不能分辨深浅，在90度范围内眼球能随着物体运动，当有物体很快地靠近眼前时，会出现眨眼等保护性反射，注视小手5秒以上。</p>
							<p>3—4个月：能固定视线，看清大约75cm远的物体，视力约为0.1。注视的时间明延长了，视线还能跟随移动的物体而移动。对颜色很敏感，宝宝对色彩有偏爱，喜欢看明亮鲜艳的颜色，尤其是红色，不喜欢看暗淡的颜色。他们偏爱的颜色依次为红、黄、绿、橙、蓝等，最喜欢的颜色是红色。</p>
							<p>
								5—6个月：眨眼次数增多，可以准确看到面前的物品，还会将其抓起，在眼前玩弄。将手摇铃挂在摇篮或婴儿床旁边，当宝宝不小心碰到手摇铃时，观察宝宝是否会因声音注意到某处有个东西。6个多月时，宝宝的目光可向上向下跟随移动物体转动90度。这时候宝宝的视力可达0.1，能注视较远距离的物体，如街上行人、车辆等。
							</p>
							<p>
								7—8个月：能辨别物体的远近和空间，喜欢寻找那些突然不见的玩具。跟宝宝玩“躲猫猫”的游戏，观察宝宝的兴奋程度和反应及时与否。</p>
							<p>9—10个月：视线能随移动的物体上下左右地移动，能追随落下的物体，寻找掉下的玩具，并能辨别物体大小、形状及移动的速度。能看到小物体，能开始区别简单的几何图形，观察物体的不同形状。</p>
							<p>11—12个月：开始出现视深度感觉，实际上这是一种立体知觉。12个月时视力可达0.2。</p>
							<p>1—2岁：1岁后，喜欢看图书，能区别物体，会模仿动作。在外界环境光线的不断刺激下，宝宝的视力逐渐在发展，到1岁半时，他的视力可达0.4，能看见细小的东西如爬行的小虫、蚊子，能注视3米远的小玩具。还能区别简单的形状，例如圆形、三角形、方形。</p>
							<p>2—5岁：能判断出物体大小、上下、内外、前后、远近等空间概念。双眼视觉发育最为旺盛。2—3时，视力大约达到0.5—0.6，已经快接近成人视力，但此时极易使视力丧失。四五岁时，视力大约为1.0，各种眼部生理反射已形成并趋于稳固，此时已不易丧失视力。</p>
							<p>6岁：六七岁时进入成人的视觉。而立体视功能到9岁才可达到正常。</p>

						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">宝宝听力发育指标</a>
						</h3>
						<div class="faq-answer" style="display: none;">
							<p>1个月：宝宝已有了听觉，大部分的宝宝在出生24小时后对听刺激1—2次就能引起反应，对大人说话的声音也很敏感。一周后，听力发育完全成熟，他会密切注意人类的声音，也会对噪音敏感。在宝宝身旁说话，宝宝将头转向熟悉的声音和语言。
							</p>
							<p>
								2个月：对声音的反应十分敏锐，不论对熟悉或陌生的声音，都会作出不同的反应。大人可以轻声和宝宝说话，或放一些轻柔的音乐，在宝宝的不同方向发出声音，宝宝会向声源处转动头部。
							</p>
							<p>
								3—4个月：能区分大人的讲话声，听到妈妈的声音会很高兴。有感情地讲故事给宝宝听，温柔好听的声音会引起宝宝微笑，晃动手脚等积极反应。4个月时能辨别不同音色，区分男声女声，对语言中表达的感情已很敏感，能出现不同反应。
							</p>
							<p>5—6个月：对各种新奇的声音都很好奇，会定位声源，听到声音时，能咿咿呀呀地回应，对音量的变化有反应。</p>
							<p>
								7—8个月：倾听自己发出的声音和别人发出的声音，能把声音和声音的内容建立联系。8个月时大致能辨别出友好和愤怒的说话声；能通过视觉、听觉来模仿人的活动。
							</p>
							<p>9个月：能区分音的高低，如在和宝宝玩击木琴时，宝宝有时会专门敲高音，有时又专门敲低音。</p>
							<p>
								10—12个月：宝宝的声音定位能力已发育很好，有清楚的定位运动，能主动向声源方向转头，也就是有了辨别声音方向的能力。</p>
							<p>2岁：会转圈跑，荡秋千—会使用你”、我”等代名词，可将2—3个词连成一句话。</p>
							<p>3岁：能进行球类等运动—能使用复数名词，能理解简单的问题和答案，能较为流利地背诵儿歌。</p>
							<p>
								4—5岁：能参加一般的体育活动；会使用定语、形容词、副词等，可给身边的物品下定义，对各类物品（食品、用品等）、动物、植物的名称已具有相当数量的词汇；会唱歌，并能讲简单的童话故事；能说明画中的动作，并可对单词的含义提出疑问。
							</p>
							<p>6岁：能参加各种体育活动—基本能够使用较完整的句子和完成5—7句有完整语法的短文，能流利说话。</p>
							<p>6岁以后：进入学龄期，孩子基本可以参加较剧烈的各种体育活动，随着年龄和知识的不断增长，言语表达日益丰富多彩。</p>

						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">婴儿智力发育指标</a>
						</h3>
						<div class="faq-answer">
							<p>1个月</p>
							<p>
								大运动：拉着手腕可以坐起，头可竖直片刻（2秒）。精细动作：触碰手掌，他会紧握拳头。适应能力：眼球会跟红球过中线（稍有移动即可）、听到声音有反应。语言：自己会发出细小声音。社交行为：眼睛跟踪走动的人。</p>
							<p>3个月</p>
							<p>
								大运动：俯卧时可抬头45度、抱直时头稳。精细动作：两手可握在一起、拨浪鼓在手中留握0.5秒。适应能力：眼睛跟红球可转180度。语言：笑出声。社交行为：模样灵敏、见人会笑。</p>
							<p>5个月</p>
							<p>
								大运动：轻拉腕部即可坐起、独坐头身向前倾。精细动作：抓住近处玩具。适应能力：拿住一积木注视另一积木。语言：对人及物发声。社交行为：见食物兴奋。
							</p>
							<p>7个月</p>
							<p>
								大运动：独坐自如。精细动作：耙弄到小丸（直径约0.5公分）、自己取一积木，再取另一块。适应能力：积木换手、伸手够远处玩具。语言：发da—da、ma—ma无所指。社交行为：对镜有游戏反映、能分辨出生人。</p>
							<p>9个月</p>
							<p>
								大运动：会爬、拉双手会走。精细动作：拇指、食指捏住小丸。适应能力：从杯中取出积木（正方形，边长2cm）、积木对敲。语言：会欢迎、再见（手势）。社交行为：表示不要。</p>
							<p>10个月</p>
							<p>
								大运动：会拉住栏杆站起身、扶住栏杆可以走。精细动作：拇指、食指动作熟练。适应能力：拿掉扣住积木的杯子，并玩积木。找盒内的东西。语言：模仿发语声。社交行为：懂得常见物及名称、会表示。</p>
							<p>11个月</p>
							<p>
								大运动：扶物、蹲下取物。独站片刻。精细动作：打开包积木的纸。适应能力：积木放入杯中。模仿推玩具小车。语言：有意识的发一个字音。社交行为：懂得不。模仿拍娃娃。</p>
							<p>12个月</p>
							<p>
								大运动：独自站立稳。牵一只手可以走。精细动作：试把小丸投入小瓶。全掌握笔留笔道。适应能力：盖瓶盖。语言：叫妈妈、爸爸有所指。向他/她要东西知道给。社交行为：穿衣知配合。</p>
							<p>
								有些宝宝智力发育有问题，但妈妈不一定能够及早发现，尤其是比较小的宝宝，更容易被忽视。老人们常常称赞那些不哭不闹，不给大人添麻烦的孩子为“乖”，殊不知这正是孩子行为障碍的表现之一。这种乖是因为他们对周围事物缺乏兴趣，注意力和反应能力较差的表现。由于爸妈的误解，致使这些孩子在早期没有及时得到治疗。所以早期观察孩子的智力发育情况非常重要。
							</p>

						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">宝宝身高体重标准表</a>
						</h3>
						<div class="faq-answer">
							<p>
								根据儿童体格发育调查结果，国家卫生部妇社司组织相关专家，研究制订了《中国7岁以下儿童生长发育参照标准》，该标准已于2009年6月2日由卫生部正式公布。男孩和女孩的发育情况不同，家长可参考以下表格数据，看看孩子的身高体重是否正常。需要注意的是，以下数据并非绝对标准，只要孩子的身高体重值在正常范围内，身体无异常病症，家长不必过分担心。
							</p>
							<p style="text-align: center;">表1 7岁以下男童身高（长）标准值（cm）</p>
							<img src="images\nantongshengao.png">
							<p>注：表中3岁前为身长，3岁及3岁后为身高</p>

							<p style="text-align: center;">表2 7岁以下女童身高（长）标准值（cm）</p>
							<img src="images\nvtongshengao.png">
							<p>注：表中3岁前为身长，3岁及3岁后为身高</p>

							<p style="text-align: center;">表3 7岁以下男童体重标准值（kg）</p>
							<img src="images\nantongtizhong.png">
							<p></p>

							<p style="text-align: center;">表4 7岁以下女童体重标准值（kg）</p>
							<img src="images\nvtongtizhong.png">
							<p>说明：
								“中位数”，表示处于人群的平均水平；如果在“-1sd~中位数~+1sd”即：中位数上下一个标准差范围之内，属于“正常范围”，代表了68%的儿童；如果在“（-2sd~-1sd）或者（+1sd~+2sd）”即：中位数上下两个标准差范围之内，则定义为“偏矮（高）”，代表了27.4%的儿童；如果在“（-3sd~-2sd）或者（+2sd~+3sd）”即：中位数上下三个标准差之内，则定义为“矮（高）”，代表了4.6%的儿童。极少儿童在三个标准差（<-3sd>+3sd）之外（比例小于0.5%）。</p>

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
