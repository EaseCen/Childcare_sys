<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="js/bootstrap-datetimepicker.zh-CN.js"></script>
</head>

<!-- 添加模态框（Modal）插件 -->
<script type="text/javascript">
	$(function() {
		$('#myModal').modal({
			keyboard : false,
			backdrop : true
		})
	});

	(function() {
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

<style>
.flex {
	/*flex 布局*/
	display: flex;
	/*实现垂直居中*/
	align-items: center;
	font-size: 20px /*实现水平居中
	justify-content: center;*/
}
</style>
<body>
	<!-- 添加修改帖子的模态框-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 模态框的标题 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改回复信息</h4>
				</div>

				<!-- 模态框的主体-表单头部 -->
				<form class="form-horizontal" role="form"
					action="${pageContext.request.contextPath }/reposts/updReposts.action"
					method="post" id="form" enctype="multipart/form-data">

					<!-- 将id作为隐藏域提交这样就不会出现找不到修改的数据而报错问题 -->
					<input type="hidden" name="id" value="${reposts.id }" />

					<!-- 主体-表单内容 -->
					<div class="modal-body">
						<div class="form-group  form-group-lg">
							<label for="firstname" class="col-sm-3 control-label">所属帖子:</label>
							<div class="flex col-sm-5">
								<c:out value="${reposts.name }"></c:out>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">回复内容:</label>
							<div class="col-sm-5">
								<textarea rows="10" style="min-width: 90%" id="text" name="text" wrap="hard" required onkeyup="this.value=this.value.replace(/^ +| +$/g,'')">${reposts.text }</textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">回复时间:</label>
							<div class="flex col-sm-5">
								<fmt:formatDate value="${reposts.time}"
									pattern="yyyy-MM-dd HH:mm:ss" />
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-3 control-label">回复人:</label>
							<div class="flex col-sm-5">
								<c:out value="${reposts.repost_user }"></c:out>
							</div>
						</div>
					</div>
					<!-- 模态框的尾部 -->
					<div class="modal-footer">
						<a
							href="${pageContext.request.contextPath}/reposts/queryReposts.action"><button
								type="button" class="btn btn-default">返回</button> </a>
						<button type="submit" class="btn btn-primary" id="save">提交</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
