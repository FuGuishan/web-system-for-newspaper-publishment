<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
	
	<script language="javascript">
		function chkety(){
			if(document.form1.sub_id.value==""){
				alert("分站ID不可为空！");
				return false;
			}else{
				return true;
			}
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">下单数管理</li>
		</ol>
	</div>
	
	
	<div class="function-panel">
	<form class="form-horizontal" action="deliverManager_orderNumServlet" method="post" name="form1" onsubmit="return chkety()">
		<br/>
		<label>分站ID：&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="sub_id"/><br/><br/>
		<label>查询日期：</label><input type="text" name="send_time" id="date_send"/>
		<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_send", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
		&nbsp;&nbsp;&nbsp;
		<input name="" type="submit" value="查询" />
		
		<br />
		<c:if test="${list==null}">
			<br/><br/>
			<label>没有查询结果！</label>
		</c:if>
		<c:if test="${list!=null}">
			<br/><br/>
			<label>收到报刊总数：${sum }&nbsp;&nbsp;&nbsp;份</label>
			<br/><br/>
		<table width="1000px" style="margin-top:10px" class="table table-bordered table-hover">
				<tr>
					<th>报刊ID</th>
					<th>报刊数量</th>
					<th>印刷厂ID</th>
					<th>运输公司</th>
					<th>分站ID</th>
					<th>到站时间</th>
				</tr>
				<c:forEach var="user" items="${list}">
				<tr>
					<td>${user.pub_id }</td>
					<td>${user.pub_num }</td>
					<td>${user.print_id }</td>
					<td>${user.transport_company_name }</td>
					<td>${user.sub_id }</td>
					<td>${user.send_time }</td>
				</tr>
				</c:forEach>
		</table>
		</c:if>
	</form>
</div>
	
	
	
</body>
</html>

