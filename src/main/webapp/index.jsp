<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="keyword" content="朱登奎，个人主页，个人网站" />
	<%
		pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
	<link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" />
	<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
	<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script src="${APP_PATH}/static/js/moment.js"></script>
	<style>
		footer{
			height:60px;
			text-align:center;
			background-color:#e7e7e7;
		}
		p{
			font-weight:700;
			font-size:100%;
		}
		#day{
			font-weight:900;
			font-size:200%;
		}
		a{
			color:black;
		}
	</style>
	<link rel="icon" href="${APP_PATH}/static/images/bitbug_favicon.ico" type="image/x-icon"/>
	<title>朱登奎的个人主页</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container">
		<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2" style="">
			<table>
				<tr>
					<td>
						<p>读万卷书不如行万里<a href="lizi.jsp">路</a></p>
						<p>行万里<a href="${APP_PATH }/admin/toadminlogin">路</a>不如阅人无数</p><br />
					</td>
				</tr>
				<tr>
					<td align="center">星期<span id="week"></span></td>
				</tr>
				<tr>
					<td align="center"><p id="day"></p></td>
				</tr>
				<tr>
					<td align="center"><span id="year"></span>.<span id="month"></span></td>
				</tr>
				<tr>
					<td align="center">
						<span id="time"></span>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
			<div class="panel panel-success">
				<div class="panel-heading">我的足迹</div>
				<div class="panel-body">
					<jsp:include page="footMap.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer navbar-fixed-bottom">
		<div class="container">
			<p class="credits"><a href="http://www.miitbeian.gov.cn/">豫ICP备18030693号</a></p>
			<script type="text/javascript">
				var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
				document.write(unescape("%3Cspan id='cnzz_stat_icon_1274548078'%3E%3C/span%3E%3Cscript src='" 
						+ cnzz_protocol 
						+ "s19.cnzz.com/z_stat.php%3Fid%3D1274548078%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));
			</script>
		</div>
	</footer>
	<script type="text/javascript">
		$(function(){
			moment.locale("zh-cn", {
			    weekdays : ["日", "一", "二", "三", "四", "五", "六"]
			});
			var date = new Date();
			var dateTime = moment(date);
			var week = dateTime.format("dddd");
			var month = dateTime.format("MM");
			var year = dateTime.format("YYYY");
			
			$("#week").text(week);
			$("#day").text(date.getDate());
			$("#year").text(year);
			$("#month").text(month);
		})
		function addFavorite() {
	        var url = window.location;
	        var title = document.title;
	        var ua = navigator.userAgent.toLowerCase();
	        if (ua.indexOf("msie 8") > -1) {
	            external.AddToFavoritesBar(url, title, '');//IE8
	        } else {
	            try {
	                window.external.addFavorite(url, title);
	            } catch (e) {
	                try {
	                    window.sidebar.addPanel(title, url, "");//firefox
	                } catch (e) {
	                    alert("加入收藏失败，请使用Ctrl+D进行添加");
	                }
	            }
	        }
	    }
	</script>
	
</body>
</html>