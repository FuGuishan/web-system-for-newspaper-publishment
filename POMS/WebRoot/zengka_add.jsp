<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>赠卡</title>
		<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
		<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
		<script language="javascript">
			function chkdate(){
				//alert("jinlaile ")
				var choose_time_1 = document.getElementById("date_start").value;
				var choose_time = document.getElementById("date_end").value;
				var de=/^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/;
				if(choose_time.length==0){
					alert("请输入起始日期")
					return false;
				}
				if(choose_time.length==0){
					alert("请输入结束日期")
					return false;
				}
				if(!de.test(choose_time1)&&choose_time1!=""){		
			        alert("起始日期格式有误！");
					return false;
				}
				if(!de.test(choose_time)&&choose_time!=""){		
				        alert("结束日期格式有误！");
						return false;
				}				
				
			}
		
		</script>
	</head>
	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
			  <li><a href="index.jsp" target="_parent">首页</a></li>
			  <li><a href="#">附赠设置</a></li>
			  <li class="active">赠卡</li>
			</ol>
		</div>
		<hr />
		
		<div class="function-panel">
		<form class="form-horizontal" name="changeform" action="bonusServlet?arg=add" method="post" onsubmit="return chkdate();">
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">赠卡类型：</td>
					<td>
						<select name="card_type">
					 		<option value="1" >龙卡</option>
					 		<option value="2" >金卡</option>
					 		<option value="3" > 銀卡</option>
					 		<option value="4" >节日卡</option>
					 		<option value="5" >周年卡</option>
					 	</select>
					</td>
				</tr>
				<tr>
					<td>可订阅报刊：</td>
					<td>
						<select name="pub_id">
							<c:forEach var="selectpub" items="${list}">
					 			<option value="${selectpub.pub_id }" >编号：${selectpub.pub_id }&nbsp;&nbsp;&nbsp; 书名：${selectpub.pub_name }</option>
					 			
					 		</c:forEach>
					 	</select>
					 	
					</td>
				</tr>
				<tr>
					<td>开始日期：</td>
					<td>
						<input type="text" name="start_time" id="date_start"  style="width:100； height：50px" value=""/>
						 	<script type="text/javascript">
							Calendar.setup( {
								inputField :"date_start", //日期文本框的id属性
								ifFormat :"%Y-%m-%d", //输入日期的格式
								showsTime :true, //是否显示时间
								onUpdate :null
							});
							</script>
					
					</td>
				</tr>
				<tr>
					<td>结束日期：</td>
					<td>
						<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value=""/>
						 	<script type="text/javascript">
							Calendar.setup( {
								inputField :"date_end", //日期文本框的id属性
								ifFormat :"%Y-%m-%d", //输入日期的格式
								showsTime :true, //是否显示时间
								onUpdate :null
							});
							</script>
					
					</td>
				</tr>
				<tr>
					<td>赠卡说明：</td>
					<td><textarea name="card_infor" cols="50" rows="5"/>填写赠卡说明</textarea></td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-default" name="submit" value="提交"/>
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button>
			</div>
		</div>
		</form>
	</div>

	</body>
</html>