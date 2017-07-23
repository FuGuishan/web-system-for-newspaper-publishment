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
		<div class="panel-heading"><strong>结果</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
			<li ><a href="zhongxin_setting_add.jsp" target="main">按日期排序</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">按投递量排序</a></li>
   			<li><a href="zhongxin_setting_main.jsp" target="main"">按收订量排序</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
			<p>  <input type="text" name="endDate" id="date_end"  style="width:100" value="输入日期查询"/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　<BUTTON  type=submit>搜索</BUTTON></SPAN></p>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<th>分社名称</th>
				<th>当日投递量</th>	
				<th>当日收定量</th>	
				<th>盈利（万元）</th>	
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
