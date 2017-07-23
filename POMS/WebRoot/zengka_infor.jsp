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

		<title>赠卡</title>
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
		  <li class="active">赠卡</li>
		</ol>
	</div>
	<hr />
	
	<form action="<%=basePath %>bonusServlet?arg=querycard" method="post">
	<div class="function-panel">
		<label>贈卡类型：</label>
		&nbsp;&nbsp;
		<select name="zengka_type">
		<option value="0">全部</option>
 		<option value="1">龙卡</option>
 		<option value="2">金卡</option>
 		<option value="3">銀卡</option>
 		<option value="4">节日卡</option>
 		<option value="5">周年卡</option>
 		</select>
		&nbsp;
		<input type="submit" name="submit" value="查询"/>
		&nbsp;
		<input type="button" value="增加赠卡" onclick="location.href='<%=basePath %>bonusServlet?arg=toAdd'"/>&nbsp;&nbsp;
	</div>
	</form>
	<hr />
	
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
		赠卡信息表</font>
	</div>
	 <hr />
			<table  width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">赠卡类型</th>
					<th>可订阅报刊</th>
					<th>起始日期 </th>
					<th>截止时间</th>
					<th width="35%">赠卡说明</th>
					<th>操作</th>
				</tr>
				<%--遍历list查询结果显示--%>
				<c:forEach var="bonus" items="${list}">
				<tr>
					<input type="hidden" name="card_id" value="${bonus.card_id}" />
					<td>
						
						<c:if test="${bonus.card_type=='1'}" >龙卡</c:if>
						<c:if test="${bonus.card_type=='2'}" >金卡</c:if>
						<c:if test="${bonus.card_type=='3'}" >银卡</c:if>
						<c:if test="${bonus.card_type=='4'}" >节日卡</c:if>
						<c:if test="${bonus.card_type=='5'}" >周年卡</c:if>
					</td>
					<td>${bonus.pub_id }    </td>
					<td>${bonus.start_time} </td>
					<td>${bonus.end_time }  </td>
					<td>${bonus.card_infor }</td>
					<td>
						<a href="bonusServlet?arg=toupdate&card_id=${bonus.card_id }" >修改</a>&nbsp;
					</td>
				</tr>
				</c:forEach>
				</table>
			
			</div>
		</c:if>	
	</body>
</html>
