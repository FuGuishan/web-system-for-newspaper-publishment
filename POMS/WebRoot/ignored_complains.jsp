<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="zhouyou.control.callcenter.entity.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>已忽略投诉</title>
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/right.css" />
	<style>
	.function-panel hr{
		margin-left:0px;
	}
	
	input{
		margin-left:30px;
	}
	</style>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
			<li>
				<a href="index.jsp">首页</a>
			</li>
			<li>
				<a href="#">发行站管理</a>
			</li>
			<li class="active">
				已忽略投诉
			</li>
		</ol>
	</div>
	<hr />
	
	<%!int pageNumber;%>
	<%
		pageNumber = Integer.parseInt((String) request
				.getAttribute("pageNumber"));
	%>
	<form action="<%=basePath%>callCenterHandlerServlet?arg=searchIgnoredComplainByEmployeeNumber" method="post">
		<div class="function-panel">
		<label>按员工编号搜索已忽略的投诉：</label>
		<input type="text" name="employee_number" />&nbsp;
		<input type="submit" value="查询" />
		<hr />
		<c:if test="${ignoredComplains == null}">
		     <center>无已忽略的结果</center>
			<br />
		</c:if>
		<c:if test="${ignoredComplains != null}">
		<label>搜索结果列表&nbsp;·&nbsp;第<%=pageNumber%>页</label>
		<br />
			<br />
			<c:forEach var="complain" items="${ignoredComplains}">
				<table class="table table-bordered table-hover">
					<tr>
						<td style="background-color:#F6F6F6" width="13%">
							客户编号
						</td>
						<td width="37%">
							${complain.customer_number}
						</td>
						<td style="background-color:#F6F6F6" width="13%">
							所属地区
						</td>
						<td width="37%">
							${complain.area}
						</td>
					</tr>
					<tr>
						<td  style="background-color:#F6F6F6">
							投诉类型
						</td>
						<td>
							${complain.complain_type}
						</td>
						<td  style="background-color:#F6F6F6">
							员工编号
						</td>
						<td>
							${complain.employee_number}
						</td>
					</tr>
					<tr>
						<td style="background-color:#F6F6F6" colspan="1">
							投诉内容
						</td>
						<td colspan="3">
							${complain.content_detail}
						</td>
					</tr>
					<tr>
						<td style="background-color:#F6F6F6">
							处理反馈信息：
						</td>
						<td colspan="3">
							<c:if test="${complain.feedback != null}">
                                   ${complain.feedback}
                                </c:if>
						</td>
					</tr>

					<tr>
						<td style="background-color:#F6F6F6">
							回复电话
						</td>
						<td colspan="3">
							${complain.customer_tel}
						</td>
					</tr>

					<tr>
						<td style="background-color:#F6F6F6">
							处理结果
						</td>
						<td colspan="5">
							<c:if test="${complain.status == 'Dealed'}">
                                                                          已对投诉进行处理
                        	</c:if>
							<c:if test="${complain.status == 'Ignored'}">
                                                                          该投诉被忽略
                        	</c:if>
						</td>
					</tr>
				</table>
				<hr />
			</c:forEach>
		</c:if>
		<input type="button" value="上一页"
			onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=lastpageIgnored&pageNumber=<%=pageNumber - 1%>'" />
		<input type="button" value="下一页 "
			onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=nextpageIgnored&pageNumber=<%=pageNumber + 1%>'" />
		</div>
	</form>
</body>
</html>
