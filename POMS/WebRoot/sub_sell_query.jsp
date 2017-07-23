<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet">
	</head>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">查询</a></li>
		  <li class="active">分站月表查询</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<form action="<%=basePath %>searchServlet?arg=Sub_sellQuery" method="post">
			<table width="1000px" class="table table-bordered table-hover">
				<tr>
					<td width="180px">分站编号</td>
					<td><input style="width:200px" type="text" name="substation_id" pattern="^[0-9]{1,10}$"/>&nbsp;*</td>
				</tr>
				<tr>
					<td width="180px">月份</td>
					<td><input style="width:200px" type="text" name="month_time" id="date_month"  style="width:100" value=""/>&nbsp;*</td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
					提交
				</button>
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button>
			</div>
			</div>
			<script type="text/javascript">
				Calendar.setup( {
					inputField :"date_month", //日期文本框的id属性
					ifFormat :"%Y-%m", //输入日期的格式
					showsTime :true, //是否显示时间
					onUpdate :null
				});
			</script>
		</form>
	</div>
	<br /><br /><br />
	<hr />		
			
			<div class="function-panel">
			<c:if test="${list == null}">
				
			</c:if>
			<c:if test="${list != null}">
			
				<table width="1000px" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th>分站编号</th>
						<th>刊物编号</th>
						<th>数量</th>
						<th>下单时间</th>
						<th>金额</th>
					</tr>
					<c:forEach var="sub_sell_pub" items="${list}">
						<tr>
							<td>${sub_sell_pub.substation_id }</td>
							<td>${sub_sell_pub.pub_id }</td>
							<td>${sub_sell_pub.pub_send_num }</td>
							<td>${sub_sell_pub.send_time }</td>
							<td>${sub_sell_pub.get_money }</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	
	</body>
</html>
