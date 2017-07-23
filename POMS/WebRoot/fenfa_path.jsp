<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	function checksubmit(){
	var ch=document.getElementsByName("spath");
	var i=0;
	var flag=false;
	//alert("asda");
	for(var k=0;k<ch.length;k++){
if(ch[k].checked)flag=true;
i=k;
		}
	if(!flag){alert("沒有选择！");return false;}
else{
	//alert(i);
	window.location.href="Addpath?tag="+i;
	return false;
	}
	}
	</script>
  </head>
<%!
List<String> tranpath =new ArrayList<String>();
 %>
  <body>
 <%
 tranpath=(List<String>)request.getAttribute("path");
  %>
  <form action="gettransportpath" method="post">
 <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>路线列表</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
			<li ><a href="" target="main" onclick=" return checksubmit()">指定路线为运输路线</a></li>
		<!--  	<li ><a href="zhongxin_setting_add.jsp?" target="main">添加节点</a></li>-->
		</ul>
	</div>
		</div>
		<div class="panel-body">
			<p> 从<select id="from" name="from">
			<option>长春印刷厂</option>
			<option>广州印刷厂</option>
			<option>榆林印刷厂</option>
			</select>
			到<select id="to" name="to">
			<option>德惠分站</option>
			<option>九台</option>
			<option>黑龙江第一分站</option>
			<option>报社总站</option>
			</select>
			
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　<BUTTON  type="submit">搜索</BUTTON></SPAN></p>

		</div>
		</div>
				<%if(tranpath!=null){ 
int i=1;
getServletContext().setAttribute("newpath",tranpath);
String str[];

%>
<% for(String temp:tranpath){
str=temp.split("，");
System.out.println(temp);
System.out.println(str[0]);
%>
		<div class="panel-body">
<input type=radio name="spath" id="spath" value="<%=i %>"/>第<%=i %>条路径
		</div>

			<table class="table table-bordered table-hover">
				<tr>
				<th>始发地</th>	
				<th>目的地</th>
				<th>里程数</th>
				</tr>
<%for(int k=0;k<str.length-2;k=k+2){ %>
		<tr>
		<td><%=str[k] %></td>
		<td><%=str[k+2] %></td>
		<td><%=str[k+1] %>公里</td>
		</tr>	<%} %>
			</table>
			<%i++;} }%>	
	</div>	
      	</form>
  </body>
</html>
