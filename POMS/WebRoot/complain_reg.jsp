<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 投诉登记页面 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<script src="<%=basePath %>js/callcenter.js"></script>	
  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">监督管理</a></li>
		  <li class="active">投诉管理</li>
		</ol>
    </div>
    <hr />
   <div class="function-panel">
	<strong>投诉管理:</strong>
    <button  class="btn btn-default" onclick="window.location.href = '<%=basePath %>callCenterHandlerServlet?arg=toShowComplainType'">
					返回投诉管理
	</button>
    </div>
    <div class="function-panel" align="center">
    	<form action = "<%=basePath %>callCenterHandlerServlet?arg=regComplain" method = "post" onsubmit = "return validateComplain()">
    	<h3 align="left">投诉情况登记表</h3>
    		<table class="table table-bordered table-hover">
    			<tr>
    				<td align="right">所属地区:</td>
    				<td align="left"><input type="text" name="area" id = "area" value = "${complain.area}"/></td>
    			</tr>
    			<tr>
    				<td align="right">员工编号:</td>
    				<td align="left"><input type="text" name="employee_number" id = "employee_number" value = "${complain.employee_number}" />
    				    <c:if test = "${notExistEmp == 'notExist'}" >
    				         &nbsp;&nbsp;<font color = "red"> 没有该员工</font>
    				    </c:if>
    				    &nbsp;&nbsp;<font color = "red" >${employee_numberError}</font>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">顾客编号:</td>
    				<td align="left"><input type="text" name="customer_number" id = "customer_number" value = "${complain.customer_number}" />
    				    <c:if test = "${notExistCus == 'notExist'}">
    				         &nbsp;&nbsp;<font color = "red">&nbsp;没有该顾客</font>
    				    </c:if>
    				    &nbsp;&nbsp;<font color = "red">${customer_numberError}</font>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">投诉类型:</td>
    				<td align="left">
    					<select name="complain_type" style="width:220" id = "complain_type" >
    					<c:forEach var = "complain_type" items = "${complainType}">
							<option value = "${complain_type.complain_type}">${complain_type.complain_type}</option>  
					    </c:forEach>
							</select>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">回访电话:</td>
    				<td align="left"><input type="text" name="customer_tel" id = "customer_tel" value = "${complain.customer_tel}" /></td>
    			</tr>
    			<tr>
    				<td align="right">详细内容:</td>
    				<td align="left"><input type="textarea" style="width: 400px; height: 200px;" name="content_detail" id= "content_detail" value = "${complain.content_detail}"/></td>
    			</tr>
    			<tr>
    				<td align="right">
						<button type="submit" class="btn btn-default" name="submit" id="" onclick="">
					提交
				</button>
					</td>
    				<td align="left"><button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button><br/></td>
    			</tr>
    		</table>
    	</form>
    </div>
  </body>
</html>
