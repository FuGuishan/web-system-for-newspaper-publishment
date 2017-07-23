<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	
	<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
	<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
	<script language="javascript">
	/*判断日期是否超过当前日期*///
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
	    //var str=document.getElementById("date1").value;
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
	/*判断填写的时机投递数要符合大于下单数，且为数字*/
	function check_numvalue(){
		var realnum = document.getElementById("real_num").value;
		var ordernum = document.getElementById("order_num").value;
		if(!isNaN(realnum)){
			if(realnum<ordernum){
				alert("实际投递数不能小于下单数");
				return  false;
				
			}else{
				if(confirm("确认修改")){
					return true;
				}
			}
		}
		else{
			alert("请填写数字");
			return false;
		}			
	}
	
	</script>
</head>

<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a href="#">信息汇总</a></li>
		  <li class="active">日 —— 下数单</li>
		</ol>
	</div>
	<hr />
	
	<form action="<%=basePath %>summaryServlet?arg=query" method="post" onsubmit="return check_OverDate();">
	<div class="function-panel">
		<label> 下单数：</label>
		&nbsp;&nbsp;
		<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value="${msg }"/>
		 	<script type="text/javascript">
		 	
			Calendar.setup( {
				inputField :"date_end", //日期文本框的id属性
				ifFormat :"%Y-%m-%d", //输入日期的格式
				showsTime :true, //是否显示时间
				onUpdate :null
			});
			</script>
		日 &nbsp;&nbsp;&nbsp;
		<input type="submit"  value="汇总" class="btn btn-default" style="padding-top:5px; height:28px; font-size:15px;"/>

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
		下单数</font>
	</div>
	
	
	 <hr/>
	<form action ="<%=basePath %>summaryServlet?arg=update" method = "post">
	
	
	
			<table width="1000px" class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<th height="38">分站编号</th>
					<th>分站名称</th>
					<th>报刊代码</th>
					<th>报刊名称</th>
					<th>下数单</th>
					<th>实际投递数</th>
					<th>日期</th>
					<th>操作</th>
				</tr>
				<c:forEach var="suminfo" items="${list}">
					
				<form action="<%=basePath %>summaryServlet?arg=update" method="post"  >
					<input type="hidden" name="substation_id" value="${suminfo.substation_id }"/>  <input type="hidden" name="pub_id" value="${suminfo.pub_id }"/> 
					<input type="hidden" name="summary_date" value="${suminfo.summary_date}"/> <input type="hidden" id="order_num" value="${suminfo.order_num }"/> 
					<tr>
						
						<td >${suminfo.substation_id }</td>
						<td >${suminfo.substation_name }</td>
						<td >${suminfo.pub_id }</td>
						<td >${suminfo.pub_name }</td>
						<td>${suminfo.order_num }&nbsp;份</td>
						<td>
							<input type="text" value="${suminfo.real_num }" id="real_num" name="real_num"/> &nbsp;份
							
									
						</td>
						<td>${suminfo.summary_date }</td>
					
						<td>
							<input type="submit" value="修改投递数" onclick="return check_numvalue()"/>
							<%--<a href="">修改投递数</a>--%>
							<%--<input type="button" value="确认修改"  src=('<%=basePath %>summaryServlet?arg=update&substation_id=${suminfo.substation_id}&pub_id=${suminfo.pub_id}&summary_date=${suminfo.summary_date}&real_num_new=${real_num_new}') onclick="return querenxiugai()"/>--%>
						</td>
					
					</tr>
					</form>
				</c:forEach>
				
				
				
				<%--<tr>
					<td>1</td>
					<td>###</td>
					<td>1001</td>
					<td>###</td>
					<td>1000份</td>
					<td>
						
					</td>
				</tr>
				<tr>
					<td>1</td>
					<td>###</td>
					<td>1001</td>
					<td>###</td>
					<td>1000份</td>
					<td>
						<input type="text" name="realnum" value="1500"/>&nbsp;份
					</td>
				</tr>
				<tr>
					<td>1</td>
					<td>###</td>
					<td>1001</td>
					<td>###</td>
					<td>1000份</td>
					<td>
						<input type="text" name="realnum" value="1500"/>&nbsp;份
					</td>
				</tr>
				--%>
				
			</table>
		</form>
		</c:if >
		   <c:if test="${list != null}">
			<div class="form-group">
			<div class="col-sm-4">
				<button type="button" name="print-but" onclick="window.print()" class="btn btn-default">
					打印
				</button>
			</div>
			</div>
		  </c:if>
	</div>
	</body>
</html>
