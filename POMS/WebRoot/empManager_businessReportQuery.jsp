<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>��������ϵͳ</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">���¹���</a></li>
		  <li class="active">ҵ��ͳ��</li>
		  <li class="active">��ѯҵ��</li>
		</ol>
	</div>
	
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>��վҵ��ͳ��</strong></div>
		<div class="panel-body">
			<form action="empManager_businessReportQueryServlet" method="post">
				Ա��ID��<input type="text" name="emp_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="��ѯ"/>
				&nbsp;&nbsp;ֱ�ӵ����ѯ��ʾȫ��Ա��ҵ��
				</form>
		</div>
			<c:if test="${list==null}">
				&nbsp;&nbsp;&nbsp;û�в�ѯ�����
			</c:if>
			<c:if test="${list!=null}">
				<table class="table table-bordered table-hover">
					<tr>
						<th>Ա������</th>
						<th>Ա��ID</th>
						<th>�������</th>
						<th>��������</th>
						<th>������</th>
						<th>Ͷ����</th>
						<th>���ʱ��</th>
					</tr>
					<c:forEach var="user" items="${list}">
						<tr>
							<td>${user.emp_name }</td>
							<td>${user.emp_id }</td>
							<td>${user.pub_id }</td>
							<td>${user.pub_name }</td>
							<td>${user.emp_order }</td>
							<td>${user.emp_delivery }</td>
							<td>${user.fin_time }</td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
	
</body>
</html>

