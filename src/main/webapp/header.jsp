<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>header</title>
</head>
<body>
	<!-- 页眉 -->
	<div class="header">
		<!-- 导航条部分 -->
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- 这里设置标题 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" 
							data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="http://www.zhudengkui.xyz">朱登奎的个人主页</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav" id="navbar">
						<!-- 这里设置导航链接 -->
						<li class="active"><a href="${APP_PATH }/index.jsp">首页</a></li>
						<li><a href="${APP_PATH }/learning">资源链接</a></li>
						<li><a href="${APP_PATH }/tomessage">留言板</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">contact me
							<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="https://weibo.com/zhudengkui">微博</a></li>
								<li><a href="https://www.cnblogs.com/z-dk">博客园</a></li>
								<li><a href="https://github.com/z-dk">Github</a></li>
								<li><a href="mailto:zhudengkui0000@126.com">与我联系</a></li>
								<li class="divider"></li>
								<li><a href="javascript:addFavorite()">收藏本站</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<script type="text/javascript">
	$("#navbar a").each(function(){
	    $this = $(this);
	    if($this[0].href==String(window.location)){
	        $("#navbar li").removeClass("active");
	        $this.parent("li").addClass("active");
	    }
	});
	</script>
</body>
</html>