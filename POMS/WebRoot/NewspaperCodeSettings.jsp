<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>��������ϵͳ</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
	 <style>
        body{
            background-color:#ffffff;
        }
        #north {
            background-color:#ffffff;
            padding:20px;     
        }
        #center{
            padding:20px;
        }
        #enter p{
            font-weight:500;
        }
        #south{
            padding:20px;
        }
    </style>
</head>
	    
<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">��ҳ</a></li>
		  <li><a href="#">��������</a></li>
		  <li class="active">������������</li>
		</ol>
	</div>
	<hr />
		<form action="" method="post">
			<div id="north">
				<label>�������룺</label>
				&nbsp;&nbsp;
				<input type="text" name="newspaper_code" />
				&nbsp;
				<input type="button" name="search_by_code" value="��ѯ"/>
				<br /><br />
				<label>�������ƣ�</label>
				&nbsp;&nbsp;
				<input type="text" name="namespaper_name" />
				&nbsp;
				<input type="button" name="search_by_name" value="��ѯ" />
				<br />
			</div>
			<hr />
			
			<div class="function-panel">
			<label>��ѯ���</label>
				<table width="1000px" class="table table-bordered table-hover">
					<tr style="background-color:#F6F6F6">
						<th width="200" height="38">��������</th>
						<th width="600">��������</th>
						<th width="200">����</th>
					</tr>
					<tr>
						<td>123456	</td>
						<td>����</td>
						<td>
							<a href="" name="modify">�޸�</a>
							&nbsp;
							<a href="" name="delete">ɾ��</a>
						</td>
					</tr>
					<tr>
						<td>123456	</td>
						<td>����</td>
						<td>
							<a href="" name="modify">�޸�</a>
							&nbsp;
							<a href="" name="delete">ɾ��</a>
						</td>
					</tr>
					<tr>
						<td>123456	</td>
						<td>����</td>
						<td>
							<a href="" name="modify">�޸�</a>
							&nbsp;
							<a href="" name="delete">ɾ��</a>
						</td>
					</tr>
				</table>
			</div>
			<hr/>
		
			<div class="function-panel">
				<label>��������</label>
				<form class="form-horizontal" name="newPaper" method="post">
					<table class="table table-bordered table-hover">
						<tr>
							<td width="200px">�������ƣ�</td>
							<td><input type="text" name="newspaper" id="newspaper_name" style="width:200px"/></td>
						</tr>
						<tr>
							<td>�������룺</td>
							<td><input name="newspaperCode" type="text" style="width:200px"/></td>
						</tr>
					</table>
					<div class="form-group">
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default" name="submit" id="">
							����
						</button>
					</div>
					</div>
				</form>
			</div>
	</body>
</html>
