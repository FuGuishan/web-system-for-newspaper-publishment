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
		  <li><a href="#">Ͷ�ݹ���</a></li>
		  <li class="active">Ƿ���ӡ</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>������ӡҳ��</strong></h3>
			</div>
			<div class="panel-body">
				<h2 align="center">Ƿ��֪ͨ</h2>
				<c:if test="${list==null}">
				û�в�ѯ�����
				</c:if>
				<c:forEach var="user" items="${list}">
				�û�&nbsp;&nbsp;${user.customer_name }&nbsp;&nbsp;(ID��${user.customer_id })��<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				ǩ������&nbsp;&nbsp;ID��${user.order_id }��δ֧����<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				���ı�����&nbsp;&nbsp;${user.pub_name }&nbsp;&nbsp;��ID��${user.pub_id }����<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Ӧ�ɽ�&nbsp;&nbsp;${user.pub_money * user.pub_need_num }&nbsp;&nbsp;Ԫ��<br/>
				<br/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				�ͻ���ַ��&nbsp;&nbsp;${user.customer_address }<br/>
				<!-- 
				����ID��${user.order_id }<br/>
				����״̬��δ֧��<br/>
				�ͻ�ID��${user.customer_id }<br/>
				�ͻ�������${user.customer_name }<br/>
				����ID��${user.pub_id }<br/>
				�������ƣ�${user.pub_name }<br/>
				Ƿ���<br/>
				�ͻ���ַ��${user.customer_address }<br/>
				 -->
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>

