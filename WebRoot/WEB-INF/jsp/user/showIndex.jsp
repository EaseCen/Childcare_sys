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
<title>index.html</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link href="<%=basePath%>bootstrap-4.1.3-dist/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<!--JS for animate-->
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}

.testDiv {
	overflow: hidden;
	text-overflow: ellipsis; /* 用省略号代替 */
	width: 80px;
}
</style>
</head>
<body>
	<nav
		class="site-header sticky-top navbar navbar-expand-lg navbar-dark bg-dark ">
	<a class="navbar-brand" href="#">首页</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 发育评估</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/user/Fetal_development.action">胎儿发育评估</a>
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/user/Infant_development.action">婴儿发育评估</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 育儿推荐 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/user/Baby_diet.action">宝宝饮食</a>
					<a class="dropdown-item" href="#">书籍推荐</a> <a class="dropdown-item"
						href="#">互动推荐</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">注意事项</a>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="post.html"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> 发现专区 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/posts/findSameCity.action?address=${user1.address}">发现圈子--同龄</a>
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/posts/findSameAge.action?state=${user1.state}">发现圈子--同城</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 实用工具 </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}">喂养记录</a>
					<a class="dropdown-item" href="#">预产期计算器</a> <a
						class="dropdown-item" href="#">胎儿体重计算</a> <a class="dropdown-item"
						href="#">身高体重计算</a>
				</div></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> 欢迎您:&nbsp;&nbsp; <span
					class="glyphicon glyphicon-user"></span> <strong>${user1.username }</strong>
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item btn btn-primary" data-toggle="modal"
						data-target="#myModal">申请为会员</a> <a class="dropdown-item"
						href="${pageContext.request.contextPath }/user/LogOut.action">&nbsp;&nbsp;&nbsp;&nbsp;注销</a>
				</div></li>
		</ul>
	</div>
	</nav>
	<div
		class="position-relative overflow-hidden p-2 p-md-4 m-md-2 text-center bg-light">
		<div class="col-md-5 p-lg-1 mx-auto my-5">
			<h4 class="display-4 font-weight-normal">育儿网络平台设计与开发</h4>
			<p class="lead font-weight-normal">在二胎开放的时代，从现代育儿需求出发，主要完成个人基本信息、今日育儿热点、宝宝饮食、发育评估、发现专区、喂养记录、个人中心等等。</p>
		</div>
	</div>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- 指示符 -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
					</ul>
					<!-- 轮播图片 -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src="https://static.runoob.com/images/mix/img_fjords_wide.jpg">
							<div class="carousel-caption">
								<h3>第一张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="https://static.runoob.com/images/mix/img_nature_wide.jpg">
							<div class="carousel-caption">
								<h3>第二张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img
								src="https://static.runoob.com/images/mix/img_mountains_wide.jpg">
							<div class="carousel-caption">
								<h3>第三张图片描述标题</h3>
								<p>描述文字!</p>
							</div>
						</div>
					</div>

					<!-- 左右切换按钮 -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	<br>
	<br>
	<div class="services">
		<div class="container text-center">
			<h3 class="title">今日热点</h3>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col"></div>
			<c:forEach items="${pageInfo.list}" var="posts" end="2">
				<div class="col">
					<div class="card" style="width: 300px">
						<img class="card-img-top" src="./images/s1.jpg" alt="Card image"
							style="width: 100%">
						<div class="card-body">
							<h4 class="card-title">${posts.name }</h4>
							<p class="card-text">
							<table>
								<tr>
									<td nowrap="nowrap"><div class="testDiv">${posts.text }</div></td>
								</tr>
							</table>
							</p>
							<a
								href="${pageContext.request.contextPath }/posts/posts.action?id=${posts.id}"
								class="btn btn-primary">查看</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="col"></div>
		</div>
	</div>
	<br>
	<br>


	<div class="container-fluid">
		<div class="row">
			<div class="table-responsive">
				<form method="post">
					<table class="table table-striped">
						<tr align="center">
							<th>用户名</th>
							<th>用户密码</th>
							<th>用户地址</th>
							<th>用户状态</th>
							<th colspan="3">操作</th>
						</tr>
						<c:forEach items="${pageInfo.list}" var="posts" end="2">
							<tr align="center">
								<td>${posts.name }</td>
								<td>${posts.text }</td>
								<!-- 删除操作-带id参数 -->
								<td><a
									href="${pageContext.request.contextPath }/user/delUser.action?id=${user.id}"><button
											type="button" class="btn btn-success btn-lg"
											onclick="return confirm('确定要删除用户吗？') ">
											<span class="glyphicon glyphicon-trash"></span> 删除
										</button></a></td>
								<!-- 修改操作 -->
								<td><a
									href="${pageContext.request.contextPath }/user/findOne.action?id=${user.id}"><button
											type="button" class="btn btn-success btn-lg">
											<span class="glyphicon glyphicon-edit"></span> 修改
										</button></a></td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
		<!-- 分页 -->
		<div class="row">
			<!-- 分页信息 -->
			<div class="col-md-6">
				<h4 style="margin: 0 0 0 38%;">当前第${pageInfo.pageNum }页，共${pageInfo.pages }页，共${pageInfo.total }条记录数</h4>
			</div>
			<!-- 分页条 -->
			<div class="col-md-6">
				<ul class="pagination pagination-lg">
					<li><a
						href="${pageContext.request.contextPath }/user/queryUser.action?pn=1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a
							href="${pageContext.request.contextPath }/user/queryUser.action?pn=${pageInfo.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>
					<c:forEach items="${pageInfo.navigatepageNums }" var="nav">
						<c:if test="${nav==pageInfo.pageNum }">
							<li class="active"><a
								href="${pageContext.request.contextPath }/user/queryUser.action?pn=${nav}">${nav }</a></li>
						</c:if>
						<c:if test="${nav!=pageInfo.pageNum }">
							<li><a
								href="${pageContext.request.contextPath }/user/queryUser.action?pn=${nav}">${nav }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pageInfo.hasNextPage}">
						<li><a
							href="${pageContext.request.contextPath }/user/queryUser.action?pn=${pageInfo.pageNum+1}"
							aria-label="Previous"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li><a
						href="${pageContext.request.contextPath }/user/queryUser.action?pn=${pageInfo.pages}">末页</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- 模态框头部 -->
				<div class="modal-header">
					<h4 class="modal-title">申请会员</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- 模态框主体 -->
				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath }/member/addMember.action"
					method="post" id="form" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">申请原因:</label>
							<div class="col-sm-5">
								<input type="hidden" id="addusername" name="username" value="${user1.username}" />
								<textarea class="form-control input-lg" id="addreason"
									name="reason" style="width: 426px; height: 214px;" required
									autofocus>
								</textarea>
							</div>
						</div>
					</div>
					<!-- 模态框底部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="save">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>