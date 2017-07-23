<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>发送消息</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/right.css">
		<link rel="stylesheet" type="text/css" href="css/send.css">
	</head>
<script>
		function cheSend(){
				if(document.sendform.send_text_name.value ==""){
					alert("请输入发件人");
					return false;
				}
				else if(document.sendform.send_text_area.value ==""){
					alert("请输入消息");
					return false;
				}
				else
				return true;


		}
</script>
	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp">首页</a></li>
		  <li><a href="#">中心站管理</a></li>
		  <li class="active">发送消息</li>
		</ol>
	</div>
	<hr/>
		<div class="function-panel">
		
		<form id="sendform" name="sendform" method="post" action="informMessageServlet?mode=send">
			<p>
				<label>发送至：</label>
				<input name="send_text_name" type="text" id="send_text" size="30"
					maxlength="20" placeholder="请输入接受者的编号" />
						</button>
				<br>
			</p>
			<hr />			
			<label>发送内容：</label>
			<p>
				<textarea name="send_text_area" cols="45" rows="10"
					id="send_text_area_id"></textarea>
			</p>
			<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="" onClick="return cheSend()">
							发送
						</button>
					</div>
					<div>
						<button type="button" class="btn btn-default" name="back" type="button" onclick="javascript:history.go(-1)">
							返回
						</button>
					</div>
				</div>
		</form>
		</div>
	</body>
</html>