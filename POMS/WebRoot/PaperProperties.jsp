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
		  <li class="active">������������</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post">
	<div class="function-panel">
		<label>�������룺</label>
		&nbsp;&nbsp;
		<input type="text" name="newspaper_code" />
		&nbsp;
		<input type="button" name="search_by_code" value="��ѯ"/>
		&nbsp;
		<input type="button" name ="add" value = "����" onclick = "window.location = '<%=basePath %>jumpControlServlet?arg=propertiesToAdd'"/>
	</div>
	</form>
    <hr />
	<div class="function-panel">
		<label>����������Ϣ��</label>
		<table width="1000px" class="table table-bordered table-hover">
			<tr style="background-color:#F6F6F6">
				<th width = "166.6px" height="38">�̶�����</th>
				<th width = "166.6px">��������</th>
				<th width = "166.6px">���ڳ���</th>
				<th width = "166.6px">ӡ����</th>
				<th width = "166.6px">ʣ����</th>
				<th width = "166.6px">����</th>
			</tr>
			<tr>
				<td>123456	</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>
					<a href = "<%=basePath %>jumpControlServlet?arg=propertiesToEdit">�༭</a>
				</td>
			</tr>
			<tr>
				<td>123456	</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>����</td>
				<td>
					<a href = "<%=basePath %>jumpControlServlet?arg=propertiesToEdit">�༭</a>
				</td>
			</tr>
		</table>
	</div>
  </body>
</html>
