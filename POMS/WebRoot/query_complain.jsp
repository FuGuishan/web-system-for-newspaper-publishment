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
	.content_complains hr{
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
				投诉处理
			</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<div class="content_complains">
		   	<form action = "<%=basePath%>callCenterHandlerServlet?arg=feedback" method = "post">
		   	<label>未处理投诉:</label><br/><br/>
		    <c:if test="${complains == null}">
		    <center>暂无投诉信息</center>   
		    </c:if>    
		    <c:forEach var = "complain" items = "${complains}">
			<table class="table table-bordered">
				<tr>
					<td style="background-color:#F6F6F6" width="14%">
						所属地区
					</td>
					<td width="20%">
						${complain.area}
					</td>
					<td style="background-color:#F6F6F6" width="14%">
						投诉类型
					</td>
					<td>
						${complain.complain_type}
					</td>
					<td style="background-color:#F6F6F6" width="14%">
						员工编号
					</td>
					<td>
						${complain.employee_number}
					</td>
				</tr>
				<tr>
					<td style="background-color:#F6F6F6" colspan="1">
						投诉内容
					</td>
					<td colspan="5">
						${complain.content_detail}
					</td>
				</tr>
				<tr>
					<td style="background-color:#F6F6F6">
						给客服填写反馈：
					</td>
					<td colspan = "6">
						<input style="width:710px" type="text" name="feedback" />
					</td>
					<input type="hidden" name = "complain_id" value = "${complain.complain_id}" />
				</tr>
			</table>
			<button style="margin-left:5px" type="submit">保存</button>
			<a href = "<%=basePath %>callCenterHandlerServlet?arg=deductMarksFromEmp&employee_number=${complain.employee_number}&complain_id=${complain.complain_id}" 
	        onclick = "return confirm('确定给该员工扣分吗？')">
	        <button type="button">给员工扣分</button></a>
	        <a href = "<%=basePath %>callCenterHandlerServlet?arg=ignore&employee_number=${complain.employee_number}&complain_id=${complain.complain_id}" 
	        onclick = "return confirm('确定忽略此次投诉吗？')">
	        <button type="button">忽略此投诉</button></a>
			<hr/>
			</c:forEach>
			</form>
		</div>
	</div>
</body>
</html>
