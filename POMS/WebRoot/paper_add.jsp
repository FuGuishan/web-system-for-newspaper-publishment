<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 报刊增加页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/right.css"/>
	<title>报刊设置</title>
</head>
<script>
	function chkId(){
		var reId = /^\d+$/;
		if(document.addform.id.value.search(reId)==-1&&document.addform.id.value!=""){

			alert("id有非法字符！");
		}
		else if(document.addform.id.value.length>10&&document.addform.id.value!=""){
             alert("id位数不能大于十位！");
        }
	}
	function chkDate(){
		 var de=/^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/;
         var str=document.getElementById("date1").value;
         if(!de.test(str)&&str!=""){		
        	alert("日期格式有误！");

        }
	}
	function chkSum(){
         var resum = /^\d+$/;
         if(!resum.test(document.addform.sum.value)&&document.addform.sum.value!=""){
        	 alert("印发数输入有误！");
         } 

	} 
	function chkPrice(price){
		var repri = /^\d|{.}+$/;
		var a = document.getElementById(price).value;
		
		if(!repri.test(a)&&a!="")
		{
			alert("价格输入有误！");
		}

	}
	function chkAll(){
        if(document.addform.id.value==""){
            alert("报刊id没有输入");
            return false;
        }
        else if(document.addform.n_name.value==""){
        	alert("报刊名称没有输入");
        	return false;
        }
        else if(document.addform.selection.value==""||document.addform.selection.text==""){
        	alert("报刊类别没有输入");
        	return false;
        }
        else if(document.addform.date1.value==""){
        	alert("报刊刊期没有输入");
        	return false;
        }
        else if(document.addform.sum.value==""){
        	alert("报刊发行数没有输入");
        	return false;
        }
        else if(document.addform.bid.value==""){
        	alert("报刊发行费率没有输入");
        	return false;
        }
        else if(document.addform.price.value==""){
        	alert("报刊定价没有输入");
        	return false;
        }
        else if(document.addform.order.value==""){
        	alert("报刊是否可以退订没有输入");
        	return false;
        }
        else if(document.addform.publishinghouse.value==""){
        	alert("报刊是否可以退订没有输入");
        	return false;
        }
        else{
			return true;

        }

	}

	//测试用
	function update1(){
         var text = document.getElementById("fi").value;

         alert(text);
 
	}
	function display(value){
        
		this.document.getElementById("fi").value=value;


	}
	function chkFile(){
		if(document.img.file.value==""){
            alert("文件路径没有输入");
            return false;
        }else{
           return true;
        }

	}
</script>
<body>
	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">中心站管理</a></li>
		  <li class="active">报刊设置</li>
		</ol>
	</div>
	<hr />
	
	<div class="function-panel">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					<strong>添加报刊信息&nbsp;&nbsp;&nbsp;</strong>———— 打<font size="2" color="red">*</font>的内容为必填项	
				</h3>
			</div>
		   <div class="panel-body">
		   <form action="<%=basePath %>paperServlet?mode=upload" method="post" name="img" enctype="multipart/form-data">
					刊物照片：
					<input name="file" type="file" size="20" id="f" onchange="display(this.value)" />&nbsp;&nbsp;&nbsp;</td>
			         
			       <p> <button type="submit" class="btn btn-default" name="submit" onclick="return chkFile()" >
						上传
		            </button></p>
			</form>
			<form action="<%=basePath %>paperServlet?mode=add&op=1" method="post" name="addform">
			<table class="table table-bordered table-hover">
				<tr>
				    <td width="200px">报刊ID：</td>
					<td><input type = "text" name="id" onblur="chkId()" />&nbsp;<font style="width:50px" color="red">*&nbsp;由不多于十位的数字组成</font>
					
					</td>
				</tr>
				<tr>	
					<td width="200px">报刊名称：</td>
					<td><input type = "text"  name="n_name" />&nbsp;<font style="width:50px" color="red">*</font>
					
					</td>
				</tr>
				<tr>	
					<td width="200px">刊物类型：</td>
					<td>
					<select name="selection">
						<option  value="" ></option>
						<option  value="a">城市报纸</option>
						<option  value="b">财经生活</option>
						<option  value="c">文艺娱乐</option>
						<option  value="d">体坛赛事</option>
					
					</select>
					&nbsp;<font style="width:50px" color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>刊期：</td>
					<td><input type = "text" name="date1" id="date1" onblur="chkDate()"/>&nbsp;<font color="red">*请按年-月-日的格式，且月和日为个位时要用0占位</font></td>
				</tr>
				<tr>
				     <td>刊物照片：</td>
					 <td><input name="file" type="text" size="20" id="fi" readonly="readonly"/>&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td>印发数：</td>
					<td><input type = "text" name="sum" onblur="chkSum()" />&nbsp;<font color="red">*</font></td>
				</tr>
				
				<tr>
					<td>当前发行费率：</td>
					<td><input type = "text" name="bid" id="bi" onblur="chkPrice('bi')"/>&nbsp;<font color="red">*</font></td>
				</tr>
				<tr>
					<td>当前定价（日定价）：</td>
					<td><input type = "text" name="pri" id="price" onblur="chkPrice('price')"/>&nbsp;<font color="red">*</font></td>
				</tr>
				<tr>
					<td>月定价：</td>
					<td><input type = "text" name="mo" id="month" onblur="chkPrice('month')"/>&nbsp;<font color="red">*</font></td>
				</tr>
				<tr>
					<td>年定价：</td>
					<td><input type = "text" name="ye" id="year" onblur="chkPrice('year')" />&nbsp;<font color="red">*</font></td>
				</tr>
				<tr>
					<td>会员折扣：</td>
					<td><input type = "text" name="member_dis" id="dis" value="100" onblur="chkPrice('dis')"/>&nbsp;%<font color="red">*</font></td>
				</tr>
				<tr>
					<td>大客户折扣：</td>
					<td><input type = "text" name="big_dis" id="disb" value="90" onblur="chkPrice('disb')"/>&nbsp;%<font color="red">*</font></td>
				</tr>
				<tr>
					<td>是否允许退订：</td>
					<td><input type = "radio" name="order" value="0" checked/>&nbsp;允许&nbsp;&nbsp;
					<input type = "radio" name="order" value="1" />&nbsp;不允许 <font color="red">*</font></td>
				</tr>
				<tr>
					<td>供货单位：</td>
					<td><input type = "text" name="publishinghouse"/>&nbsp;<font color="red">*</font></td>
				</tr>
			</table>
			<div class="form-group">
				<div class="col-sm-2">
					<button type="submit" class="btn btn-default" name="submit" onclick="return chkAll()" >
						添加
					</button>
				</div>
				<div class="col-sm-2">
					<button type="reset" class="btn btn-default" name="reset">
						重置
					</button>
				</div>
				<div class="col-sm-2">
					<button type="button" class="btn btn-default" name="back" onclick="javascript:history.go(-1)">
						返回
					</button>
				</div>
			</div>
			</form>
			
			</div>
		</div>
	</div>
	</body>
</html>