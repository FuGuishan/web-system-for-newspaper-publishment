<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%= basePath%>"/>
    <title>My JSP 'index.jsp' starting page</title>
	 <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	<style>   
     .side-bar{
     	width:150px;
     	height:auto;
     	float:left;
     	background-color:#F6F6F6;
     }
     
     #active-a .active a{
     background-color:#39a7e2;
     }
     
     .side-bar ul li a{
     	color:black;
     }
     
     .right-content{
     	margin-left:50px;
     	width:800px;
     	height:auto;
     	float:left;
     }
    
</style>
 </head>
  
<body>
<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品订购</a></li>
		  <li class="active">订购中心</li>
		</ol>
	</div>
	<hr />
	<div class="function-panel">
		<div class="side-bar">
			<ul id="active-a" class="nav nav-pills nav-stacked">
				<li <c:if test="${kind == '城市报纸'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=城市报纸">城市报纸</a>
				</li>
				<li <c:if test="${kind == '财经生活'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=财经生活">财经生活</a>
				</li>	
				<li <c:if test="${kind == '体育风云'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=体育风云">体育风云</a>
				</li>	
				<li <c:if test="${kind == '游戏世界'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=游戏世界">游戏世界</a>
				</li>	
				<li <c:if test="${kind == 'IT速报'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=IT速报">IT速报</a>
				</li>	
				<li <c:if test="${kind == '小说连载'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=小说连载">小说连载</a>
				</li>
				<li <c:if test="${kind == '电影快报'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=电影快报">电影快报</a>
				</li>
				<li <c:if test="${kind == '学习咨询'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=学习咨询">学习咨询</a>
				</li>		
				<li <c:if test="${kind == '健康生活'}">class="active"</c:if> >
					<a href="<%=basePath %>searchServlet?arg=Order_pubQuery&kind=健康生活">健康生活</a>
				</li>	
			</ul>
		</div>
		<div class="right-content">
		<form class="form-horizontal" name="changeform" action="ok.html" method="post">
				<table class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th>刊物编号</th>
					<th>刊物名称</th>
					<th>刊期</th>
					<th>发行社</th>
					<th>操作</th>
				</tr>
			<c:if test="${list != null}">
					<c:forEach var="pub_message" items="${list}">
						<tr>
							<td>${pub_message.pub_id }</td>
							<td>${pub_message.pub_name }</td>
							<td>${pub_message.pub_time }</td>
							<td>${pub_message.delivery_unit }</td>
							<td>
								<a href="<%=basePath %>payway.jsp?pub_id=${pub_message.pub_id }" target="main">订购</a>
							</td>
						</tr>
					</c:forEach>
			</c:if>
				
				
			</table>
		</form>
		</div>
	</div>
  </body>
</html>
