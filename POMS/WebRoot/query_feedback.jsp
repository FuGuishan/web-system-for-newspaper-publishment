<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>报刊管理系统</title>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/bootstrap.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/right.css" />
		<style>
body {
	line-height: 150%;
	padding: 20px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

a[href]:link,a[href]:visited {
	display: block;
	width: 120px;
	font-weight: bold;
	color: #FFFFFF;
	background-color: #bebebe;
	text-align: center;
	padding: 4px;
	text-decoration: none;
	text-transform: uppercase;
}

a[href]:hover,a[href]:active {
	background-color: #cc0000;
}

table,tr,td,th {
	padding: 10px;
}

input[type="button"] {
	float: left;
}

.content_complains {
	font-size: 20px;
}
</style>
	</head>

	<body>
		<div class="nav-bar">
			<ul>
				<li>
					<a href="query_feedback.jsp">反馈主页</a>
				</li>
				<li>
					<a href="<%=basePath %>callCenterHandlerServlet?arg=toQueryComplain">查看投诉</a>
				</li>
				<li>
					<a href="query_praise.jsp">查看表扬</a>
				</li>
				<li>
					<a href="query_advice.jsp">查看建议</a>
				</li>
			</ul>
			<hr />
			<br />
		</div>
	</body>
</html>
