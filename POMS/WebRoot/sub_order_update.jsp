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
		  <li class="active">分站订单修改</li>
		  <li class="active">订单修改</li>
		</ol>
	</div>
	<hr />
			
			<form action="<%=basePath %>searchServlet?arg=OrderUpdate" method="post">
			<div class="function-panel">
				<table width="1000px" class="table table-bordered table-hover">
					<tr>
						<td width="180px">订单编号</td>
						<td>${customer_book_sub.order_id }</td>
					</tr>
					<tr>
						<td width="180px">分站编号</td>
						<td><input type="text" name="substation_id" value="${customer_book_sub.substation_id }" pattern="^[0-9]{1,10}$"/></td>
					</tr>
					<tr>
						<td width="180px">刊物编号</td>
						<td><input type="text" name="pub_id" value="${customer_book_sub.pub_id }" pattern="^[0-9]{1,10}$"/></td>
					</tr>
					<tr>
						<td width="180px">客户编号</td>
						<td><input type="text" name="customer_id" value="${customer_book_sub.customer_id }" pattern="^[0-9]{1,10}$"/></td>
					</tr>
					<tr>
						<td width="180px">起始时间</td>
						<td><input type="date" name="start_time" value="${customer_book_sub.start_time }" pattern="^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$"/></td>
					</tr>
					<tr>
						<td width="180px">到期时间</td>
						<td><input type="date" name="end_time" value="${customer_book_sub.end_time }" pattern="^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$"/></td>
					</tr>
					<tr>
						<td width="180px">所订购刊物的金额</td>
						<td><input type="text" name="pub_money" value="${customer_book_sub.pub_money }"/></td>
					</tr>
					<tr>
						<td width="180px">已付金额</td>
						<td><input type="text" name="paied_money" value="${customer_book_sub.paied_money }"/></td>
					</tr>
					<tr>
						<td width="180px">所需数量</td>
						<td><input type="text" name="pub_need_num" value="${customer_book_sub.pub_need_num }"/></td>
					</tr>
					<tr>
						<td width="180px">支付情况</td>
						<td><input type="radio" name="if_paied" value="1" <c:if test="${customer_book_sub.if_paied==1 }">checked</c:if> />已支付
							<input type="radio" name="if_paied" value="0" <c:if test="${customer_book_sub.if_paied==0 }">checked</c:if> />未支付
						</td>
					</tr>
					<tr>
						<td width="180px">附赠品类型</td>
						<td><input type="radio" name="gift_type" value="0" <c:if test="${customer_book_sub.gift_type==0 }">checked</c:if> />无
							<input type="radio" name="gift_type" value="1" <c:if test="${customer_book_sub.gift_type==1 }">checked</c:if> />附赠卡
							<input type="radio" name="gift_type" value="2" <c:if test="${customer_book_sub.gift_type==2 }">checked</c:if> />代金券
						</td>
					</tr>
					<tr>
						<td width="180px">折扣</td>
						<td><input type="text" name="discount" value="${customer_book_sub.discount }"/></td>
					</tr>
					<tr>
						<td width="180px">附赠品编号</td>
						<td><input type="text" name="gift_num" value="${customer_book_sub.gift_num }"/></td>
					</tr>
				</table>
				<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
							修改
						</button>
					</div>
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
					<div class="col-sm-2">
						<button type="button" class="btn btn-default" name="return" id="" onclick="window.location.href='sub_order_query.jsp'">
							返回
						</button>
					</div>
				</div>	
			</div>
			</form>
	</body>
</html>
