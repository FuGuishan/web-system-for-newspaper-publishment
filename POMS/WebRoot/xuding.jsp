<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
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
		  <li class="active">续订，退订处理</li>
		</ol>
	</div>
	<hr />
		<div class="function-panel">
		<div class="panel panel-default">
		<div class="panel-heading"><strong>续订,退订业务</strong></div>
		
		<div class="panel-body">
			<form action="<%=basePath %>searchServlet?arg=ToChangeOrder" method="post">
				输入客户编号搜索订单：<input type="text" name="customer_id">&nbsp;<button type="submit">搜索</button>
			</form>
		</div>
		<c:if test="${list == null}">
				
		</c:if>
		<c:if test="${list != null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>订单编号</th>	
					<th>报刊编号</th>	
					<th>客户编号</th>
					<th>报刊名称</th>
					<th>订阅份数</th>
					<th>截止期限</th>
					<th>投递状态</th>
					<th>操作</th>
					</tr>
					<c:forEach var="customer_book_sub" items="${list}">
						<c:if test="${customer_book_sub.if_toudi==0}">
							<tr>
								<td>${customer_book_sub.order_id }</td>
								<td>${customer_book_sub.pub_id }</td>
								<td>${customer_book_sub.customer_id }</td>
								<td>${customer_book_sub.substation_name }</td>
								<td>${customer_book_sub.pub_need_num }</td>
								<td>${customer_book_sub.end_time }</td>
								<td>${customer_book_sub.if_toudi }</td>
								<td>
									<button class="btn btn-default" onclick="window.location.href='<%=basePath %>searchServlet?arg=ToXuDing&id=${customer_book_sub.order_id}'">续订</button>&nbsp;
									<c:if test="${customer_book_sub.if_paied==0 && customer_book_sub.pub_debook==0}">
										<button class="btn btn-default" onclick="window.location.href='<%=basePath %>searchServlet?arg=ToTuiDing&id=${customer_book_sub.order_id}'">退订</button>
									</c:if>		
								</td>			
							</tr>
						</c:if>
					</c:forEach>
			</table>
		</c:if>
		</div>
		</div>
  </body>
</html>
