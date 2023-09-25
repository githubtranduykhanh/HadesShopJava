package Routes.Users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.DanhMucTinControl;
import Controls.KhachHangControl;

/**
 * Servlet implementation class BlogRoute
 */
@WebServlet("/Blog")
public class BlogRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DanhMucTinControl danhMucTinControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action != null) {
			switch(action) {
			  case "getlistblog":
				  this.getListBlog(request,response);
			    break;
			  case "getcategoriesblog":
				  this.getCategoriesBlog(request,response);
			    break;
			  default:
				  this.getListBlog(request, response);
			}
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/users/Blog.jsp");
			rd.forward(request, response);
		}
	}

	private void getCategoriesBlog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			danhMucTinControl = new DanhMucTinControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		try {		
			String data = danhMucTinControl.getListDanhMucTinJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void getListBlog(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
