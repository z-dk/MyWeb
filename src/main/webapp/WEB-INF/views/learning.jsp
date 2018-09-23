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
<link
	href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${APP_PATH}/static/js/jquery-3.3.1.js"></script>
<script
	src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link rel="icon" href="${APP_PATH }/static/images/bitbug_favicon.ico"
	type="image/x-icon" />
<title>learning</title>
</head>
<body>
	<%@ include file="../../header.jsp"%>
	<div class="container">
		<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" class="active">
					<a href="#java" aria-controls="java" role="tab" data-toggle="tab">java</a>
				</li>
				<li role="presentation">
					<a href="#html" aria-controls="html" role="tab" data-toggle="tab">前端</a>
				</li>
				<li role="presentation">
					<a href="#git" aria-controls="git" role="tab" data-toggle="tab">Git&Github</a>
				</li>
				<li role="presentation">
					<a href="#others" aria-controls="others" role="tab" data-toggle="tab">其他</a>
				</li>
			</ul>
		</div>
		<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
			<div class="tab-content">
			    <div role="tabpanel" class="tab-pane active" id="java">
			    	<div class="panel panel-info">
			    		<div class="panel-heading">java在线资源汇总</div>
			    		<div class="panel-body">
					    	<a href="http://mvnrepository.com/">maven中央仓库</a><br />
			    		</div>
			    	</div>
			    </div>
			    
			    <div role="tabpanel" class="tab-pane" id="html">
			    	<div class="panel panel-info">
			    		<div class="panel-heading">前端在线资源汇总</div>
			    		<div class="panel-body">
					    	<a href="http://www.xiaoleilu.com/regex-guide/">正则表达式</a><br></br>
					    	<a href="https://v3.bootcss.com/">bootstrap</a><br></br>
					    	<a href="http://www.jq22.com/">jQuery插件库</a><br></br>
			    		</div>
			    	</div>
			    </div>
			    
			    <div role="tabpanel" class="tab-pane" id="git">
			    	<div class="panel panel-info">
			    		<div class="panel-heading">git在线学习资源</div>
			    		<div class="panel-body">
					    	<a href="https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000">Git教程-廖雪峰的官方网站</a><br></br>
					    	<a href="https://www.cnblogs.com/tsingke/p/7374127.html#4047297">开源电子书</a><br></br>
			    		</div>
			    	</div>
			    </div>
			    
			    <div role="tabpanel" class="tab-pane" id="others">
			    	<div class="panel panel-info">
			    		<div class="panel-heading">其他网络资源</div>
			    		<div class="panel-body">
			    			<a href="https://pan.baidu.com/s/1fLOAjBVgKcnxE-0RC92A2w">百度云-win PE</a><br></br>
			    			<a href="https://pan.baidu.com/s/1LckqTIV27tOZqQpU9riAoQ">百度云-安卓开发工具</a>（Android Studio，SDK，eclipse插件ADT）<br></br>
			    			<a href="https://pan.baidu.com/s/1WQ9ONdjbhmSgYaBVLoedDA">百度云-黑马安卓</a><br></br>
			    			<a href="https://pan.baidu.com/s/1jHLJ2u96HJb8D45VJp4JBg">百度云-计算机等级考试资源库</a><br /><br />
			    			<a href="http://www.gulixueyuan.com/">在线课堂-谷粒学院</a><br /><br />
			    			<a href="https://ke.qq.com/">在线课堂-腾讯课堂</a><br /><br/>
			    			<a href="https://www.icourse163.org/">在线课堂-中国大学MOOC</a><br /><br />
			    		</div>
			    	</div>
			    </div>
			</div>
		</div>
	</div>
	
</body>
</html>