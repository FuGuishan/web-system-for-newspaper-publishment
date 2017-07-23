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
	
	<script language="javascript">
		function chkdes(){
			if(document.form1.destination.value!=""){
				if(confirm("您确定要增加该投递段吗？")){
					return true;
				}else{
					return false;
				}
			}else{
				alert("投递段地址不可为空！");
				return false;
			}
		}
		function chkemp(){
			if(document.form2.emp_id.value==""){
				alert("查询投递员ID不可为空！");
				return false;
			}else{
				return true;
			}
		}
		function toAdd(){
			window.location.href="deliverManager_desManageDesAdd.jsp"; 
		}
		function toAddEmp(){
			window.location.href="deliverManager_desEmpAdd.jsp";
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">投递段管理</li>
		</ol>
	</div>
	
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>投递段管理</strong></div>
		<div class="panel-body">
			<p>
				<label>投递段维护：</label><br/>
				<form action="deliverManager_desManagerQueryServlet" method="post">
					投递段ID：<input type="text" name="des_id"/>&nbsp;&nbsp;
					<input type="submit" value="查询投递段"/>&nbsp;&nbsp;&nbsp;
					<input type="button" value="增加投递段" onclick="toAdd()"/>
					&nbsp;&nbsp;&nbsp;
					*直接点击查询所有投递段
				</form>
			</p>
			<br/>
			<p>
				<label>投递员维护：</label><br/>
				<form action="deliverManager_desManagerEmpServlet" method="post" onsubmit="return chkemp()" name="form2">
					投递员ID：<input type="text" name="emp_id"/>&nbsp;&nbsp;
					<input type="submit" value="查询投递员"/>&nbsp;&nbsp;&nbsp;
					<input type="button" value="增加投递员" onclick="toAddEmp()"/>
				</form>
			</p>
			<br/>
		</div>
		
		<c:if test="${list1==null}">
			 <!--  &nbsp;&nbsp;&nbsp;没有查询结果！-->
		</c:if>
		<c:if test="${list1!=null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>投递段ID</th>
					<th>投递段地址</th>
					<th>投递员</th>
					<th>操作</th>
				</tr>
				<c:forEach var="user" items="${list1}">
				<tr>
					<td>${user.des_id }</td>
					<td>${user.destination }</td>
					<td>${user.emp_id }</td>
					<td>
						<a href="<%=basePath %>deliverManager_desManagerServlet?arg=toupdate&des_id=${user.des_id}">修改</a>
						<a href="<%=basePath %>deliverManager_desManagerServlet?arg=delete&des_id=${user.des_id}" onclick="return confirm('您确定要删除该投递段吗？')">删除投递段</a>
						<!-- <a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=toadd&des_id=${user.des_id}">增加投递员</a> -->
					</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>	
		
		
		<c:if test="${list2==null}">
			<!--  &nbsp;&nbsp;&nbsp;没有查询结果！-->
		</c:if>
		<c:if test="${list2!=null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>投递员ID</th>
					<th>投递段ID</th>
					<th>投递段地址</th>
					<th>操作</th>
				</tr>
				<c:forEach var="user" items="${list2}">
				<tr>
					<td>${user.emp_id }</td>
					<td>${user.des_id }</td>
					<td>${user.destination }</td>
					<td>
						<a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=toupdate&des_id=${user.des_id}&emp_id=${user.emp_id}">修改</a>
						<a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=delete&des_id=${user.des_id}&emp_id=${user.emp_id}"">删除</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>	
		</div>
	
</body>
</html>

