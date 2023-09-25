package Routes.Users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.DanhMucControl;
import Controls.SanPhamControl;

/**
 * Servlet implementation class CartRoute
 */
@WebServlet("/Cart")
@MultipartConfig()
public class CartRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SanPhamControl sanPhamControl;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action =  request.getParameter("action");
		
		if(action == null) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/users/Cart.jsp");
			rd.forward(request, response);
		}else {
			try {		
				sanPhamControl = new SanPhamControl();
			} catch (Exception e) {
				e.printStackTrace();
			}
			switch(action) {
			  case "getlistproduct":
				  this.getlistproduct(request,response);
			    break;
			  default:
				  this.getlistproduct(request, response);
			}	
		}
	}
	private void getlistproduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {		
			String data = sanPhamControl.getListSanPhamJSON();
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
