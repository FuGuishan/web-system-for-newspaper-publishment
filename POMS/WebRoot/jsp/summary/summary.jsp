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

		<title>今日汇总</title>

	</head>
	<script>
		function check_doPrint(){
			alert("未安装打印机");
			return false;
		}	
	</script>
	<body>
	
		
		<%--<form action="<%=basePath %>summaryServlet?arg=query" method="post">
		 
		</form>--%>
		<%--
				查询的内容显示
			--%>
			<!--<c:if test="${list == null}">
				没有查询结果！
			</c:if>-->
			<c:if test="${list != null}">
			<p align="center" >
				<%
						java.util.Date now=new java.util.Date();
						//String datestr=java.text.DateFormat.getDateTimeInstance().format(now);
						java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd ");
						String dateString = formatter.format(now);
						out.println(dateString);
					%>汇总表
			</p>
				<table id="summary-table" width="80%" border="1" >
				<tr>
					<th>分站编号</th>
					<th>分站名字</th>
					<th>报刊ID</th>
					<th>报刊名字</th>
					<th>下单数</th>
					<th>实际投递数</th>
				</tr>
				<tr>
						<td>1001</td>
						<td>分站1</td>
						<td>10001</td>
						<td>报刊名1</td>
						<td>100</td>
						<td>
							120
							<%--<input type="text" name="realnum" value="100"/>--%>
						</td>
							
				</tr>
				<%--遍历list查询结果显示--%>
				<c:forEach var="summa" items="${list}">
				<tr>
					<td>${summa.substation_id }</td>
					<td>${summa.substation_name }</td>
					<td>${summa.pub_id }</td>
					<td>${summa.pub_name }</td>
					<td>${summa.needsend }</td>
					<td>
						${summa.realsend }
						<input type="text" name="realnum"/>				<%--填写实际数量--%>
					</td>
				</tr>
				</c:forEach>
					<input type="button" name="print-but" value="打印" onclick="check_doPrint()"/>
				</table>
			</c:if>
		
	</body>
</html>
