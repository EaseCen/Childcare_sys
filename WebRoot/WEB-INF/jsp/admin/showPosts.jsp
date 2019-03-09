<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>后台管理系统</title>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/NewFile.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>

<script type="text/javascript">
<!-- 添加模态框（Modal）插件 -->
	$("#myModal").modal({
		keyboard : false,
		backdrop : true
	});
	$(function() {

		$(".form_datetime").datetimepicker({
			format : "yyyy-mm-dd hh:ii",
			autoclose : true,
			todayBtn : true,
			todayHighlight : true,
			showMeridian : true,
			pickerPosition : "bottom-left",
			language : 'zh-CN',//中文，需要引用zh-CN.js包
			startView : 2,//月视图
			minView : 2
		//日期时间选择器所能够提供的最精确的时间选择视图
		});
	});
</script>
<style type="text/css">
th {
	text-align: center
}

.content {
	width: 100%;
	height: auto;
	word-wrap: break-word;
	word-break: break-all;
	overflow: hidden;
}
}
</style>

</head>

<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#" style="height: 92px;"> <img
					src="<%=path%>/images/a.jpg" height="100%" />
				</a>
			</div>
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav navbar" style="margin: 1% 0 1% 34%;">
					<li class="active"><a class="icon-bar" href="#"
						style="background-color: #087b71"> <font
							style="font-size: 31px; font-weight: bold; font-style: italic;">欢迎来到管理系统</font></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="margin: 1% 0 1% 0%;">
					<li><h4 style="color: red;">
							欢迎您:&nbsp;&nbsp;<span class="glyphicon glyphicon-user"></span> <strong>${user1.username }</strong>
							<small> <a
								href="${pageContext.request.contextPath }/user/LogOut.action">注销</a></small>
						</h4></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
				<a href="#" class="list-group-item active"><span
					class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;菜单 </a> <a
					href="${pageContext.request.contextPath}/posts/queryPosts.action"
					class="list-group-item"> <span
					class="glyphicon glyphicon-search" aria-hidden="true"> </span>&nbsp;帖子管理
				</a> <a
					href="${pageContext.request.contextPath}/reposts/queryReposts.action"
					class="list-group-item"> <span class="glyphicon glyphicon-user"
					aria-hidden="true"> </span>&nbsp;回复管理
				</a> <a href="${pageContext.request.contextPath}/user/queryUser.action"
					class="list-group-item"> <span class="glyphicon glyphicon-user"
					aria-hidden="true"> </span>&nbsp;用户管理
				</a> <a
					href="${pageContext.request.contextPath}/member/queryMember.action"
					class="list-group-item"> <span class="glyphicon glyphicon-user"
					aria-hidden="true"> </span>&nbsp;会员申请管理
				</a>
			</div>
			<!--左边菜单栏-->
			<div class="col-sm-10">
				<ol class="breadcrumb">
					<li class="active">菜单</li>
					<li class="active">回复管理</li>
					<li class="active"></li>
				</ol>
				
				<!-- 列表展示 -->
				<div class="table-responsive content">
					<table class="table table-striped">
						<tr>
							<th>帖子标题</th>
							<th>帖子内容</th>
							<th>发帖时间</th>
							<th>发帖人</th>
							<th colspan="3">操作</th>
						</tr>
						<c:forEach items="${pageInfo.list}" var="posts">
							<tr align="center">
								<td>${posts.name }</td>
								<td>
								<c:if test="${fn:length(posts.text) > 50 }">
								${fn:substring(posts.text,0,50)}...
								</c:if> <c:if test="${fn:length(posts.text)  <= 50 }">
								${posts.text}
								</c:if>
								</td>
								<td><fmt:formatDate value="${posts.time}"
										pattern="yyyy-MM-dd HH:mm:ss" /></td>
								<td>${posts.author }</td>

								<!-- 删除操作-带id参数 -->
								<td><a
									href="${pageContext.request.contextPath }/posts/del.action?id=${posts.id}"><button
											type="button" class="btn btn-success btn-lg"
											onclick="return confirm('确定要删除帖子吗？') ">
											<span class="glyphicon glyphicon-trash"></span> 删除
										</button></a></td>
								<!-- 修改操作 -->
								<td><a
									href="${pageContext.request.contextPath }/posts/findOne.action?id=${posts.id}"><button
											type="button" class="btn btn-success btn-lg">
											<span class="glyphicon glyphicon-edit"></span> 修改
										</button></a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
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
						href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a
							href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=${pageInfo.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>
					<c:forEach items="${pageInfo.navigatepageNums }" var="nav">
						<c:if test="${nav==pageInfo.pageNum }">
							<li class="active"><a
								href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=${nav}">${nav }</a></li>
						</c:if>
						<c:if test="${nav!=pageInfo.pageNum }">
							<li><a
								href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=${nav}">${nav }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pageInfo.hasNextPage}">
						<li><a
							href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=${pageInfo.pageNum+1}"
							aria-label="Previous"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li><a
						href="${pageContext.request.contextPath }/posts/queryPosts.action?pn=${pageInfo.pages}">末页</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>