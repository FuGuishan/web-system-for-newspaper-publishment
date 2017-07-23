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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/top.css"/>
</head>

<body>
	<div class="top-logo">
		<img src="<%=basePath %>img/top-logo.png"/>
	</div>
	<div class="top-menu">
		<ul>
			<li><a href="index.jsp" target="_top"><img src="<%=basePath %>img/home-button.png" alt="home" /></a></li>
			<li><a onclick="history.back()"><img src="<%=basePath %>img/pre-button.png" alt="pre" /></a></li>
			<li><a onclick="history.forward()"><img src="<%=basePath %>img/next-button.png" alt="next"/></a></li>
			<li><a href="LogoutServlet?type=exit&id=<%=getServletContext().getAttribute("empid")%>" target="_top"><img src="<%=basePath %>img/exit-button.png" alt="exit"/></a></li>
		</ul>
	</div>
	<div class="top-date">
		今天是: <script language=JavaScript>
			today=new Date();
			function initArray(){
			this.length=initArray.arguments.length
			for(var i=0;i<this.length;i++)
			this[i+1]=initArray.arguments[i] }
			var d=new initArray(" 星期日"," 星期一"," 星期二"," 星期三"," 星期四"," 星期五"," 星期六");
			document.write(today.getFullYear(),"-",today.getMonth()+1,"-",today.getDate()," ",d[today.getDay()+1]);
		</script>
	</div>
</body>
</html>
