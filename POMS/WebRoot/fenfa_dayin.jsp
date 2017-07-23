<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
 		<p> 
 		类别：
 		<select>
 		<option>总社</option>
 		<option>分社</option>
 		<option>运输单位</option>
 		</select>
 		所在地：
 		<select>
 		<option>黑龙江省</option>
 		<option>黑龙江省</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select>
 		<select>
 		<option>哈尔滨市</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select>
 		<select>
 		<option>蜕化县</option>
 		<option>公关部</option>
 		<option>不存在划分</option>
 		</select>
 		部门：
 			<select>
 		<option>人事部</option>
 		<option>公关部</option>
 		<option>编辑部</option>
 		</select>
	     <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　  <BUTTON  type=submit>搜索</BUTTON></SPAN></p>
     <hr /><br />
    
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong></strong>
			关系表&nbsp;&nbsp;&nbsp;<div class="btn-group">
			
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           排序
		</button>
		<ul class="dropdown-menu">
			<li ><a href="department_people.jsp" target="main"></a></li>
   			<li><a href="department.jsp" target="main"">部门基本信息设置</a></li>
		</ul>
	</div>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
				<td width="200px">隶属单位</td>
					<td>asdada</td></tr>
				<tr>
					<td width="200px">负责人</td>
					<td>asdad</td>
				</tr>
				<tr>
					<td width="200px">负责人联系方式</td>
					<td>asdada></td>
				</tr>
				<tr>
					<td colspan="2">简介</td>
				</tr>
				<tr >
				 <td colspan="3">adasd</td>
				</tr>
			</table>
				
		</div>
	</div>
  </body>
</html>
