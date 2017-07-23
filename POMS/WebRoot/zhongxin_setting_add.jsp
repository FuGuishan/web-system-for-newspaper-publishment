<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
	<script type="text/javascript">
	 function getchild(c){
	   
	  var father = document.getElementById("province");
      var son = document.getElementById("down");
        
     var f=["p吉林","长春","五常","双阳","九台","p黑龙江","哈尔滨","鸡西","大庆"];
     
      if(c == 0)
  	  {
  	  	 father.options.length = 0;
         son.options.length = 0;
         father.options.add(new Option("请选择",""));
         son.options.add(new Option("请选择",""));
  	  }
  	  else
  	  {
  	  var jilin= "p吉林";
  	  var heilongjiang="p黑龙江 "
  	  if(jilin.indexOf(c)!=-1){
  	  
  	  var temp=0;
  	  for(var i=0;;i++){
  	    
  	    if(f[i]=="p吉林"){
  	    temp=i;
  	   
  	    break;
  	    }
  	  }
  	  son.options.length = 0;
  	 while(f[temp+1].indexOf("p")==-1){
  	  son.options.add(new Option(f[temp+1],f[temp+1]));
  	    temp++;
  	  }
  	 

	}
if(heilongjiang.indexOf(c)!=-1){
  	  var test = document.getElementById("down").value;
  	  var temp=0;
  	  for(var i=0;;i++){
  	    
  	    if(f[i]=="p黑龙江"){
  	    temp=i;
  	   
  	    break;
  	    }
  	  }
  	  son.options.length = 0;
  	 while(f[temp+1].indexOf("p")==-1){
  	  son.options.add(new Option(f[temp+1],f[temp+1]));
  	    temp++;
  	  }
  	 

	}
	}
     }
    function check(){
 //  alert("srfs");     
   var compname=document.getElementById("compname").value;
//    alert("1");
   var leader=document.getElementById("leader").value;
//    alert("2");
   var leadercontract=document.getElementById("leadercontract").value;
 //   alert("3");
   var province=document.getElementById("province").value;
 //   alert("4");
   var down=document.getElementById("down").value;
  //  alert("5");
   var avitime1=document.getElementById("avitime1");
  //  alert("6");
   var avitime2=document.getElementById("avitime2");
  //  alert("7");
   var avitime3=document.getElementById("avitime3");
   // alert("8");
   var address=document.getElementById("address").value;
 
   if(!avitime1.checked && !avitime2.checked && !avitime3.checked) {
  alert("请选择时间！")
   return false;
   }
      if(compname=="") {
  alert("请输入公司名称！")
   return false;
   }
      if(leader=="") {
  alert("请输入负责人姓名！")
   return false;
   }
   var c=/^[0-9]{11}$/;
      if(leadercontract==""||!c.test(leadercontract)) {
  alert("请输入正确负责人联系方式！")
   return false;
   }
      if(!avitime1.checked && !avitime2.checked && !avitime3.checked) {
  alert("请选择时间！")
   return false;
   }
  // alert(down);
   if(province=="请选择"||down=="请选择"||address==""){
    alert("请输入正确地址！")
   return false;
   }
   
   return true;
    }
	</script>
  </head>

<body>
 <div class="bread-crumb">
	<ol class="breadcrumb">
	  <li><a href="#">c首页</a></li>
	  <li><a href="#">基本信息管理</a></li>
	  <li class="active">运输单位设置</li>
	</ol>
</div>
<hr />
  
<form action="<%=basePath %>addTransport" onsubmit="return check()" method="post">
 <div class="function-panel">
	<table class="table table-bordered table-hover">
		<tr style="background-color:#F6F6F6">
		<th width="180px">名称</th>
		<th>填写项</th>	
		</tr>
		<tr>
		<td>公司名称</td>
			<td><input type="text" name="compname" id="compname"/></td></tr>
		<tr>
			<td>负责人</td>
			<td><input type="text" name="leader" id="leader"/></td>
		</tr>
		<tr>
			<td>负责人联系方式</td>
			<td><input type="text" name="leadercontract" id="leadercontract"/></td>
		</tr>
		<tr>
			<td>公司地点</td>
			<td>
			<select id="province" name="province" onchange="getchild(this.value)" >
          <option>
		        请选择
		    </option>
			<option>吉林</option>
			<option>黑龙江</option>
			</select>&nbsp;
		    <select id="down" name="down">
		    <option>
		        请选择
		    </option>
			</select>&nbsp;
			<input type="text" name="address" id="address"/>		</tr>
		<tr>
			<td>可用时段</td>
			<td><input type="checkbox" name="avitime1" id="avitime1"/>8:00-11:00<input type="checkbox" name="avitime2" name="avitime2" id="avitime2"/>13:00-17:00<input type="checkbox" name="avitime3" id="avitime3"/>18:00-21:00</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="提交" style="padding-left:20px;padding-right:20px;padding-top:5;padding-bottom:5">
			<input type="reset" value="重置" style="margin-left:50px; padding-left:20px;padding-right:20px;padding-top:5;padding-bottom:5">
			</td>
		</tr>
	</table>
	</div>
</form>
</body>
</html>
