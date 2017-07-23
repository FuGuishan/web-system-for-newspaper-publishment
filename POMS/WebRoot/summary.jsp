<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	
	<head>
		<base href="<%=basePath%>">

		<title>今日汇总</title>
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>	
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	</head>
	<script language="javascript">
	function check_OverDate(){	
		var choose_time = document.getElementById("date_end").value;
		var choose_year = choose_time.substr(0,4);
		var choose_month = choose_time.substr(5,2);
		var choose_day = choose_time.substr(8,2);		
		var today=new Date();
		var nowyear =  today.getFullYear();
		var nowmonth =  today.getMonth()+1;
		var nowday = today.getDate();
		var today1 = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
		var de=/^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/;
	
		 if(!de.test(choose_time)&&choose_time!=""){		
		        alert("日期格式有误！");
				return false;
		    }
		if(choose_time.length==0){
			alert("请输入日期")
			return false;
		}
		if(choose_year>nowyear ||(choose_year==nowyear && choose_month>nowmonth)||(choose_year==nowyear && choose_month==nowmonth&&choose_day>nowday)){
				alert("超出时间范围")
				return false;
		}

	}
	</script>
	<body>
		<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a >信息汇总</a></li>
		  <li class="active">每日统计</li>
		</ol>
	</div>
	<hr />
	
	<%--<form action="<%=basePath %>summaryServlet?arg=query" method="post">
	</form>--%>
	<%--
		查询的内容显示
	--%>
	<!--<c:if test="${list == null}">
		没有查询结果！
	</c:if >-->
	
	<form action="<%=basePath %>summaryServlet?arg=summary" method="post" onsubmit="return check_OverDate()">
	<div class="function-panel">
		<label>每日统计：</label>
		&nbsp;&nbsp;
		<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value="选择日期"/>
		 	<script type="text/javascript">
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
		&nbsp;&nbsp;&nbsp;
		<input type="submit" value="汇总" class="btn btn-default" style="padding-top:5px; height:28px; font-size:15px;"/>

	</div>
	</form>
    <hr />
	
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		${msg1 }
		</font>
	</div>
	</div>
	<c:if test="${list == null}">
		  <hr />
	</c:if >
	<c:if test="${list != null}">
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		${msg }
		日报刊信息统计表</font>
	</div>
	
	
	 <hr />
			<table id="summary-table" width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">报刊编号</th>
					<th>报刊名称</th>
					<th>下单数</th>
					<th>实际投递数</th>
				</tr>
	
		<%--遍历list查询结果显示--%>
		<c:forEach var="summa" items="${list}">
		<tr>
			<td>${summa.pub_id }</td>
			<td>${summa.pub_name }</td>
			<td>${summa.order_num  }</td>
			<td> 
				${summa.real_num }   <%--填写实际数量--%>
			</td>
		</tr>
		</c:forEach>
		</table>
	</c:if>
	
	<c:if test="${list != null}">
		<div class="form-group">
			<div class="col-sm-4">
				<button type="button" name="print-but" onclick="window.print()" class="btn btn-default">
					打印
				</button>
			</div>
		</div>
		</div>
	</c:if>
	
	</body>
</html>
