package hit.poms.deliverManager.print.servlet;

import hit.poms.deliverManager.print.dao.deliverManager_orderListDAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeliverManager_orderPrintServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// ��ȡarg����������arg ��ֵ��ת����ͬ�ķ���ȥִ��
		String arg = req.getParameter("arg");System.out.println(arg);
		Long id=Long.parseLong(arg);
		
		//����dao����
		deliverManager_orderListDAO dao=new deliverManager_orderListDAO();
		List list=new ArrayList();
		
		list=dao.doQuery(id);
		//��list�洢��request��
		req.setAttribute("list", list);
		
		//�������ʾ�ڡ���Query.jspҳ��
		req.getRequestDispatcher("deliverManager_orderPrint.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
