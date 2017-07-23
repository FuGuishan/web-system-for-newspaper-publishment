<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType ="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<style>
	   form{
	      padding:20px;
	   }
	</style>
  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="index.jsp "target="_parent">首页</a></li>
		  <li><a href="#">监督管理</a></li>
		  <li class="active">建议管理</li>
		</ol>
    </div>
    <form action = "<%=basePath %>callCenterHandlerServlet?arg=modifyAdviceType" method = "post">
                    建议类型<input type = "text" name = "advice_type" value = "${adviceType.advice_type }"/>
              <input type = "hidden" name = "advice_type_id" value = "${adviceType.advice_type_id}"/>
         <input type = submit value = "保存修改"/>
    </form>
  </body>
</html>
