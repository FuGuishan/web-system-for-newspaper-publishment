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
	
	<script language="javascript">
		function chkdes(){
			if(document.form1.destination.value!=""){
				if(confirm("��ȷ��Ҫ���Ӹ�Ͷ�ݶ���")){
					return true;
				}else{
					return false;
				}
			}else{
				alert("Ͷ�ݶε�ַ����Ϊ�գ�");
				return false;
			}
		}
		function chkemp(){
			if(document.form2.emp_id.value==""){
				alert("��ѯͶ��ԱID����Ϊ�գ�");
				return false;
			}else{
				return true;
			}
		}
		function toAdd(){
			window.location.href="deliverManager_desManageDesAdd.jsp"; 
		}
		function toAddEmp(){
			window.location.href="deliverManager_desEmpAdd.jsp";
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">Ͷ�ݹ���</a></li>
		  <li class="active">Ͷ�ݶι���</li>
		</ol>
	</div>
	
	<div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>Ͷ�ݶι���</strong></div>
		<div class="panel-body">
			<p>
				<label>Ͷ�ݶ�ά����</label><br/>
				<form action="deliverManager_desManagerQueryServlet" method="post">
					Ͷ�ݶ�ID��<input type="text" name="des_id"/>&nbsp;&nbsp;
					<input type="submit" value="��ѯͶ�ݶ�"/>&nbsp;&nbsp;&nbsp;
					<input type="button" value="����Ͷ�ݶ�" onclick="toAdd()"/>
					&nbsp;&nbsp;&nbsp;
					*ֱ�ӵ����ѯ����Ͷ�ݶ�
				</form>
			</p>
			<br/>
			<p>
				<label>Ͷ��Աά����</label><br/>
				<form action="deliverManager_desManagerEmpServlet" method="post" onsubmit="return chkemp()" name="form2">
					Ͷ��ԱID��<input type="text" name="emp_id"/>&nbsp;&nbsp;
					<input type="submit" value="��ѯͶ��Ա"/>&nbsp;&nbsp;&nbsp;
					<input type="button" value="����Ͷ��Ա" onclick="toAddEmp()"/>
				</form>
			</p>
			<br/>
		</div>
		
		<c:if test="${list1==null}">
			 <!--  &nbsp;&nbsp;&nbsp;û�в�ѯ�����-->
		</c:if>
		<c:if test="${list1!=null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>Ͷ�ݶ�ID</th>
					<th>Ͷ�ݶε�ַ</th>
					<th>Ͷ��Ա</th>
					<th>����</th>
				</tr>
				<c:forEach var="user" items="${list1}">
				<tr>
					<td>${user.des_id }</td>
					<td>${user.destination }</td>
					<td>${user.emp_id }</td>
					<td>
						<a href="<%=basePath %>deliverManager_desManagerServlet?arg=toupdate&des_id=${user.des_id}">�޸�</a>
						<a href="<%=basePath %>deliverManager_desManagerServlet?arg=delete&des_id=${user.des_id}" onclick="return confirm('��ȷ��Ҫɾ����Ͷ�ݶ���')">ɾ��Ͷ�ݶ�</a>
						<!-- <a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=toadd&des_id=${user.des_id}">����Ͷ��Ա</a> -->
					</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>	
		
		
		<c:if test="${list2==null}">
			<!--  &nbsp;&nbsp;&nbsp;û�в�ѯ�����-->
		</c:if>
		<c:if test="${list2!=null}">
			<table class="table table-bordered table-hover">
				<tr>
					<th>Ͷ��ԱID</th>
					<th>Ͷ�ݶ�ID</th>
					<th>Ͷ�ݶε�ַ</th>
					<th>����</th>
				</tr>
				<c:forEach var="user" items="${list2}">
				<tr>
					<td>${user.emp_id }</td>
					<td>${user.des_id }</td>
					<td>${user.destination }</td>
					<td>
						<a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=toupdate&des_id=${user.des_id}&emp_id=${user.emp_id}">�޸�</a>
						<a href="<%=basePath %>deliverManager_desManagerEmpServlet?arg=delete&des_id=${user.des_id}&emp_id=${user.emp_id}"">ɾ��</a>
					</td>
				</tr>
				</c:forEach>
			</table>
		</c:if>	
		</div>
	
</body>
</html>

