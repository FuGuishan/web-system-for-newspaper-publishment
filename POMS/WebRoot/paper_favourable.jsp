<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<link rel="stylesheet" type="text/css" href="css/modify_code.css"/>
		<title>新增优惠</title>
  </head>

<body>
    <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">报刊设置</a></li>
		  <li class="active">报刊优惠</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<label>优惠类型</label>
		&nbsp;&nbsp;
		<a href="paper_favourable_add.jsp" target="main">添加该期刊优惠类型</a>
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
			<table class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th>报刊ID</th>
					<th>报刊名称</th>
					<th>刊期</th>
					<th>优惠类型</th>
					<th>优惠人群</th>
					<th>优惠时间</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>101</td>
					<td>黑龙江周刊</td>
					<td>2014年第14期（周刊）</td>
					<td>订购数量达100本9折</td>
					<td>普通客户</td>
					<td>周刊发行该日</td>
					<td>
					<a href="paper_favourable_edit.jsp" target="main">编辑</a>
					&nbsp;&nbsp;
					<a href="" target="main">删除</a>
					</td>
				</tr>
				<tr>
					<td>101</td>
					<td>黑龙江周刊</td>
					<td>2014年第14期（周刊）</td>
					<td>订购数量达5000本6折</td>
					<td>大客户</td>
					<td>周刊发行该日</td>
					<td>
					<a href="paper_favourable_edit.jsp" target="main">编辑</a>
					&nbsp;&nbsp;
					<a href="" target="main">删除</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
  </body>
</html>
