<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>报刊管理系统</title>
</head>
<frameset rows="30,*" frameborder="no" border="0" framespacing="0">
	<frame src="top.jsp" noresize="noresize" frameborder="no" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main"/>
	<frameset cols="200,*">
    	<frame src="left.jsp" name="left_nav" noresize="noresize" marginwidth="0" marginheight="0" frameborder="no" scrolling="no" target="main"/>
        <frame src="right.jsp" name="main" frameborder="no" scrolling="auto" marginwidth="0" marginheight="0" target="_self"/>
    </frameset>
</frameset><noframes></noframes>
<body>
</body>
</html>
