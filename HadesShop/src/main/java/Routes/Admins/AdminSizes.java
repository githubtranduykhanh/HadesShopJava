package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.MauControl;
import Controls.SizeControl;

/**
 * Servlet implementation class AdminSizes
 */
@WebServlet("/AdminSizes")
@MultipartConfig()
public class AdminSizes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SizeControl sizeControl;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		try {
			sizeControl = new SizeControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		if(!action.equals(null)) {
			switch(action) {
			  case "list":
				  this.list(request,response);
			    break;
			  case "byid":
				  this.byId(request, response);
			    break;
			  default:
				  this.list(request, response);
			}
		}
	}
	private void byId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		try {		
			String data = sizeControl.getSizeByIdJSON(id);
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
	}

	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {		
			String data = sizeControl.getListSizeJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
