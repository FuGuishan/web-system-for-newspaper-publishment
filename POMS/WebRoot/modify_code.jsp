<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/right.css">
		<link rel="stylesheet" type="text/css" href="css/modify_code.css">
				<title>修改密码</title>
	</head>
	<script>
	function chkPwd(){
		     var retele = /^[A-Za-z0-9]+$/;
		     if(document.changeform.pwd.value.length<6){
			   alert("原密码位数错误，请重新输入!");
			   changeform.pwd.value="";
			  return false;
			 }
		     
		     else if (document.changeform.newpwd.value != document.changeform.repwd.value){
		    	 alert("新密码与确认密码不一致，请重新输入!");
		    	 changeform.newpwd.value="";
		    	 changeform.repwd.value="";
		    	 return false;
		     }
		     else if (document.changeform.newpwd.value.length<6){
		    	 alert("新密码应大于六位");
		    	 changeform.newpwd.value="";
		    	 changeform.repwd.value="";
		    	 return false;
		     }
		     else if(document.changeform.pwd.value == document.changeform.newpwd.value){
		    	 alert("原密码与新密码不能相同");
		    	 changeform.newpwd.value="";
		    	 changeform.repwd.value="";
		    	 return false;

		     }	     
		     else if (document.changeform.newpwd.value.search(retele) == -1 && document.changeform.newpwd.value !="") {
					alert("密码只能由英文字母或者数字组成，请重新输入！");
					document.changeform.newpwd.value="";
					document.changeform.repwd.value="";
					return false;
				}
		    else 
			    return true;
		    
		   }

</script>
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
					修改密码
				</li>
			</ol>
		</div>
		<hr />
			<div class="function-panel">
				<form class="form-horizontal" name="changeform" action="<%=basePath %>modifyCodeServlet" method="post">
					<table class="table table-bordered table-hover">
						<tr>
							<td>原密码：</td>
							<td><input type="password" name="pwd" type="text" /></td>
						</tr>
						<tr>
							<td>新密码：</td>
							<td><input   type="password" name="newpwd" type="text" /></td>
						</tr>
						<tr>
							<td>确认密码：</td>
							<td><input  type="password" name="repwd" type="text" /></td>
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
					
				</div>
				</form>
			</div>
	</body>
</html>