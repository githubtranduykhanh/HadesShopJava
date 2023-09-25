package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.ChatLieuControl;


/**
 * Servlet implementation class AdminMaterials
 */
@WebServlet("/AdminMaterials")
@MultipartConfig()
public class AdminMaterials extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ChatLieuControl chatLieuControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		try {
			chatLieuControl = new ChatLieuControl();	
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
			String data = chatLieuControl.getChatLieuByIdJSON(id);
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
			String data = chatLieuControl.getListChatLieuJSON();
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
