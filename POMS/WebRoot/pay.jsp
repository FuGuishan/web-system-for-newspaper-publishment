 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
	<%@page import="java.util.Date,java.text.SimpleDateFormat,java.util.ArrayList,java.util.List,hit.poms.shoufeizhongxin.entity.OrderPayInfor,java.util.*;" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Date now = new Date(); 
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式 
String today_time = dateFormat.format( now );
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>商品订购收费中心</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
	<script type="text/javascript"></script>
	<script type="text/javascript">
//window.location.href="<%=basePath %>payServlet?arg=queryByorderID";
//window.reload("http:\\localhost:8888\POMS\payServlet?arg=queryByorderID");
//alert("ada");
	</script>
	
  </head>
	<script type="text/javascript" >
		function chk_orderform(){
			var order_id = document.getElementById("order_id").value;
			if(isNaN(order_id)){
				alert("请全部输入数字")
				return false;	
			}
			
			if(order_id.length>10){
				alert("订单号超过长度")	
				return false;
			}
		}
		function chk_zhifu(){
			var dd =confirm("确认支付")
			if(dd == true){
				return true;
			}
			return false;
		}
		function chk_toudi(){
			var aa =confirm("确认投递")
			if(aa == true){
				return true;
			}
			return false;
		}
	</script>
  <body>
 
  	<div class="bread-crumb">
		<ol class="breadcrumb">
		  <li><a href="index.jsp" target="_parent">首页</a></li>
		  <li><a href="#">商品订购</a></li>
		  <li class="active">收费中心</li>
		</ol>
	</div>
 <div class="function-panel">
		
		<!-- Default panel contents -->
		<div class="panel-heading"><strong>订单列表</strong>
		<div class="btn-group">
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
	       过滤
		</button>
		<ul class="dropdown-menu">
			<li ><a href="<%=basePath %>payServlet?arg=queryAll"  target="main">显示全部</a></li>
   			<li><a href="<%=basePath %>payServlet?arg=queryNodeliver" target="main"">显示未投递</a></li>
		</ul>
	</div>
	<form action="<%=basePath %>payServlet?arg=queryByorderID" method="post" onsubmit="return chk_orderform()">
		<div class="panel-body">
			<p> 输入定单号查询<INPUT class=inputbg size=30 name="order_id" id="order_id">
	 <SPAN 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px">
      　<BUTTON  type=submit>搜索</BUTTON></SPAN></p>
		</div>
	 </form>
	</div>
	</div>
	</hr>
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		${msg1 }
		</font>
	</div>
	</div>
	<c:if test="${list == null}">
		  <hr />
	</c:if >
	<c:if test="${list != null}">
	 	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		${msg }
		</font>
		</div>
	 <hr />
		<div class="function-panel" ">
			<table class="table table-bordered table-hover">
			<tr>
				<th>订单号</th>
				<th>客户号</th>	
				<th>客户名</th>	
				<th>支付金额</th>
				<th>订单日期</th>
				<th>是否已支付</th>	
				<th>投递状态</th>
				<th>操作</th>	
			</tr>
				<%--<c:forEach var="orderAll" items="${list}">--%>
					<%
						boolean myflag = false;
						List<OrderPayInfor> list =(List)request.getAttribute("list");
						Iterator<OrderPayInfor> it = list.iterator();
						OrderPayInfor orderAll = new OrderPayInfor();
						//out.print(eee.getOrder_id());
						while(it.hasNext()){
							myflag = false;
  						Cookie cookie[] = request.getCookies();
  						orderAll = it.next();
  						
  						if(cookie!=null){
	  						for(int i=0;i<cookie.length;i++){
	  							Cookie c = cookie[i];
	  							if(c.getName().equals(orderAll.getOrder_id()))					
	  							{
	  								if(c.getValue().equals(today_time))
	  								{
	  									myflag = true;
	  								}
	  							}
	  						}
  						}
  						System.out.println(myflag);
  						
  					%>
					<tr>
						<td><%out.println(orderAll.getOrder_id()); %></td>
						<td>${orderAll.customer_id }<%out.println(orderAll.getCustomer_id()); %></td>
						<td>${orderAll.customer_name }<%out.println(orderAll.getCustomer_name()); %></td>
						<td>${orderAll.pay_money }<%out.println(orderAll.getPay_money()); %></td>
						
						<td>${orderAll.start_time} <% out.println(orderAll.getStart_time()); %></td>
						<td>
							<% if(orderAll.getIf_paied().equals("0")) out.println("未支付");%> 
							<% if(orderAll.getIf_paied().equals("1")) out.println("已支付");%>  
						</td>
						<td>
							<% if(orderAll.getIf_deliver().equals("0")) out.println("未投递");%> 
							<% if(orderAll.getIf_deliver().equals("1")) out.println("已投递");%>  
						</td>
						<td> 
							<button  onclick="window.open('print_toudidan.jsp?&order_id=<%=orderAll.getOrder_id() %>') ">打印投递单</button>&nbsp;
						<% if(orderAll.getIf_paied().equals("1")) {%><button  disabled onclick="location.href='<%=basePath %>payServlet?arg=updatePay&order_id=<%=orderAll.getOrder_id() %>' ">确认支付</button>&nbsp;<%} %>
						<% if(orderAll.getIf_paied().equals("0")) {%><button  onclick="if( chk_zhifu()) location.href='<%=basePath %>payServlet?arg=updatePay&order_id=<%=orderAll.getOrder_id() %>'; ">确认支付</button>&nbsp;<%} %>
						<% if(orderAll.getIf_deliver().equals("0")&&myflag==true ) {%><button disabled  onclick="if(chk_toudi())  location.href='<%=basePath %>payServlet?arg=updateDeliver&order_id=<%=orderAll.getOrder_id() %>'">确认投递</button><%} %>	
						<% if(orderAll.getIf_deliver().equals("0")&&myflag==false ) {%><button  onclick="if(chk_toudi())  location.href='<%=basePath %>payServlet?arg=updateDeliver&order_id=<%=orderAll.getOrder_id() %>'">确认投递</button><%} %>	
						<% if(orderAll.getIf_deliver().equals("1")) {%><button disabled onclick="location.href='<%=basePath %>payServlet?arg=updateDeliver&order_id=<%=orderAll.getOrder_id() %>'">确认投递</button><%} %>	
						</td>
						
					</tr>
					<%}
						%>
				<%--</c:forEach>--%>
			</table>
		</div>
	</c:if >
	
	
	<%--<div class="function-panel">
		<div class="panel panel-default">
			<table class="table table-bordered table-hover">
			<tr>
				<th>订单号</th>
				<th>客户号</th>	
				<th>客户名</th>	
				<th>支付金额</th>
				<th>订单日期</th>
				<th>是否已支付</th>	
				<th>是否已经投递</th>
				<th>操作</th>	
			</tr>
				<tr>
				<td>E32423</td>
				<td>4534</td>
				<td>fgfhrt</td>
				<td>fgfhrt</td>
				<td>rtyry</td>
				<td>否</td>
				<td>否</td>
				<td><button>打印投递单</button>&nbsp;<button>确认支付</button>&nbsp;<button>确认投递</button></td>
				</tr>
			</table>
	</div>
	</div>--%>
  </body>
</html>
