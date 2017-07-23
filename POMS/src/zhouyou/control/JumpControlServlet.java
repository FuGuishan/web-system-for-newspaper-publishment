package zhouyou.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JumpControlServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3860712092076956306L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset = utf-8");

		String arg = req.getParameter("arg");
		if (arg.equals("issueToDelete")) {
			req.getRequestDispatcher("IssueDelete.jsp").forward(req, resp);
		} else if (arg.equals("issueToModify")) {
			req.getRequestDispatcher("IssueModify.jsp").forward(req, resp);
		} else if (arg.equals("issueToAdd")) {
			req.getRequestDispatcher("IssueAdd.jsp").forward(req, resp);
		} else if (arg.equals("propertiesToEdit")) {
			req.getRequestDispatcher("PropertiesEdit.jsp").forward(req, resp);
		} else if (arg.equals("propertiesToAdd")) {
			req.getRequestDispatcher("PropertiesAdd.jsp").forward(req, resp);
		} else if (arg.equals("favourableToAdd")) {
			req.getRequestDispatcher("FavourableAdd.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
