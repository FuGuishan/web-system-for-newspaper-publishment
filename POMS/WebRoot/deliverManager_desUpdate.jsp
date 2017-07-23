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
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	
	<script language="javascript">
		function chkdes(){
			if(document.form1.destination.value==""){
				alert("投递段地址不可为空！");
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
		  <li><a href="#">首页</a></li>
		  <li><a href="#">投递管理</a></li>
		  <li class="active">投递段管理</li>
		</ol>
	</div>
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><strong>修改投递段</strong></h3>
			</div>
			<div class="panel-body">
				<form action="deliverManager_desManagerServlet?arg=update" method="post" name="form1"  onsubmit="return chkdes()">
					投递段ID：<input type="text" value="${de.des_id}" name="des_id" readonly/>
					投递段地址：<input type="text" size="50" name="destination" value="${de.destination }"/>
					<input type="submit" value="修改"/>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

