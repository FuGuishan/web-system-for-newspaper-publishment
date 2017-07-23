<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
		  <li><a href="#">报刊设置</a></li>
		  <li><a href="PaperProperties.jsp">报刊属性设置</a></li>
		  <li class="active">编辑报刊</li>
		</ol>
	</div>
               
    <hr />
	
	<div class="function-panel">
		<label>编辑报刊</label>
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">固定名称：</td>
					<td><input type = "text" name = "name"/></td>
				</tr>
				<tr>
					<td>连续出版：</td>
					<td><input type = "text" name = "continue"/></td>
				</tr>
				<tr>
					<td>定期出版：</td>
					<td><input type = "text" name = "fixed"/></td>
				</tr>
				<tr>
					<td>印发数量：</td>
					<td><input type = "text" name = "amount" /></td>
				</tr>
				<tr>
					<td>剩余量：</td>
					<td><input type = "text" name = "remain"/></td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onClick="">
					保存修改
				</button>
			</div>
		</div>
		</form>
	</div>	
  </body>
</html>
