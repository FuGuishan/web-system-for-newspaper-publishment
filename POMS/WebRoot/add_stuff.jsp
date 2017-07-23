<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- 人员管理 增加员工档案 -->

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>创建员工档案</title>
		
</head>
	<script>
	function chkId() {
		var reeeId = /^\d{6}$/;
		if (document.addstuff.emp_id.value.search(reeeId) == -1 && document.addstuff.emp_id.value!="") {
			alert("用户名的格式不正确，请重新输入！");
			document.addstuff.emp_id.value="";
			return false;
		}
	}
	function chkName(str) {
		var reg = /^[\u4E00-\u9FA5]+$/;
		if (!reg.test(str) && document.addstuff.emp_name.value != "") {
			alert("不是中文,请重新输入！");
			document.addstuff.emp_name.value="";
			return false;
		}
		else
		return true;
	}
	function chkSalary(){
		var resalary = /^\d+$/;
		if (document.addstuff.emp_salary.value.search(resalary) == -1 && document.addstuff.emp_salary.value!="") {
			alert("工资的格式不正确，请重新输入！");
			document.addstuff.emp_salary.value="";
			return false;
		}

	} 
	function chkBonus(){
		var rebonus = /^\d+$/;
		if (document.addstuff.emp_bonus.value.search(rebonus) == -1 &&document.addstuff.emp_bonus.value!="") {
			alert("奖金的格式不正确，请重新输入！");
			document.addstuff.emp_bonus.value="";
			return false;
		}

	} 
	function chkTel(){
		var retele = /^\d+$/;
		if (document.addstuff.emp_tele.value.search(retele) == -1 && document.addstuff.emp_tele.value!=="") {
			alert("电话的格式不正确，请重新输入！");
			document.addstuff.emp_tele.value="";
			return false;
		}

	} 
	function chkPass(){
		var retele = /^[A-Za-z0-9]+$/;
		if (document.addstuff.emp_password.value.search(retele) == -1 && document.addstuff.emp_password.value !="") {
			alert("密码的格式不正确，请重新输入！");
			document.addstuff.emp_password.value="";
			return false;
		}

	} 
</script>

<body>
	<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="index.jsp"target="_parent">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					创建新员工档案
				</li>
			</ol>
		</div>
		<hr />
		
		
		<div class="function-panel">
			<form name="addstuff" action="ok.jsp" method="post">
				<table class="table table-bordered table-hover">
					<tr>
						<td width="200px">员工id：</td>
						<td>
							<input name="emp_id" type="text" onBlur="chkId()" value="" />
							&nbsp;&nbsp;
							<label>
								<font size="-1" color="red">必填，六位数字</font>
							</label>
						</td>
					</tr>
					<tr>
						<td>员工姓名:</td>
						<td>
							<input name="emp_name" type="text" onBlur="chkName(emp_name.value)" />
							&nbsp;&nbsp;
							<label>
								<font size="-1" color="red">必填，真实姓名</font>
							</label>
						</td>
					</tr>
					<tr>
						<td>员工性别:</td>
						<td>
							<input type="radio" name="gender" checked>男</input>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="gender">女</input>
						</td>
					</tr>
					<tr>
						<td>员工所在部门编号:</td>
						<td>
							<input name="emp_dept_id" type="text" />
							&nbsp;&nbsp;
							<label>
								<font size="-1" color="red">必填</font>
							</label>
						</td>
					</tr>
					<tr>
						<td>员工职务:</td>
						<td>
							<input name="emp_post" type="text" />
						</td>
					</tr>
					<tr>
						<td>员工工资:</td>
						<td>
							<input name="emp_salary" type="text" onBlur="chkSalary()"/>
							&nbsp;&nbsp;
							<label>
								<font size="-1" color="red">必填，含奖金</font>
							</label>
						</td>
					</tr>
					<tr>
						<td>员工奖金:</td>
						<td>
							<input name="emp_bonus" type="text" onBlur="chkBonus()" />
						</td>
					</tr>
					<tr>
						<td>员工系统登录密码:</td>
						<td>
							<input name="emp_password" type="text" onBlur="chkPass()"/>
						</td>
					</tr>
					<tr>
						<td>员工电话号码:</td>
						<td>
							<input name="emp_tele" type="text"  onBlur="chkTel()">
						</td>
					</tr>
				</table>
				<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit" id="" onClick="return chkPwd()">
						提交
					</button>
				</div>
				<div class="col-sm-2">
					<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
						重置
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