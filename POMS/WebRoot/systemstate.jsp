<%@ page language="java" import="java.util.*" import="hit.poms.login.dao.LoginDAO"
import="hit.poms.dao.entity.Employee" 
import="hit.poms.dao.entity.Substation" 
import="hit.poms.dsz.dao.SubDAO"pageEncoding="GB18030"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>��������ϵͳ</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/right.css"/>	

  </head>
  
  <body>
    <div class="bread-crumb">
    	<ol class="breadcrumb">
		  <li><a href="index.jsp">��ҳ</a></li>
		  <li><a href="#">������Ϣ����</a></li>
		  <li class="active">ϵͳ״̬ά��</li>
		</ol>
    </div>
    <hr />
    <%String if_online="1";
	Employee emp = new Employee();
	
	emp.setIf_online(if_online);
	List list = new ArrayList();
	List list1 = new ArrayList();
	LoginDAO dao = new LoginDAO();
	list=dao.doQuery(emp);
	request.setAttribute("list", list); 
	%>
    <div class="function-panel" align="center">
    	<form action = "" method = "post">
    	
			<h2><strong style="font-size:25px;">��ǰ�����û�</strong></h2>
				<table  class="table table-bordered table-hover">
					<tr>
						<td width="200px" align="center">�û����</td>
						<td width="200px" align="center">���ڲ���</td>
					</tr>
					<%int i=list.size();
					for(int j=0;j<i;j++){
						Substation sub=new Substation();
						Long sub_id = 0L;
						sub_id = (((Employee)list.get(j)).getEmp_dept_id());
						sub.setSubstation_id(sub_id);
						SubDAO sdao=new SubDAO();
						list1=sdao.doQuery(sub);
						out.println("<tr>");
						out.println("<td align=\"center\">"+((Employee)list.get(j)).getEmp_id()+"</td>");
						out.println("<td align=\"center\">"+((Substation)list1.get(0)).getSubstation_name()+"</td>");
						out.println("</tr>");
					}%>
    	</form>
    </div>	
    <div class="form-group">
    <form action = "quitServlet" method = "post" name="form1" onSubmit=" return closebut()">
		<center>	<div class="col-sm-2" style="margin-left:200px;">
		<%if (getServletContext().getAttribute("dsz_flag")==null||(Integer)getServletContext().getAttribute("dsz_flag")==0){ %>
				<button type="submit" class="btn btn-default" name="submit" id="in" 
					onclick="location.href='<%=basePath %>quitServlet?arg=in'" disabled>
					����
				</button>
			</div>
			<div class="col-sm-3">
				<button type="button" class="btn btn-default" name="quit" 
				id="quit" onclick="location.href='<%=basePath %>quitServlet?arg=quit'" >
					��ʱ�ر�ϵͳ
				</button>
			</div>
			<div>
				<button type="button" class="btn btn-default" name="reset" id="" 
				onclick="location.href='<%=basePath %>quitServlet?arg=quittoo'" >
					ϵͳά��
				</button><% } else {%>
				<button type="submit" class="btn btn-default" name="submit" id="in" 
					onclick="location.href='<%=basePath %>quitServlet?arg=in'"  >
					����
				</button>
			</div>
			<div class="col-sm-3">
				<button type="button" class="btn btn-default" name="quit" 
				id="quit" onclick="location.href='<%=basePath %>quitServlet?arg=quit'" <%=(Integer)getServletContext().getAttribute("dsz_flag")==1||(Integer)getServletContext().getAttribute("dsz_flag")==2?"disabled":""%>>
					��ʱ�ر�ϵͳ
				</button>
			</div>
			<div>
				<button type="button" class="btn btn-default" name="reset" id="" 
				onclick="location.href='<%=basePath %>quitServlet?arg=quittoo'" <%=(Integer)getServletContext().getAttribute("dsz_flag")==2||(Integer)getServletContext().getAttribute("dsz_flag")==1?"disabled":""%>>
					ϵͳά��
				</button>
				
				<%} %>
			</div></center>
		</form>
		</div>
  </body>
</html>
