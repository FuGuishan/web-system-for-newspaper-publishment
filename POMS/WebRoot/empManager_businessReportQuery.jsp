<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">人事管理</a></li>
		  <li class="active">业绩统计</li>
		  <li class="active">查询业绩</li>
		</ol>
	</div>
	
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>本站业绩统计</strong></div>
		<div class="panel-body">
			<form action="empManager_businessReportQueryServlet" method="post">
				员工ID：<input type="text" name="emp_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="查询"/>
				&nbsp;&nbsp;直接点击查询显示全部员工业绩
				</form>
		</div>
			<c:if test="${list==null}">
				&nbsp;&nbsp;&nbsp;没有查询结果！
			</c:if>
			<c:if test="${list!=null}">
				<table class="table table-bordered table-hover">
					<tr>
						<th>员工姓名</th>
						<th>员工ID</th>
						<th>报刊编号</th>
						<th>报刊名称</th>
						<th>征订量</th>
						<th>投递量</th>
						<th>完成时间</th>
					</tr>
					<c:forEach var="user" items="${list}">
						<tr>
							<td>${user.emp_name }</td>
							<td>${user.emp_id }</td>
							<td>${user.pub_id }</td>
							<td>${user.pub_name }</td>
							<td>${user.emp_order }</td>
							<td>${user.emp_delivery }</td>
							<td>${user.fin_time }</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
	
</body>
</html>

