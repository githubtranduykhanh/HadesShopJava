package Routes.Users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.DanhMucTinControl;
import Controls.TinTucControl;
import Models.TinTuc;

/**
 * Servlet implementation class BlogItemRoute
 */
@WebServlet("/BlogItem")
public class BlogItemRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TinTucControl tinTucControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID =  request.getParameter("ID");
		if(ID != null) {
			try {
				tinTucControl = new TinTucControl();	
			} catch (Exception e) {			
				e.printStackTrace();
			}
			try {
				int iDInteger = Integer.parseInt(ID);
				System.out.println("iDInteger"+iDInteger);
				ArrayList<TinTuc> data = tinTucControl.getListTinTucByMaDM(iDInteger);	
				request.setAttribute("LISTBLOGITEM",data);	
				request.setAttribute("MADM",iDInteger);
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/BlogItem.jsp");
				rd.forward(request, response);
			} catch (Exception e) {			
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("Blog");
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
