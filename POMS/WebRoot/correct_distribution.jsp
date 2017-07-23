<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>纠正地址</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
			<link rel="stylesheet" type="text/css" href="css/right.css">
	</head>
<script>
    function chk(){

    	
    	if(document.correct_port.order_id.value==""){
           alert("请输入订单号！");
           return false;
    		
    	}
    	else{	
    		//href="<%=basePath%>correctAddressServlet?mode=modify&id=${distribution.order_id}"
    	 //document.getElementById("a1").href="correctAddressServlet?mode=modify&id="+document.getElementById("hid").value+"&newsub_id="+text;
    	 //return confirm('您确认要更改本记录么？');
       	 return true;
    	}

    }

    function doTest(id){
		var a = document.getElementById("newsub_"+id);
		if(a.value==""||a.value==null){
			alert("请输入新站点");
		}else{
			location.href="correctAddressServlet?mode=modify&id="+id+"&newsub_id="+a.value;
		}
    }

</script>
	<body>
		<div class="bread-crumb">
			<ol class="breadcrumb">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">中心站管理</a>
				</li>
				<li class="active">
					纠正地址
				</li>
			</ol>
		</div>
		<hr />
		<div class="function-panel">
			<form action="<%=basePath %>correctAddressServlet?mode=search" class="form-horizontal" method="post" name="correct_port" >
				<label>
					订单号：
				</label>
				<input name="order_id" type="text" />
				<input name="submit" type="submit" value="查询" onclick="return chk()"/>
            
				<br />
			</form>	
				<c:if test="${wrong_distribution == null}">没有查询结果！
		</c:if>
				<c:if test="${wrong_distribution != null}">
				<form class="form-horizontal" method="post" name="port">
					<table width="1000px" style="margin-top: 10px"
						class="table table-bordered table-hover">
						<tr style="background-color: #F6F6F6">
							<th width="150px">
								订单号
							</th>
							<th width="150px">
								客户号
							</th>
							<th width="150px">
								客户名
							</th>
							<th width="350px">
								地址
							</th>
							<th width="350px">
								起始时间
							</th>
							<th width="350px">
								终止时间
							</th>
							<th width="350px">
								原分发站
							</th>
							<th width="350px">
								新分发站
							</th>
							<th width="150px">
								操作
							</th>
						</tr>
						
						
						<c:forEach var="distribution" items="${wrong_distribution}">
						
						<input type="hidden" id="hid" value="${distribution.order_id}" />
							<tr>
								<td>
									${distribution.order_id}
								</td>
								
								<td>
									${distribution.customer_id}
								</td>
								<td>
									${distribution.customer_name}
								</td>
								<td>
									${distribution.address}
								</td>
								<td>
									${distribution.start_time}
								</td>
								<td>
									${distribution.end_time}
								</td>
								<td>
									${distribution.sub_id}
								</td>
								<td>
									<input type="text" name="newsub_name" id="newsub_${distribution.order_id}" value=""/>
								</td>
								<td>
									<!--  	<a href="javascript:address()">更改</a>-->
									
								<!-- <a id="a1" onClick="return chk()">更改</a>    -->
								<a href="javascript:doTest('${distribution.order_id}')">操作</a>
								</td>
							</tr>
						</c:forEach>
					</table>
                     </form>
				</c:if>
			
		</div>
		<div>
		<button type="button" class="btn btn-default" name="back" type="button" onclick="javascript:history.go(-1)">返回</button>
		</div>
	</body>
</html>