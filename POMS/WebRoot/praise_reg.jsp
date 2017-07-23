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
	<script src="<%=basePath %>js/callcenter.js"></script>	
  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="index.jsp">首页</a></li>
		  <li><a href="#">监督管理</a></li>
		  <li class="active">表扬管理</li>
		</ol>
    </div>
    <hr />
        <div class="function-panel">
	<strong>表扬管理:</strong>
	 <button class="btn btn-default" onclick="window.location.href='<%=basePath %>callCenterHandlerServlet?arg=toShowPraiseType'">
				返回
	</button><br/><br/>
    </div>
    <div class="function-panel" align="center">
    	<form action = "<%=basePath %>callCenterHandlerServlet?arg=regPraise" method = "post" onsubmit = "return validatePraise()">
    	<h3 align="left">表扬情况登记表</h3>
    		<table class="table table-bordered table-hover">
    			<tr>
    				<td align="right">所属地区:</td>
    				<td align="left"><input type="text" name="area" id = "area" value = "${praise.area}" /></td>
    			</tr>
    			<tr>
    				<td align="right">员工编号:</td>
    				<td align="left"><input type="text" name="employee_number" id = "employee_number" value = "${praise.employee_number}"/>
    				      &nbsp;&nbsp;<font color = "red">${employee_numberError}</font>&nbsp;&nbsp;
    				      <font color = "red">${notExistEmp}</font>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">顾客编号:</td>
    				<td align="left"><input type="text" name="customer_number" id = "customer_number" value = "${praise.customer_number}" />
    				     &nbsp;&nbsp;<font color = "red">${customer_numberError}</font>&nbsp;&nbsp;
    				      <font color = "red">${notExistCus}</font>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">表扬类型:</td>
    				<td align="left">
    					<select name="praise_type" style="width:220" id = "praise_type">
    					<c:forEach var = "praise_type" items = "${praiseType}">
							<option value = "${praise_type.praise_type}">${praise_type.praise_type}</option>  
					    </c:forEach>
							</select>
    				</td>
    			</tr>
    			<tr>
    				<td align="right">回访电话:</td>
    				<td align="left"><input type="text" name="customer_tel" id = "customer_tel" value = "${praise.customer_tel}"/></td>
    			</tr>
    			<tr>
    				<td align="right">详细内容:</td>
    				<td align="left"><input type="textarea" style="width: 400px; height: 200px;" name="content_detail" id = "content_detail" value = "${praise.content_detail}" /></td>
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
