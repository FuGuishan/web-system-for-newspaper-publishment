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
		<div class="panel-heading"><strong>详细信息</strong>

		<ul class="dropdown-menu">
			<li ><a href="zhongxin_setting_add.jsp" target="main">录入</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">查看全部</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
			<p> <INPUT class=inputbg size=30 >
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　<BUTTON  type=submit>搜索</BUTTON></SPAN></p>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<th>分社名称</th>
				<th>分社编号</th>	
				<th>分社负责人</th>	
				<th>分社地区</th>	
				<th>今日发报量</th>	
				<th>今日盈利量</th>	
				<th>上季度评价</th>	
				<th>投递负责员编号</th>		
				<th>投递负责员姓名</th>	
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
