package hit.poms.deliverManager.print.servlet;

import hit.poms.deliverManager.print.dao.deliverManager_orderListDAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeliverManager_orderListServlet extends HttpServlet{
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
		String order_id=req.getParameter("order_id");//System.out.println(emp_id+"aaaa");
		Long id;
		if(!"".equals(order_id)){
			id=Long.parseLong(order_id);
		}else{
			id=null;
		}
		
		//����dao����
		deliverManager_orderListDAO dao=new deliverManager_orderListDAO();
		List list=new ArrayList();
		
		list=dao.doQuery(id);
		//��list�洢��request��
		req.setAttribute("list", list);
		
		//�������ʾ�ڡ���Query.jspҳ��
		req.getRequestDispatcher("deliverManager_orderQueryList.jsp").forward(req, resp);
	}
}
