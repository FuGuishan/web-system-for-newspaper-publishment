<%@ page language="java" import="java.util.*,javax.servlet.ServletContext" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%!
	String tag="0";
%>
<head>
<script>
function test(c){
	document.cookie="tag="+c;
}
</script>

  <base href="<%=basePath%>"/>
   	<title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/left.css"/>
   	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/prototype.lite.js"></script>
	<script type="text/javascript" src="js/moo.fx.js"></script>
	<script type="text/javascript" src="js/moo.fx.pack.js"></script>
 </head>

<body>
<%
	Cookie cookie[]=request.getCookies();
		for(int i=0;i<cookie.length;i++){
		if(cookie[i].getName().equals("tag")){
			tag=cookie[i].getValue();
		}
	}
 %>
	<div class="register">
		<div class="register-infor">
			<center>
			<%
			/*左栏中登录人信息的显示 */
			ServletContext sc = getServletContext();
	  		String name = (String)sc.getAttribute("empName");
	  		String post = (String)sc.getAttribute("empPost");
	  		Long deptId = (Long)sc.getAttribute("empDeptId");
	  		if(post.equals("supermanager")){
	  		post = "超级管理员";
	  		}
	  		else if(deptId.toString().substring(0,1).equals("2")){
	  			post = "分发站操作员";
	  		}else if(deptId.toString().substring(0,2).equals("10")){
	  			post = "分站操作员";
	  		}else if(deptId.toString().substring(0,2).equals("11")){
	  			post = "财务管理人员";
	  		}else if(deptId.toString().substring(0,2).equals("12")){
	  			post = "客服管理人员";
	  		}
	  		else{
	  		post="总站管理人员";
	  		}
			%>
				欢迎<a href="/"><%out.print(name); %></a>使用本系统<br/>
				身份：<%out.print(post); %>
			</center>
		</div>
	</div>
	<div class="btn-group"> 
		<button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown" id="selector">
		<%= tag==null?"请选择系统":(tag.equals("1")?"中心站管理":(tag.equals("4")?"发行站管理":(tag.equals("2")?"分发站管理":(tag.equals("5")?"客服中心":"财务管理"))))%><span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
		<%
		if(post=="超级管理员"){%>
			<li ><a href="<%=basePath %>left.jsp" onclick="test(1)">中心站管理</a></li>
   			<li><a href="<%=basePath %>left.jsp"  onclick="test(4)">发行站管理</a></li>
    		<li><a href="<%=basePath %>left.jsp"  onclick="test(2)">分发站管理</a></li>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(3)">财务管理</a></li>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(5)">客服中心</a></li>
		<% }else if(deptId<=1099){%>
   			<li><a href="<%=basePath %>left.jsp"  onclick="test(4)">发行站管理</a></li>
    		<%}else if(deptId<=1199){ %>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(3)">财务管理</a></li>
    		<%}else if(deptId<=1299){ %>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(5)">客服中心</a></li>
    		<%}else if(deptId<=1999){ %>
    		<li ><a href="<%=basePath %>left.jsp" onclick="test(1)">中心站管理</a></li>
   			<li><a href="<%=basePath %>left.jsp"  onclick="test(4)">发行站管理</a></li>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(3)">财务管理</a></li>
    		<li><a href="<%=basePath %>left.jsp"   onclick="test(5)">客服中心</a></li>
    		<%}else{ %>
    		<li><a href="<%=basePath %>left.jsp"  onclick="test(2)">分发站管理</a></li>
    		<%} %>
		</ul>
	</div>
	<%if(tag.equals("1")){ %>
	<div class="nav-bar">
		<div id="container">
			<h1 class="type"><a href="javascript:void(0)">基本信息管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="zhongxin_setting_department.jsp" target="main">部门设置</a></li>
					<!--  <li><a href="MyJsp.jsp" target="main">职务设置</a></li>-->
					<!--<li><a href="/" target="main">报社设置</a></li>  -->
					<li><a href="zhongxin_setting_main.jsp" target="main">运输单位设置</a></li>
					<!--<li><a href="/" target="main">地区设置</a></li> -->
					<li><a href="systemstate.jsp" target="main">系统状态维护</a></li>
					<li><a href="companyMessage" target="main">公司信息</a></li>
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">人事管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="pm_query.jsp?partment=<%=deptId %>" target="main">员工信息设置</a></li>
					<li><a href="empManager_businessReportMain.jsp" target="main">业绩统计</a></li>
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">报刊设置</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="paperServlet?mode=query" target="main">报刊设置</a></li>
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">附赠设置</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="zengka_infor.jsp" target="main">赠卡</a></li>
					<li><a href="daijinjuan_infor.jsp" target="main">代金券</a></li>
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">通知</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>informMessageServlet?mode=viewFrom" target="main">收取通知</a></li>
					<li><a href="<%=basePath %>send.jsp" target="main">发送通知</a></li>
					<li><a href="<%=basePath %>informMessageServlet?mode=viewTo" target="main">发件箱</a></li>
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">信息汇总</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>orderSummary.jsp" target="main">每种报刊下数单</a></li>
					<li><a href="<%=basePath %>summary.jsp" target="main">各报社每日统计</a></li>
				</ul>
			</div>
				<h1 class="type"><a href="javascript:void(0)">安全中心</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>modify_code.jsp" target="main">修改密码</a></li>
				</ul>
			</div>
<h1 class="type"><a href="javascript:void(0)">查询</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>pub_query.jsp" target="main">报刊信息查询</a></li>
					<li><a href="<%=basePath %>customer_book_query.jsp" target="main">客户订购查询</a></li>
					<li><a href="<%=basePath %>order_query.jsp" target="main">报刊订单查询</a></li>
					<li><a href="<%=basePath %>sub_sell_query.jsp" target="main">分站月表查询</a></li>
					<li><a href="<%=basePath %>sub_log_query.jsp" target="main">分站日志查询</a></li>
					<li><a href="<%=basePath %>sub_order_query.jsp" target="main">分站订单修改</a></li>
				</ul>
			</div>
		</div>
	
		<%} %>
	<%if(tag.equals("2")){ %>
	<div class="nav-bar">
		<div id="container">
			<h1 class="type"><a href="javascript:void(0)">人事管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="pm_query.jsp?partment=<%=deptId %>" target="main">员工信息设置</a></li>
					<li><a href="empManager_businessReportMain.jsp" target="main">业绩统计</a></li>
				</ul>
			</div>
			<!--
			<h1 class="type"><a href="javascript:void(0)">查询</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="/" target="main">统计信息查询</a></li>
					<li><a href="/" target="main">基础信息查询</a></li>
					<li><a href="/" target="main">订户查询</a></li>
				</ul>
			</div>
			-->
			<h1 class="type"><a href="javascript:void(0)">系统管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="print_sub" target="main">印点送报点基本信息</a></li>
					<li><a href="fenfa_path.jsp" target="main">路线设置</a></li>
					<li><a href="Yinshuatotal" target="main">印刷总数汇总</a></li>
				</ul>
			</div>
				<h1 class="type"><a href="javascript:void(0)">人事管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="pm_query.jsp" target="main">员工信息设置</a></li>
					<li><a href="empManager_businessReportMain.jsp" target="main">业务统计</a></li>
					<!--  <li><a href="/" target="main">权限设置</a></li>-->
					<!--<li><a href="/" target="main">业务统计</a></li>-->	</ul></div>
				<h1 class="type"><a href="javascript:void(0)">通知</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>informMessageServlet?mode=viewFrom" target="main">收取通知</a></li>
					<li><a href="<%=basePath %>send.jsp" target="main">发送通知</a></li>
					<li><a href="<%=basePath %>informMessageServlet?mode=viewTo" target="main">发件箱</a></li>
				</ul>
	
		</div>
			<h1 class="type"><a href="javascript:void(0)">安全中心</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>modify_code.jsp" target="main">修改密码</a></li>
				</ul>
			</div>
		<%} %>
		<%if(tag.equals("3")){ %>
	<div class="nav-bar">
		<div id="container">
			<h1 class="type"><a href="javascript:void(0)">大客户管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="customer_pay.jsp" target="main">大客户缴款</a></li>
					<li><a href="customer_search.jsp" target="main">大客户订单查询</a></li>
				</ul>
			</div>
		  <h1 class="type"><a href="javascript:void(0)">报刊财务管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="fm_deliver_count.jsp" target="main">投递量统计</a></li>
				</ul>
			</div>
				<h1 class="type"><a href="javascript:void(0)">人事管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="pm_query.jsp?partment=<%=deptId %>" target="main">员工信息设置</a></li>
					<li><a href="empManager_businessReportMain.jsp" target="main">业务统计</a></li>

					<!-- <li><a href="/" target="main">权限设置</a></li> -->
					<!-- <li><a href="/" target="main">业务统计</a></li> -->
				</ul></div>
				<h1 class="type"><a href="javascript:void(0)">通知</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>informMessageServlet?mode=viewFrom" target="main">收取通知</a></li>
					<li><a href="<%=basePath %>send.jsp" target="main">发送通知</a></li>
					<li><a href="<%=basePath %>informMessageServlet?mode=viewTo" target="main">发件箱</a></li>
				</ul>
		</div>
				<h1 class="type"><a href="javascript:void(0)">安全中心</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>modify_code.jsp" target="main">修改密码</a></li>
				</ul>
			</div>
		
		<%} %>
		<%if(tag.equals("4")){ %>
	<div class="nav-bar">
		<div id="container">
			<h1 class="type"><a href="javascript:void(0)">商品订购</a></h1>
			<div class="content">
				<ul class="MM">
				
					<li><a href="order.jsp" target="main">订购中心</a></li>
					<li><a href="xuding.jsp" target="main">续订，退订处理</a></li>
					<li><a href="pay.jsp" target="main">收费中心</a></li>
					<!-- <li><a href="/" target="main">修改删除</a></li> -->
				</ul>
			</div>
				<h1 class="type"><a href="javascript:void(0)">监督管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toQueryComplain" target="main">投诉处理</a></li>
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toQueryPraise" target="main">表扬处理</a></li>
					<li><a href="<%=basePath%>callCenterHandlerServlet?arg=toQueryAdvice" target="main">建议查看</a></li>
					<li><a href="<%=basePath%>callCenterHandlerServlet?arg=searchIgnoredComplains" target="main">已忽略投诉</a></li>
				</ul>
			</div>
		<h1 class="type"><a href="javascript:void(0)">人事管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="pm_query.jsp?partment=<%=deptId %>" target="main">员工信息设置</a></li>
					<li><a href="empManager_businessReportMain.jsp" target="main">业绩统计</a></li>
				</ul></div>
				<h1 class="type"><a href="javascript:void(0)">通知</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>informMessageServlet?mode=viewFrom" target="main">收取通知</a></li>
					<li><a href="<%=basePath %>send.jsp" target="main">发送通知</a></li>
					<li><a href="<%=basePath %>informMessageServlet?mode=viewTo" target="main">发件箱</a></li>
					<!-- <li><a href="<%=basePath %>correct_address.jsp" target="main">修改地址</a></li> -->
				</ul>
			</div>
			<h1 class="type"><a href="javascript:void(0)">投递管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="deliverManager_orderList.jsp" target="main">欠款单打印</a></li>
					<li><a href="deliverManager_desManagerMain.jsp" target="main">投递段管理</a></li>
					<li><a href="deliverManager_orderNum.jsp" target="main">下单数管理</a></li>
				</ul>
	
		</div>
					<h1 class="type"><a href="javascript:void(0)">安全中心</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>modify_code.jsp" target="main">修改密码</a></li>
				</ul>
			</div>
		<%} %>
		
	    <!-- begin modify -->	
	<%if(tag.equals("5")){ %>
	<div class="nav-bar">
		<div id="container">
			<h1 class="type"><a href="javascript:void(0)">客服管理</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toShowComplainType" target="main">投诉管理</a></li>
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toShowAdviceType" target="main">建议管理</a></li>
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toShowPraiseType" target="main">表扬管理</a></li>
					<li><a href="<%=basePath %>callCenterHandlerServlet?arg=toShowComplainResult" target="main">投诉结果</a></li>
				</ul>
		
		</div>
				<h1 class="type"><a href="javascript:void(0)">安全中心</a></h1>
			<div class="content">
				<ul class="MM">
					<li><a href="<%=basePath %>modify_code.jsp" target="main">修改密码</a></li>
				</ul>
			</div>
		<%} %>
		
		
		<script type="text/javascript">
			var contents = document.getElementsByClassName('content');
			var toggles = document.getElementsByClassName('type');

			var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
			);
			myAccordion.showThisHideOpen(contents[0]);
		</script>
	</div>
</body>
</html>