<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<link rel="stylesheet" type="text/css" href="css/modify_code.css"/>
		<title>�����Ż�</title>
  </head>

<body>
    <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��������</a></li>
		  <li><a href="#">�����Ż�</a></li>
		  <li class="active">�����Ż�</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<label>�����Ż�����</label>
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">�Ż����ƣ�</td>
					<td><input type="text" name="favourable_name"/></td>
				</tr>
				<tr>
					<td>�������ࣺ</td>
					<td><input name="catagories" type="text" /></td>
				</tr>
				<tr>
					<td>����������</td>
					<td><input name="amount" type="text" /></td>
				</tr>
				<tr>
					<td>�Ż��ۿۣ�</td>
					<td><input name="discount" type="text" /></td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onClick="">
					�����޸�
				</button>
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					����
				</button>
			</div>
		</div>
		</form>
	</div>
  </body>
</html>
