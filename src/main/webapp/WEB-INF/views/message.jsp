<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<script src="${APP_PATH}/static/js/moment.js"></script>
<link rel="icon" href="${APP_PATH }/static/images/bitbug_favicon.ico" type="image/x-icon"/>
<title>留言板</title>
<style type="text/css">
	
</style>
</head>
<body>
	<%@ include file="../../header.jsp" %>
	
	<p>相关其他功能正在开发中。。。留言审核功能已开启</p>
	<div class="container">
		<!-- 表格 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="message_table">
					<tbody>
						
					</tbody>
				</table>
			</div>
		</div>
		<!-- 分页条 -->
		<div class="row">
			<div class="col-md-6" id="page_info_area"></div>
			<div class="col-md-6" id="nav_info_area"></div>
		</div>
		<div>
			<form class="form-horizontal" id="msg">
				<div class="form-group">
					<div class="col-sm-2">
						<input type="text" id="name" class="form-control" placeholder="昵称" name="visitor"/>
					</div>
					<div class="col-sm-8">
						<input type="text" id="info" class="form-control" placeholder="留言消息" name="mInfo"/>
					</div>
				</div>
				<br></br>
				<div class="col-sm-2 col-sm-offset-10">
					<button type="button" class="btn btn-default btn-block" onclick="commit()">提交</button>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			toPage(1);
		})
		
		function commit(){
			if($("#name").val().length<1){
				alert("昵称不能为空！");
			}else if($("#info").val().length<1){
				alert("消息不能为空！");
			}else{
				$.ajax({
					url:"${APP_PATH}/commitmsg",
					data:$("#msg").serialize(),
					type:"POST",
					success:function(result){
						$("#info").val("");
						alert(result.msg);
						toPage(1);
					}
				})
				
			}
		}
		function toPage(pn){
			$.ajax({
				url:"${APP_PATH}/getmessages?pn="+pn,
				type:"GET",
				success:function(result){
					
					build_msg_table(result.extend.pageInfo.list);
					build_page_info(result);
					build_nav_info(result);
				}
			})
			
		}
		//绘制留言显示表格
		function build_msg_table(msgs){
			$("#message_table tbody").empty();
			$.each(msgs, function(index,item){
				var tr = $("<tr></tr>");
				var nameTd = $("<td class='col-sm-2'></td>").append(item.visitor);
				var infoTd = $("<td class='col-sm-8'></td>").append(item.mInfo);
				
				var ti = new Date(item.dateTime);
				var time = moment(ti).format("YYYY-MM-DD HH:mm");
				var timeTd = $("<td class='col-sm-2'></td>").append(time);
				
				tr.append(nameTd).append(infoTd).append(timeTd);
				$("#message_table tbody").append(tr);
			})
		}
		//显示分页信息
		function build_page_info(result) {
			$("#page_info_area").empty();
			$("#page_info_area").append(
					"第" + result.extend.pageInfo.pageNum + "页,总"
							+ result.extend.pageInfo.pages + "页,总共"
							+ result.extend.pageInfo.total + "条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
		//构建分页条
		function build_nav_info(result) {
			//清空之前的数据，防止页面刷新，页面叠加显示
			$("#nav_info_area").empty();
			var firstPageLi = $("<li></li>").append($("<a></a>").append("首页"));
			var prePageLi = $("<li></li>").append(
					$("<a></a>").append("&laquo;"));
			var lastPageLi = $("<li></li>").append($("<a></a>").append("末页"));
			var nextPageLi = $("<li></li>").append(
					$("<a></a>").append("&raquo;"));

			if (result.extend.pageInfo.hasPreviousPage == false) {
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			} else {
				firstPageLi.click(function() {
					toPage(1);
				});
				prePageLi.click(function() {
					toPage(result.extend.pageInfo.pageNum - 1);
				});
			}
			if (result.extend.pageInfo.hasNextPage == false) {
				lastPageLi.addClass("disabled");
				nextPageLi.addClass("disabled");
			} else {
				lastPageLi.click(function() {
					toPage(totalRecord);
				});
				nextPageLi.click(function() {
					toPage(result.extend.pageInfo.pageNum + 1);
				});
			}

			var ul = $("<ul></ul>").addClass("pagination").append(firstPageLi)
					.append(prePageLi);

			$.each(result.extend.pageInfo.navigatepageNums, function(index,
					item) {
				var li = $("<li></li>").append($("<a></a>").append(item));
				if (result.extend.pageInfo.pageNum == item) {
					li.addClass("active");
				}
				li.click(function() {
					toPage(item);
				});
				ul.append(li);
			});

			ul.append(nextPageLi).append(lastPageLi);
			var nav = $("<nav></nav>").append(ul).appendTo("#nav_info_area");
		}
	</script>
	
</body>
</html>