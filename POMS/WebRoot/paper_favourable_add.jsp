<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>��������ϵͳ</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	
</head>
<body>
   <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��������</a></li>
		  <li class="active">��ӱ����Ż�</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post">
	<div class="function-panel">
	<label>����Ż���Ϣ</label>
		<table class="table table-bordered table-hover">
			<tr>
				<td width="200px">����ID��</td>
				<td><input readonly="readonly" type="text"/></td>
			</tr>
			<tr>
				<td>�������ƣ�</td>
				<td><input readonly="readonly" type="text"/></td>
			</tr>
			<tr>
				<td>���ڣ�</td>
				<td><input readonly="readonly" type="text" /></td>
			</tr>
			<tr>
				<td width="200px">�Ż����ͣ�</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td width="200px">�Ż���Ⱥ��</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td width="200px">�Ż�ʱ�䣺</td>
				<td><input type="text" /></td>
			</tr>
		</table>
	</div>
	<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit">
						�ύ
					</button>
				</div>
				<div class="col-sm-2">
					<button type="reset" class="btn btn-default" name="reset">
						����
					</button>
				</div>
				<div class="col-sm-2">
					<button type="button" class="btn btn-default" name="back">
						����
					</button>
				</div>
			</div>    
	</form> 
	</body>
</html>
