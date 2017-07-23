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
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/right.css">
		<title>人事管理</title>
	</head>
		  <script>
	function checkText(){
		     if(document.emp_add.emp_name.value==""&&document.emp_add.emp_id.value==""){
			   alert("请输入员工姓名或员工编号!");
			  return false;
			 }
		    else 
			    return true;
		    
		   }

</script>

	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">中心站管理</a></li>
		  <li class="active">人事管理</li>
		</ol>
		<hr />
		<div class="function-panel">
		<div>
			<table>
				<tr >
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td width="150" height="80"  align="center" bgcolor="#c0c0c0"><font color="white" size="5">员工职务设置</font></td>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td width="80" align="center"  bgcolor="#ADD8E6"></td>
				<td>&nbsp;&nbsp;&nbsp;</td>
				<td width="80" align="center"  bgcolor="#ADD8E6"></td>
				</tr>
			</table>
			<br/>
		</div>
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>职务设置</strong></h3>
			</div>
			<div class="panel-body">
					<form name="query_post" action="<%=basePath %>empServlet?arg=setPost" method="post">
		<!-- 员工的id隐藏，便于获得参数 -->
		<input type="hidden" name="emp_id" value="${emp.emp_id }"/>
			<p>
				<label>
					&nbsp;&nbsp;&nbsp;当前职务：
				</label>&nbsp;&nbsp;&nbsp;
				<c:if test="${emp.emp_post=='manager' }"><input name="emp_opost" type="text" value="经理"/></c:if>
				<c:if test="${emp.emp_post=='minister' }"><input name="emp_opost" type="text" value="部长"/></c:if>
				<c:if test="${emp.emp_post=='employer' }"><input name="emp_opost" type="text" value="普通员工"/></c:if>
			</p>
			<p>
				<label>
					&nbsp;&nbsp;&nbsp;修改职务：
				</label>&nbsp;&nbsp;&nbsp;
				<select name="emp_post" style="width:100" >
					<option value="manager">经理</option>
					<option value="minister">部长</option>
					<option value="employer">普通员工</option>
				</select>
			</p>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
			<input type="submit" value="确定" onclick="return checkText()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置"/>
 		<br/>
		</form>
			</div>
		</div>
	</div>
	
		</div>
	</body>
</html>