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
			if(document.form1.emp_id.value==""||document.form1.des_id.value==""){
				alert("Ͷ��ԱID��Ͷ�ݶ�ID����Ϊ�գ�");
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
		  <li><a href="#">Ͷ�ݹ���</a></li>
		  <li class="active">Ͷ�ݶι���</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>����Ͷ��Ա</strong></h3>
			</div>
			<div class="panel-body">
				<form action="deliverManager_desManagerEmpServlet?arg=add" method="post" name="form1"  onsubmit="return chkdes()">
					Ͷ�ݶ�ID��<input type="text" name="des_id" />
					<font color="red">${msg1 }</font>
					Ͷ��ԱID��<input type="text" name="emp_id" />
					<font color="red">${msg2 }</font>
					<input type="submit" value="����"/>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
