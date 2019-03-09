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
				</ul>
			</div>
			</nav>
		</div>
		</header>
	</div>

	<!-- End of Header -->


	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">

					<article class=" page type-page hentry clearfix">
					<h1 class="post-title">
						<a href="#">胎儿发育评估</a>
					</h1>
					<hr>
					</article>

					<div class="faqs clearfix">
						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">1个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>1个月胎儿发育过程图</p>
							<img src="images\1yue.jpg">
							<p>
								你从末次月经第一日起4周为孕一月。此时，腹中胎儿身长约几毫米，像小海马一样(7周以前的胎儿称为胚芽，这一阶段脊椎和神经沟正在形成)。大部分孕妇都没有自觉症状，少部分人可出现类似感冒的症状：身体疲乏无力、发热、畏寒等。这时，子宫、乳房大小形态还看不出有什么变化，和没怀孕时差不多，子宫约有鸡蛋那么大。
							</p>
							<p>
								孕期检查：孕早期至少1次产前检查，确诊怀孕后在停经12周内应建立《孕产妇保健手册》，同时进行第一次产前检查，初诊正常→1～2月后复诊。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">2个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>2个月胎儿发育过程图</p>
							<img src="images\2yue.jpg">
							<p>
								腹中胎儿的变化：开始有了心跳，胃肠、肝脏逐渐形成，脑、脊髓、神经细胞发育迅速。已经有了手指形状，眼睛形成，但没有眼皮，鼻、口清晰可见。</p>
							<p>
								准妈妈身体的变化：基础体温持续较高，身体发热，浑身乏力。有人开始出现妊娠反应，小便时间缩短，乳房发胀。腹部没有变化。</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">3个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>3个月胎儿发育过程图</p>
							<img src="images\3yue.jpg">
							<p>
								腹中胎儿的变化：头约占身长的一半，通过B超能看到胎儿手脚的活动。膝盖、脚后跟清晰可见。肾脏、输尿管已经形成，可以排泄了。</p>
							<p>准妈妈身体的变化：下腹部有压迫感，是妊娠反应最厉害的时期。要多喝水，尽量不要空腹。</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">4个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>4个月胎儿发育过程图</p>
							<img src="images\4yue.jpg">
							<p>
								腹中胎儿的变化：内脏器官几乎发育完全，脸上长出胎毛，胎盘形成，开始迅速成长，骨骼和肌肉发达，手脚开始活动，但是妈妈还感觉不到。</p>
							<p>
								准妈妈身体的变化：此期母亲的腹部微微突起，但还不是很明显。子宫变大，多尿，骨盆腔充血。并影响结肠，大肠，经常发生便秘，乳房明显增大，应该随时保持乳头的清洁，若如发生乳头凹陷，要特别注意卫生，必要时请医生处理，不要过于按摩乳房，以免诱发子宫收缩而流产。

							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">5个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>5个月胎儿发育过程图</p>
							<img src="images\5yue.jpg">
							<p>
								这个月胎儿身高20~25厘米，体重250~300克，全身长出细毛(毳毛)，开始长头发，眉毛、指甲等也出齐。头的大小像个鸡蛋，头重脚轻的身体分成三部分，身体比例终于显得匀称，皮肤渐渐显现出红色，皮下脂肪开始沉着，皮肤不透明了。胎儿的心跳十分活跃，在羊水中胎儿的手脚可以自由地活动。
							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">6个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>6个月胎儿发育过程图</p>
							<img src="images\6yue.jpg">
							<p>
								腹中胎儿的变化：小家伙的头发，眉毛、睫毛也越发的清晰了。胎儿仍然很瘦，皮肤表层附着一层白色的雪花膏状的物质，皮肤皱皱的。对于妈妈的心跳和说话声，小宝宝也逐渐可以听得到了。</p>
							<p>准妈妈身体的变化：肚子越来越大，宫高接近20厘米，时常觉得腰、背和下疲劳，应该多注意休息。能清楚地感受到胎动。</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">7个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>7个月胎儿发育过程图</p>
							<img src="images\7yue.jpg">
							<p>腹中胎儿的变化：胎儿的活动更加活跃了，皮肤还是皱皱的，大脑已相当发达，逐渐可以控制自己的身体了。</p>
							<p>
								准妈妈身体的变化：腹部膨胀，宫高已经达到23-26厘米。由于腹部、乳房迅速增大，很容易出现妊娠纹。体重的增加使下肢受到压迫，影响血液循环，容易出现静脉曲张、便秘和痔疮等。

							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">8个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>8个月胎儿发育过程图</p>
							<img src="images\8yue.jpg">
							<p>腹中胎儿的变化：活动渐渐增多，肌肉和神经都已经很发达。心脏和听觉器官大体已经发育完全。</p>
							<p>
								准妈妈身体的变化：宫高达到27-29厘米。由于心脏和胃受到压迫，吃不下太多的东西，而且还可能出现烧心和打嗝。腹部比以前理加突出，体态会自然弯曲，要多注意休息。

							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">9个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>9个月胎儿发育过程图</p>
							<img src="images\9yue.jpg">
							<p>
								腹中胎儿的变化：皮下脂肪进一步增多，皮肤的厚度增加，原来皱皱的小家伙变得红润起来，脸上和腹部的胎毛变少。内脏器官基本发育完全，头发和指甲都长出来了。生殖器官有了明显的变化。</p>
							<p>
								准妈妈身体的变化：胎儿的头部进入骨盆，子宫底部下垂，胃和胸部的压抑感消失，但膀胱受到压迫，出现尿频、白带增多。子宫颈和阴道变得柔软，肚子有鼓胀感。应充分休息，保持体力。


							</p>
						</div>
						</article>

						<article class="faq-item"> <span class="faq-icon"></span>
						<h3 class="faq-question">
							<a href="#">10个月胎儿发育标准</a>
						</h3>
						<div class="faq-answer">
							<p>10个月胎儿发育过程图</p>
							<img src="images\10yue.jpg">
							<p>腹中胎儿的变化：胎儿的内脏器官已经完全成熟，进入妈妈的骨盆，胎动不像以前那样活跃。</p>
							<p>
								准妈妈身体的变化：是期待与不安的交替时期，可能会出现腰痛、脚跟疼痛等不适症状。宫高增加到30-31厘米，时常会感到尿频或尿不净。如果感觉到阵痛，不要紧张，注意放松。

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
