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
	<script language="javascript">
	   function showAndHide(t)
	   {  
		   if (document.getElementById(t).style.display == "")
		   {
			   alert("hello");
			   document.getElementById(t).style.display = "none";
		   }
		   else
		   {
			   alert("hello");
			   document.getElementById(t).style.dispaly = "";
		   }
	   }
	</script>
</head>
<body>
   <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">报刊设置</a></li>
		  <li class="active">报刊优惠</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post">
	<div class="function-panel">
		<label>优惠信息：</label>
		&nbsp;
		<input type="button" name ="add" value = "新增" onclick="window.location.href = '<%=basePath %>jumpControlServlet?arg=favourableToAdd'" />
		&nbsp;
		<input type="button" name="save" value="保存修改"/>
	</div>
	    
	<div class="function-panel">
	<label>普通客户</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">编辑</a>
			&nbsp;
			<a href="">删除</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">订购种类：</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td width="200px">订购数量：</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td width="200px">优惠折扣：</td>
					<td><input type="text" /></td>
				</tr>
			</table>
	</div>    
	<hr />
	
	<div class="function-panel">
	<label>***客户</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">编辑</a>
			&nbsp;
			<a href="">删除</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">订购种类：</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">订购数量：</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">优惠折扣：</td>
					<td>........</td>
				</tr>
			</table>
	</div>    
	<hr />
	
	<div class="function-panel">
	<label>***客户</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">编辑</a>
			&nbsp;
			<a href="">删除</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">订购种类：</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">订购数量：</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">优惠折扣：</td>
					<td>........</td>
				</tr>
			</table>
		
	</div>   
	</form> 
	</body>
</html>
