 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*" errorPage=""%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	<script src="jsp/summary/calendar.js" type="text/javascript"></script>
	<link href="jsp/summary/calendar.css" type="text/css" rel="stylesheet">
	<script type="text/javascript">
	function checkChoose(){
		var time = document.getElementById("date_end").value;
		if(time=="选择日期查询"){
			alert("请选择时间");
			return false;
		}
		return true;
	}
	</script>	
  </head>

  <body>
  <form action="<%=basePath %>pubFmServlet">
  <div class="function-panel">
		<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>投递量统计</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
   			<li><a href="fm_deliver_count.jsp" target="main" onclick="window.print()">打印</a></li>
		</ul>
	    </div>
		</div>
		<div class="panel-body">
			<p> 
			<select name="sub_name" style="width:120" >
		    	<option value="a">全部</option>
				<option value="1300">哈尔滨总站</option>
				<option value="2100">大庆分站</option>
				<option value="3100">齐齐哈尔分站</option>
		    	<option value="4100">牡丹江分站</option>
		    	<option value="5100">伊春分站</option>
		    	<option value="6100">绥化分站</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="pub_name" style="width:120" >
				<option value="a">全部</option>
				<option value="1001">人民日报</option>
				<option value="2001">黑龙江日报</option>
				<option value="2002">黑龙江周刊</option>
				<option value="3001">星周刊</option>
				<option value="4001">大学</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="endDate" id="date_end"  style="width:100" value="选择日期查询"/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
	   		<SPAN 
       		 style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
                　		<BUTTON  type=submit onclick="return checkChoose()">搜索</BUTTON></SPAN>
      		</p>
		</div>
			<div class="panel-body">
			<p>
			<c:if test="${list==null}">没有满足要求的信息！</c:if>
			<c:if test="${list!=null}">
			<table class="table table-bordered table-hover" id="sub_sell_pub">
				<tr style="background-color:#F6F6F6">
					<th>分站名称</th>
					<th>报刊名称</th>
					<th>当日投递量</th>
					<th>时间</th>
				</tr>
				<c:forEach var="ssp" items="${list}">
				<tr>
					<td>
						<c:if test="${ssp.substation_id == 1300}">哈尔滨总站</c:if>
						<c:if test="${ssp.substation_id == 2100}">大庆分站</c:if>
						<c:if test="${ssp.substation_id == 3100}">齐齐哈尔分站</c:if>
						<c:if test="${ssp.substation_id == 4100}">牡丹江分站</c:if>
						<c:if test="${ssp.substation_id == 5100}">伊春分站</c:if>
						<c:if test="${ssp.substation_id == 6100}">绥化分站</c:if>
					</td>
					<td>
						<c:if test="${ssp.pub_id == 1001}">人民日报</c:if>
						<c:if test="${ssp.pub_id == 2001}">黑龙江日报</c:if>
						<c:if test="${ssp.pub_id == 2002}">黑龙江周报</c:if>
						<c:if test="${ssp.pub_id == 3001}">星周刊</c:if>
						<c:if test="${ssp.pub_id == 4001}">大学</c:if>
					</td>
					<td>${ssp.pub_send_num }</td>
					<td>${ssp.send_time }</td>
				</tr>
				</c:forEach>
			</table>
			</c:if>
			</p>
		</div>
		</div>
	</div>
	</form>
  </body>
</html>
