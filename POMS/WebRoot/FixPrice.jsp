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
		&nbsp;&nbsp;
		<input type="button" name="search_by_code" value="��ѯ"/>
	</div>
    <hr />
    
    <div class="function-panel">
		<label>����������Ϣ��</label>
		<table width="1000px" class="table table-bordered table-hover">
			<tr style="background-color:#F6F6F6">
				<th height="38">ÿ�ռ۸�</th>
				<th>ÿ�¼۸�</th>
				<th>ÿ���۸�</th>
				<th>����۸�</th>
				<th>һ��۸�</th>
			</tr>
			<tr>
				<td>11</td>
				<td>11</td>
				<td>11</td>
				<td>11</td>
				<td>11</td>
			</tr>
		</table>
	</div>
    <hr />
        
    <div class="function-panel">
		<label>����������Ϣ��</label>
		<table width="1000px" class="table table-bordered table-hover">
			<tr style="background-color:#F6F6F6">
				<th height="38">ÿ�ռ۸�</th>
				<th>ÿ�¼۸�</th>
				<th>ÿ���۸�</th>
				<th>����۸�</th>
				<th>һ��۸�</th>
			</tr>
			<tr>
				<td><input type = "text" name = "day_price"/></td>
		        <td><input type = "text" name = "month_price"/></td>
		        <td><input type = "text" name = "quarter_price"/></td>
		        <td><input type = "text" name = "half_year_price"/></td>
		        <td><input type = "text" name = "year_price"/></td>
			</tr>
		</table>
	</div> 
	<div class="form-group">
		<div class="col-sm-2">
			<button type="submit" class="btn btn-default" name="submit" id="" onClick="">
				�����޸�
			</button>
		</div>
	</div>
	</form>
  </body>
</html>
