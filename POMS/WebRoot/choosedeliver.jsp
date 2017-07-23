<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

Date now = new Date(); 
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式 
String today_time = dateFormat.format( now );
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>选择投递员</title>
		<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
		<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
		
			
	</head>
	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
			  <li><a href="index.jsp" target="_parent">首页</a></li>
			  <li><a href="#">收费中心</a></li>
			  <li class="active">选择投递员</li>
			</ol>
		</div>
		<hr />
		
		<div class="function-panel">
		<form class="form-horizontal" name="changeform" action="payServlet?arg=toudi" method="post" onsubmit="return confirm('确认');">
			<table class="table table-bordered table-hover">
			 <input type = "hidden" name="order_id" value="<%=request.getAttribute("order_id").toString() %>"/>
				<tr>
					<th>订单号：</th>
					<td><%=request.getAttribute("order_id").toString() %></td>
				</tr>
				<tr>
					<th>选择投递员：</th>
					<td>
						<select name="deliver_choose">
							<c:forEach var="deliverlist" items="${deliverlist}">
					 			<option value="${deliverlist.emp_id }" >${deliverlist.emp_name }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  投递段：${deliverlist.destination }</option>
					 			
					 		</c:forEach>
					 	</select>
					</td>
				</tr>
				
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-default" name="submit" value="提交"/>
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button>
			</div>
		</div>
		</form>
	</div>

	</body>
</html>