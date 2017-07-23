<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="hit.poms.bean.*"%>
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
	<script type="text/javascript">
	function checkword(){
   var c=document.getElementById("searchword");
    if(c.value==null||c.value==""){
alert("请输入关键字！");return false;

       }
 else{
return true;
      }
		}
	</script>
  </head>

  <body>
  <%!
  List<transportBean> list=new ArrayList<transportBean>();
   %>
   <%
   list=(List<transportBean>)request.getAttribute("transport");
    %>
  <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">基本信息管理</a></li>
		  <li class="active">运输单位设置</li>
		</ol>
	</div>
	<hr />
	
 <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>友盟运输公司列表</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
			<li ><a href="zhongxin_setting_add.jsp" target="main">添加运输公司</a></li>
   			<li><a href="<%=basePath %>transportsearch" target="main"">查看全部</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
		<form action="transportsearch?type=search" method="post">
			<p> <label>公司名称：</label> <INPUT class=inputbg size=30 name="searchword" id="searchword">
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　<BUTTON  onclick="return checkword()">搜索</BUTTON></SPAN></p></form>
		</div>
			<table class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th width="120px">公司名称</th>
					<th width="120px">负责人</th>
					<th width="220px">负责人联系方式</th>
					<th>公司地点</th>
					<th width="120px">可用时段</th>
					<th width="120px">操作</th>
				</tr>
				<%if(list!=null){ 
				for(transportBean bean:list){
				String str[]=bean.getDavitime().split("#");
				%>
				<tr>
					<td><%=bean.getCompname() %></td>
					<td><%=bean.getLeadername() %></td>
					<td><%=bean.getLeadercontract() %></td>
					<td><%=bean.getAddress() %></td>
					<td>
					<%for (int i=0;i<str.length;i++){ %>
					<%=str[i]%>&nbsp;
					<%} %>
					</td>
					<td>
					<a href="zhongxin_setting_edit.jsp?id=<%=bean.getId() %>" target="main">编辑</a>
					&nbsp;&nbsp;
					<a href="<%=basePath %>addTransport?type=delete&id=<%=bean.getId() %>" target="main" onclick="return confirm('确认删除吗?')">删除</a>
					</td>
				</tr><%} }%>
			</table>
		</div>
	</div>
  </body>
</html>
