 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>人事管理</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/right.css"/>

	</head>
<body>
<div class="bread-crumb">
<ol class="breadcrumb">
  <li><a href="#">首页</a></li>
  <li><a href="#">中心站管理</a></li>
  <li class="active">人事管理</li>
</ol>
</div>
<hr />

<div class="function-panel">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><strong>输入查询条件</strong> </h3>
		</div>
		<div class="panel-body">
			<form name="emp_query" action="<%=basePath %>empServlet?arg=query" method="post">
			<p>
				<label>
					&nbsp;&nbsp;&nbsp;员工姓名：
				</label>&nbsp;&nbsp;&nbsp;
				<input name="emp_name" type="text"/>
			</p>
			<p>
				<label>
					&nbsp;&nbsp;&nbsp;员工编号：
				</label>&nbsp;&nbsp;&nbsp;
				<input name="emp_id" type="text"/>
			</p>
			<font color="#800000" size="2" style="margin-left:50px">注：无查询条件将显示所有员工</font><br/><br/>
			<input style="margin-left:50px" type="submit" value="查询" />
			<input style="margin-left:50px" type="reset" value="重置"/>
			</form>		
			</div>
			</div>
			</div>		
			<!-- 查询结果 -->	
		<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<strong>查询结果</strong>
			<a href="pm_add.jsp" target="main" style="margin-left:30px;">添加员工</a>
		</div>
		<div class="panel-body">
			<p>
			<c:if test="${list==null}">没有满足输入的员工信息！</c:if>
			<c:if test="${list!=null}">
			<table class="table table-bordered table-hover" id="query_result_emp">
				<tr style="background-color:#F6F6F6">
					<th>员工编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>部门</th>
					<th>职务</th>
					<th>身份证号</th>
					<th>年龄</th>
					<th>联系电话</th>
					<th>操作</th>
				</tr>
				<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.emp_id }</td>
					<td>${emp.emp_name }</td>
					<td>
						<c:if test="${emp.emp_gender == '1'}">男</c:if>
						<c:if test="${emp.emp_gender == '0'}">女</c:if>
					</td>
					<td>${emp.emp_dept_id }</td>
					<td>
						<c:if test="${emp.emp_post == 'manager' }">经理</c:if>
						<c:if test="${emp.emp_post == 'minister' }">部长</c:if>
						<c:if test="${emp.emp_post == 'employer' }">普通员工</c:if>
					</td>
					<td>${emp.emp_idnum }</td>
					<td>
					<c:if test="${emp.age !=0 }">${emp.age }</c:if>
					<c:if test="${emp.age ==0 }">未知</c:if>
					</td>
					<td>${emp.emp_tel }</td>
					<td>
						<a href="<%=basePath %>empServlet?arg=toUpdate&emp_id=${emp.emp_id}">修改</a>&nbsp;
						<a href="<%=basePath %>empServlet?arg=delete&empid=${emp.emp_id}" onclick="return confirm('您确认要删除此员工吗？')">删除</a>&nbsp;
						<a href="<%=basePath %>empServlet?arg=toSetPost&emp_id=${emp.emp_id}">职务设置</a>&nbsp;
					</td>
				</tr>
				</c:forEach>
			</table>
			</c:if>
			</p>
						</div>
			
					</div>
	  			</div>
			</div>
		</div>
	</body>
</html>