<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
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
<title>登录新界面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="登录,ssm练习,web项目">
<meta http-equiv="description" content="This is login page">

<!-- 顺序：先css后jquery最好bootstrap.js -->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="<%=basePath%>static/css/style.css">
<link
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/css/bootstrap-select.min.css"
	rel="stylesheet">

<script type="text/javascript" src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript"
	src="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/addre.js"></script>

</head>
<body style="margin: 8%;">
	<div class="container">
		<div class="form row">
			<!-- ajax提交登录示例 -->
			<div class="form-horizontal col-md-offset-2" id="login_form">
				<h3 class="form-title">欢迎登录</h3>
				<div class="col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i> <input
							class="form-control required" type="text" placeholder="请输入用户名..."
							id="username" name="username" value="admin" autofocus="autofocus"
							maxlength="20" /> <span id="checkUserNameResult"
							style="color: red"></span>
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> <input
							class="form-control required" type="password"
							placeholder="请输入密码..." id="password" name="password"
							maxlength="8" value="admin" /> <span id="checkPasswordResult"
							style="color: red"></span> <label class="control-label"
							for="inputSuccess1" style="color: red;" id="message"></label>
					</div>
					<div class="form-group col-md-offset-9">
						<button type="submit" class="btn btn-success pull-left"
							name="login" id="login">登录</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		/* 以json的格式提交登录传参 */
		$("#login") .click(
						function() {
							var username = document.getElementById("username").value;
							var password = document.getElementById("password").value;

							var checkUserNameResult = document
									.getElementById("checkUserNameResult"); //提示语句
							var checkPasswordResult = document
									.getElementById("checkPasswordResult"); //提示语句
							if (username.trim().length == 0) {
								checkUserNameResult.innerHTML = "用户名不能为空";
								obj.focus();
							} else if (password.trim().length == 0) {
								checkUserNameResult.innerHTML = "";
								checkPasswordResult.innerHTML = "密码不能为空";
								obj.focus();
							}else {
								checkPasswordResult.innerHTML = "";
								$.ajax({
											type : 'post',
											//提交路径
											url : '${pageContext.request.contextPath}/user/checkLogin.action',
											//声明为json格式
											contentType : 'application/json;charset=utf-8',
											//转为json格式
											data : JSON.stringify({
												"username" : $("#username").val(),
												"password" : $("#password").val()
											}),
											//点击登录以后拿到数据
											success : function(data) {
												//判断
												if (data == "" || data == null) {
													$("#message").html(
															"用户名或密码错误！");
												} else
													window.location.href = "${pageContext.request.contextPath}/posts/queryPosts.action";
												//正常跳转
											}
										});
							}
						});
	</script>
</body>
</html>