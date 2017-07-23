<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="hit.poms.bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>My JSP 'zhongxin_setting_main.jsp' starting page</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
  </head>
<%!
List<Print_subBean> list=null;
%>
<%
list=(List<Print_subBean>)request.getAttribute("print_list");
%>
  <body>
		 <div class="function-panel">
		<div class="panel panel-default">

		<div class="panel-heading"><strong>印刷厂,分站关联表</strong>
					关系表&nbsp;&nbsp;&nbsp;<div class="btn-group">
			
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
			<li ><a href="department_people.jsp" target="main"></a></li>
   			<li><a href="print_sub" target="main"">刷新</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
		<form action="print_sub?tag=1" method="post">
	<input type="text" id="search" name="search">	  <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　  <BUTTON  type=submit>搜索</BUTTON></SPAN></p></form>
		</div>
			<table class="table table-bordered table-hover">
				<tr>
				<th>印刷厂编号</th>	
				<th>印刷厂名称</th>	
				<th>分站编号</th>
				<th>分站名称</th>
				<th>路线</th>
				</tr>
				
	<% if(list!=null&&list.size()>0) {
		for(Print_subBean bean:list){
			%>
			
						<tr>
						
						<td><%=bean.getPrint_id() %></td>	
						<td><%=bean.getPrint_name() %></td>
						<td><%=bean.getSub_id() %></td>
						<td><%=bean.getSub_name() %></td>	
						<td>
							<% if(bean.getPath()!=null){%>
					<table class="table table-bordered table-hover">
						<tr>
						<th>始发地</th>	
						<th>目的地</th>
						<th>里程数</th>
						</tr>
			<%
		
			String []str=bean.getPath().split("，");
			for(int k=0;k<str.length-2;k=k+2){ %>
				<tr>
				<td><%=str[k] %></td>
				<td><%=str[k+2] %></td>
				<td><%=str[k+1] %>公里</td>
				</tr>	<%}%>
						</table><%} else{%>
						没有指定路线
						<%} %>
						</td>
						</tr>
	<%} }%>
			</table>
		</div>
		</div>
  </body>
</html>
