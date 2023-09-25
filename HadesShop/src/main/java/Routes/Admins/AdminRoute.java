package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Systems.SystemVariables;

/**
 * Servlet implementation class AdminRoute
 */
@WebServlet(urlPatterns = {"/Admin"})
public class AdminRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action != null) {
			HttpSession session = request.getSession();
			session.invalidate();
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write("ok");
		}else {
			request.getRequestDispatcher("/views/admins/Admin.jsp").forward(request, response);	
		}			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		String urlPage = request.getParameter("urlPage");
		String containerPage = "";
		if(!urlPage.equals(null)) {
			switch(urlPage) {
			  case "ListProduct":
				  containerPage = SystemVariables.STRING_LIST_PRODUC;
			    break;
			  case "ListColor":
				  containerPage = SystemVariables.STRING_LIST_COLOR;
			    break;
			  case "ListOrder":
				  containerPage = SystemVariables.STRING_LIST_ORDER;
			    break;
			  default:
			    // code block
			}		
			response.getWriter().write(containerPage);
		}else {
			request.getRequestDispatcher("/views/admins/Admin.jsp").forward(request, response);		
		}
	}

}
