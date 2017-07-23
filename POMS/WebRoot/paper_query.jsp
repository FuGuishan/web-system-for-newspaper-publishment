 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
	<%@page import="hit.poms.search.entity.*" %>
	<%@page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<jsp:useBean id="pager" class="hit.poms.util.Page" scope="page"></jsp:useBean>
<%
int currentrecord=0;
@SuppressWarnings("unchecked")
List<Pub_message> list=(List<Pub_message>)getServletContext().getAttribute("hehelist");
pager.setTotalrecord(list.size());
pager.setTotalpage(list.size(), pager.getPagesize());
if(request.getParameter("currentrecord")!=null){
	currentrecord=Integer.parseInt(request.getParameter("currentrecord"));
	pager.setCurrentrecord(currentrecord);
	pager.setCurrentpage(currentrecord,pager.getPagesize());
}
List<Pub_message> sub=null;
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
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>报刊设置</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/right.css"/>

	</head>
<script>
    function chkDate(){
      if(document.dateform.year.value==""){
           alert("请输入要查询的年份！");
           return false;
      }else return true; 


    }    



</script>
<body>
<div class="bread-crumb">
<ol class="breadcrumb">
  <li><a href="#">首页</a></li>
  <li><a href="#">中心站管理</a></li>
  <li class="active">报刊设置</li>
</ol>
</div>
<hr />

<div class="function-panel">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><strong>输入查询条件</strong> </h3>
		</div>
		<div class="panel-body">
			<form action="paperServlet?mode=query" method="post" name="query">
			<p>
				<label>
					报刊代码：
				</label>
				<input name="paper_id" type="text"/>
			</p>
			<p>
				<label>
					报刊名称：
				</label>
				<input name="paper_name" type="text"/>
			</p>
			<font color="#800000" size="2" style="margin-left:50px">注：无查询条件将显示所有报刊</font><br/><br/>
			<input style="margin-left:50px" type="submit" value="查询" />
			<input style="margin-left:50px" type="reset" value="重置"/>
			</form>		
			</div>
			</div>
			</div>
			<%if(sub==null) {%>
				没有查询结果！
		<%}else{ %>	
			<!-- 查询结果 -->	
		<div class="function-panel">
			<div class="panel panel-default">
				<div class="panel-heading">
				    <form action="paperServlet?mode=queryByDate" method="post" name="dateform" >
					<strong>查询结果</strong>
					<font style="margin-left:20px">时间筛选：</font>
					<select name="year">
					    <option value ="">--请选择--</option>
						<option value ="2008">2008</option>
						<option value ="2009">2009</option>
						<option value ="2010">2010</option>
						<option value ="2011">2011</option>
						<option value ="2012">2012</option>
						<option value ="2013">2013</option>
						<option value ="2014">2014</option>
					</select>&nbsp;年
					&nbsp;
					<select name="month">
					    <option value ="">--请选择--</option>
						<option value ="01">01</option>
						<option value ="02">02</option>
						<option value ="03">03</option>
						<option value ="04">04</option>
						<option value ="05">05</option>
						<option value ="06">06</option>
						<option value ="07">07</option>
						<option value ="08">08</option>
						<option value ="09">09</option>
						<option value ="10">10</option>
						<option value ="11">11</option>
						<option value ="12">12</option>
					</select>&nbsp;月
					<input style="margin-left:10px" type="submit" value="确定" onclick="return chkDate()"/>
					
					</form>
					<p>
					<a href="paper_add.jsp" target="main" style="margin-left:50px">添加报刊</a>
					</p>
				</div>
				<div class="panel-body">
					
					<table class="table table-bordered table-hover" id="query_result_emp">
						<tr style="background-color:#F6F6F6">
						    <th width="150px">报刊图片</th>
							<th width="80px">报刊代码</th>
							<th width="150px">报刊名称</th>
							<th width="150px">刊期</th>
							
							<th width="130px">当前发行费率</th>
							<th width="120px">当前定价</th>
							<th width="100px">优惠政策(1表示无折扣，“.”后面的数字表示折扣数)</th>
							<th>操作</th>
						</tr>
						<%for(Pub_message message:sub) {%>
				
						<tr>
						    <td><img src="<%=message.getImage() %>" alt="<%=message.getPub_name() %>" width="100" height="100"/></td>
							<td><%=message.getPub_id() %> </td>
							<td><%=message.getPub_name() %></td>
							<td><%=message.getPub_time() %></td>
							
							<td><%=message.getPub_release_rate() %></td>
							<td><%=message.getPub_price() %></td>
							<td>
							优惠详情  会员：<%=message.getDiscount1() %>
							大客户：：<%=message.getDiscount2() %>
							</td>
							<td>
							<a href="paperServlet?mode=search&id=<%=message.getPub_id() %>" >编辑</a>
							&nbsp;&nbsp;
							<a href="paperServlet?mode=delete&id=<%=message.getPub_id() %>" onclick="return confirm('您确认要删除本记录么？')">删除</a>
							</td>
						</tr>
						<%} %>
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
	out.print("<a href='paper_query.jsp?currentrecord="+(pager.getCurrentrecord()-pager.getPagesize())+"&pagesize="+pager.getPagesize()+"'>上一页</a>|");
}
if(pager.getCurrentrecord()+pager.getPagesize()>=pager.getTotalrecord())
	out.print("尾页");
else{
	out.print("<a href='paper_query.jsp?currentrecord="+(pager.getCurrentrecord()+pager.getPagesize())+"&pagesize="+pager.getPagesize()+"'>下一页</a>|");
}
%>
</font></span></center>
<br>
<center>
				</div>
			</div>
		</div>
	<%} %>
	</body>
</html>