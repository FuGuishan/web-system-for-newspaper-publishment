<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
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
		<title>人事管理</title>
    <script>
	function checkText(){
		if(document.emp_add.emp_id.value==""){
			alert("请输入的员工编号!");
			return false;
		}
	    if(document.emp_add.emp_name.value==""){
		  alert("请输入的员工姓名!");
		  return false;
		}
		if(document.emp_add.emp_dept_id.value==""){
			alert("请输入员工所在的部门编号");
			return false;
		}
	    var id = /^[1-9]\d{5}$/;
	    if(document.emp_add.emp_id.value.search(id)==-1){
			alert("员工编号为6位数字组成,且首位不为0,请重新输入！");
			return false;
		}
	    var dept_id = /^[1-9]\d{3}$/;
	    if(document.emp_add.emp_dept_id.value.search(dept_id)==-1){
			alert("部门编号为4位数字组成,且首位不为0,请重新输入！");
			return false;
		}
		//验证电话号码   
		var tel_m = /^1\d{10}$/;
		var tel_c = /^\d{3}|\d{4}-\d{8}|\d{7}$/;
		if(document.emp_add.emp_tel.value!=""){
			if(document.emp_add.emp_tel.value.search(tel_m)==-1&&document.emp_add.emp_tel.value.search(tel_c)==-1){
				alert("联系电话的格式不正确！");
				return false;
			}
		}
		//验证身份证号
		var idnum = /^\d{15}$|^\d{18}$|^\d{17}[Xx]$/;
		var getID = document.emp_add.emp_idnum.value;
		if(getID!=""&&getID.search(idnum)==-1){
			alert("输入的身份证号码格式不对！");
			return false;
		}
		//年龄的验证
		if(document.emp_add.emp_age.value!=""){
			var getAge = parseInt(document.emp_add.emp_age.value);
			if(getAge<1||getAge>150){
				alert("请输入正确的年龄");
				return false;
			}
		}	
		else 
			return true;	    
	    }
	</script>
	<style>
	#pm:hover{
	background:#C0C0C0;
	}
	</style>
	</head>
<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">中心站管理</a></li>
		  <li class="active">人事管理</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<strong>添加员工&nbsp;&nbsp;&nbsp;</strong>———— 打<font size="2" color="red">*</font>的内容为必填项	
				</h3>
			</div>
		<div class="panel-body">
			<form name="emp_add" action="<%=basePath %>empServlet?arg=add" method="post">
				<font color="red">${message }</font><br/><br/>
			
			<table class="table table-bordered table-hover" id="add_emp">
				<tr>
					<td width="200px">员工编号：</td>
					<td><input type = "text" name="emp_id"/>&nbsp;<font style="width:50px" color="red">*</font>
					<font style="margin-left:50px; font-size:13px; color:red;">（注：员工编号为6位数字）</font>
					</td>
				</tr>
				<tr>
					<td>员工姓名：</td>
					<td><input type = "text" name="emp_name"/>&nbsp;<font color="red">*</font></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
						<input type="radio" name="emp_gender" value="0" checked/>女
						<input type="radio" name="emp_gender" value="1"/>男
						&nbsp;<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>所在部门编号：</td>
					<td><input type = "text" name="emp_dept_id"/>&nbsp;<font color="red">*</font>
					<font style="margin-left:50px; font-size:13px; color:red;">（注：部门编号为4位数字）</font>
					</td>
				</tr>
				<tr>
					<td>员工职务：</td>
					<td>
						<select name="emp_post" style="width:80px" >
							<option value="manager">经理</option>
							<option value="minister">部长</option>
							<option value="employer">普通员工</option>
							<option value="supermanager">超级管理员</option>
						</select>
						&nbsp;<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>身份证号：</td>
					<td><input type = "text" name="emp_idnum"/></td>
				</tr>
				<tr>
					<td>年龄：</td>
					<td><input type = "text" name="emp_age"/></td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td><input type = "text" name="emp_tel"/></td>
				</tr>
			</table>
			<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit" onclick="return checkText()">
						添加
					</button>
				</div>
				<div class="col-sm-2">
					<button type="reset" class="btn btn-default" name="reset">
						重置
					</button>
				</div>
			</div>
			</form>
			</div>
		</div>
	</div>
	</body>
</html>