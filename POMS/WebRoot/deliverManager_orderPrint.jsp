<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">欠款单打印</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>订单打印页面</strong></h3>
			</div>
			<div class="panel-body">
				<h2 align="center">欠款通知</h2>
				<c:if test="${list==null}">
				没有查询结果！
				</c:if>
				<c:forEach var="user" items="${list}">
				用户&nbsp;&nbsp;${user.customer_name }&nbsp;&nbsp;(ID：${user.customer_id })：<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				签订订单&nbsp;&nbsp;ID：${user.order_id }，未支付；<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				订阅报刊：&nbsp;&nbsp;${user.pub_name }&nbsp;&nbsp;（ID：${user.pub_id }）；<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				应缴金额：&nbsp;&nbsp;${user.pub_money * user.pub_need_num }&nbsp;&nbsp;元；<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				客户地址：&nbsp;&nbsp;${user.customer_address }<br/>
				<!-- 
				订单ID：${user.order_id }<br/>
				订单状态：未支付<br/>
				客户ID：${user.customer_id }<br/>
				客户姓名：${user.customer_name }<br/>
				报刊ID：${user.pub_id }<br/>
				报刊名称：${user.pub_name }<br/>
				欠款金额：<br/>
				客户地址：${user.customer_address }<br/>
				 -->
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>

