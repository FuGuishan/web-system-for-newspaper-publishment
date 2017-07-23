
<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/right.css" />
			<title>修改密码</title>
</head>

<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="index.jsp">首页</a>
				</li>
				<li>
					<a href="#">财务管理</a>
				</li>
				<li class="active">
					客户登记
				</li>
			</ol>
		</div>
		<hr />
			<div class="function-panel">
				<form class="form-horizontal" name="changeform" action="ok.html" method="post">
					<table class="table table-bordered table-hover">
						<tr>
							<td width="200px">客户姓名：</td>
							<td><input style="width:250px;" type="text" name="customerName" id="user_name"/></td>
						</tr>
						<tr>
							<td>客户地址：</td>
							<td><input style="width:250px;" name="address" type="text" /></td>
						</tr>
						<tr>
							<td>客户联系方式：</td>
							<td><input style="width:250px;" name="connect" type="text" /></td>
						</tr>
						<tr>
							<td>客户类型：</td>
							<td>
							<input type="radio" name="customerType" checked>普通客户</input>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="customerType">VIP客户</input>
							</td>
						</tr>
					</table>
					<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onClick="">
							提交
						</button>
					</div>
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
					<div>
						<button type="button" class="btn btn-default" name="back" id="" onclick="">
							返回
						</button>
					</div>
				</div>
				</form>
			</div>
	</body>
</html>