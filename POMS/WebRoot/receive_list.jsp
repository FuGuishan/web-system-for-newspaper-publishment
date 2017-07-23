<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>收件箱</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/right.css">
		<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
		<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>	
	</head>


	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="right.jsp" target="_parent">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					收件箱
				</li>
			</ol>
		</div>

		<hr />

		<form action="informMessageServlet?mode=viewFromByDate" method="post">
		<div class="function-panel">
		<label>收取日期：</label>
		&nbsp;&nbsp;
		<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value="选择日期"/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
		    &nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit"  value="查询" class="btn btn-default" style="padding-top:5px; height:28px; font-size:15px;"/>
			</div>
		
		</form>
  	  <hr />



		
		<c:if test="${messagelist == null}">
				没有查询结果！
		</c:if>
		<c:if test="${messagelist != null}">
		<div class="function-panel">
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width="100" height="38">来自&nbsp;</th>
					<th width="533">主题&nbsp;</th>
					<th width="100">阅读&nbsp;</th>
					<th width="100">时间&nbsp;</th>
					<th width="172">操作&nbsp;</th>
				</tr>
				
			<c:forEach var="message" items="${messagelist}">
				<tr>
					<td>${message.send_emp_id}</td>
					<td>${message.content}</td>
					<td>
						<c:if test="${message.if_read == 1}">已阅读</c:if>
					    <c:if test="${message.if_read == 0}">未阅读</c:if>
                    </td>
					<td>${message.send_time} </td>
					<td>
						<a href="<%=basePath %>informMessageServlet?mode=detailFrom&id=${message.inform_id}">详细阅读</a>
						&nbsp;
						<a href="<%=basePath %>informMessageServlet?mode=deleteFrom&id=${message.inform_id}" onclick="return confirm('您确认要删除本记录么？')" >删除</a>
					</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		</c:if>
	</body>
</html>