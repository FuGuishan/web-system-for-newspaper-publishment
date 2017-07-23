<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li class="active">首页</li>
		</ol>
	</div>
	<hr/>
	<div class="function-panel">
		<div style="width:590px; float:left;" class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>系统简介</strong></h3>
			</div>
			<div class="panel-body">
				<p>报刊发行业务系统POMS采用三层机构体系（数据库服务器／应客户端），数据库服务器和应用分布在企业中心局域网上，客户端存广连接。</p>
				<P>POMS通过在后端的数据综合处理提供给前一致。为浏览器模式，同时提供远程客户端的接入。</P>
				<P>POMS涵盖了对组织机构、业务流程、管理运做及技术支撑等体系的分析设计，以客户关系管理念为基础，用提供了客资料、订阅业务零售分发运输投递业务、诉处理人事绩效财管决策支 持等功能持，实现了收订、缴款复印、打包运输投递的全过程跟踪管理 。</P>
			</div>
		</div>
		<div style="width:390px; float:left; margin-left:20px" class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>系统简介</strong></h3>
			</div>
			<div class="panel-body">
				<p>POMS由不同的功能子系统组成，每个子系统都是一个相关职能的业务组合，中心站管理子系统、发行站管理子系统、分发站管理子
					系统、财务管理子系统。相互支持和配合，共同执行一个完整的业务流程。在这个平台上，POMS使系统功能业务发展紧密联系，满足企业的发展需要。</P>
			</div>
		</div>
	</div>
	<div style="width:660px; position:relative; top:300px; left:360px">
		<img src="img/right-background.png"/>
	</div>
</body>
</html>

