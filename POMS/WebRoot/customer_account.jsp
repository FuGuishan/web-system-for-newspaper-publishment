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
			if(document.form1.pay_in_money.value==""){
				alert("����д֧����");
				return false;
			}else{
				var reg1 =  /^\d+$/; 
				if(document.form1.pay_in_money.value.trim().match(reg1) == null){  
					alert("��ʽ����ȷ��");
					return false;
				}else{
					if(confirm("ȷ���ͻ���֧����")){
						return true;
					}
					else{
						return false;
					}
				}
			}
		}
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��ͻ�����</a></li>
		  <li class="active">��ͻ��ɿ�</li>
		</ol>
	</div>
	
	
	<div class="function-panel">
	<form class="form-horizontal" action="bigClientManager_PayServlet?arg=update&order_id=${bc.order_id }&left_money=${bc.pub_money*bc.pub_need_num-bc.paied_money }&paied_money=${bc.paied_money }&customer_id=${bc.customer_id }&order_money=${bc.pub_money*bc.pub_need_num }" method="post" name="form1" onsubmit="return chkety()">
		<br/>
		<label>��ͻ�������&nbsp;&nbsp;&nbsp;&nbsp;</label>${bc.customer_name} <br/><br/>
		<label>������ţ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>${bc.order_id } <br/><br/>
		<label>�����ܶ�:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>${bc.pub_money * bc.pub_need_num } <br/><br/>
		<label>�Ѹ����:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>${bc.paied_money } <br/><br/>
		<label>Ӧ�ɽ��:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>${bc.pub_money*bc.pub_need_num-bc.paied_money } <br/><br/>
		<label>�ͻ�֧�����:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" name="pay_in_money"/>
		&nbsp;&nbsp;&nbsp;
		<input  type="submit" value="֧��" />&nbsp;&nbsp;*֧�����Ϊ������
	</form>
</div>
	
	
	
</body>
</html>

