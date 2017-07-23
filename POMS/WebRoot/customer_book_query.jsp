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
		<title>报刊发行管理系统</title>
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
		  <li class="active">客户订购查询</li>
		</ol>
	</div>
	<hr />
	<div class="function-panel">
		<form action="<%=basePath %>searchServlet?arg=Customer_bookQuery" method="post">
			<div id="north">
				<table width="1000px" class="table table-bordered table-hover">
				<tr>
					<td width="180px">客户编号</td>
					<td><input style="width:200px" type="text" name="customer_id" pattern="^[0-9]{1,10}$"/>&nbsp;*</td>
				</tr>
				<tr>
					<td>订单起始日期</td>
					<td><input style="width:200px" type="date" name="start_time"  style="width:100" value=""/></td>
				</tr>
				<tr>
					<td>订单结束日期</td>
					<td><input style="width:200px" type="date" name="end_time"  style="width:100" value=""/></td>
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
	<br /><br /><br />
	<hr />
			
			<div class="function-panel">
			<c:if test="${list == null}">
				
			</c:if>
			<c:if test="${list != null}">
			
				<table width="1000px" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th>刊物编号</th>
						<th>顾客编号</th>
						<th>起始时间</th>
						<th>到期时间</th>
						<th>所订购刊物的金额</th>
						<th>已付金额</th>
						<th>所需数量</th>
						<th>支付情况</th>
					</tr>
					<c:forEach var="customer_book_sub" items="${list}">
						<tr>
							<td>${customer_book_sub.pub_id }</td>
							<td>${customer_book_sub.customer_id }</td>
							<td>${customer_book_sub.start_time }</td>
							<td>${customer_book_sub.end_time }</td>
							<td>${customer_book_sub.pub_money }</td>
							<td>${customer_book_sub.paied_money }</td>
							<td>${customer_book_sub.pub_need_num }</td>
							<td><c:if test="${customer_book_sub.if_paied==0 }">未支付</c:if>
								<c:if test="${customer_book_sub.if_paied==1 }">已支付</c:if>
							</td>			
						</tr>
					</c:forEach>
				</table>
			</c:if>
			</div>
	</body>
</html>
