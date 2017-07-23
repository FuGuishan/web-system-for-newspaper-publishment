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
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/prototype.lite.js"></script>
		<script type="text/javascript" src="js/moo.fx.js"></script>
		<script type="text/javascript" src="js/moo.fx.pack.js"></script>
		<script type="text/javascript" src="js/selectTown.js"></script>
		<script type="text/javascript" src="js/selectCity.js"></script>
		<script type="text/javascript" src="js/selectProvince.js"></script>

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
					部门简介编辑
				</li>
			</ol>
		</div>
		<hr />

		<div class="function-panel">
			<form name="form" action="<%=basePath %>modificationDepartmentServlet?arg=modification&name=${temp.subStationName }&leader=${temp.subStationLeaderName }&tel=${temp.subStationLeaderTel }&id=${temp.subStationID }&flag=${temp.flag }&hr=${temp.subStation_hr_infor}&pr=${temp.subStation_pr_infor}&bj=${temp.subStation_bj_infor}&jd=${temp.subStation_jd_infor}" method="post">
				<table class="table table-bordered table-hover">
					<tr style="background-color: #F6F6F6">
						<th width="180px">
							名称
						</th>
						<th>
							填写项
						</th>
					</tr>
					<tr>
						<td>
							部门名称:
						</td>
						<td>
							<c:if test="${temp.flag == 1}">
								人事部
							</c:if>
							<c:if test="${temp.flag == 2}">
								公关部
							</c:if>
							<c:if test="${temp.flag == 3}">
								编辑部
							</c:if>
							 <c:if test="${temp.flag == 4}">
								监督部
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							隶属单位:
						</td>
						<td>
							<input type="text" value="${temp.subStationName }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td>
							负责人:
						</td>
						<td>
							<input type="text" value="${temp.subStationLeaderName }"  readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td>
							负责人联系方式:
						</td>
						<td>
							<input type="text" value="${temp.subStationLeaderTel }"  readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td>
							部门简介:
						</td>
						<td>
							<textarea name="infor" style="width:800px; height:200px;">${temp.subStation_hr_infor}${temp.subStation_pr_infor}${temp.subStation_bj_infor}${temp.subStation_jd_infor}</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="保存修改"
								style="padding-left: 20px; padding-right: 20px; padding-top: 5; padding-bottom: 5">
							<input type="reset" value="返回原始值" 
								style="margin-left: 50px; padding-left: 20px; padding-right: 20px; padding-top: 5; padding-bottom: 5">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
