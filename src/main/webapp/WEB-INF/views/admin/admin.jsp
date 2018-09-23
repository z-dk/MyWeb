<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>后台管理</title>
</head>
<body>
	<%@ include file="../../../header.jsp" %>
	<div class="container">
		<form>
			<table class="table table-hover">
				<thead>
					<tr>
						<td colspan="4" align="center">待审核留言</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${msgs }" var="item">
						<tr>
							<td class="col-sm-1">${item.visitor }</td>
							<td class="col-sm-7">${item.mInfo }</td>
							<td class="col-sm-3">${item.dateTime }</td>
							<td class="col-sm-1"><button type="button" mid="${item.mId }" class="btn btn-success">pass</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<table class="table table-hover">
				<thead>
					<tr>
						<td colspan="4" align="center">已审核留言</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${msgses }" var="item">
						<tr>
							<td class="col-sm-1">${item.visitor }</td>
							<td class="col-sm-7">${item.mInfo }</td>
							<td class="col-sm-3">${item.dateTime }</td>
							<td class="col-sm-1"><button type="button" mid="${item.mId }" class="btn btn-danger">cancel</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		
		$(document).on("click",".btn-success",function(){
			var mid = $(this).attr("mid");
			$.ajax({
				url:"${APP_PATH}/admin/changestatus?mId="+mid+"&status="+true,
				type:"POST",
				success:function(){
					alert("提交成功！");
					location.reload(bForceGet=true);
				}
			})
		})
		
		$(document).on("click",".btn-danger",function(){
			var mid = $(this).attr("mid");
			$.ajax({
				url:"${APP_PATH}/admin/changestatus?mId="+mid+"&status="+false,
				type:"POST",
				success:function(){
					alert("提交成功！");
					location.reload(bForceGet=true);
				}
			})
		})
	</script>
</body>
</html>