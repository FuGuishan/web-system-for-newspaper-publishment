<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
		  <li class="active">��ҳ</li>
		</ol>
	</div>
	<hr/>
	<div class="function-panel">
		<div style="width:590px; float:left;" class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>ϵͳ���</strong></h3>
			</div>
			<div class="panel-body">
				<p>��������ҵ��ϵͳPOMS�������������ϵ�����ݿ��������Ӧ�ͻ��ˣ������ݿ��������Ӧ�÷ֲ�����ҵ���ľ������ϣ��ͻ��˴�����ӡ�</p>
				<P>POMSͨ���ں�˵������ۺϴ����ṩ��ǰһ�¡�Ϊ�����ģʽ��ͬʱ�ṩԶ�̿ͻ��˵Ľ��롣</P>
				<P>POMS�����˶���֯������ҵ�����̡���������������֧�ŵ���ϵ�ķ�����ƣ��Կͻ���ϵ������Ϊ���������ṩ�˿����ϡ�����ҵ�����۷ַ�����Ͷ��ҵ���ߴ������¼�Ч�ƹܾ���֧ �ֵȹ��֣ܳ�ʵ�����ն����ɿӡ���������Ͷ�ݵ�ȫ���̸��ٹ��� ��</P>
			</div>
		</div>
		<div style="width:390px; float:left; margin-left:20px" class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>ϵͳ���</strong></h3>
			</div>
			<div class="panel-body">
				<p>POMS�ɲ�ͬ�Ĺ�����ϵͳ��ɣ�ÿ����ϵͳ����һ�����ְ�ܵ�ҵ����ϣ�����վ������ϵͳ������վ������ϵͳ���ַ�վ������
					ϵͳ�����������ϵͳ���໥֧�ֺ���ϣ���ִͬ��һ��������ҵ�����̡������ƽ̨�ϣ�POMSʹϵͳ����ҵ��չ������ϵ��������ҵ�ķ�չ��Ҫ��</P>
			</div>
		</div>
	</div>
	<div style="width:660px; position:relative; top:300px; left:360px">
		<img src="img/right-background.png"/>
	</div>
</body>
</html>

