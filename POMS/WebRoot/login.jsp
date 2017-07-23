<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>
function c(){
	var password=document.getElementById("password").value;
	var username=document.getElementById("username").value;
	if(username==""){
		alert("请输入用户名！");
		return false;
	}
	if(password==""){
		alert("请输入密码！");
		return false;
	}
	return true;
}
/*获取用户信息的cookie值*/
function getCookie(){
	var username = document.getElementById("username").value;
	var pw = document.getElementById("password");
	var re_pw = document.getElementById("remenber_pw");
	var arrstr = document.cookie.split(";");
	for(var i=0;i<arrstr.length;i++){
		var temp=arrstr[i].split("=");
		if((temp[0]-0)==(username-0)){
			var getcookie = temp[1].split(" ");
			var getpw = getcookie[1];
			var flag = parseInt(getcookie[2]);
			if(flag==1){
				pw.value = getpw;
				re_pw.checked = true;
			}
			else pw.value = null;
		}
	}
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>报刊管理系统 -- 登录页面</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
</head>
<body>
<div class="top">
	<div class="top-logo">
		<img src="img/login-top-logo.png" width="400px" height="60px"/>
	</div>
</div>
<div class="login-box">
	<div class="login-box-title">
		<img src="img/login-box-title.png"/>
	</div>
	<div class="login-box-tips">
		<p>
		请您在下方填写正确的账户以及对应密码以登录本系统，如有疑问请联系工作人员。<br/><br/>
		<font color="red" size="4">${message }</font>
		</p>
	</div>
	<div class="login-form">
		<form class="form-horizontal" action="<%=basePath %>loginServlet" method="post" onsubmit="return c()">
		<div class="form-group">
			<label class="col-sm-2 control-label">账号：</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="username" name="username"  onchange="getCookie()" placeholder="请输入您的账号"/>
			</div>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label">密码：</label>
		<div class="col-sm-7">
		<input type="password" class="form-control" id="password" name="password" placeholder="请输入您的密码"/>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="remenber_pw" name="remenber_pw" value="1"/> 记住密码
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4">
				<button type="submit" class="btn btn-default">登录</button>
    		</div>
    		<div class=" col-sm-4">
				<button type="reset" class="btn btn-default" >重置</button>
    		</div>
  		</div>
		</form>
	</div>
</div>
<div class="foot">
</div>
</body>
</html>
