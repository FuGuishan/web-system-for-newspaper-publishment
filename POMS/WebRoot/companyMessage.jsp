<%@ page language="java" import="java.util.*" pageEncoding="GB18030"
import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	


  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">基本信息管理</a></li>
		  <li class="active">公司信息</li>
		</ol>
    </div>
    <hr />
    <div class="function-panel" align="center">
    	<form action = "companyMessage" method = "post">
    	<c:if test="${list3 == null}">
				没有查询结果！
			</c:if>
		<c:if test="${list3 != null}">
    	<table class="table table-bordered table-hover">
    			<tr style="background-color:#F6F6F6">
					<td width="200px" align="center">类别</td>
					<td width="200px" align="center">内容</td>
					<td width="200px" align="center">操作</td>
				</tr>
				<c:forEach var="companyMessage" items="${list3}">
					<tr>
						<td align="center">${companyMessage.type_1}</td>
						<td align="center">${companyMessage.content_1}</td>
						<td align="center" rowspan="5">
							<a href="<%=basePath %>updateServlet?arg=toUpdate">修改</a>
						</td>
					</tr>
					<tr>
						<td align="center">${companyMessage.type_2}</td>
						<td align="center">${companyMessage.content_2}</td>
					</tr>
					<tr>
						<td align="center">${companyMessage.type_3}</td>
						<td align="center">${companyMessage.content_3}</td>
					</tr>
					<tr>
						<td align="center">${companyMessage.type_4}</td>
						<td align="center">${companyMessage.content_4}</td>
					</tr>
					<tr>
						<td align="center">${companyMessage.type_5}</td>
						<td align="center">${companyMessage.content_5}</td>
					</tr>
				</c:forEach>
			</table>
			</c:if>
    	</form>
    </div>
  </body>
</html>
