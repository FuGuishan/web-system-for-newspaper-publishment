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
	<script language="javascript">
	   function showAndHide(t)
	   {  
		   if (document.getElementById(t).style.display == "")
		   {
			   alert("hello");
			   document.getElementById(t).style.display = "none";
		   }
		   else
		   {
			   alert("hello");
			   document.getElementById(t).style.dispaly = "";
		   }
	   }
	</script>
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
	
	<form action="" method="post">
	<div class="function-panel">
		<label>�Ż���Ϣ��</label>
		&nbsp;
		<input type="button" name ="add" value = "����" onclick="window.location.href = '<%=basePath %>jumpControlServlet?arg=favourableToAdd'" />
		&nbsp;
		<input type="button" name="save" value="�����޸�"/>
	</div>
	    
	<div class="function-panel">
	<label>��ͨ�ͻ�</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">�༭</a>
			&nbsp;
			<a href="">ɾ��</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">�������ࣺ</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td width="200px">����������</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td width="200px">�Ż��ۿۣ�</td>
					<td><input type="text" /></td>
				</tr>
			</table>
	</div>    
	<hr />
	
	<div class="function-panel">
	<label>***�ͻ�</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">�༭</a>
			&nbsp;
			<a href="">ɾ��</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">�������ࣺ</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">����������</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">�Ż��ۿۣ�</td>
					<td>........</td>
				</tr>
			</table>
	</div>    
	<hr />
	
	<div class="function-panel">
	<label>***�ͻ�</label>
			&nbsp;
			<a href="" onclick="showAndHide('hidden_1');">�༭</a>
			&nbsp;
			<a href="">ɾ��</a>
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">�������ࣺ</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">����������</td>
					<td>........</td>
				</tr>
				<tr>
					<td width="200px">�Ż��ۿۣ�</td>
					<td>........</td>
				</tr>
			</table>
		
	</div>   
	</form> 
	</body>
</html>
