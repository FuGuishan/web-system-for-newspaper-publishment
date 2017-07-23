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
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
	
	<script language="javascript">
		function chkety(){
			if(document.form1.customer_id.value==""){
				alert("大客户编号不可为空！");
				return false;
			}else{
				return true;
			}
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">大客户管理</a></li>
		  <li class="active">大客户订单查询</li>
		</ol>
	</div>
	
	
	<div class="function-panel">
	<form class="form-horizontal" action="bigClientManager_PayServlet?arg=allquery" method="post" name="form1" onsubmit="return chkety()">
		<br/>
		<label>大客户编号：&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer_id"/><br/><br/>
		<label>订单编号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="order_id"/>
		&nbsp;&nbsp;&nbsp;
		<input name="" type="submit" value="查询" />
		
		<br />
		<c:if test="${list==null}">
			<br/><br/>
			<label>没有查询结果！</label>
		</c:if>
		<c:if test="${list!=null}">
		<table width="1000px" style="margin-top:10px" class="table table-bordered table-hover">
				<tr>
					<th>客户姓名</th>
					<th>订单编号</th>
					<th>订单状态</th>
					<th>已付金额</th>
					<th>应付金额</th>
					<th>操作</th>
				</tr>
				<c:forEach var="user" items="${list}">
				<tr>
					<td>${user.customer_name }</td>
					<td>${user.order_id }</td>
					<td>
						<c:if test="${user.if_paied=='1'}">已支付</c:if>
						<c:if test="${user.if_paied=='0'}">未支付</c:if>
					</td>
					<td>${user.paied_money }</td>
					<td>${user.pub_money*user.pub_need_num-user.paied_money }</td>
					<td>
						<a href="<%=basePath %>bigClientManager_PayServlet?arg=todetail&order_id=${user.order_id }">详情</a>
					</td>
				</tr>
				</c:forEach>
		</table>
		</c:if>
	</form>
</div>
	
	
	
</body>
</html>

