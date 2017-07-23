<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	
</head>
  
<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">报刊设置</a></li>
		  <li class="active">刊期设置</li>
		</ol>
	</div>
	<hr />
	<div class="function-panel">          
	    <form action = "" method = "post">
	    	<label>报刊代码：</label>
			&nbsp;&nbsp;
			<input type="text" name="newspaper_code" />
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label>月份：</label>
			<select>
			<option value ="1">1月</option>
			<option value ="2">2月</option>
			<option value ="3">3月</option>
			<option value ="4">4月</option>
			<option value ="5">5月</option>
			<option value ="6">6月</option>
			<option value ="7">7月</option>
			<option value ="8">8月</option>
			<option value ="9">9月</option>
			<option value ="10">10月</option>
			<option value ="11">11月</option>
			<option value ="12">12月</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" name="search_by_code" value="查询"/>
		</form>
    </div>
    <hr />
    <div class="function-panel">          
	    <form action = "" method = "post">
	    	<label>该月刊期</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<a href = "<%=basePath %>jumpControlServlet?arg=issueToAdd" >增加刊期</a><br />
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width = "333.3px" height="38">发行时间</th>
					<th width = "333.3px">发行数量</th>
					<th width = "333.3px">操作</th>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >编辑</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >删除</a>
					</td>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >编辑</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >删除</a>
					</td>
				</tr>
				<tr>
					<td>2012-3-12</td>
					<td>1000</td>
					<td>
						<a href = "<%=basePath %>jumpControlServlet?arg=issueToModify" >编辑</a>
	                    <a href = "<%=basePath %>jumpControlServlet?arg=delete" >删除</a>
					</td>
				</tr>
			</table>
		</form>
    </div>
  </body>
</html>
