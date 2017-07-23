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
		  <li class="active">报刊属性设置</li>
		</ol>
	</div>
	<hr />
	
	<form action="" method="post">
	<div class="function-panel">
		<label>报刊代码：</label>
		&nbsp;&nbsp;
		<input type="text" name="newspaper_code" />
		&nbsp;
		<input type="button" name="search_by_code" value="查询"/>
		&nbsp;
		<input type="button" name ="add" value = "新增" onclick = "window.location = '<%=basePath %>jumpControlServlet?arg=propertiesToAdd'"/>
	</div>
	</form>
    <hr />
	<div class="function-panel">
		<label>报刊基本信息：</label>
		<table width="1000px" class="table table-bordered table-hover">
			<tr style="background-color:#F6F6F6">
				<th width = "166.6px" height="38">固定名称</th>
				<th width = "166.6px">连续出版</th>
				<th width = "166.6px">定期出版</th>
				<th width = "166.6px">印发数</th>
				<th width = "166.6px">剩余量</th>
				<th width = "166.6px">操作</th>
			</tr>
			<tr>
				<td>123456	</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>
					<a href = "<%=basePath %>jumpControlServlet?arg=propertiesToEdit">编辑</a>
				</td>
			</tr>
			<tr>
				<td>123456	</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>黄书</td>
				<td>
					<a href = "<%=basePath %>jumpControlServlet?arg=propertiesToEdit">编辑</a>
				</td>
			</tr>
		</table>
	</div>
  </body>
</html>
