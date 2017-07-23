package zhouyou.control.callcenter.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zhouyou.control.callcenter.dao.AdviceDAO;
import zhouyou.control.callcenter.dao.AdviceTypeDAO;
import zhouyou.control.callcenter.dao.ComplainDAO;
import zhouyou.control.callcenter.dao.ComplainTypeDAO;
import zhouyou.control.callcenter.dao.CusMessageDAO;
import zhouyou.control.callcenter.dao.EmpBonusDAO;
import zhouyou.control.callcenter.dao.EmpDeductMarksDAO;
import zhouyou.control.callcenter.dao.EmpMessageDAO;
import zhouyou.control.callcenter.dao.PraiseDAO;
import zhouyou.control.callcenter.dao.PraiseTypeDAO;
import zhouyou.control.callcenter.entity.Advice;
import zhouyou.control.callcenter.entity.AdviceType;
import zhouyou.control.callcenter.entity.Complain;
import zhouyou.control.callcenter.entity.ComplainType;
import zhouyou.control.callcenter.entity.EmpBonus;
import zhouyou.control.callcenter.entity.EmpDeductMarks;
import zhouyou.control.callcenter.entity.Praise;
import zhouyou.control.callcenter.entity.PraiseType;

/**
 * 客服中心的处理类
 * 
 * @author zy
 * 
 */
public class CallCenterHandlerServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5723213037796777512L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		// 获取前台的arg参数决定采取何种类型的处理
		String arg = req.getParameter("arg");
		// 投诉类型的增删改查，显示
		if ("toShowComplainType".equals(arg)) {
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain.jsp").forward(req, resp);
		} else if ("addComplainType".equals(arg)) {
			addComplainType(req, resp);
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain.jsp").forward(req, resp);
		} else if ("delete".equals(arg)) {
			deleteComplainType(req, resp);
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain.jsp").forward(req, resp);
		} else if ("toEditComplainType".equals(arg)) {
			toEditComplainType(req, resp);
			req.getRequestDispatcher("edit_complainType.jsp")
					.forward(req, resp);
		} else if ("modifyComplainType".equals(arg)) {
			modifyComplainType(req, resp);
			req.removeAttribute("modifyComplainTypeStatus");
			req.setAttribute("modifyComplainTypeStatus", "success");
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain.jsp").forward(req, resp);
		}
		// 登记投诉
		else if ("toShowComplainReg".equals(arg)) {
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain_reg.jsp").forward(req, resp);
		}
		else if ("regComplain".equals(arg)) {
			addComplain(req, resp);
		}
		// 发行站处理投诉部分的功能
		else if ("toQueryComplain".equals(arg)) {
			req.setAttribute("complains", getComplains(req, resp));
			req.getRequestDispatcher("query_complain.jsp").forward(req, resp);
		} else if ("deductMarksFromEmp".equals(arg)) {
			deductMarksFromEmp(req, resp);
			req.setAttribute("complains", getComplains(req, resp));
			req.getRequestDispatcher("query_complain.jsp").forward(req, resp);
		} else if ("ignore".equals(arg)) {
			ignoreComplain(req, resp);
			req.setAttribute("complains", getComplains(req, resp));
			req.getRequestDispatcher("query_complain.jsp").forward(req, resp);
		} else if ("feedback".equals(arg)) {
			feedback(req, resp);
			req.setAttribute("complains", getComplains(req, resp));
			req.getRequestDispatcher("query_complain.jsp").forward(req, resp);
		}
		// 客服中心查看处理结果
		else if ("toShowComplainResult".equals(arg)) {
			req.setAttribute("complains", toShowComplainResult(req, resp));
			// 第一次查询，初始化显示第几页,pageNumber一直被用来跟踪显示的页面
			int pageNumber = 1;
			req.setAttribute("pageNumber", String.valueOf(pageNumber));

			req.getRequestDispatcher("complain_result.jsp").forward(req, resp);
		} else if ("lastpage".equals(arg) || "nextpage".equals(arg)) {
			req.setAttribute("complains", getComplainResultPage(req, resp));
			req.getRequestDispatcher("complain_result.jsp").forward(req, resp);
		} else if ("searchComplainByCustomerNumber".equals(arg)) {
			searchComplainByCustomerNumber(req, resp);
			req.getRequestDispatcher("complain_search.jsp").forward(req, resp);
		}
		// 查看已忽略的部分功能
		else if ("searchIgnoredComplains".equals(arg)) {
			searchIgnoredComplains(req, resp);
			// 跟踪页面，显示分页
			int pageNumber = 1;
			req.setAttribute("pageNumber", String.valueOf(pageNumber));

			req.getRequestDispatcher("ignored_complains.jsp")
					.forward(req, resp);
		} else if ("lastpageIgnored".equals(arg)
				|| "nextpageIgnored".equals(arg)) {
			req.setAttribute("ignoredComplains", getIgnoredComplainResultPage(
					req, resp));
			req.getRequestDispatcher("ignored_complains.jsp")
					.forward(req, resp);
		} else if ("searchIgnoredComplainByEmployeeNumber".equals(arg)) {
			searchIgnoredComplainByEmployeeNumber(req, resp);
			req.getRequestDispatcher("ignored_complain_search.jsp").forward(
					req, resp);
		}
		// 建议类型的查看和增删改查
		else if ("toShowAdviceType".equals(arg)) {
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice.jsp").forward(req, resp);
		} else if ("addAdviceType".equals(arg)) {
			addAdviceType(req, resp);
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice.jsp").forward(req, resp);
		} else if ("deleteAdviceType".equals(arg)) {
			deleteAdviceType(req, resp);
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice.jsp").forward(req, resp);
		} else if ("toEditAdviceType".equals(arg)) {
			toEditAdviceType(req, resp);
			req.getRequestDispatcher("edit_adviceType.jsp").forward(req, resp);
		} else if ("modifyAdviceType".equals(arg)) {
			modifyAdviceType(req, resp);
			req.removeAttribute("modifyAdviceTypeStatus");
			req.setAttribute("modifyAdviceTypeStatus", "success");
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice.jsp").forward(req, resp);
		}
		// 登记建议
		else if ("toShowAdviceReg".equals(arg)) {
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice_reg.jsp").forward(req, resp);
		} else if ("regAdvice".equals(arg)) {
			addAdvice(req, resp);
		}
		// 发行站查看建议
		else if ("toQueryAdvice".equals(arg)) {
			// 跳到查看建议页面，默认显示第一页的数据
			getAdvices(req, resp);

			// 跟踪页面，显示分页
			int pageNumber = 1;
			req.setAttribute("pageNumber", String.valueOf(pageNumber));

			req.getRequestDispatcher("query_advice.jsp").forward(req, resp);
		}
		// 分页显示的核心
		else if ("lastpageAdvice".equals(arg) || "nextpageAdvice".equals(arg)) {
			req.setAttribute("advices", getAdvicePage(req, resp));
			req.getRequestDispatcher("query_advice.jsp").forward(req, resp);
		}
		// 表扬类型的增删改查
		else if ("toShowPraiseType".equals(arg)) {
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise.jsp").forward(req, resp);
		} else if ("addPraiseType".equals(arg)) {
			addPraiseType(req, resp);
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise.jsp").forward(req, resp);
		} else if ("deletePraiseType".equals(arg)) {
			deletePraiseType(req, resp);
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise.jsp").forward(req, resp);
		} else if ("toEditPraiseType".equals(arg)) {
			toEditPraiseType(req, resp);
			req.getRequestDispatcher("edit_praiseType.jsp").forward(req, resp);
		} else if ("modifyPraiseType".equals(arg)) {
			modifyPraiseType(req, resp);
			req.removeAttribute("modifyPraiseTypeStatus");
			req.setAttribute("modifyPraiseTypeStatus", "success");
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise.jsp").forward(req, resp);
		}
		// 登记表扬
		else if ("toShowPraiseReg".equals(arg)) {
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise_reg.jsp").forward(req, resp);
		} else if ("regPraise".equals(arg)) {
			addPraise(req, resp);
		}
		// 发行站处理表扬
		else if ("toQueryPraise".equals(arg)) {
			req.setAttribute("praises", getPraises(req, resp));
			// System.out.println("in toQueryPraise else if ");
			req.getRequestDispatcher("query_praise.jsp").forward(req, resp);
		} else if ("bonusEmp".equals(arg)) {
			bonusEmp(req, resp);
			req.setAttribute("praises", getPraises(req, resp));
			req.getRequestDispatcher("query_praise.jsp").forward(req, resp);
		} else if ("ignorePraise".equals(arg)) {
			ignorePraise(req, resp);
			req.setAttribute("praise", getPraises(req, resp));
			req.getRequestDispatcher("query_complain.jsp").forward(req, resp);
		}
	}
    
	
	// 一下是由doget方法调度的函数
	private List<ComplainType> toShowComplainType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<ComplainType> list = new ArrayList<ComplainType>();
		ComplainTypeDAO dao = new ComplainTypeDAO();
		list = dao.query();
		return list;
	}

	private void addComplainType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String complain_type = req.getParameter("complain_type");

		if (complain_type == null || complain_type.trim().equals("")) {
			req.setAttribute("message", "类型名字不允许为空！");
		} else {
			ComplainType comtype = new ComplainType();
			comtype.setComplain_type(complain_type);
			ComplainTypeDAO dao = new ComplainTypeDAO();
			dao.add(comtype);
		}
	}

	private void deleteComplainType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String complain_type_id = req.getParameter("complain_type_id");
		ComplainType comtype = new ComplainType();
		comtype.setComplain_type_id(complain_type_id);
		ComplainTypeDAO dao = new ComplainTypeDAO();
		dao.delete(comtype);
	}

	private void toEditComplainType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String complain_type_id = req.getParameter("complain_type_id");
		ComplainTypeDAO dao = new ComplainTypeDAO();
		ComplainType comtype = dao.queryById(complain_type_id);
		req.setAttribute("complainType", comtype);
	}

	private void modifyComplainType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		deleteComplainType(req, resp);
		addComplainType(req, resp);
	}

	private void addComplain(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String complain_type = req.getParameter("complain_type");
		String area = req.getParameter("area");
		String employee_number = req.getParameter("employee_number");
		String customer_number = req.getParameter("customer_number");
		String customer_tel = req.getParameter("customer_tel");
		String content_detail = req.getParameter("content_detail");
		Complain complain = new Complain(complain_type, area, employee_number,
				customer_number, customer_tel, content_detail);
		Integer emp_number = null;
		Integer cus_number = null;
		boolean empNumberValid = false;
		try
		{
			emp_number = Integer.parseInt(employee_number);
			empNumberValid = true;
			cus_number = Integer.parseInt(customer_number);
			if (!(new EmpMessageDAO().exist(emp_number)))
			{
				req.setAttribute("notExistEmp", "notExist");
				req.setAttribute("complain", complain);
				req.setAttribute("complainType", toShowComplainType(req, resp));
				req.getRequestDispatcher("complain_reg.jsp").forward(req,resp);
			}
			else if (!(new CusMessageDAO().exist(cus_number)))
			{
				req.setAttribute("notExistCus", "notExist");
				req.setAttribute("complain", complain);
				req.setAttribute("complainType", toShowComplainType(req, resp));
				req.getRequestDispatcher("complain_reg.jsp").forward(req,resp);
			}
			else 
			{
				ComplainDAO dao = new ComplainDAO();
				dao.add(complain);
				req.removeAttribute("regComplainStatus");
				req.setAttribute("regComplainStatus", "success");
				req.setAttribute("complainType", toShowComplainType(req, resp));
				req.getRequestDispatcher("complain.jsp").forward(req, resp);
			}
		}
		catch(NumberFormatException e)
		{
			if (!empNumberValid)
			   req.setAttribute("employee_numberError", "雇员编号不合法");
			else 
			   req.setAttribute("customer_numberError","顾客编号不合法");
			req.setAttribute("complain", complain);
			req.setAttribute("complainType", toShowComplainType(req, resp));
			req.getRequestDispatcher("complain_reg.jsp").forward(req,resp);
		}
	}

	private List<Complain> getComplains(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		List<Complain> complains = new ArrayList<Complain>();
		ComplainDAO dao = new ComplainDAO();
		complains = dao.query();
		return complains;
	}

	private void deductMarksFromEmp(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {

		String employee_number = req.getParameter("employee_number");
		EmpDeductMarksDAO dao = new EmpDeductMarksDAO();

		EmpDeductMarks emp = new EmpDeductMarks();
		emp.setEmployee_number(employee_number);
		if (dao.exist(emp)) {
			dao.update(emp);
		} else {
			dao.add(emp);
		}

		changeComplainStatus(req, resp);
	}

	private void changeComplainStatus(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String complain_id = req.getParameter("complain_id");
		ComplainDAO dao = new ComplainDAO();
		Complain complain = new Complain();
		complain.setComplain_id(complain_id);
		dao.updateStatusToDealed(complain);
	}

	private void ignoreComplain(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String complain_id = req.getParameter("complain_id");
		ComplainDAO dao = new ComplainDAO();
		Complain complain = new Complain();
		complain.setComplain_id(complain_id);
		dao.updateStatusToIgnored(complain);
	}

	private void feedback(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String complain_id = req.getParameter("complain_id");
		String feedback = req.getParameter("feedback");
		ComplainDAO dao = new ComplainDAO();
		Complain complain = new Complain();
		complain.setComplain_id(complain_id);
		complain.setFeedback(feedback);
		dao.addFeedback(complain);
	}

	private List<Complain> toShowComplainResult(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		ComplainDAO dao = new ComplainDAO();
		List<Complain> allComplains = dao.queryDealedComplains();
		List<Complain> showComplains = new ArrayList<Complain>();
		// for (int i = 0; i < 5 && allComplains.get(i) != null; i++) {
		for (int i = 0; i < 5 && i < allComplains.size(); i++) {
			showComplains.add(allComplains.get(i));
		}
		return showComplains;
	}

	private List<Complain> getComplainResultPage(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		ComplainDAO dao = new ComplainDAO();
		List<Complain> allComplains = dao.queryDealedComplains();
		int length = allComplains.size();
		List<Complain> showComplains = new ArrayList<Complain>();
		// 获取要显示第几页
		String pageNumber = req.getParameter("pageNumber");
		// 处理没有上一页的情况
		if (Integer.parseInt(pageNumber) == 0) {
			pageNumber = 1 + "";
		}
		// 处理没有下一页的情况
		if (Integer.parseInt(pageNumber) * 5 >= (allComplains.size() + 5)) {
			pageNumber = String.valueOf(Integer.parseInt(pageNumber) - 1);
		}
		// 存入要显示的结果
		for (int i = (Integer.parseInt(pageNumber) - 1) * 5; i < ((Integer
				.parseInt(pageNumber) - 1) * 5 + 5)
				&& (i < length); i++) {
			showComplains.add(allComplains.get(i));
		}

		// 更新当前页面的值
		req.removeAttribute("pageNumber");
		req.setAttribute("pageNumber", pageNumber);
		return showComplains;
	}

	private void searchComplainByCustomerNumber(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String customer_number = req.getParameter("customer_number");
		ComplainDAO dao = new ComplainDAO();
		List<Complain> list = dao.queryByCustomer_number(customer_number);
		req.setAttribute("searchComplainResult", list);
	}

	private void searchIgnoredComplains(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		ComplainDAO dao = new ComplainDAO();
		List<Complain> allComplains = dao.queryIgnoredComplains();
		List<Complain> showComplains = new ArrayList<Complain>();
		// for (int i = 0; i < 5 && allComplains.get(i) != null; i++) {
		for (int i = 0; allComplains != null && i < 5 && i < allComplains.size(); i++) {
			showComplains.add(allComplains.get(i));
		}
		req.setAttribute("ignoredComplains", showComplains);
	}

	private List<Complain> getIgnoredComplainResultPage(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		ComplainDAO dao = new ComplainDAO();
		List<Complain> allComplains = dao.queryIgnoredComplains();
		int length = allComplains.size();
		List<Complain> showComplains = new ArrayList<Complain>();
		// 获取要显示第几页
		String pageNumber = req.getParameter("pageNumber");
		// 处理没有上一页的情况
		if (Integer.parseInt(pageNumber) == 0) {
			pageNumber = 1 + "";
		}
		// 处理没有下一页的情况
		if (Integer.parseInt(pageNumber) * 5 >= (allComplains.size() + 5)) {
			pageNumber = String.valueOf(Integer.parseInt(pageNumber) - 1);
		}
		// 存入要显示的结果
		for (int i = (Integer.parseInt(pageNumber) - 1) * 5; i < ((Integer
				.parseInt(pageNumber) - 1) * 5 + 5)
				&& (i < length); i++) {
			showComplains.add(allComplains.get(i));
		}

		// 更新当前页面的值
		req.removeAttribute("pageNumber");
		req.setAttribute("pageNumber", pageNumber);
		return showComplains;
	}

	private void searchIgnoredComplainByEmployeeNumber(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String employee_number = req.getParameter("employee_number");
		ComplainDAO dao = new ComplainDAO();
		List<Complain> list = dao
				.queryIgnoredByEmployee_number(employee_number);
		req.setAttribute("searchComplainResult", list);
	}

	private List<AdviceType> toShowAdviceType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		List<AdviceType> list = new ArrayList<AdviceType>();
		AdviceTypeDAO dao = new AdviceTypeDAO();
		list = dao.query();
		return list;
	}

	private void addAdviceType(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String advice_type = req.getParameter("advice_type");
		if (advice_type == null || advice_type.trim().equals("")) {
			req.setAttribute("message", "类型名字不允许为空！");
		} else {
			AdviceType advtype = new AdviceType();
			advtype.setAdvice_type(advice_type);
			AdviceTypeDAO dao = new AdviceTypeDAO();
			dao.add(advtype);
		}
	}

	private void deleteAdviceType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String advice_type_id = req.getParameter("advice_type_id");
		AdviceType advtype = new AdviceType();
		advtype.setAdvice_type_id(advice_type_id);
		AdviceTypeDAO dao = new AdviceTypeDAO();
		dao.delete(advtype);
	}

	private void toEditAdviceType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String advice_type_id = req.getParameter("advice_type_id");
		AdviceTypeDAO dao = new AdviceTypeDAO();
		AdviceType advtype = dao.queryById(advice_type_id);
		req.setAttribute("adviceType", advtype);
	}

	private void modifyAdviceType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		deleteAdviceType(req, resp);
		addAdviceType(req, resp);
	}

	private void addAdvice(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String advice_type = req.getParameter("advice_type");
		String area = req.getParameter("area");
		String employee_number = req.getParameter("employee_number");
		String customer_number = req.getParameter("customer_number");
		String customer_tel = req.getParameter("customer_tel");
		String content_detail = req.getParameter("content_detail");
		Advice advice = new Advice(advice_type, area, employee_number,
				customer_number, customer_tel, content_detail);
		Integer cus_number = null;
		
		try
		{
			cus_number = new Integer(customer_number);
			if (!(new CusMessageDAO().exist(cus_number)))
			{
				req.setAttribute("notExistCus", "顾客不存在");
				req.setAttribute("advice", advice);
				req.setAttribute("adviceType", toShowAdviceType(req, resp));
				req.getRequestDispatcher("advice_reg.jsp").forward(req,resp);
			}
			else 
			{
				AdviceDAO dao = new AdviceDAO();
				dao.add(advice);
				req.removeAttribute("regAdviceStatus");
				req.setAttribute("regAdviceStatus", "success");
				req.setAttribute("adviceType", toShowAdviceType(req, resp));
				req.getRequestDispatcher("advice.jsp").forward(req, resp);
			}
			
		}
		catch (NumberFormatException e)
		{
			req.setAttribute("customer_idError", "顾客编号不合法");
			req.setAttribute("advice", advice);
			req.setAttribute("adviceType", toShowAdviceType(req, resp));
			req.getRequestDispatcher("advice_reg.jsp").forward(req,resp);
		}
	}

	// 第一次查看建议时调用
	private void getAdvices(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Advice> allAdvices = new ArrayList<Advice>();
		AdviceDAO dao = new AdviceDAO();
		allAdvices = dao.query();
		List<Advice> showAdvices = new ArrayList<Advice>();
		for (int i = 0; allAdvices != null &&i < 5 && i < allAdvices.size(); i++) {
			showAdvices.add(allAdvices.get(i));
		}

		req.setAttribute("advices", showAdvices);
	}

	private List<Advice> getAdvicePage(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		AdviceDAO dao = new AdviceDAO();
		List<Advice> allAdvices = dao.query();
		int length = allAdvices.size();
		List<Advice> showAdvices = new ArrayList<Advice>();
		// 获取要显示第几页
		String pageNumber = req.getParameter("pageNumber");
		// 处理没有上一页的情况
		if (Integer.parseInt(pageNumber) == 0) {
			pageNumber = 1 + "";
		}
		// 处理没有下一页的情况
		if (Integer.parseInt(pageNumber) * 5 >= (allAdvices.size() + 5)) {
			pageNumber = String.valueOf(Integer.parseInt(pageNumber) - 1);
		}
		if (Integer.parseInt(pageNumber) > 10) {
			pageNumber = 10 + "";
		}
		// 存入要显示的结果
		for (int i = (Integer.parseInt(pageNumber) - 1) * 5; i < ((Integer
				.parseInt(pageNumber) - 1) * 5 + 5)
				&& (i < length); i++) {
			showAdvices.add(allAdvices.get(i));
		}

		// 更新当前页面的值
		req.removeAttribute("pageNumber");
		req.setAttribute("pageNumber", pageNumber);
		return showAdvices;
	}

	private List<PraiseType> toShowPraiseType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		List<PraiseType> list = new ArrayList<PraiseType>();
		PraiseTypeDAO dao = new PraiseTypeDAO();
		list = dao.query();
		return list;
	}

	private void addPraiseType(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String praise_type = req.getParameter("praise_type");
		if (praise_type == null || praise_type.trim().equals("")) {
			req.setAttribute("message", "类型名字不允许为空！");
		} else {
			PraiseType pratype = new PraiseType();
			pratype.setPraise_type(praise_type);
			PraiseTypeDAO dao = new PraiseTypeDAO();
			dao.add(pratype);
		}
	}

	private void deletePraiseType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String praise_type_id = req.getParameter("praise_type_id");
		PraiseType pratype = new PraiseType();
		pratype.setPraise_type_id(praise_type_id);
		PraiseTypeDAO dao = new PraiseTypeDAO();
		dao.delete(pratype);
	}

	private void toEditPraiseType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String praise_type_id = req.getParameter("praise_type_id");
		PraiseTypeDAO dao = new PraiseTypeDAO();
		PraiseType pratype = dao.queryById(praise_type_id);
		req.setAttribute("praiseType", pratype);
	}

	private void modifyPraiseType(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		deletePraiseType(req, resp);
		addPraiseType(req, resp);
	}

	private void addPraise(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String praise_type = req.getParameter("praise_type");
		String area = req.getParameter("area");
		String employee_number = req.getParameter("employee_number");
		String customer_number = req.getParameter("customer_number");
		String customer_tel = req.getParameter("customer_tel");
		String content_detail = req.getParameter("content_detail");
		Praise praise = new Praise(praise_type, area, employee_number,
				customer_number, customer_tel, content_detail);
		Integer emp_number = null;
		Integer cus_number = null;
		boolean empNumberValid = false;
		try
		{
			emp_number = Integer.parseInt(employee_number);
			empNumberValid = true;
			cus_number = Integer.parseInt(customer_number);
			if (!(new EmpMessageDAO().exist(emp_number)))
			{
				req.setAttribute("notExistEmp", "员工不存在");
				req.setAttribute("praise", praise);
				req.setAttribute("praiseType", toShowPraiseType(req, resp));
				req.getRequestDispatcher("praise_reg.jsp").forward(req,resp);
			}
			else if (!(new CusMessageDAO().exist(cus_number)))
			{
				req.setAttribute("notExistCus", "顾客不存在");
				req.setAttribute("praise", praise);
				req.setAttribute("praiseType", toShowPraiseType(req, resp));
				req.getRequestDispatcher("praise_reg.jsp").forward(req,resp);
			}
			else 
			{
				PraiseDAO dao = new PraiseDAO();
				dao.add(praise);
				req.removeAttribute("regPraiseStatus");
				req.setAttribute("regPraiseStatus", "success");
				req.setAttribute("praiseType", toShowPraiseType(req, resp));
				req.getRequestDispatcher("praise.jsp").forward(req, resp);
			}
		}
		catch(NumberFormatException e)
		{
			if (!empNumberValid)
			   req.setAttribute("employee_numberError", "雇员编号不合法");
			else 
			   req.setAttribute("customer_numberError","顾客编号不合法");
			req.setAttribute("praise", praise);
			req.setAttribute("praiseType", toShowPraiseType(req, resp));
			req.getRequestDispatcher("praise_reg.jsp").forward(req,resp);
		}
	}
    
	private List<Praise> getPraises(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		List<Praise> praises = new ArrayList<Praise>();
		PraiseDAO dao = new PraiseDAO();
		praises = dao.query();
		return praises;
	}

	private void bonusEmp(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String employee_number = req.getParameter("employee_number");
		EmpBonusDAO dao = new EmpBonusDAO();

		EmpBonus emp = new EmpBonus();
		emp.setEmployee_number(employee_number);
		if (dao.exist(emp)) {
			dao.update(emp);
		} else {
			dao.add(emp);
		}
		changePraiseStatus(req, resp);
	}

	private void changePraiseStatus(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		String praise_id = req.getParameter("praise_id");
		PraiseDAO dao = new PraiseDAO();
		Praise praise = new Praise();
		praise.setPraise_id(praise_id);
		dao.updateStatusToDealed(praise);
	}

	private void ignorePraise(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String praise_id = req.getParameter("praise_id");
		PraiseDAO dao = new PraiseDAO();
		Praise praise = new Praise();
		praise.setPraise_id(praise_id);
		dao.updateStatusToIgnored(praise);
	}
}
