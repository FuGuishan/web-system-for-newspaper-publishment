<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="hit.poms.bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:useBean id="pager" class="hit.poms.util.Page" scope="page"></jsp:useBean>
<%
int currentrecord=0;
@SuppressWarnings("unchecked")
List<TotalprintBean> list=(List<TotalprintBean>)getServletContext().getAttribute("TotalprintBean");
pager.setTotalrecord(list.size());
pager.setTotalpage(list.size(), pager.getPagesize());
if(request.getParameter("currentrecord")!=null){
	currentrecord=Integer.parseInt(request.getParameter("currentrecord"));
	pager.setCurrentrecord(currentrecord);
	pager.setCurrentpage(currentrecord,pager.getPagesize());
}
List<TotalprintBean> sub=null;
if(currentrecord==0&&list.size()>pager.getPagesize()){
	sub=list.subList(0, pager.getPagesize());
}
if(currentrecord==0&&list.size()<=pager.getPagesize()){
	sub=list.subList(0, list.size());
}
if(pager.getCurrentrecord()+pager.getPagesize()<list.size()){
	sub=list.subList(pager.getCurrentrecord(),pager.getCurrentrecord()+pager.getPagesize());
}
else{
	sub=list.subList(pager.getCurrentrecord(), list.size());
}
%>
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
  <body>
  <div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">基本信息管理</a></li>
		  <li class="active">部门设置</li>
		</ol>
	</div>
	<hr />
	
 <div class="function-panel">
     <hr /><br />
    
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>总数表</strong>
       <button onclick="window.location.href='Yinshuatotal'">刷新</button>
		</div>
	
			<table class="table table-bordered table-hover">
				<tr>
			       <th>分社名称</th>
                   <th>分社编号</th>
			       <th>报刊名称</th>
			       <th>报刊编号</th>
			       <th>需要印刷数量</th> 
			    </tr>
			    <%if(sub!=null){
			    for(TotalprintBean bean:sub ){
			    %>
			    
				<tr>
					<td ><%=bean.getSub_name() %></td>
					<td><%=bean.getSub_id() %></td>
					<td><%=bean.getNewspaper_name() %></td>
					<td><%=bean.getSub_id() %></td>
					<td><%=bean.getCount() %></td>
				</tr><%} }%>
			</table>
						<center>
<br>
<span><font size="4">总<%=pager.getTotalrecord() %>条记录|总<%=pager.getTotalpage() %>页|当前
<%=pager.getCurrentpage()+1 %>页|每页<%=pager.getPagesize() %>条|
<%
if(pager.getCurrentrecord()-pager.getPagesize()<0){
	out.print("首页|");
}
else{
	out.print("<a href='huizong.jsp?currentrecord="+(pager.getCurrentrecord()-pager.getPagesize())+"&pagesize="+pager.getPagesize()+"'>上一页</a>|");
}
if(pager.getCurrentrecord()+pager.getPagesize()>=pager.getTotalrecord())
	out.print("尾页");
else{
	out.print("<a href='huizong.jsp?currentrecord="+(pager.getCurrentrecord()+pager.getPagesize())+"&pagesize="+pager.getPagesize()+"'>下一页</a>|");
}
%>
</font></span></center>			
		</div>
	</div>
  </body>
</html>
