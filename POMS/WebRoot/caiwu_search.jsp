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
  <form action="">
 <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>��ϸ��Ϣ</strong>

		<ul class="dropdown-menu">
			<li ><a href="zhongxin_setting_add.jsp" target="main">¼��</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">�鿴ȫ��</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
			<p> <INPUT class=inputbg size=30 >
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      ��<BUTTON  type=submit>����</BUTTON></SPAN></p>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<th>��������</th>
				<th>������</th>	
				<th>���縺����</th>	
				<th>�������</th>	
				<th>���շ�����</th>	
				<th>����ӯ����</th>	
				<th>�ϼ�������</th>	
				<th>Ͷ�ݸ���Ա���</th>		
				<th>Ͷ�ݸ���Ա����</th>	
				</tr>
				<tr>
				<td>asd</td>
				<td>asd</td>
				<td>sd</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				</tr>
					<tr>
				<td>asd</td>
				<td>asd</td>
				<td>sd</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				<td>sdf</td>
				</tr>
			</table>
		</div>
	</div>
	</form>
  </body>
</html>
