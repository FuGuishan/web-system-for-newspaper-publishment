<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType = "text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/right.css" />
	<style>
	.content_advice hr{
		margin-left:0px;
	}
	
	button{
		margin-left:30px;
	}
	</style>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
			<li>
				<a href="index.jsp">首页</a>
			</li>
			<li>
				<a href="#">发行站管理</a>
			</li>
			<li class="active">
				查看建议
			</li>
		</ol>
	</div>
	<hr />

	<div class="function-panel">
		<div class="content_advice">
		<%!int pageNumber;%>
		<%
			pageNumber = Integer.parseInt((String) request
					.getAttribute("pageNumber"));
		%>
		   <form action = "" method = "post">
		   <label>查看建议（只显示最近50天建议） ·&nbsp;&nbsp;第<%=pageNumber%>页</label>
			<hr/>
			<br/>
		    <c:if test="${advices == null}">
		    <center>暂无建议信息</center>
		    </c:if>    
		    <c:forEach var = "advice" items = "${advices}">
			<table class="table table-bordered table-hover">
				<tr>
					<td style="background-color:#F6F6F6" width="14%">
						所属地区
					</td>
					<td width="25%">
						${advice.area}
					</td>
					<td style="background-color:#F6F6F6" width="14%">
						建议类型
					</td>
					<td>
						${advice.advice_type}
					</td>
				</tr>
				<tr>
					<td colspan="1" style="background-color:#F6F6F6">
						建议内容
					</td>
					<td colspan="5">
						${advice.content_detail}
					</td>
				</tr>
			</table>
			<hr/>
			</c:forEach>
			<button type="button" value="上一页" onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=lastpageAdvice&pageNumber=<%=pageNumber - 1%>'" >
			上一页
			</button>
			<button type="button" value="下一页 " onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=nextpageAdvice&pageNumber=<%=pageNumber + 1%>'" >
			下一页
			</button>
			<br/>
			</form>
		</div>
	</div>
</body>
</html>
