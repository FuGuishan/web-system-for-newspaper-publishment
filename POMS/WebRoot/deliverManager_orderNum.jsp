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
			if(document.form1.sub_id.value==""){
				alert("��վID����Ϊ�գ�");
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
		  <li class="active">�µ�������</li>
		</ol>
	</div>
	
	
	<div class="function-panel">
	<form class="form-horizontal" action="deliverManager_orderNumServlet" method="post" name="form1" onsubmit="return chkety()">
		<br/>
		<label>��վID��&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="sub_id"/><br/><br/>
		<label>��ѯ���ڣ�</label><input type="text" name="send_time" id="date_send"/>
		<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_send", //�����ı����id����
				ifFormat :"%Y-%m-%d", //�������ڵĸ�ʽ
				showsTime :true, //�Ƿ���ʾʱ��
				onUpdate :null
			});
			</script>
		&nbsp;&nbsp;&nbsp;
		<input name="" type="submit" value="��ѯ" />
		
		<br />
		<c:if test="${list==null}">
			<br/><br/>
			<label>û�в�ѯ�����</label>
		</c:if>
		<c:if test="${list!=null}">
			<br/><br/>
			<label>�յ�����������${sum }&nbsp;&nbsp;&nbsp;��</label>
			<br/><br/>
		<table width="1000px" style="margin-top:10px" class="table table-bordered table-hover">
				<tr>
					<th>����ID</th>
					<th>��������</th>
					<th>ӡˢ��ID</th>
					<th>���乫˾</th>
					<th>��վID</th>
					<th>��վʱ��</th>
				</tr>
				<c:forEach var="user" items="${list}">
				<tr>
					<td>${user.pub_id }</td>
					<td>${user.pub_num }</td>
					<td>${user.print_id }</td>
					<td>${user.transport_company_name }</td>
					<td>${user.sub_id }</td>
					<td>${user.send_time }</td>
				</tr>
				</c:forEach>
		</table>
		</c:if>
	</form>
</div>
	
	
	
</body>
</html>

