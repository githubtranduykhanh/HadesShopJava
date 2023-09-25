package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.SanPhamControl;

/**
 * Servlet implementation class AdminLoadProducts
 */
@WebServlet("/AdminLoadProducts")
public class AdminLoadProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SanPhamControl sanPhamControl;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {		
			sanPhamControl = new SanPhamControl();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {		
			String data = sanPhamControl.getListSanPhamJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    System.out.println(data);
		    response.getWriter().write("Hello");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
