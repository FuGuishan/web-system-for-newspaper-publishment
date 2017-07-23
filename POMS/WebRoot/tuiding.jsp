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
		  <li><a href="#">商品订购</a></li>
		  <li class="active">退订处理</li>
		</ol>
	</div>
	<hr />
			<form action="<%=basePath %>searchServlet?arg=TuiDing" method="post">
			<div class="function-panel">
				<input type="hidden" name="customer_id" value="${customer_book_sub.customer_id }">
				<input type="hidden" name="pub_id" value="${customer_book_sub.pub_id }">
				<input type="hidden" name="pub_need_num" value="${customer_book_sub.pub_need_num }">
				<table width="1000px" class="table table-bordered table-hover">
					<tr>
						<td width="180px">订单编号</td>
						<td><input type="hidden" name="order_id" value="${customer_book_sub.order_id }"/>${customer_book_sub.order_id }</td>
					</tr>
					<tr>
						<td width="180px">订单开始时间</td>
						<td>${customer_book_sub.start_time }</td>
					</tr>
					<tr>
						<td width="180px">订单结束时间</td>
						<td>${customer_book_sub.end_time }</td>
					</tr>
					<tr>
						<td width="180px">已支付金额</td>
						<td>${customer_book_sub.paied_money }</td>
					</tr>
					<tr>
						<td width="180px">理由类型</td>
						<td>
							<select name="reason_type">
								<c:forEach var="reason_list" items="${reason_list}">
									<option value="${reason_list }">${reason_list }</option>
								</c:forEach>
					 		</select>
					 	</td>
					</tr>
					<tr>
						<td width="180px">退订订详细理由</td>
						<td><textarea name="reason" rows="4" cols="30"></textarea></td>
					</tr>
				</table>
				<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
							确定
						</button>
					</div>
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
					<div class="col-sm-2">
						<button type="button" class="btn btn-default" name="return" id="" onclick="window.location.href='xuding.jsp'">
							返回
						</button>
					</div>
				</div>	
			</div>
			</form>
	</body>
</html>
