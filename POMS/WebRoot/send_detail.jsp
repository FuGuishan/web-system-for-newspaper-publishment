<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>

		<title>接受消息</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
			<link rel="stylesheet" type="text/css" href="css/right.css">
				<link rel="stylesheet" type="text/css" href="css/receive.css">
	</head>
<script>
     function lastPage(){
      window.location.href="informMessageServlet?mode=viewFrom";   


     } 
</script>
	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="index.jsp">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					接收消息
				</li>
			</ol>
			<hr />
		</div>
		
		<c:if test="${detailmessage1 == null}">
				没有查询结果！
		</c:if>
		<c:if test="${detailmessage1 != null}">
		
		<div class="function-panel">
			<form id="form1" class="form-horizontal" name="form1" method="post"
				action="informMessageServlet?mode=mark&inform_id=${detailmessage.inform_id}" >
				<p>
					<label>
						来自：
					</label>
					<input name="receive_text" type="text" id="receive_text" size="30"
						maxlength="20"  readonly="readonly" value="${detailmessage1.send_emp_id}"/>
						
					<br />
				</p>

				<hr />

				<label>
					接收内容：
				</label>
				<p>
					<textarea name="receive_text_area_name" id="receive_text_area_id" readonly="readonly" >
					${detailmessage1.content}
					
					</textarea>
				</p>
				<br />
				<div class="form-group">
					
					<div>
						<button type="button" class="btn btn-default" name="back" type="button" id="" onclick="javascript:history.go(-1) ">
							返回
						</button>
					</div>
				</div>
			</form>
		</div>
		</c:if>
	</body>
</html>