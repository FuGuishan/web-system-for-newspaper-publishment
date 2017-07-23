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
		  <li class="active">下订单</li>
		</ol>
	</div>
	<hr />
  <form action="<%=basePath %>searchServlet?arg=Create_order" method="post">
 <div class="function-panel">
		<div class="panel panel-default">
		<input type="hidden" name="customer_id" value="${customer_book_sub.customer_id }">
		<div class="panel-heading"><strong>你好&nbsp;
			<c:if test="${customer_book_sub.customer_grade=='2' }">大客户</c:if>
			<c:if test="${customer_book_sub.customer_grade=='1' }">会员</c:if>
			<c:if test="${customer_book_sub.customer_grade=='0' }">普通客户</c:if>
			：${customer_book_sub.customer_name }，当前订单详情和优惠政策如下</strong>
		</div>
		<div class="panel-body">
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
					<td>报刊名称</td>
					<td><input type="hidden" name="pub_name" value="${customer_book_sub.pub_name }"/>${customer_book_sub.pub_name }</td>
				</tr>
				<tr>
					<td>报刊类别</td>
					<td><input type="hidden" name="pub_type" value="${customer_book_sub.pub_type }"/>${customer_book_sub.pub_type }</td>
				</tr>
				<tr>
					<td>报刊代码</td>
					<td><input type="hidden" name="pub_id" value="${customer_book_sub.pub_id }"/>${customer_book_sub.pub_id }</td>
				</tr>
				<tr>
					<td>是否支持退订</td>
					<td>
						<input type="radio" name="pub_debook" value="0" <c:if test="${customer_book_sub.pub_debook=='0' }">checked</c:if> disabled/>允许
					    <input type="radio" name="pub_debook" value="1" <c:if test="${customer_book_sub.pub_debook=='1' }">checked</c:if> disabled/>不允许
					</td>
				</tr>
			   <tr>
					<td>优惠率</td>
					<td><input type="hidden" name="discount" value="${customer_book_sub.discount }"/>${customer_book_sub.discount }</td>
				</tr>
				<tr>
					<td>日价/优惠价</td>
					<td><input type="hidden" name="pub_price" value="${customer_book_sub.pub_price }"/>${customer_book_sub.pub_price } / ${(customer_book_sub.pub_price+0)*(customer_book_sub.discount+0) }</td>
				</tr>
					<tr>
					<td>月价/优惠价</td>
					<td>${customer_book_sub.pub_month_price } / ${(customer_book_sub.pub_month_price+0)*(customer_book_sub.discount+0) }</td>
				</tr>
					<tr>
					<td>年价/优惠价</td>
					<td>${customer_book_sub.pub_year_price } / ${(customer_book_sub.pub_year_price+0)*(customer_book_sub.discount+0) }</td>
				</tr>
					<tr>
					<td>您的地址</td>
					<td><input type="hidden" name="customer_address" value="${customer_book_sub.customer_address }"/>${customer_book_sub.customer_address }</td>
				</tr>
					<tr>
					<td>您的联系方式</td>
					<td><input type="hidden" name="customer_phone" value="${customer_book_sub.customer_phone }"/>${customer_book_sub.customer_phone }</td>
				</tr>
				<tr>
					<td>份数</td>
					<td><input type="text" name="pub_need_num" required pattern="^[0-9]{1,10}$"/></td>
				</tr>
				<tr>
					<td>订阅开始时间</td>
					<td><input type="date" name="start_time" id="date_start" value="${customer_book_sub.start_time }"/></td>
				</tr>
				<tr>
					<td>订阅结束时间</td>
					<td><input type="date" name="end_time" id="date_end" value="" required/></td>
				</tr>
				<tr>
					<td>分站编号</td>
					<td><input type="text" name="substation_id" required pattern="^[0-9]{1,10}$"/>&nbsp;*</td>
				</tr>
				
				<tr>
					<td>付款方式方式</td>
					<td>
						<input type="radio" name="pay_way" value="1" checked />现金支付
					    <input type="radio" name="pay_way" value="0" />上门支付
					</td>
				</tr>
			</table>
		</div>
		<div class="form-group">
					<div class="col-sm-2">
						<input type="submit" class="btn btn-default" value="提交" onclick="return confirm('您确认提交么？')">
					</div>
			
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
					<div class="col-sm-2">
						<button type="button" class="btn btn-default" name="return" id="" onclick="window.location.href='order.jsp'">
							返回
						</button>
					</div>
					
			</div>
	</div>
	</form>
  </body>
</html>
