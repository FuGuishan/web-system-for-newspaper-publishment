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
		  <li class="active">�����Ż�</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<label>�Ż�����</label>
		&nbsp;&nbsp;
		<a href="paper_favourable_add.jsp" target="main">��Ӹ��ڿ��Ż�����</a>
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
			<table class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th>����ID</th>
					<th>��������</th>
					<th>����</th>
					<th>�Ż�����</th>
					<th>�Ż���Ⱥ</th>
					<th>�Ż�ʱ��</th>
					<th>����</th>
				</tr>
				<tr>
					<td>101</td>
					<td>�������ܿ�</td>
					<td>2014���14�ڣ��ܿ���</td>
					<td>����������100��9��</td>
					<td>��ͨ�ͻ�</td>
					<td>�ܿ����и���</td>
					<td>
					<a href="paper_favourable_edit.jsp" target="main">�༭</a>
					&nbsp;&nbsp;
					<a href="" target="main">ɾ��</a>
					</td>
				</tr>
				<tr>
					<td>101</td>
					<td>�������ܿ�</td>
					<td>2014���14�ڣ��ܿ���</td>
					<td>����������5000��6��</td>
					<td>��ͻ�</td>
					<td>�ܿ����и���</td>
					<td>
					<a href="paper_favourable_edit.jsp" target="main">�༭</a>
					&nbsp;&nbsp;
					<a href="" target="main">ɾ��</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>
