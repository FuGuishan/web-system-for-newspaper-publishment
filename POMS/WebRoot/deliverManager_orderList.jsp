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
		  <li><a href="#">Ͷ�ݹ���</a></li>
		  <li class="active">Ƿ���ӡ</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>Ƿ���ѯ</strong></div>
		<div class="panel-body">
			<p>
				<form action="deliverManager_orderListServlet" method="post">
				����ID��<input type="text" name="order_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="��ѯ"/>
				&nbsp;&nbsp;ֱ�ӵ����ѯ��ʾȫ��Ƿ���
				</form>
			</p>
		</div>
		</div>
	</div>
</body>
</html>

