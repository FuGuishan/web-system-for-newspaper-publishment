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
	</head>
	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
			  <li><a href="index.jsp" target="_parent">首页</a></li>
			  <li><a href="#">附赠设置</a></li>
			  <li class="active">赠卡信息修改</li>
			</ol>
		</div>
		
		<hr />
		
		<c:if test="${list != null}">
			<div class="function-panel" ">
				<div style="width:1000px; text-align:center">
					<font style="font-size:33px; font-weight:bold;">
						赠卡修改表</font>
				</div>
			 <hr />
			<form class="form-horizontal" name="changeform" action="<%=basePath %>bonusServlet?arg=update" method="post" onsubmit="return confirm('确认修改')">
				<table class="table table-bordered table-hover">
				<c:forEach var="bonus" items="${list}">
				<tr>
					<input type="hidden" name="card_id" value="${bonus.card_id}" />
					<td width="200px">赠卡类型：</td>
					<td>
						<select name="card_type">
					 		<option  value="1" <c:if test="${bonus.card_type=='1'}">selected</c:if>>龙卡  </option>
					 		<option value="2" <c:if test="${bonus.card_type=='2'}" >selected</c:if>>金卡</option>
					 		<option value="3" <c:if test="${bonus.card_type=='3'}" >selected</c:if>>银卡</option>
					 		<option value="4" <c:if test="${bonus.card_type=='4'}" >selected</c:if>>节日卡</option>
					 		<option value="5" <c:if test="${bonus.card_type=='5'}" >selected</c:if>>周年卡</option>
					 	</select>
					</td>
				</tr>
				<tr>
					<td>可订阅报刊代号：</td>
					<td><input name="pub_id" type="text" value="${bonus.pub_id }"/></td>
				</tr>
				<tr>
					<td>起始日期：</td>
					<td>
						<input type="text" name="start_time" id="date_start"  style="width:100； height：50px" value="${bonus.start_time}"/>
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
					<td>截止日：</td>
					<td>
						<input type="text" name="endDate" id="date_end"  style="width:100； height：50px" value="${bonus.end_time } "/>
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
					<textarea name="card_infor"  rows="4" cols="40" value="${bonus.card_infor }">${bonus.card_infor }</textarea>
					</td>
				</tr>
				</c:forEach>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-default" name="submit" value="修改"/>
				
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button>
			</div>
		</div>
		</form>
		
		
		<%--<form class="form-horizontal" name="changeform" action="<%=basePath %>bonusServlet?arg=update" method="post" onsubmit="return confirm('确认修改')">
			<table class="table table-bordered table-hover">
				<tr>
					<td width="200px">赠卡类型：</td>
					<td>
						<select name="card_type">
					 		<option value="1">龙卡</option>
					 		<option value="2">金卡</option>
					 		<option value="3">银卡</option>
					 		<option value="4">节日卡</option>
					 		<option value="5">周年卡</option>
					 	</select>
					</td>
				</tr>
				<tr>
					<td>可订阅报刊代号：</td>
					<td><input name="pub_id" type="text" /></td>
				</tr>
				<tr>
					<td>起始日期：</td>
					<td>
						<input type="text" name="start_time" id="date_end"  style="width:100； height：50px" value=""/>
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
					<td>截止日：</td>
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
					<td><input name="card_infor" type="textarea" rows="4" cols="40"/></td>
				</tr>
			</table>
			<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" class="btn btn-default" name="submit"/>
				
			</div>
			<div class="col-sm-2">
				<button type="reset" class="btn btn-default" name="reset" id="" onclick="">
					重置
				</button>
			</div>
		</div>
		</form>--%>
	</div>
	</c:if>
	</body>
</html>