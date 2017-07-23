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
		  <li class="active">添加报刊优惠</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post">
	<div class="function-panel">
	<label>添加优惠信息</label>
		<table class="table table-bordered table-hover">
			<tr>
				<td width="200px">报刊ID：</td>
				<td><input readonly="readonly" type="text"/></td>
			</tr>
			<tr>
				<td>报刊名称：</td>
				<td><input readonly="readonly" type="text"/></td>
			</tr>
			<tr>
				<td>刊期：</td>
				<td><input readonly="readonly" type="text" /></td>
			</tr>
			<tr>
				<td width="200px">优惠类型：</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td width="200px">优惠人群：</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td width="200px">优惠时间：</td>
				<td><input type="text" /></td>
			</tr>
		</table>
	</div>
	<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit">
						提交
					</button>
				</div>
				<div class="col-sm-2">
					<button type="reset" class="btn btn-default" name="reset">
						重置
					</button>
				</div>
				<div class="col-sm-2">
					<button type="button" class="btn btn-default" name="back">
						返回
					</button>
				</div>
			</div>    
	</form> 
	</body>
</html>
