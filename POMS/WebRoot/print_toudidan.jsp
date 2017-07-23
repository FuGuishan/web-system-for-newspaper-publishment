 <%@ page contentType="text/html; charset=utf-8" language="java"  pageEncoding="utf-8"
	import="java.sql.*,javax.servlet.ServletContext" errorPage=""%>
<%@page import="hit.poms.shoufeizhongxin.dao.OrderPayDAO,hit.poms.util.DBManager" %>
<%@page import="hit.poms.shoufeizhongxin.entity.*,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet "%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>投递单打印</title>
  <link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
  </head>

  <body>
 	<% 
 		String order_id = request.getParameter("order_id");
 		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		try{
			conn = DBManager.getConnection();
			String sql = "select * from (customer_book_sub natural join cus_message ) where order_id='"+order_id+"'";
			System.out.println("sql="+sql);
			st = conn.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next()){
 	%><center>
	<div class="function-panel" ">
	<div style="width:1000px; text-align:center">
		<font style="font-size:33px; font-weight:bold;">
		    <% out.println(order_id); %> 投递单
		</font>
	</div>
	</div>
	<br/>
	<hr />
	 <hr />
		<div class="function-panel" ">
			<table class="table table-bordered table-hover" text-align="center">
			<tr>
				<th>订单号</th>
				<td> <% out.println(order_id); %></td>
				
			</tr>
			<tr>
				<th>客户ID</th>
				<td> <% out.println(rs.getString("customer_id")); %></td>
				
			</tr>
			<tr>
				<th>客户名称</th>
				<td> <% out.println(rs.getString("customer_name")); %></td>
				
			</tr>
			<tr>
				<th>订单总额</th>
				<td> <% out.println(rs.getString("pub_money")); %></td>
				
			</tr>
			<tr>
				<th>订单日期</th>
				<td> <% out.println(rs.getString("start_time")); %></td>
				
			</tr>	
			<tr>
				<th>付款状态</th>
				<td> <% 
						if("1".equals(rs.getString("if_paied")))out.println("已支付");
						if("0".equals(rs.getString("if_paied")))out.println("未支付");
				 	 %>
				</td>	
			</tr>
			
			<tr>
				<th>投递状态</th>
				<td> <% 
						if("1".equals(rs.getString("if_toudi")))out.println("已投递");
						if("0".equals(rs.getString("if_toudi")))out.println("未投递");
				 	 %>
				</td>	
			</tr>
			<tr>
				<th>客户地址</th>
				<td> <% 
							out.println(rs.getString("CUSTOMER_ADDRESS"));
				 	 %>
				</td>	
			</tr>
			</table>
			<%
					}
				}catch(Exception e){
					e.printStackTrace();
				}finally{//释放所有数据库资源			
					DBManager.closeAll(conn, st, rs);
				}
			%>
		

	
	</center>
		<div class="form-group">
			<div class="col-sm-4">
				<button type="button" name="print-but" onclick="window.print()" class="btn btn-default">
					打印
				</button>
			</div>
			</div>
  </body>
</html>
