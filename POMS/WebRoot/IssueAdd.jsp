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
		  <li class="active">��������</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">����ʱ�䣺</td>
					<td><input type="text" name="issueAddTime" id="issue_add_time"/></td>
				</tr>
				<tr>
					<td>����������</td>
					<td><input name="issue_add_num" type="text" /></td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
					�ύ
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
