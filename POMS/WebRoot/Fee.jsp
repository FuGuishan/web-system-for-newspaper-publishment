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
		  <li class="active">发行费率设置</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">          
	    <form action = "" method = "post">
	    	<label>报刊代码：</label>
			&nbsp;&nbsp;
			<input type="text" name="newspaper_code" />
			&nbsp;&nbsp;
			<input type="button" name="search_by_code" value="查询"/>
		</form>
    </div>
    <hr />
    
    <div class="function-panel">          
	    <form action = "" method = "post">
	    	<label>该月刊期</label>
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width = "150px" height="38">当前结算价格</th>
					<th width = "333.3px">更改结算价格</th>
				</tr>
				<tr>
					<td>
					<div style="margin-top:8px">100.00</div>
					</td>
					<td>
						<div class="input-group" style="width:300px">
							<input class="form-control"  type="text"/>
							<span class="input-group-addon">.00</span>
						</div>
					</td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
					提交
				</button>
			</div>
		</div>
		</form>
    </div>
  </body>
</html>
