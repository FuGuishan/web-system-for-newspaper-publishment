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
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
	
	<script language="javascript">
		function chkety(){
			if(document.form1.customer_id.value==""){
				alert("��ͻ���Ų���Ϊ�գ�");
				return false;
			}else{
				return true;
			}
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��ͻ�����</a></li>
		  <li class="active">��ͻ�������ѯ</li>
		</ol>
	</div>
	
	
	<div class="function-panel">
	<form class="form-horizontal" action="bigClientManager_PayServlet?arg=allquery" method="post" name="form1" onsubmit="return chkety()">
		<br/>
		<label>��ͻ���ţ�&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer_id"/><br/><br/>
		<label>������ţ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="order_id"/>
		&nbsp;&nbsp;&nbsp;
		<input name="" type="submit" value="��ѯ" />
		
		<br />
		<c:if test="${list==null}">
			<br/><br/>
			<label>û�в�ѯ�����</label>
		</c:if>
		<c:if test="${list!=null}">
		<table width="1000px" style="margin-top:10px" class="table table-bordered table-hover">
				<tr>
					<th>�ͻ�����</th>
					<th>�������</th>
					<th>����״̬</th>
					<th>�Ѹ����</th>
					<th>Ӧ�����</th>
					<th>����</th>
				</tr>
				<c:forEach var="user" items="${list}">
				<tr>
					<td>${user.customer_name }</td>
					<td>${user.order_id }</td>
					<td>
						<c:if test="${user.if_paied=='1'}">��֧��</c:if>
						<c:if test="${user.if_paied=='0'}">δ֧��</c:if>
					</td>
					<td>${user.paied_money }</td>
					<td>${user.pub_money*user.pub_need_num-user.paied_money }</td>
					<td>
						<a href="<%=basePath %>bigClientManager_PayServlet?arg=todetail&order_id=${user.order_id }">����</a>
					</td>
				</tr>
				</c:forEach>
		</table>
		</c:if>
	</form>
</div>
	
	
	
</body>
</html>

