<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/right.css"/>
		<title>人事管理</title>
		<script src="<%=basePath %>js/calendar.js" type="text/javascript"></script>
		<link href="<%=basePath %>css/calendar.css" type="text/css" rel="stylesheet"/>
		<script language="javascript">
			function chkdate(){
				//alert("jinlaile ")
				var choose_time1 = document.getElementById("date_start").value;
				var choose_time = document.getElementById("date_end").value;
				var de=/^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/;
				var mon = document.getElementById("coupons_money").value;
				if(mon.length==0 ||isNaN(realnum)){
					alert("请输入正确金额")
					return false;
				}
				if(choose_time.length1==0){
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
			  <li class="active">代金卷</li>
			</ol>
		</div>
		
		<hr />
		<div class="function-panel">
		<form  onsubmit="return chkdate();" class="form-horizontal" name="changeform" action="<%=basePath %>couponsServlet?arg=add" method="post" >
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">代金卷类型：</td>
					<td>
						<select name="coupons_type">
					 		<option value="1">特等</option>
 							<option value="2" >高级</option>
 							<option value="3" selected>普通</option>
					 	</select>
					</td>
				</tr>
				<tr>
					<td>代金卷金额：</td>
					<td>&nbsp;￥&nbsp;<input name="coupons_money" id="coupons_money"  type="text" /></td>
				</tr>
				<tr>
					<td>生效日期：</td>
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
					<td>截止日期：</td>
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
					<td>说明：</td>
					<td>
					<textarea name="coupons_infor"  rows="4" cols="40">代金卷说明</textarea>
					</td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default" name="submit" >
					增加
				</button>
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" >
					重置
				</button>
			</div>
		</div>
		</form>
	</div>

	</body>
</html>