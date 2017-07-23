<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	
	<head>
		<base href="<%=basePath%>">

		<title>欠款单</title>
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
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">欠款单打印</li>
		</ol>
	</div>
	<hr />
	
	<center><label><font size="+2">欠款单信息表：</font></label></center>
	<div class="function-panel">
	
	<form action = "" method = "post">
			<table  width="900px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">分站编号</th>
					<th>分站名称</th>
					<th>客户编号</th>
					<th>客户姓名</th>
					<th>欠款金额</th>
					<th>客户地址</th>
					
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>100</td>
					<td>小红</td>
					<td>$100</td>
					<td>大连谷歌里地区</td>
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>100</td>
					<td>小明</td>
					<td>$200</td>
					<td>大连星海公园地区</td>
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>100</td>
					<td>小红</td>
					<td>$300</td>
					<td>大连万达广场地区</td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-4">
				<button type="button" name="print-but" onclick="window.print()" class="btn btn-default">
					打印
				</button>
			</div>
			</div>
		</form>
		</div>
	</body>
</html>
