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
	<title>My JSP 'index.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<style type="text/css">
	.function-panel hr{
		margin-left:0px;
	}
	.foot-button-group input{
		margin-left:30px;
	}
	</style>
	
</head>

<body>
	<%!int pageNumber;%>
	<%
		pageNumber = Integer.parseInt((String) request
				.getAttribute("pageNumber"));
	%>
	<div class="bread-crumb">
		<ol class="breadcrumb">
			<li>
				<a href="index.jsp">首页</a>
			</li>
			<li>
				<a href="#">中心站管理</a>
			</li>
			<li class="active">
				投诉结果
			</li>
		</ol>
	</div>
	<hr />
			
	<div class="function-panel">
		<form action="<%=basePath%>callCenterHandlerServlet?arg=searchComplainByCustomerNumber"
			method="post">
		
			<label>按顾客编号搜索：</label>
			<input type="text" name="customer_number" />&nbsp;
			<input type="submit" value="查询" />
			<hr/>
			
			<label>--第<%=pageNumber%>页--</label>
			<br />
			<c:forEach var="complain" items="${complains}">
				<table class="table table-bordered table-hover">
					<tr>
						<td width="13%" style="background-color:#F6F6F6">
							客户编号
						</td>
						<td width="37%">
							${complain.customer_number}
						</td>
						<td width="13%" style="background-color:#F6F6F6">
							所属地区
						</td>
						<td width="37%">
							${complain.area}
						</td>
					</tr>
					<tr>
						<td style="background-color:#F6F6F6">
							投诉类型
						</td>
						<td>
							${complain.complain_type}
						</td>
						<td style="background-color:#F6F6F6">
							员工编号
						</td>
						<td>
							${complain.employee_number}
						</td>
					</tr>
					<tr>
						<td style="background-color:#F6F6F6">
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
						<td colspan="3">
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
			<div class="foot-button-group">
			<input type="button" value="上一页"
				onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=lastpage&pageNumber=<%=pageNumber - 1%>'" />
			<input type="button" value="下一页 "
				onclick="window.location.href = '<%=basePath%>callCenterHandlerServlet?arg=nextpage&pageNumber=<%=pageNumber + 1%>'" />
			</div>
		</form>
	</div>
</body>
</html>
