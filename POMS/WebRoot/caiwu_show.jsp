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
		<div class="panel-heading"><strong>���ո�����Ͷ����</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	           ����
		</button>
		<ul class="dropdown-menu">
			<li ><a href="caiwu_show.jsp" target="main">����ȫ��</a></li>
   			<li><a href="aiwu_show.jsp" target="main">ˢ��</a></li>
   			<li><a href="aiwu_show.jsp" target="main" onclick="window.print()">��ӡ</a></li>
		</ul>
	</div>
		</div>
		<div class="panel-body">
	 <div class="histogram-container" id="histogram-container">
    <!--��������-->
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
    <!--��״��-->
    <div class="histogram-content">
        <ul>
            <li>
                <span class="histogram-box"><a style="height:20%;background:gray;" title="20%"></a></span>
                <span class="name">�����ձ�����������</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:40%;background:gray;" title="40%"></a></span>
                <span class="name">�����ձ���������</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:50%;background:gray;" title="50%"></a></span>
                <span class="name">�����ձ���������</span>
            </li>
            <li>
                <span class="histogram-box"><a style="height:80%;background:gray;" title="80%"></a></span>
                <span class="name">�����ձ��¶�������</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:10%;background:gray;" title="10%"></a></span>
                <span class="name">�����ձ���������</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:20%;background:gray;" title="20%"></a></span>
                <span class="name">�����ձ��㽭����</span>
            </li>
              <li>
                <span class="histogram-box"><a style="height:40%;background:gray;" title="40%"></a></span>
                <span class="name">�����ձ����Ϸ���</span>
            </li>
        </ul>
    </div>
    <!--�ٷֱ� y��-->
    <div class="histogram-y">
        <ul>
        <li>�ն�������ǧ�ݣ�</li>
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
					<th>������</th>
					<th>���綩����</th>
					<th>����Ͷ����</th>
					<th>�����տ���</th>
					<th>����״̬</th>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td><font color="red">δ����</font></td>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td><font color="green">�ѽ���</font></td>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
				</tr>
				<tr>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
					<td>���</td>
				</tr>
			</table>
		</div>
		</div>
	</div>
</body>
</html>
