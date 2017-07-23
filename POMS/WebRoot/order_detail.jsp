<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
    <script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
	
  </head>

  <body>
  <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品订购</a></li>
		  <li class="active">订单浏览</li>
		</ol>
	</div>
	<hr />

 <div class="function-panel">
		<div class="panel panel-default">
		<input type="hidden" name="customer_id" value="${customer_book_sub.customer_id }">
		<div class="panel-heading"><strong>您的订单如下</strong>
		</div>
		<div class="panel-body">
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
					<td>订单编号</td>
					<td>${customer_book_sub.order_id }</td>
				</tr>
				<tr>
					<td>分站编号</td>
					<td>${customer_book_sub.substation_id }</td>
				</tr>
				<tr>
					<td>报刊名称</td>
					<td>${customer_book_sub.pub_name }</td>
				</tr>
				<tr>
					<td>报刊类别</td>
					<td>${customer_book_sub.pub_type }</td>
				</tr>
				<tr>
					<td>报刊代码</td>
					<td>${customer_book_sub.pub_id }</td>
				</tr>
				<tr>
					<td>订购数量</td>
					<td>${customer_book_sub.pub_need_num }</td>
				</tr>
				<tr>
					<td>总价</td>
					<td>${customer_book_sub.pub_money }</td>
				</tr>
				<tr>
					<td>订阅开始时间</td>
					<td>${customer_book_sub.start_time }</td>
				</tr>
				<tr>
					<td>订阅结束时间</td>
					<td>${customer_book_sub.end_time }</td>
				</tr>
				<tr>
					<td>附赠品类型</td>
					<td>
						<c:if test="${customer_book_sub.gift_type=='0' }">无</c:if>
						<c:if test="${customer_book_sub.gift_type=='1' }">附赠卡</c:if>
						<c:if test="${customer_book_sub.gift_type=='2' }">代金券</c:if>
					</td>
				</tr>
				<c:if test="${customer_book_sub.gift_type!='0' }">代金券
					<tr>
						<td>附赠品编号</td>
						<td>${customer_book_sub.gift_num }</td>
					</tr>
				</c:if>
				<tr>
					<td>您的地址</td>
					<td>${customer_book_sub.customer_address }</td>
				</tr>
					<tr>
					<td>您的联系方式</td>
					<td>${customer_book_sub.customer_phone }</td>
				</tr>
				<tr>
					<td>支付方式</td>
					<td>
						<c:if test="${customer_book_sub.pay_way=='0' }">上门支付</c:if>
						<c:if test="${customer_book_sub.pay_way=='1' }">现金支付</c:if>
					</td>
				</tr>
				<tr>
					<td>支付状态</td>
					<td>
						<c:if test="${customer_book_sub.if_paied=='0' }">未支付</c:if>
						<c:if test="${customer_book_sub.if_paied=='1' }">已支付</c:if>
					</td>
				</tr>
				
				
			</table>
		</div>
		<div class="form-group">
			<div class="col-sm-2">
				<button type="button" class="btn btn-default" name="return" id="" onclick="window.location.href='order.jsp'">
					确定
				</button>
			</div>
		</div>
	</div>
  </body>
</html>
