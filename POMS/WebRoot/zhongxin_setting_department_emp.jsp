<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/bootstrap.css" />
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>css/right.css" />
</head>

	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">基本信息管理</a>
				</li>
				<li class="active">
					部门人员设置
				</li>
			</ol>
		</div>
		<hr />

		<div class="function-panel">
			<form name="form_1" onSubmit="return check()" action="<%=basePath%>removeEmpServlet?id=${station.subStationID }&name=${station.subStationName }&flag=${station.flag }" method="post">
				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading">
						<strong> ${station.subStationName }
							<c:if test="${station.flag == 1}">
								人事部
							</c:if> <c:if test="${station.flag == 2}">
								公关部
							</c:if> <c:if test="${station.flag == 3}">
								编辑部
							</c:if> <c:if test="${station.flag == 4}">
								监督部
							</c:if> 
						</strong>
					</div>
					<br />
					<label style="margin-left: 50px;">
						负责人：
					</label>
					<c:if test="${leader != null }">
						<table
							style="border: 1px silver double; width: 900px; margin-left: 50px;"
							class="table table-bordered table-hover">
							<tr>
								<th width="20%">
									员工id
								</th>
								<th width="20%">
									姓名
								</th>
								<th width="10%">
									性别
								</th>
								<th width="20%">
									职务
								</th>
								<th>
									联系方式
								</th>
							</tr>
							<c:forEach var="leader" items="${leader}">
								<tr>
									<td>
										${leader.id }
									</td>
									<td>
										${leader.name }
									</td>
									<td>
										<c:if test="${leader.gender ==1}">
											男
										</c:if>
										<c:if test="${leader.gender ==0}">
											女
										</c:if>
									</td>
									<td>
										${leader.job }
									</td>
									<td>
										${leader.tel }
									</td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
					<br />
					<br />
					<label style="margin-left: 50px;">
						普通员工：
					</label>
					<c:if test="${emp != null }">
						<table
							style="border: 1px silver double; width: 900px; margin-left: 50px;"
							class="table table-bordered table-hover">
							<tr>
								<th width="20%">
									员工id
								</th>
								<th width="20%">
									姓名
								</th>
								<th width="10%">
									性别
								</th>
								<th width="20%">
									职务
								</th>
								<th>
									联系方式
								</th>
							</tr>
							<c:forEach var="emp" items="${emp}">
								<tr>
									<td>
										${emp.id }
									</td>
									<td>
										${emp.name }
									</td>
									<td>
										<c:if test="${emp.gender ==1}">
											男
										</c:if>
										<c:if test="${emp.gender ==0}">
											女
										</c:if>
									</td>
									<td>
										${emp.job }
									</td>
									<td>
										${emp.tel }
									</td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
					<c:if test="${emp == null }">
						<center>
							无部门员工
						</center>
					</c:if>
					<br />
				</div>
			</form>
		</div>
	</body>
</html>
