<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
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
		  <li class="active">建议管理</li>
		</ol>
    </div>
    <hr />
     <div class="function-panel">
	<strong>建议管理:</strong>
	 <button class="btn btn-default" onclick="window.location.href='<%=basePath %>callCenterHandlerServlet?arg=toShowAdviceReg'">
					登记建议
	</button><br/><br/>
    </div>
    <div class="function-panel">
    	<form action = "<%=basePath %>callCenterHandlerServlet?arg=addAdviceType" method = "post">
    		建议类型：<input name="advice_type" type="text"/>
    		<button type="submit" class="btn btn-default" name="submit" id="" onclick="return window.confirm('确认添加?');">
					添加
				</button><br/>
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
				<c:forEach var = "advice_type" items = "${adviceType}">
			        <tr>
			        <td width="200px" align="center">${advice_type.advice_type }</td>
					<td align="center">
						<a href = "<%=basePath %>callCenterHandlerServlet?arg=toEditAdviceType&advice_type_id=${advice_type.advice_type_id }">修改</a>&nbsp;
						<a href = "<%=basePath %>callCenterHandlerServlet?arg=deleteAdviceType&advice_type_id=${advice_type.advice_type_id}" onclick = "return confirm('你确认删除本记录吗？')">删除</a>
					</td>
					</tr>  
			    </c:forEach>
			</table>
    	</form>
    </div>
     <c:if test = "${modifyAdviceTypeStatus == 'success'}">
        <script>
            alert("修改成功！");
        </script>
    </c:if>
    <c:if test = "${regAdviceStatus == 'success'}">
        <script>
            alert("登记建议成功！");
        </script>
    </c:if>
  </body>
</html>
