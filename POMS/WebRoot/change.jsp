<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报刊管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	
<style>
	#nav {/*定义一个导航栏的长盒子*/
		height: 25px;
		width: 760px;
		font-size: 14px;
		list-style-type: none;/*让nav这个大盒子下面的小盒子LI列表样式不显示,这对于标准浏览器很重要*/
	}
	#nav li {
		float:left;/*让LI这些小盒子左对齐*/
	}
	#nav li a{
		color:#000000;
		text-decoration:none;/*让LI盒子里面的链接样式没有下滑线*/
		padding-top:4px;
		display:block;/*让LI里面的链接块状呈现，就像一个按钮，而不必一定要点中链接文字才起作用*/
		width:97px;
		height:22px;
		text-align:center;
		background-color: #009966;
		margin-left:2px;
	}
	#nav li a:hover{/*设置鼠标悬浮时样式*/
		background-color:#006633;
		color:#FFFFFF;
	}</style>
  </head>
  
  <body>

    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="#">2首页</a></li>
		  <li><a href="#">基本信息管理</a></li>
		  <li class="active">变更原因信息</li>
		</ol>
    </div>
    <hr />
    
    <div class="function-panel">
    	<form action = "" method = "post">
    		<label>非正常订阅类型：</label>
    		<select style="width:80px">
    			<option>退订</option>
    			<option>转址</option>
    			<option>改址</option>
    			<option>延期</option>
    		</select>
    		&nbsp;&nbsp;
    		<input name="add" type="submit" value="增加"/>
    		&nbsp;&nbsp;&nbsp;&nbsp;(点击添加才会出现右边 的框框和按钮)
    		<input type="text" width="130px" name="add_name"/>
    		&nbsp;&nbsp;
    		<input name="save" type="submit" value="保存"/>
    		<br /><br />
    		
    		<label>添加变更的类型：</label><input name="change_add_type" type="text"/>
    		&nbsp;&nbsp;
    		<input name="add" type="submit" value="增加"/>
    		<br/><br/>
	    	<table class="table table-bordered table-hover">
				<tr style="background-color:#F6F6F6">
					<td width="200px" align="center">变更种类</td>
					<td width="200px" align="center">历史记录总数</td>
					<td width="200px" align="center">重要标记</td>
					<td width="200px" align="center">操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作</td>
				</tr>
				<tr>
					<td align="center">投递太慢</td>
					<td align="center">234</td>
					<td align="center">是</td>
					<td align="center">
						<a >删除</a>
					</td>
				</tr>
				<tr>
					<td align="center">价钱太高</td>
				    <td align="center">234</td>
					<td align="center">是</td>
					<td align="center">
						<a >删除</a>
					</td>
				</tr>
				<tr>
					<td align="center">投递很快</td>
				    <td align="center">234</td>
					<td align="center">是</td>
					<td align="center"> 
						<a >删除</a>
					</td>
				</tr>
				<tr>
					<td align="center">价钱合适</td>
				    <td align="center">234</td>
					<td align="center">是</td>
					<td align="center"s>
						<a >删除</a>
					</td>
				</tr>
			</table>
    	</form>
    </div>
  </body>
</html>
