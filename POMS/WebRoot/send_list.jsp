<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>发件箱</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/right.css">
	</head>


	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="right.jsp" target="main">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					发件箱
				</li>
			</ol>
			<hr />
		</div>

		
		<c:if test="${messagelist1 == null}">
				没有查询结果！
		</c:if>
		<c:if test="${messagelist1 != null}">
		<div class="function-panel">
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width="100" height="38">发送至&nbsp;</th>
					<th width="533">主题&nbsp;</th>
					<th width="100">阅读&nbsp;</th>
					<th width="100">时间&nbsp;</th>
					<th width="172">操作&nbsp;</th>
				</tr>
				
			<c:forEach var="message1" items="${messagelist1}">
				<tr>
					<td>${message1.get_emp_id}</td>
					<td>${message1.content}</td>
					<td>
						<c:if test="${message1.if_read == 1}">对方已阅读</c:if>
					    <c:if test="${message1.if_read == 0}">对方未阅读</c:if>
                    </td>
					<td>${message1.send_time} </td>
					<td>
						<a href="<%=basePath %>informMessageServlet?mode=detailTo&id=${message1.inform_id}">详细阅读</a>
						&nbsp;
						<a href="<%=basePath %>informMessageServlet?mode=deleteTo&id=${message1.inform_id}" onclick="return confirm('您确认要删除本记录么？')" >删除</a>
					</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		</c:if>
	</body>
</html>