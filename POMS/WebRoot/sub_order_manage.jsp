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

		<title>分站下数单管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	</head>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">下数单查看</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post" >
	<div class="function-panel">
		<label>
		&nbsp;
		<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value=""/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
		&nbsp;日 —— 分站下数单：</label>
		<input type="submit"  value="查看"/>
	</div>
	</form>
    <hr />
	
	<div class="function-panel">
	<form action = "" method = "post">
			<table id="summary-table" width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">分站编号</th>
					<th>分站名称</th>
					<th>报刊ID</th>
					<th>报刊名称</th>
					<th>下单数</th>
					
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>10001</td>
					<td>报刊名1</td>
					<td>100</td>
					
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>10001</td>
					<td>报刊名1</td>
					<td>100</td>
					
				</tr>
				<tr>
					<td>1001</td>
					<td>分站1</td>
					<td>10001</td>
					<td>报刊名1</td>
					<td>100</td>
					
				</tr>
			</table>
			<%--<div class="form-group">
			<div class="col-sm-4">
				<button type="button" name="print-but" onclick="window.print()" class="btn btn-default">
					打印
				</button>
			</div>
			</div>--%>
		</form>
	
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
								<%--填写实际数量--%>
			</td>
		</tr>
		</c:forEach>
		</div>
	</div>
	</body>
</html>
