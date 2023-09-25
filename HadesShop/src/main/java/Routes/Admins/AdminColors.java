package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.MauControl;
import Models.Mau;

/**
 * Servlet implementation class AdminColors
 */
@WebServlet("/AdminColors")
@MultipartConfig()
public class AdminColors extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MauControl mauControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		try {
			mauControl = new MauControl();	
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
			String data = mauControl.getMauByIdJSON(id);
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
			String data = mauControl.getListMauJSON();
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
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(!action.equals(null)) {
			switch(action) {
			  case "delete":
				  this.delete(request,response);
			    break;
			  case "add":
				  this.add(request,response);
			    break;	
			  case "edit":
				  this.edit(request, response);
			    break;
			  default:
				  this.edit(request, response);
			}
		}
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data = "";
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		String name = request.getParameter("name");
		Mau model = new Mau();
		model.setMauID(id);
		model.setTenMau(name);
		try {
			boolean isData = mauControl.sua(model);
			if(isData) {
				data = "success";
			}
			else {
				data = "error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().write(data);
		
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data = "";
		int id = Integer.parseInt(request.getParameter("id"));
		Mau model = new Mau();
		model.setMauID(id);
		try {
			boolean isData = mauControl.xoa(model);
			if(isData) {
				data = "success";
			}
			else {
				data = "error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().write(data);
		
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String data = "";
		String name = request.getParameter("name");
		Mau model = new Mau();
		model.setTenMau(name);
		try {
			boolean isData = mauControl.them(model);
			if(isData) {
				data = "success";
			}
			else {
				data = "error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().write(data);	
	}
}
