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
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style>
body {
	padding: 20px;
	line-height: 1.5em;
}
</style>
	</head>

	<body>
		<%!int pageNumber;%>
		<%
			pageNumber = Integer.parseInt((String) request
					.getAttribute("pageNumber"));
		%>
		<form
			action="<%=basePath%>callCenterHandlerServlet?arg=searchIgnoredComplainByEmployeeNumber"
			method="post">
			已忽略的投诉的查询结果：
			<br />
			<br />
			按员工编号搜索
			<input type="text" name="employee_number" />
			<input type="submit" value="查询" />
			<hr />
			当前是第<%=pageNumber%>页
			<hr/>
			<br/>
			<c:if test="${ignoredComplains == null}">
			     无已忽略的结果<br />
			</c:if>
			<c:if test="${ignoredComplains != null}">
			搜索结果列表
			<br />
				<br />
				<c:forEach var="complain" items="${ignoredComplains}">
					<table>
						<tr>
							<td>
								客户编号
							</td>
							<td>
								${complain.customer_number}
							</td>
						</tr>
						<tr>
							<td>
								所属地区
							</td>
							<td>
								${complain.area}
							</td>
							<td>
								投诉类型
							</td>
							<td>
								${complain.complain_type}
							</td>
							<td>
								员工编号
							</td>
							<td>
								${complain.employee_number}
							</td>
						</tr>
						<tr>
							<td colspan="6">
								投诉内容
							</td>
						</tr>
						<tr>
							<td colspan="6">
								${complain.content_detail}
							</td>
						</tr>
						<tr>
							<td>
								处理反馈信息：
							</td>
							<td>
								<c:if test="${complain.feedback != null}">
                     ${complain.feedback}
                </c:if>
							</td>
						</tr>

						<tr>
							<td>
								回复电话
							</td>
							<td>
								${complain.customer_tel}
							</td>
						</tr>

						<tr>
							<td>
								处理结果
							</td>
							<td>
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
		</form>
	</body>
</html>
