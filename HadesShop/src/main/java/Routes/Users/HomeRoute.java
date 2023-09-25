package Routes.Users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.HoaDon;
import Models.User;
import Controls.DanhMucControl;
import Controls.HoaDonControl;
import Controls.MauControl;
import Controls.SanPhamControl;
import Controls.UserControl;

/**
 * Servlet implementation class HomeRoute
 */
@WebServlet("/Home")
public class HomeRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SanPhamControl sanPhamControl;
	private DanhMucControl danhMucControl;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action =  request.getParameter("action");
		
		if(action == null) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/users/Home.jsp");
			rd.forward(request, response);
		}else {
			try {		
				sanPhamControl = new SanPhamControl();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				danhMucControl = new DanhMucControl();	
			} catch (Exception e) {			
				e.printStackTrace();
			}
			switch(action) {
			  case "getlistproduct":
				  this.getlistproduct(request,response);
			    break;
			  case "getlistcaterory":
				  this.getlistcaterory(request, response);
			    break;
			  default:
				  this.getlistproduct(request, response);
			}	
		}	
	}

	private void getlistcaterory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {		
			String data = danhMucControl.getListDanhMucJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/users/Home.jsp");
		rd.forward(request, response);
	}
}
