<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- 人员管理 删除员工档案 -->

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>删除员工档案</title>
	</head>

	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="index.jsp">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					删除员工档案
				</li>
			</ol>
		</div>
		<hr />
		
		<div class="function-panel">
			<form action="" method="post" name="deteltestuff">
				<table class="table table-bordered table-hover">
					<tr>
						<td width="200px">员工id：</td>
						<td>
							<input readonly="readonly" name="emp_id" type="text" onBlur="chkId()" value="" />
						</td>
					</tr>
					<tr>
						<td>员工姓名:</td>
						<td>
							<input readonly="readonly" name="emp_name" type="text" onBlur="chkName(emp_name.value)" />
						</td>
					</tr>
					<tr>
						<td>员工性别:</td>
						<td>
							<input readonly="readonly" type="radio" value="0" name="gender">男</input>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input readonly="readonly" type="radio" value="1" name="gender">女</input>
						</td>
					</tr>
					<tr>
						<td>员工所在部门编号:</td>
						<td>
							<input readonly="readonly" name="emp_dept_id" type="text" />
						</td>
					</tr>
					<tr>
						<td>员工职务:</td>
						<td>
							<input readonly="readonly" name="emp_post" type="text" />
						</td>
					</tr>
					<tr>
						<td>员工工资:</td>
						<td>
							<input readonly="readonly" name="emp_salary" type="text" onBlur="chkSalary()"/>
						</td>
					</tr>
					<tr>
						<td>员工奖金:</td>
						<td>
							<input readonly="readonly" name="emp_bonus" type="text" onBlur="chkBonus()" />
						</td>
					</tr>
					<tr>
						<td>员工系统登录密码:</td>
						<td>
							<input readonly="readonly" name="emp_password" type="text" onBlur="chkPass()"/>
						</td>
					</tr>
					<tr>
						<td>员工电话号码:</td>
						<td>
							<input readonly="readonly" name="emp_tele" type="text"  onBlur="chkTel()">
						</td>
					</tr>
				</table>
				<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit" id="" onClick="">
						删除
					</button>
				</div>
				<div>
					<button type="button" class="btn btn-default" name="back" id="" onclick="">
						返回
					</button>
				</div>
			</div>
			</form>
		</div>
	</body>
</html>