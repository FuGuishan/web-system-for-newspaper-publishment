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

		<title>代金卷</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	</head>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a href="#">附赠设置</a></li>
		  <li class="active">代金卷</li>
		</ol>
	</div>
	<hr />
	<%--	查詢代金卷
	--%>
	<form action="<%=basePath %>couponsServlet?arg=querycoupons" method="post">
	<div class="function-panel">
		<label>代金卷种类：</label>
		&nbsp;&nbsp;
		<select name  = "coupons_type">
		<option value="0">全部</option>
 		<option value="1">超级</option>
 		<option value="2">高级</option>
 		<option value="3">普通</option>
 		</select>
		&nbsp;
		<input type="submit" name="search_by_code" value="查询"/>
		&nbsp;
		<input type="button" value="增加" onclick="location.href='<%=basePath %>daijinjuan_add.jsp'"/>&nbsp;&nbsp;
	</div>
	</form>
    <hr />
    <%--	
       	顯示信息
	--%>
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		${msg1 }
		</font>
	</div>
	</div>
	<c:if test="${list == null}">
		 
	</c:if >
	<c:if test="${list != null}">
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		代金卷信息表</font>
	</div>
	 <hr />
		<table  width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">代金卷类型</th>
					<th>代金卷金额</th>
					<th>起始时间</th>
					<th>结束日期</th>
					<th>代金卷说明</th>
					<th>操作</th>
				</tr>
				<%--遍历list查询结果显示--%>
				<c:forEach var="coupons" items="${list}">
				<tr>
					<input type="hidden" name="coupons_id" value="${coupons.coupons_id}" />
					<td>
						
						<c:if test="${coupons.coupons_type=='1'}" >特等</c:if>
						<c:if test="${coupons.coupons_type=='2'}" >高级</c:if>
						<c:if test="${coupons.coupons_type=='3'}" >普通</c:if>
					</td>
					<td>￥${coupons.coupons_money }    </td>
					<td>${coupons.start_time} </td>
					<td>${coupons.end_time }  </td>
					<td>${coupons.coupons_infor }</td>
					<td>
						<a href="couponsServlet?arg=toupdate&coupons_id=${coupons.coupons_id }" >修改</a>&nbsp;
					</td>
				</tr>
				</c:forEach>
				</table>
			
			</div>
		</c:if>	
	</body>
</html>
