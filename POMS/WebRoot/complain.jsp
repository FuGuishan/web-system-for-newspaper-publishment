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
	   p{
	      padding:20px;
	      color:red;
	      size:20px;
	   }
	</style>
  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="index.jsp">首页</a></li>
		  <li><a href="#">监督管理</a></li>
		  <li class="active">投诉管理</li>
		</ol>
    </div>
    <hr />
    <div class="function-panel">
	<strong>投诉管理:</strong>
	 <button class="btn btn-default" onclick="window.location.href='<%=basePath %>callCenterHandlerServlet?arg=toShowComplainReg'">
					登记投诉
	</button><br/><br/>
    </div>
    <div class="function-panel">
    	<form action = "<%=basePath %>callCenterHandlerServlet?arg=addComplainType" method = "post">
    		投诉类型：<input name="complain_type" type="text"/>
    		<input type="submit" class="btn btn-default" name="submit" id="" onclick="return confirm('确认添加？')" value = "添加">
    	</form>
    </div>
    <p>${message}</p>
    <div class="function-panel" align="center">
    	<form action = "" method = "post">
    	<table class="table table-bordered table-hover">
    			<tr>
					<td width="200px" align="center">类别</td>
					<td width="200px" align="center">操作</td>
				</tr>
			    <c:forEach var = "complain_type" items = "${complainType}">
			        <tr>
			        <td width="200px" align="center">${complain_type.complain_type }</td>
					<td align="center">
						<a href = "<%=basePath %>callCenterHandlerServlet?arg=toEditComplainType&complain_type_id=${complain_type.complain_type_id }">修改</a>&nbsp;
						<a href = "<%=basePath %>callCenterHandlerServlet?arg=delete&complain_type_id=${complain_type.complain_type_id}" onclick = "return confirm('你确认删除本记录吗？')">删除</a>
					</td>
					</tr>  
			    </c:forEach>
			</table>
    	</form>
    </div>
    <c:if test = "${modifyComplainTypeStatus == 'success'}">
        <script>
            alert("修改成功！");
        </script>
    </c:if>
    <c:if test = "${regComplainStatus == 'success'}">
        <script>
            alert("投诉成功！");
        </script>
    </c:if>
    <div class="function-panel" align="center">
    </div>
  </body>
</html>
