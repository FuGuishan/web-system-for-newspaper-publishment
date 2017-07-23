<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>下数单</title>
		<script src="jsp/summary/calendar.js" type="text/javascript"></script>
		<link href="jsp/summary/calendar.css" type="text/css" rel="stylesheet">
		
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../css/right.css">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		
	</head>
	
	
	<body>
	<br><br><br>
		<p align="center" ><strong><font size="+2" >
		<form action="<%=basePath %>summaryServlet?arg=query" method="post" onsubmit="return check_OverDate()">
		
		 <input type="text" name="endDate" id="date_end"  style="width:100" value=""/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>日——下数单
			<input type="submit" name="summary-submit" id="summary-submit"  value="汇总" />
		
			</form></font></strong></p>
			
			<table class="" border="1" width="80%">
				<tr>
					
					<th>分站名称</th>
					<th>报刊代码</th>
					<th>报刊名称</th>
					<th>下单数</th>
					<th>实际数</th>
					
				</tr>
				<tr align="center">
					<td>1</td>
					<td>1001</td>
					<td>###</td>
					<td>1000份数</td>
					<td>
						<input type="text" name="realnum" value="1500"/>
					</td>
				</tr>
				<tr align="center">
					<td>2</td>
					<td>1002</td>
					<td>###</td>
					<td>1500份数</td>
					<td>
						<input type="text" name="realnum" value="2000"/>
					</td>
				</tr>
				<tr align ="right">
					<td colspan="5"><input type="button" onclick="window.print()" name="print-but" value="打印" onclick="check_doPrint()"/></td>
				</tr>
			</table>
	</body>
</html>
