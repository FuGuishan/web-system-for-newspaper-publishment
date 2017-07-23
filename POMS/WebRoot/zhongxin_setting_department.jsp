<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">  
    <title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
	<script type="text/javascript" src="js/selectTown.js"></script>
	<script type="text/javascript" src="js/selectCity.js"></script>
 	<script type="text/javascript" src="js/selectProvince.js"></script>
 	<script type="text/javascript" src="js/stationQuery.js"></script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">基本信息管理</a></li>
		  <li class="active">部门设置</li>
		</ol>
	</div>
	<hr />
	
<div class="function-panel">
	<form name="select_form"  method="post">
		<p> 
		类别：
		<select name="type" id="type" onClick="Change_Select_Type()">
			<option value="0">请选择</option>
			<option value="1">总社</option>
			<option value="2">分社</option>
		</select>
		&nbsp;&nbsp;所在地：
		<select name="province" id="province" onChange="Change_Select_Province()">
			<option value="0">省份</option>
		</select>
		<select name="city" id="city" onChange="Change_Select_city()">
			<option value="0">市</option>
		</select>
		<select name="town" id="town"> 
			<option value="0">县/区</option>
		</select>
		&nbsp;&nbsp;部门：
		<select name="department" id="department">
			<option value="0">请选择部门</option>
			<option value="1">人事部</option>
			<option value="2">公关部</option>
			<option value="3">编辑部</option>
			<option value="4">监督部</option>
		</select>
		
		<SPAN style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
		 　  <BUTTON  type="button" onClick="stationQuery()">搜索</BUTTON></SPAN></p>
		<hr /><br />
	</form>
	
	<c:if test="${list == null}">
		<center>
			没有查询结果！
		</center>
	</c:if>
	<c:if test="${list != null}">
		<c:forEach var="result_station" items="${list}">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong></strong>
		<c:if test="${result_station.subStation_hr_infor != null}">
			人事部
		</c:if>
		<c:if test="${result_station.subStation_pr_infor != null}">
			公关部
		</c:if>
		<c:if test="${result_station.subStation_bj_infor != null}">
			编辑部
		</c:if>
		<c:if test="${result_station.subStation_jd_infor != null}">
			监督部
		</c:if>
		&nbsp;&nbsp;&nbsp;<div class="btn-group">
			
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作 
		</button>
		<ul class="dropdown-menu">
			<li ><a href="<%=basePath %>empEditServlet?dept_id=${result_station.subStationID }&flag=${result_station.flag }&name=${result_station.subStationName }" target="main">部门人员查看</a></li>
   			<li><a href="<%=basePath %>modificationDepartmentServlet?arg=forword&id=${result_station.subStationID }&flag=${result_station.flag }&name=${result_station.subStationName }&leader=${result_station.subStationLeaderName }&tel=${result_station.subStationLeaderTel }&hr=${result_station.subStation_hr_infor}&pr=${result_station.subStation_pr_infor}&bj=${result_station.subStation_bj_infor}&jd=${result_station.subStation_jd_infor}" target="main"">部门简介编辑</a></li>
		</ul>
	</div>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<td width="200px">隶属单位</td>
					<td>${result_station.subStationName }</td></tr>
				<tr>
					<td width="200px">负责人</td>
					<td>${result_station.subStationLeaderName }</td>
				</tr>
				<tr>
					<td width="200px">负责人联系方式</td>
					<td>${result_station.subStationLeaderTel }</td>
				</tr>
				<tr>
					<td colspan="2">简介</td>
				</tr>
				<tr >
				 <td colspan="3">
				 <c:if test="${result_station.subStation_hr_infor != null}">
					&nbsp;&nbsp;&nbsp;${result_station.subStation_hr_infor}
				</c:if>
				<c:if test="${result_station.subStation_pr_infor != null}">
					&nbsp;&nbsp;&nbsp;${result_station.subStation_pr_infor}
				</c:if>
				<c:if test="${result_station.subStation_bj_infor != null}">
					&nbsp;&nbsp;&nbsp;${result_station.subStation_bj_infor}
				</c:if>
				<c:if test="${result_station.subStation_jd_infor != null}">
					&nbsp;&nbsp;&nbsp;${result_station.subStation_jd_infor}
				</c:if>
				 </td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</c:if>
	</div>
  </body>
</html>
