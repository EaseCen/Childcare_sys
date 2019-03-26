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
				吓唬式教育 是管教还是伤害？
			</h2>
			<div class="single-page-artical">
				<div class="artical-content"><p>　　记得有句话说&mdash;&mdash;</p><p>　　孩子是将会长大的我们，我们是已经长大的孩子。</p><p>　　曾经活在一些&ldquo;阴影&rdquo;里的事情，可能不知不觉中我们也会施加给自己的孩子。</p><p style="text-align: center;"><span style="color:#008000;"><span style="font-size:26px;"><strong>- 1 -</strong></span></span></p><p>　　孩子不听话，大哭或撒泼，相信是很多家长都曾遭遇过的问题，有的家长会耐心劝说，有的则会说&ldquo;再哭就让警察叔叔把你带走！&rdquo;</p><p>　　我们小的时候也曾被这个理由糊弄过。还有的家长在孩子撒泼要买某样东西的时候可能会说，&ldquo;不要吵，再吵就把你留在这里，不要你了！&rdquo;</p><p>　　不得不说，这些&ldquo;吓唬&rdquo;孩子的言语都挺有用的，很多孩子当下都会被镇住。</p><p>　　不少家长也许会沾沾自喜这种手段收到成效，殊不知，这些言语有可能会影响孩子正常的是非观念，甚至会带来不良的后果。</p><p>　　就像网友总结的&mdash;&mdash;<span style="color:#008000;"><strong>&ldquo;童年四大阴影&rdquo;</strong></span></p><p><span style="color:#696969;"><strong>　　拿针管扎孩子的医生</strong></span></p><p><span style="color:#696969;"><strong>　　收废品顺便拐孩子的老人</strong></span></p><p><span style="color:#696969;"><strong>　　藏在黑暗角落里吃孩子的妖怪</strong></span></p><p><span style="color:#696969;"><strong>　　专抓不听话孩子的警察叔叔</strong></span></p><p>　　&hellip;&hellip;</p><p>　　而最近，这些耳熟能详的吓唬孩子的方法突然在各大视频app兴起了。</p><p>　　一个戴着美瞳的网红&ldquo;医生&rdquo;，凶神恶煞地对着镜头说：<span style="color: rgb(105, 105, 105);">&ldquo;今天没有好好吃饭的孩子，都给我带到医院来。不吃饭就吃药、打针！要不要好好吃饭？&rdquo;</span></p><p>　　除了&ldquo;医生&rdquo;，还出现了&ldquo;警察&rdquo;要抓小孩的段子。</p><p>　　这些&ldquo;教育孩子&rdquo;的视频是认真的吗？这样吓唬自己的孩子确定不会让小孩留下什么心理阴影吗？</p><p>　　并且！很多人把视频转发到妈妈群，推荐给其他家长，<strong>大家都称赞这种方式管孩子很有用</strong>。</p><p>　　<strong>有不少人录制这种视频成了网红，家长还会要求主播给自己孩子定制吓唬视频</strong>。</p><p>　　吓唬小孩，居然成为了一条产业链？看到自家小孩被吓到的样子，心大的爸妈们还挺开心，感谢主播：小孩真的变听话了！</p><p style="text-align: center;"><span style="color:#008000;"><strong style="font-size: 26px; text-align: center;">- 2 -</strong></span></p><p><span style="color:#008000;"><strong>　　&ldquo;不听话，警察叔叔就来抓你了！&rdquo;本是父母随口说出的一句话，是用来吓唬顽皮的孩子的，却不想带来了如此大的危害。</strong></span></p><p>　　8月7日，宁波塘溪镇一名4岁女童，出门找妈妈却迷路了。陌生的韩女士看到孩子一个人，在此处独自呆了很久，于是上前和孩子聊天，两人聊的很愉快。</p><p>　　聊天中，女孩毫不设防将父母姓名、当天去向、家庭情况都告诉了韩女士，但是女孩却不记得家中的地址与联系方式。</p><p>　　幸好韩女士是个好人，报警求救。</p><p>　　警察赶到后，原本开心聊天的女孩突然大哭不止，一个劲的往韩女士身上贴。听到警察要带她走，哭的更厉害。紧抱着韩女士，不让警察靠近。</p><p>　　后来，女孩的父母说，平时孩子不听话，他们就用：&ldquo;不听话警察就来抓你了&rdquo;来吓唬孩子。</p><p>　　马伊琍也转发了这个微博，并说道：</p><p><strong><span style="color:#696969;">　　请不要用警察来吓唬孩子，必须告诉孩子，警察叔叔是好的，是来帮助我们的，在外面遇到了危险一定要找警察叔叔。</span></strong></p><p>　　很多父母，为了管教调皮的孩子，经常用警察来吓唬孩子，导致在孩子心目中，警察就是坏人。</p><p>　　一组数据显示，<strong>调查的500位家长里面，有419位家长都采用过这种方式管教孩子</strong>，而且立即见效、屡试不爽！</p><p>　　假设韩女士是坏人，后果不堪设想，就算遇到警察都无法救出孩子。</p><p><span style="color:#008000;"><strong>　　&ldquo;警察叔叔来抓你了&rdquo;，是父母骗孩子最深的谎言。</strong></span></p><p style="text-align: center;"><span style="color:#008000;"><strong style="font-size: 26px; text-align: center;">- 3 -</strong></span></p><p>　　著名导演陈可辛的《三分钟》微电影曾刷屏朋友圈，很多人被这个短短几分钟的微电影所感动。它讲述了一个很普通却很真实的故事，发生在我们每个人都要经过的车站。</p><p>　　女主是一个列车乘务员，跑的是中国最长的一条铁路线，南宁到哈尔滨。一趟出行，大概要花上6天的时间。她因春节值班，错过和儿子过年，于是她妹妹决定在列车停靠老家凯里站台的3分钟，带着孩子与她见一面。</p><p>　　虽然只有三分钟，但这却是今年春节，她和儿子唯一能够见面的机会了。列车到站，孩子寻找妈妈，妈妈整理好着装，做好乘务员的工作。当时间只剩下不到两分钟时，所有的乘客都上了车。她紧紧的抱着自己的孩子，心里有着千万句想要说出口的话，却一句也说不出来。</p><p>　　而这时候，孩子大吸口气，背起乘法口诀！&ldquo;一一得一，一二得二&hellip;&hellip;&rdquo;</p><p>　　妈妈想起&mdash;&mdash;自己曾吓唬儿子今年不会背，就无法在妈妈工作的小镇念小学，就见不着妈妈了&hellip;&hellip;</p><p>　　火车汽笛，妈妈必须上车离开，儿子还是执着背着，尽管妈妈听不见，他依然用尽嗓门，背诵到&ldquo;九九八十一&rdquo;。</p><p>　　最终，列车启动，孩子全程没和妈妈说过一句话，一直在背&ldquo;九九乘法表&rdquo;。</p><p>　　剧情设计上的确很感人，但我却不禁为影片中的丁丁感到可怜。</p><p>　　渴望见到妈妈的孩子，在相见的那一刻，不应该是像大多数的孩子一样，扑到妈妈的怀里，撒着娇诉说自己的想念吗？</p><p>　　当我看到丁丁被妈妈吓唬得日夜准备着背诵，见到妈妈却只是战战兢兢地讨好着，想用自己&ldquo;完美&rdquo;的表现来换取妈妈的欢心，以希冀得到下一次的&ldquo;三分钟&rdquo;。</p><p>　　这位妈妈从未想过，她一句随口无心的&ldquo;吓唬&rdquo;，让孩子紧张地准备了几天的背诵，见到妈妈也不敢多说话，拼命地完成这个妈妈的&ldquo;任务&rdquo;。</p><p>　　而很多家长往往对这种&ldquo;吓唬&rdquo;不以为然，在不知不觉中给孩子造成了巨大的心理伤害。</p><p style="text-align: center;"><span style="color:#008000;"><strong style="font-size: 26px; text-align: center;">- 4 -</strong></span></p><p>　　曾经在网上看到这样一则故事&mdash;&mdash;</p><p>　　小时候每当我调皮的时候，爸爸妈妈就说我是福利院领养来的，不听话就送回去。我因为这句话哭了很久。在那之后的很长一段时间里，我每天战战兢兢，也不敢瞎闹，生怕犯了错被送回福利院。</p><p>　　直到大学毕业了，我才知道，爸妈那句话是玩笑话。而我因为这句玩笑话，痛苦了十几年。</p><p>　　就像知乎网友说的一句话，<strong>为什么大家总会用&ldquo;妈妈不要你了&rdquo;之类的话去吓唬孩子呢？</strong></p><p>　　是因为在大部分成年人心里，儿童不是人。</p><p>　　这句话，话糙理不糙。一句以为开玩笑的话说给没有是非观念的孩子听，只会慢慢地累积恐惧和压力。</p><p>　　长此已久，<span style="color:#008000;"><strong>父母的&ldquo;吓唬&rdquo;就会让孩子缺乏安全感</strong></span>。</p><p>　　《无条件养育》的作者艾尔菲&middot;科恩称这种做法叫&ldquo;<strong>爱的撤回</strong>&rdquo;，<strong>这种暂时的情感抛弃，不是体罚，是比体罚更冰冷的惩罚</strong>。</p><p>　　再者，这种吓唬更是一种不合理的惩罚，会加之孩子们的认知错误。</p><p>　　对医生、警察等这类服务人民的职业却&ldquo;借用发挥&rdquo;为惩治小孩子的&ldquo;代言人&rdquo;。如果真正遇到危险时，孩子便不会主动去寻求帮助，反而使自己陷入困境。</p><p>　　俗话说，童心不可辱。</p><p>　　也许当孩子情绪失控时，给他们一个拥抱，或者静静地坐下陪着，让孩子感受到父母的爱和接纳便是最好的教育方式。</p></div><p>&nbsp;</p>
</div>
				<div class="artical-links">
					<ul>
						<li><i class="glyphicon glyphicon-calendar"
							aria-hidden="true"></i><span>Sat Feb 02 13:17:00 CST 2019</span></li>
						<li><a href="#"><i class="glyphicon glyphicon-user"
								aria-hidden="true"></i><span>root</span></a></li>
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
									回复222
								</p>
							</div>
						
						<div class="clearfix"></div>
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
