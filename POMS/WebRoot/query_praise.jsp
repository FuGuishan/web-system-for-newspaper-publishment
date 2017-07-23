<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html;charset=utf-8"%>
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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/right.css" />
	<style>
	.content_praises hr{
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
				表扬处理
			</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<div class="content_praises">
			<form action="" method="post">
			<label>表扬信息处理：</label>
			<br />
			<br />
			<c:if test="${praises == null}">
		        <center>暂无表扬信息</center>
		    </c:if> 
			<c:forEach var="praise" items="${praises}">
				<table class="table table-bordered table-hover">
					<tr>
						<td style="background-color:#F6F6F6" width="14%">
							所属地区
						</td>
						<td width="14%">
							${praise.area}
						</td>
						<td style="background-color:#F6F6F6" width="14%">
							表扬类型
						</td>
						<td width="25%">
							${praise.praise_type}
						</td>
						<td style="background-color:#F6F6F6" width="14%">
							员工编号
						</td>
						<td>
							${praise.employee_number}
						</td>
					</tr>
					<tr>
						<td style="background-color:#F6F6F6">
							表扬内容
						</td>
						<td colspan="5">
							${praise.content_detail}
						</td>
					</tr>
				</table>
				<a  href = "<%=basePath%>callCenterHandlerServlet?arg=bonusEmp&employee_number=${praise.employee_number}&praise_id=${praise.praise_id}"
						onclick="return confirm('确定给该员工加分吗？');">
		        <button type="button">给员工加分</button></a>
		        <a href="<%=basePath%>callCenterHandlerServlet?arg=ignorePraise&employee_number=${praise.employee_number}&praise_id=${praise.praise_id}"
						onclick="return confirm('确定忽略该表扬吗？');">
		        <button type="button">忽略此表扬</button></a>
				<hr />
			</c:forEach>
			</form>
		</div>
	</div>
	</body>
</html>
