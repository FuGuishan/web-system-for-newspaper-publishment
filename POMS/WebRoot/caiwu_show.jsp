<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/canvas.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
  </head>

  <body>
<div class="function-panel">
		<div class="panel panel-default">
		<div class="panel-heading"><strong>当日各分社投递量</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           操作
		</button>
		<ul class="dropdown-menu">
			<li ><a href="caiwu_show.jsp" target="main">结算全部</a></li>
   			<li><a href="aiwu_show.jsp" target="main">刷新</a></li>
   			<li><a href="aiwu_show.jsp" target="main" onclick="window.print()">打印</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
	 <div class="histogram-container" id="histogram-container">
    <!--背景方格-->
    <div class="histogram-bg-line">
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
           <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
             <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
        </ul>
    </div>
    <!--柱状条-->
    <div class="histogram-content">
        <ul>
            <li>
                <span class="histogram-box"><a style="height:20%;background:gray;" title="20%"></a></span>
                <span class="name">暴走日报哈尔滨分社</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:40%;background:gray;" title="40%"></a></span>
                <span class="name">暴走日报大连分社</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:50%;background:gray;" title="50%"></a></span>
                <span class="name">暴走日报北京分社</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:80%;background:gray;" title="80%"></a></span>
                <span class="name">暴走日报奥尔良分社</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:10%;background:gray;" title="10%"></a></span>
                <span class="name">暴走日报福建分社</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:20%;background:gray;" title="20%"></a></span>
                <span class="name">暴走日报浙江分社</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:40%;background:gray;" title="40%"></a></span>
                <span class="name">暴走日报云南分社</span>
            </li>
        </ul>
    </div>
    <!--百分比 y轴-->
    <div class="histogram-y">
        <ul>
        <li>日订阅量（千份）</li>
            <li>6000</li>
            <li>5000</li>
            <li>4000</li>
            <li>3000</li>
            <li>2000</li>
            <li>1000</li>
        </ul>
    </div>
</div>
<br>
<br>
<table class="table table-bordered table-hover">
				<tr>
					<th>报社编号</th>
					<th>报社订阅数</th>
					<th>报社投递数</th>
					<th>报社收款数</th>
					<th>结算状态</th>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td><font color="red">未结算</font></td>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td><font color="green">已结算</font></td>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
				</tr>
				<tr>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
					<td>表格</td>
				</tr>
			</table>
		</div>
		</div>
	</div>
</body>
</html>
