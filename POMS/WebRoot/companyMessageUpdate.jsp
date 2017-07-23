<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公司信息修改</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	

  <script>
		function check(form){
			var type_1=form.type_1.value;
			var type_2=form.type_2.value;
			var type_3=form.type_3.value;
			var type_4=form.type_4.value;
			var type_5=form.type_5.value;
			var content_1=form.content_1.value;
			var content_2=form.content_2.value;
			var content_3=form.content_3.value;
			var content_4=form.content_4.value;
			var content_5=form.content_5.value;
			if(type_1== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(type_2== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(type_3== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(type_4== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(type_5== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(content_1== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(content_2== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(content_3== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(content_4== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			if(content_5== ""){
				alert("所有内容均不能为空!");
				return false;
			}
			return true;
		}
	</script>
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
    	<form action = "<%=basePath %>updateServlet?arg=update" method = "post" onsubmit="return check(this)">
    	<c:if test="${list4 != null}">
    		<table class="table table-bordered table-hover">
    		<tr>
    			<td align="center">类别</td>
    			<td align="center">内容</td>
    		</tr>
    		<c:forEach var="companyMessage1" items="${list4}">
					<tr>
						<td align="center"><input type="text" name="type_1" value="${companyMessage1.type_1}"/></td>
						<td align="center"><input type="text" name="content_1" value="${companyMessage1.content_1}"/></td>
					</tr>
					<tr>
						<td align="center"><input type="text" name="type_2" value="${companyMessage1.type_2}"/></td>
						<td align="center"><input type="text" name="content_2" value="${companyMessage1.content_2}"/></td>
					</tr>
					<tr>
						<td align="center"><input type="text" name="type_3" value="${companyMessage1.type_3}"/></td>
						<td align="center"><input type="text" name="content_3" value="${companyMessage1.content_3}"/></td>
					</tr>
					<tr>
						<td align="center"><input type="text" name="type_4" value="${companyMessage1.type_4}"/></td>
						<td align="center"><input type="text" name="content_4" value="${companyMessage1.content_4}"/></td>
					</tr>
					<tr>
						<td align="center"><input type="text" name="type_5" value="${companyMessage1.type_5}"/></td>
						<td align="center"><input type="text" name="content_5" value="${companyMessage1.content_5}"/></td>
					</tr>
			</c:forEach>
					 <tr>
				       	  <td colspan="2" align="center">
							<input type ="submit" value="修改" onclick="check()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type ="reset" value="重置"/>
						  </td>
       				</tr>
    		</table>
    		</c:if>
    	</form>
    	</div>
  </body>
</html>
