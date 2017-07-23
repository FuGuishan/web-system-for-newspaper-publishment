<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	 <style>
        body{
            background-color:#ffffff;
        }
        #north {
            background-color:#ffffff;
            padding:20px;     
        }
        #center{
            padding:20px;
        }
        #enter p{
            font-weight:500;
        }
        #south{
            padding:20px;
        }
    </style>
</head>
	    
<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">报刊设置</a></li>
		  <li class="active">报刊代码设置</li>
		</ol>
	</div>
	<hr />
		<form action="" method="post">
			<div id="north">
				<label>报刊代码：</label>
				&nbsp;&nbsp;
				<input type="text" name="newspaper_code" />
				&nbsp;
				<input type="button" name="search_by_code" value="查询"/>
				<br /><br />
				<label>报刊名称：</label>
				&nbsp;&nbsp;
				<input type="text" name="namespaper_name" />
				&nbsp;
				<input type="button" name="search_by_name" value="查询" />
				<br />
			</div>
			<hr />
			
			<div class="function-panel">
			<label>查询结果</label>
				<table width="1000px" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th width="200" height="38">报刊代码</th>
						<th width="600">报刊名称</th>
						<th width="200">操作</th>
					</tr>
					<tr>
						<td>123456	</td>
						<td>黄书</td>
						<td>
							<a href="" name="modify">修改</a>
							&nbsp;
							<a href="" name="delete">删除</a>
						</td>
					</tr>
					<tr>
						<td>123456	</td>
						<td>黄书</td>
						<td>
							<a href="" name="modify">修改</a>
							&nbsp;
							<a href="" name="delete">删除</a>
						</td>
					</tr>
					<tr>
						<td>123456	</td>
						<td>黄书</td>
						<td>
							<a href="" name="modify">修改</a>
							&nbsp;
							<a href="" name="delete">删除</a>
						</td>
					</tr>
				</table>
			</div>
			<hr/>
		
			<div class="function-panel">
				<label>新增报刊</label>
				<form class="form-horizontal" name="newPaper" method="post">
					<table class="table table-bordered table-hover">
						<tr>
							<td width="200px">报刊名称：</td>
							<td><input type="text" name="newspaper" id="newspaper_name" style="width:200px"/></td>
						</tr>
						<tr>
							<td>报刊代码：</td>
							<td><input name="newspaperCode" type="text" style="width:200px"/></td>
						</tr>
					</table>
					<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="">
							保存
						</button>
					</div>
					</div>
				</form>
			</div>
	</body>
</html>
