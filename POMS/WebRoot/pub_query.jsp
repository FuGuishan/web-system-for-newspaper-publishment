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

		<title>客户订购查询</title>
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
		  <li class="active">报刊信息查询</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<form action="<%=basePath %>searchServlet?arg=Pub_messageQuery" method="post">
			<div id="north">
				<table width="1000px" class="table table-bordered table-hover">
				<tr>
					<td width="180px">刊物编号</td>
					<td><input style="width:200px" type="text" name="pub_id" pattern="^[0-9]{1,10}$"/></td>
				</tr>
				<tr>
					<td >刊物名称</td>
					<td><input style="width:200px" type="text" name="pub_name"/></td>
				</tr>
				<tr>
					<td >供货单位</td>
					<td><input style="width:200px" type="text" name="delivery_unit"/></td>
				</tr>					
				
			</table>
			</div>
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
		</form>
	</div>
	<br /><br /><br />
	<hr />
	
	
	
			
			<div class="function-panel">
			<c:if test="${list == null}">
				
			</c:if>
			<c:if test="${list != null}">
			
				<table width="100%" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th>刊物编号</th>
						<th>名称</th>
						<th>刊期</th>
						<th>印发数</th>
						<th>发行数</th>
						<th>剩余量</th>
						<th>图片</th>
						<th>刊物价格</th>
						<th>刊物类型</th>
						<th>是否允许退订</th>
						<th>是否允许转址</th>
						<th>月价</th>
						<th>年价</th>
						<th>成本</th>
						<th>供货单位</th>
					</tr>
					<c:forEach var="pub_message" items="${list}">
						<tr>
							<td>${pub_message.pub_id }</td>
							<td>${pub_message.pub_name }</td>
							<td>${pub_message.pub_time }</td>
							<td>${pub_message.print_num }</td>
							<td>${pub_message.sell_num }</td>
							<td>${pub_message.rest_num }</td>
							<td>${pub_message.image }</td>
							<td>${pub_message.pub_price }</td>
							<td>${pub_message.pub_type }</td>
							<td>
								<c:if test="${pub_message.pub_debook==0 }">允许</c:if>
								<c:if test="${pub_message.pub_debook==1 }">不允许</c:if>
							</td>
							<td>
								<c:if test="${pub_message.pub_redirect==0 }">允许</c:if>
								<c:if test="${pub_message.pub_redirect==1 }">不允许</c:if>
							</td>
							<td>${pub_message.pub_month_price }</td>
							<td>${pub_message.pub_year_price }</td>
							<td>${pub_message.pub_release_rate }</td>
							<td>${pub_message.delivery_unit }</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			</div>
	</body>
</html>
