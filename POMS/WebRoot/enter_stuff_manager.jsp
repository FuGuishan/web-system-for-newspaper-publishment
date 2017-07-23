<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/right.css"/>	
	<title>员工管理</title>
	<script>
		function chkNull(){
			if(document.enterform.no.value == ""){
			  alert("请输入员工编号！");
			  return false;
			  }
			else if(document.enterform.selection.value == "empty" || document.enterform.selection.value == ""){
				alert("请选择修改类型！");
		        return false;
	        } 
			else 
			return true;
		}
	</script>
</head>


<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">财务管理</a></li>
		  <li class="active">人事管理</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<form name="enterform" action="alterType" method="post">
		<table class="table table-bordered table-hover">
			<tr>
				<td width="200px">员工编号：</td>
				<td><input name="no" type="text" style="width:150px" /></td>
			</tr>
			<tr>
				<td>相应操作：</td>
				<td><select name="selection"  style="width:150px">
						<option value="empty">
							
						</option>
						<option value="add">
							增加员工信息
						</option>
						<option value="query">
							查询员工信息
						</option>
						<option value="delete">
							删除员工信息
						</option>
						<option value="update">
							修改员工信息
						</option>
					</select>
				</td>
			</tr>
		</table>
		<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" id="" onClick="return chkNull()">
					进入操作页面
				</button>
			</div>
		</div>
		</form>
	</div>
</body>
</html>