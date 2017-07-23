<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>纠正地址</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/right.css">
</head>

<body>
<div class="bread-crumb">
	<ol class="breadcrumb">
	  <li><a href="#">首页</a></li>
	  <li><a href="#">中心站管理</a></li>
	  <li class="active">纠正地址</li>
	</ol>
</div>
<hr />
<div class="function-panel">
	<form class="form-horizontal" method="post" name="correct_address">
		<label>订单号：</label><input name="order_no" type="text" />
		<input name="" type="submit" value="查询" />
		
		<br />
		<table width="1000px" style="margin-top:10px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width="150px">订单号</th>
					<th width="150px">客户名</th>
    				<th width="350px">地址</th>
    				<th width="350px">新地址地区</th>
    				<th width="350px">新地址描述</th>
   					<th width="150px">操作</th>
				</tr>
				<tr>
					<td>123456</td>
    				<td>原地址</td>
    				<td>原地址</td>
    				<td>
 		<select>
 		<option>黑龙江省</option>
 		<option>黑龙江省</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select>
 		<select>
 		<option>哈尔滨市</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select>
 		<select>
 		<option>蜕化县</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select></td>
    				<td><input type="text"/></td>
   					<td><a href="" onclick="return confirm('您确认要更改本记录么？')">更改</a></td>
				</tr>
		</table>
	</form>
</div>
</body>
</html>