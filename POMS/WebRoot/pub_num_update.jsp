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
		
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	
	</head>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品订购</a></li>
		  <li class="active">续订处理</li>
		</ol>
	</div>
	<hr />
			<form action="<%=basePath %>searchServlet?arg=XuDing" method="post">
			<input type="hidden" name="pub_id" value="${customer_book_sub.pub_id }"/>
			<div class="function-panel">
				<table width="1000px" class="table table-bordered table-hover">
					<tr>
						<td width="180px">订单编号</td>
						<td><input type="hidden" name="order_id" value="${customer_book_sub.order_id }"/>${customer_book_sub.order_id }</td>
					</tr>
					<tr>
						<td width="180px">订单开始时间</td>
						<td>${customer_book_sub.start_time }</td>
					</tr>
					<tr>
						<td width="180px">订单结束时间</td>
						<td><input type="text" name="end_time" id="date_end" value="${customer_book_sub.end_time }" pattern="^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$"/></td>
					</tr>
					<tr>
						<td width="180px">已订份数</td>
						<td>${customer_book_sub.pub_need_num }</td>
					</tr>
					<tr>
						<td width="180px">续订份数</td>
						<td><input type="text" name="pub_add_num" value="0" pattern="^[0-9]{1,10}$" required/></td>
					</tr>
					<tr>
						<td width="180px">理由类型</td>
						<td>
							<select name="reason_type" required>
								<c:forEach var="reason_list" items="${reason_list}">
									<option value="${reason_list }">${reason_list }</option>
								</c:forEach>
					 		</select>
					 	</td>
					</tr>
					<tr>
						<td width="180px">续订详细理由</td>
						<td><textarea name="reason" rows="4" cols="30" required></textarea></td>
					</tr>
				</table>
				<script type="text/javascript">
				Calendar.setup( {
					inputField :"date_end", //日期文本框的id属性
					ifFormat :"%Y-%m-%d", //输入日期的格式
					showsTime :true, //是否显示时间
					onUpdate :null
				});
				</script>
				<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
							确定
						</button>
					</div>
					<div class="col-sm-2">
						<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
							重置
						</button>
					</div>
					<div class="col-sm-2">
						<button type="button" class="btn btn-default" name="return" id="" onclick="window.location.href='xuding.jsp'">
							返回
						</button>
					</div>
				</div>	
			</div>
			</form>
	</body>
</html>
