<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
  </head>

  <body>
  <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">������Ϣ����</a></li>
		  <li class="active">��������</li>
		</ol>
	</div>
	<hr />
	
 <div class="function-panel">
 		<p> 
 		���
 		<select>
 		<option>����</option>
 		<option>����</option>
 		<option>���䵥λ</option>
 		</select>
 		���ڵأ�
 		<select>
 		<option>������ʡ</option>
 		<option>������ʡ</option>
 		<option>���ز�</option>
 		<option>�����ڻ���</option>
 		</select>
 		<select>
 		<option>��������</option>
 		<option>���ز�</option>
 		<option>�����ڻ���</option>
 		</select>
 		<select>
 		<option>�ɻ���</option>
 		<option>���ز�</option>
 		<option>�����ڻ���</option>
 		</select>
 		���ţ�
 			<select>
 		<option>���²�</option>
 		<option>���ز�</option>
 		<option>�༭��</option>
 		</select>
	     <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      ��  <BUTTON  type=submit>����</BUTTON></SPAN></p>
     <hr /><br />
    
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong></strong>
			��ϵ��&nbsp;&nbsp;&nbsp;<div class="btn-group">
			
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           ����
		</button>
		<ul class="dropdown-menu">
			<li ><a href="department_people.jsp" target="main"></a></li>
   			<li><a href="department.jsp" target="main"">���Ż�����Ϣ����</a></li>
		</ul>
	</div>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<td width="200px">������λ</td>
					<td>asdada</td></tr>
				<tr>
					<td width="200px">������</td>
					<td>asdad</td>
				</tr>
				<tr>
					<td width="200px">��������ϵ��ʽ</td>
					<td>asdada></td>
				</tr>
				<tr>
					<td colspan="2">���</td>
				</tr>
				<tr >
				 <td colspan="3">adasd</td>
				</tr>
			</table>
				
		</div>
	</div>
  </body>
</html>
