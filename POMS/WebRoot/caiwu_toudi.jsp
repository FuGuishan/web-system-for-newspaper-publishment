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
	<script src="jsp/summary/calendar.js" type="text/javascript"></script>
		<link href="jsp/summary/calendar.css" type="text/css" rel="stylesheet">
  </head>

  <body>
  <form action="">
 <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>���</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           ����
		</button>
		<ul class="dropdown-menu">
			<li ><a href="zhongxin_setting_add.jsp" target="main">����������</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">��Ͷ��������</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">���ն�������</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
			<p>  <input type="text" name="endDate" id="date_end"  style="width:100" value="�������ڲ�ѯ"/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //�����ı����id����
				ifFormat :"%Y-%m-%d", //�������ڵĸ�ʽ
				showsTime :true, //�Ƿ���ʾʱ��
				onUpdate :null
			});
			</script>
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      ��<BUTTON  type=submit>����</BUTTON></SPAN></p>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<th>��������</th>
				<th>����Ͷ����</th>	
				<th>�����ն���</th>	
				<th>ӯ������Ԫ��</th>	
				</tr>
				<tr>
				<td>asdad</td>
				<td>asdad</td>
				<td>asd</td>
				<td>asdasd</td>
				</tr>
			</table>
		</div>
	</div>
	</form>
  </body>
</html>
