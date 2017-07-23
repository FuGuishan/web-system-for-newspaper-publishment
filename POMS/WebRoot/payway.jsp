<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
  </head>

  <body>
  <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��Ʒ����</a></li>
		  <li class="active">��������</li>
		  <li class="active">�ͻ�����</li>
		</ol>
	</div>
	<hr />
 <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>������</strong>
		</div>
		<div class="panel-body">
		<form action="<%=basePath %>searchServlet?arg=ToOrder_pub" method="post">
		<% String pub_id = request.getParameter("pub_id");%>
			<table class="table table-bordered table-hover">
				<tr>
					<td>������</td>
					<td><input class="inputbg" size=30 type="text" name="pub_id" value="<%=pub_id %>" readonly></input></td>
				</tr>
				<tr>
					<td>������ͻ����</td>
					<td><input class="inputbg" size=30 type="text" name="customer_id" pattern="^[0-9]{1,10}$"></input></td>
				</tr>
			</table>
			<span style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; padding-top: 5px">
			<button  type="submit">����</button>
			</span>
		</form>
		</div>
		</div>
		<hr/>
		<c:if test="${flag==false }">�޴˿ͻ���</c:if>
	</div>
  </body>
</html>
