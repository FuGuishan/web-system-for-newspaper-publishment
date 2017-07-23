package hit.poms.empManager.businessReport.servlet;

import hit.poms.empManager.businessReport.dao.EmpManager_businessReportQueryDAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpManager_businessReportQueryServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doQuery(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
	protected void doQuery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String emp_id=req.getParameter("emp_id");//System.out.println(emp_id+"aaaa");
		Long id;
		if(!"".equals(emp_id)){
			id=Long.parseLong(emp_id);
		}else{
			id=null;
		}
		
		//����dao����
		EmpManager_businessReportQueryDAO dao=new EmpManager_businessReportQueryDAO();
		List list=new ArrayList();
		
		list=dao.doQuery(id);
		//��list�洢��request��
		req.setAttribute("list", list);
		
		//�������ʾ�ڡ���Query.jspҳ��
		req.getRequestDispatcher("empManager_businessReportQuery.jsp").forward(req, resp);
	}
}
