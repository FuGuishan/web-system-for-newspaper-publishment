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
		  <li><a href="#">���¹���</a></li>
		  <li class="active">ҵ��ͳ��</li>
		</ol>
	</div>
	
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>��վҵ��ͳ��</strong></div>
		<div class="panel-body">
			<form action="empManager_businessReportQueryServlet" method="post">
				Ա��ID��<input type="text" name="emp_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="��ѯ"/> 
				&nbsp;&nbsp;ֱ�ӵ����ѯ��ʾȫ��Ա��ҵ��
			</form>
		</div>
			
		</div>
	</div>
	
</body>
</html>

