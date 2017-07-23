 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>人事管理</title>
		  <script>
		function checkText(){
			 if(document.emp_update.emp_id.value==""){
				   alert("请输入的员工编号!");
				  return false;
				 }
		     if(document.emp_update.emp_name.value==""){
			   alert("请输入的员工姓名!");
			  return false;
			 }
			 if(document.emp_update.emp_gender.value==""){
				   alert("请选择性别!");
				   return false;
			 }
			 if(document.emp_update.emp_dept_id.value==""){
				 alert("请输入员工所在的部门编号 !");
				 return false;
			 }
			 var id = /^[1-9]\d{5}$/;
			    if(document.emp_update.emp_id.value.search(id)==-1){
					alert("员工编号为6位数字组成,且首位不为0,请重新输入！");
					return false;
				}
			    var dept_id = /^[1-9]\d{3}$/;
			    if(document.emp_update.emp_dept_id.value.search(dept_id)==-1){
					alert("部门编号为4位数字组成,且首位不为0,请重新输入！");
					return false;
				}
				//验证电话号码   
				var tel_m = /^1\d{10}$/;
				var tel_c = /^\d{3}|\d{4}-\d{8}|\d{7}$/;
				if(document.emp_update.emp_tel.value!=""){
					if(document.emp_update.emp_tel.value.search(tel_m)==-1&&document.emp_update.emp_tel.value.search(tel_c)==-1){
						alert("联系电话的格式不正确！");
						return false;
					}
				}
				//验证身份证号
				var idnum = /^\d{15}$|^\d{18}$|^\d{17}[Xx]$/;
				var getID = document.emp_update.emp_idnum.value;
				if(getID!=""&&getID.search(idnum)==-1){
					alert("输入的身份证号码格式不对！");
					return false;
				}
				//年龄的验证
				if(document.emp_update.emp_age.value!=""){
					var getAge = parseInt(document.emp_update.emp_age.value);
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
		<div>
		<table>
			<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td width="150" height="80"  align="center" bgcolor="#C0C0C0"><strong><font size="5" color="white">员工信息设置</font></strong></td>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td id="pm" width="80" align="center"  bgcolor="#ADD8E6"><strong><a href="pm_add.jsp">添加</a></strong></td>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td id="pm" width="80" align="center"  bgcolor="#ADD8E6"><strong><a href="pm_query.jsp">查看</a></strong></td>
				</tr>
			</table>
			<br/>
		</div>
		
			<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
				<strong>
				<font size="3" color="#6495ED">修改员工信息&nbsp;&nbsp;&nbsp;</font>
				</strong>
				————打<font size="2" color="red">*</font>的内容为必填项</h3>
			</div>
			<div class="panel-body">
			<form name="emp_update" action="<%=basePath %>empServlet?arg=update" method="post">		
				<table height="300" cellspacing="5" border="0" width="320" id="add_emp">
					<tr>
					<td width="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td width="100">员工编号：</td>
						<td><input type="text" name="emp_id" readonly="readonly" style="width=150" value="${emp.emp_id }"/></td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
						<td><input type="text" name="emp_name" style="width=150" value="${emp.emp_name }"/>&nbsp;
						<font color="red">*</font></td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
						<td>
							<input type="radio" name="emp_gender" value="0" <c:if test="${emp.emp_gender=='0' }">checked</c:if> />女
							<input type="radio" name="emp_gender" value="1" <c:if test="${emp.emp_gender=='1' }">checked</c:if> />男
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>所在部门编号：</td>
						<td>
							<input type="text" name="emp_dept_id" style="width=150" value="${emp.emp_dept_id }"/>
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
						<td><select name="emp_post" style="width:100" >
							<option value="manager" <c:if test="${emp.emp_post=='manager' }">selected</c:if>>经理</option>
							<option value="minister" <c:if test="${emp.emp_post=='minister' }">selected</c:if>>部长</option>
							<option value="employer" <c:if test="${emp.emp_post=='employer' }">selected</c:if>>普通员工</option>
							<option value="supermanager" <c:if test="${emp.emp_post=='supermanager' }">selected</c:if>>超级管理员</option>
							</select>
							<font color="red">*</font>
						</td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>身份证号：</td>
						<td><input type="text" name="emp_idnum" style="width=150" value="${emp.emp_idnum }"/></td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
						<td>
						<c:if test="${emp.age !=0 }">
						<input type="text" name="emp_age" style="width=150" value="${emp.age }"/>
						</c:if>
						<c:if test="${emp.age ==0 }">
						<input type="text" name="emp_age" style="width=150"/>
						</c:if>
						</td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>联系电话：</td>
						<td><input type="text" name="emp_tel" style="width=150" value="${emp.emp_tel }"/></td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td colspan="3" align="right"><br/>
							<input type="submit" value="确定" onclick="return checkText()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="重置"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
					</table>
					<br/>
		</form>
		</div>
			</div>
			</div>
	</body>
</html>