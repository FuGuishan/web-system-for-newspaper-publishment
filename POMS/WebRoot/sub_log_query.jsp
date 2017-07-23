<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	</head>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">查询</a></li>
		  <li class="active">分站日志查询</li>
		</ol>
	</div>
	<hr />
			
	<div class="function-panel">	
		<form action="<%=basePath %>searchServlet?arg=Sub_logQuery" method="post">
			<div id="north">
				<table width="1000px" class="table table-bordered table-hover">
					<tr>
						<td width="180px">分站编号</td>
						<td><input style="width:200px" type="text" name="substation_id" pattern="^[0-9]{1,10}$"/>&nbsp;*</td>
					</tr>
					<tr>
						<td width="180px">分站名称</td>
						<td><input style="width:200px" type="text" name="substation_name"/>&nbsp;*</td>
					</tr>
					<tr>
						<td width="180px">查询起始日期</td>
						<td><input style="width:200px" type="date" name="start_time" style="width:100" value=""/>&nbsp;*</td>
					</tr>
					<tr>
						<td width="180px">查询结束日期</td>
						<td><input style="width:200px" type="date" name="end_time" style="width:100" value=""/>&nbsp;*</td>
					</tr>	
				</table>
				
				<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
							提交
						</button>
					</div>
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
				</div>	
				</div>
			</form>
		</div>	
		<br /><br />
		<hr />
			
			<div class="function-panel">
			<c:if test="${list == null}">
			
			</c:if>
			<c:if test="${list != null}">
			
				<table width="1000px" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th>分站编号</th>
						<th>分站名称</th>
						<th>起始时间</th>
						<th>结束时间</th>
						<th>新建订单数量</th>
						<th>订单结束数量</th>
					</tr>
					<c:forEach var="sub_log" items="${list}">
						<tr>
							<td>${sub_log.substation_id }</td>
							<td>${sub_log.substation_name }</td>
							<td>
								<c:if test="${sub_log.start_time!=null}">${sub_log.start_time }</c:if>
								<c:if test="${sub_log.start_time==null}">未定义</c:if>
							</td>
							<td>
								<c:if test="${sub_log.end_time!=null}">${sub_log.end_time }</c:if>
								<c:if test="${sub_log.end_time==null}">未定义</c:if>
							</td>
							<td>${sub_log.new_order_num }</td>
							<td>${sub_log.end_order_num }</td>				
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</body>
</html>
