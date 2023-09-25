package Routes.Users;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Controls.KhachHangControl;
import Models.KhachHang;
import Systems.SystemMD5;

/**
 * Servlet implementation class MyAccountRoute
 */
@WebServlet("/MyAccount")
@MultipartConfig()
public class MyAccountRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private KhachHangControl khachHangControl;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action != null) {
			switch(action) {
			  case "getlistblog":
				  this.getmyaccount(request,response);
			    break;
			  default:
				  this.getmyaccount(request, response);
			}
		}else {
			request.getRequestDispatcher("/views/users/MyAccount.jsp").forward(request, response);
		}
		
	}

	private void getmyaccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String data = "";
		try {
			khachHangControl = new KhachHangControl();	
			data = khachHangControl.getKhachHangByIdJSON(id);
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
		try {
			response.setContentType("text/html;charset=UTF-8");	
			request.setCharacterEncoding("UTF-8");
			
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String email = request.getParameter("email");		
			String number = request.getParameter("number");
			String provinces = request.getParameter("provinces");
			String districts = request.getParameter("districts");
			String wards = request.getParameter("wards");
			Part filePart = request.getPart("file");
			String fileName = Path.of(filePart.getSubmittedFileName()).getFileName().toString();
			
			System.out.println("name"+name);
			System.out.println("email: "+email);
			System.out.println("number: "+number);
			System.out.println("provinces: "+provinces);
			System.out.println("districts"+districts);
			System.out.println("wards"+wards);
			System.out.println("fileName"+fileName);
			KhachHang khachHang = khachHangControl.getKhachHangById(id);
			
			
			
			
			if(khachHang != null) {
				String address = provinces+","+districts+","+wards;
				khachHang.setTenKh(name);
				khachHang.setEmailKH(email);
				khachHang.setSdtKH(number);
				khachHang.setDiaChiKH(address);
				if(!fileName.equals("") || fileName == null) {
					khachHang.setAnhDaiDien(fileName);
					String readPath = request.getServletContext().getRealPath("/assets/images/KhachHang");
					if(!Files.exists(Path.of(readPath))) {
						Files.createDirectories(Path.of(readPath));
					}
					filePart.write(readPath +File.separator+fileName);
				}
				if(khachHangControl.sua(khachHang)) {	
					HttpSession session = request.getSession();
					session.setAttribute("LoginName",khachHang.getTenKh());	
					session.setAttribute("LoginEmail",khachHang.getEmailKH());
					session.setAttribute("LoginSDT",khachHang.getSdtKH());
					session.setAttribute("LoginID",khachHang.getMaKH());	
					session.setAttribute("LoginImage",khachHang.getAnhDaiDien());
					String data = khachHangControl.getKhachHangByIdJSON(id);
					response.setContentType("application/json");
				    response.setCharacterEncoding("UTF-8");
				    response.getWriter().write(data);
				}else {
					response.getWriter().write("");
				}
			}else {
				response.getWriter().write("");
			}	
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
