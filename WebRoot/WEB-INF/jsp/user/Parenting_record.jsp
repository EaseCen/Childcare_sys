<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>养育记录</title>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/NewFile.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="js/bootstrap-datetimepicker.zh-CN.js"></script>

<script type="text/javascript">
<!-- 添加模态框（Modal）插件 -->
	$("#myModal").modal({
		keyboard : false,
		backdrop : true
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

.testDiv {
	overflow: hidden;
	text-overflow: ellipsis; /* 用省略号代替 */
	width: 500px;
}
</style>

</head>

<body>

	<nav class="navbar navbar1 navbar-inverse navbar-static-top"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath }/posts/showIndex.action">首页</a>
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
					<li><a
						href="${pageContext.request.contextPath }/posts/findSameCityAndAge.action?author=${user1.username}">发现专区</a></li>
					<c:if test="${user1.per==2}">
						<li><a
							href="${pageContext.request.contextPath }/posts/toAddPosts.action">发表帖子</a></li>
					</c:if>
					<li><a
						href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}">养育记录</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">欢迎您:&nbsp;&nbsp;<span
							class="glyphicon glyphicon-user"><strong>${user1.username }</strong></span>
					</a>
						<ul class="dropdown-menu">
							<c:if test="${user1.per==1}">
								<li><a class="dropdown-item" data-toggle="modal"
									data-target="#myModal">申请为会员</a></li>
							</c:if>
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath }/user/LogOut.action">&nbsp;&nbsp;&nbsp;&nbsp;注销</a></li>
						</ul></li>
				</ul>
			</div>

		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1"></div>
			<!--左边菜单栏-->
			<div class="col-sm-10">
				<div class="panel panel-default">
					<div class="panel-body">
						<!-- 按钮-->
						<div class="row">
							<div class="col-md-6 col-md-offset-10">
								<button type="button" class="btn btn-primary btn-lg"
									data-toggle="modal" data-target="#myModal">
									<span class="glyphicon glyphicon-plus"></span>进行记录
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 列表展示 -->
				<div class="table-responsive content">
					<table class="table table-striped">
						<tr>
							<th>记录内容</th>
							<th>记录时间</th>
							<th colspan="3">操作</th>
						</tr>
						<c:forEach items="${pageInfo.list}" var="parenting">
							<tr align="center">
								<td nowrap="nowrap"><div class="testDiv">${parenting.text }</div></td>
								<td><fmt:formatDate value="${parenting.time}"
										pattern="yyyy-MM-dd" /></td>
								<!-- 删除操作-带id参数 -->
								<td><a
									href="${pageContext.request.contextPath }/parenting/del.action?id=${parenting.id}"><button
											type="button" class="btn btn-success btn-lg"
											onclick="return confirm('确定要删除帖子吗？') ">
											<span class="glyphicon glyphicon-trash"></span> 删除
										</button></a></td>
								<!-- 修改操作 -->
								<td><a
									href="${pageContext.request.contextPath }/parenting/findOne.action?id=${parenting.id}"><button
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
						href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a
							href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=${pageInfo.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>
					<c:forEach items="${pageInfo.navigatepageNums }" var="nav">
						<c:if test="${nav==pageInfo.pageNum }">
							<li class="active"><a
								href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=${nav}">${nav }</a></li>
						</c:if>
						<c:if test="${nav!=pageInfo.pageNum }">
							<li><a
								href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=${nav}">${nav }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pageInfo.hasNextPage}">
						<li><a
							href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=${pageInfo.pageNum+1}"
							aria-label="Previous"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li><a
						href="${pageContext.request.contextPath }/parenting/getParentingByAuthor.action?author=${user1.username}&pn=${pageInfo.pages}">末页</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 添加帖子的模态框-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 模态框的标题 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加记录</h4>
				</div>
				<!-- 模态框的主体-表单头部 -->
				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath }/parenting/addParenting.action?author=${user1.username}"
					method="post" id="form" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">记录内容:</label>
							<div class="col-sm-7 ">
								<input type="hidden" name="author" value="${user1.username}" />
								<textarea class="form-control input-lg" id="addtext" name="text"
									rows="10" cols="10" required autofocus>
								</textarea>
							</div>
						</div>
						<div class="form-group  form-group-lg">
							<label for="lastname" class="col-sm-3 control-label">记录时间:</label>
							<div class="col-sm-5">
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<input type="text" class="form-control input-lg" id="addtime"
									name="time"
									value="<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${now}" />"
									required autofocus readonly="readonly">
							</div>
						</div>
					</div>
					<!-- 模态框的尾部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="save">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>