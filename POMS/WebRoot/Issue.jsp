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
	    <form action = "" method = "post">
	    	<label>�������룺</label>
			&nbsp;&nbsp;
			<input type="text" name="newspaper_code" />
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label>�·ݣ�</label>
			<select>
			<option value ="1">1��</option>
			<option value ="2">2��</option>
			<option value ="3">3��</option>
			<option value ="4">4��</option>
			<option value ="5">5��</option>
			<option value ="6">6��</option>
			<option value ="7">7��</option>
			<option value ="8">8��</option>
			<option value ="9">9��</option>
			<option value ="10">10��</option>
			<option value ="11">11��</option>
			<option value ="12">12��</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" name="search_by_code" value="��ѯ"/>
		</form>
    </div>
    <hr />
    <div class="function-panel">          
	    <form action = "" method = "post">
	    	<label>���¿���</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "<%=basePath %>jumpControlServlet?arg=issueToAdd" >���ӿ���</a><br />
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width = "333.3px" height="38">����ʱ��</th>
					<th width = "333.3px">��������</th>
					<th width = "333.3px">����</th>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >�༭</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >ɾ��</a>
					</td>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >�༭</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >ɾ��</a>
					</td>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >�༭</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >ɾ��</a>
					</td>
				</tr>
			</table>
		</form>
    </div>
  </body>
</html>
