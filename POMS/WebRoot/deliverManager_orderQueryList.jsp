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
		  <li><a href="#">投递管理</a></li>
		  <li class="active">欠款单打印</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>欠款订单如下</strong></div>
		<div class="panel-body">
			<p>
				<form action="deliverManager_orderListServlet" method="post">
				订单ID：<input type="text" name="order_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="查询"/>
				&nbsp;&nbsp;直接点击查询显示全部欠款订单
				</form>
			</p>
		</div>
		<c:if test="${list==null}">
			没有查询结果！
		</c:if>
		<c:if test="${list!=null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>订单ID</th>
					<th>欠款金额</th>
					<th>操作</th>
				</tr>
				<c:forEach var="user" items="${list}">
					<tr>
						<td>${user.order_id }</td>
						<td>${user.pub_money * user.pub_need_num }</td>
						<td>
							<a href="<%=basePath %>deliverManager_orderPrintServlet?arg=${user.order_id}">打印</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		</div>
	</div>
</body>
</html>

