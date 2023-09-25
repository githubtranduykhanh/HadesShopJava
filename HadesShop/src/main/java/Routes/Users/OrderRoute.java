package Routes.Users;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.ChiTietDonDatHangControl;
import Controls.DonDatHangControl;
import Controls.SanPhamControl;

/**
 * Servlet implementation class OrderRoute
 */
@WebServlet("/Order")
public class OrderRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DonDatHangControl donDatHangControl;
	private ChiTietDonDatHangControl chiTietDonDatHangControl;
	private SanPhamControl sanPhamControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		
		if(action != null) {
			switch(action) {
			  case "getlistorder":
				  this.getlistorder(request,response);
			    break;
			  default:
				  this.getlistorder(request, response);
			}
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/users/Order.jsp");
			rd.forward(request, response);
		}
	}

	private void getlistorder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			donDatHangControl = new DonDatHangControl();
			String data = donDatHangControl.getListDonDatHangByMaKHJSON(id);
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {			
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
