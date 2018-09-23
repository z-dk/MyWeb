<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<%
		pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
	<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" />
	<script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.3.1.js"></script>
	<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="icon" href="${APP_PATH }/static/images/bitbug_favicon.ico" type="image/x-icon"/>
<title>欢迎登录</title>
</head>
<body>
	<%@ include file="../../../header.jsp" %>
	<div class="row">
		<div class="col-sm-offset-3 col-sm-6">
			<form class="form-horizontal" id="admin_form">
				<div class="form-group">
					<label class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="adName" placeholder="用户名"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">密码</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="adPassword" placeholder="密码"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-6 col-sm-2">
						<input type="button" class="btn btn-default btn-block" value="登录" onclick="login()"/>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function login(){
			$.ajax({
				url:"${APP_PATH}/admin/check",
				data:$("#admin_form").serialize(),
				type:"POST",
				success:function(result){
					if(result.code==100){
						window.location.href="${APP_PATH}/admin/toadminpage?adName="+result.extend.admin.adName;
					}else if(result.code==200){
						alert("用户名或密码错误！");
					}
				}
			})
		}
	</script>
</body>
</html>