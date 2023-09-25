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
import Controls.DangKyControl;
import Models.DangKy;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
@MultipartConfig()
public class LoginRoute extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private KhachHangControl khachHangControl;
	private DangKyControl dangKyControl;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			khachHangControl = new KhachHangControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		try {
			dangKyControl = new DangKyControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		request.getRequestDispatcher("/views/users/Login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(action != null) {
			switch(action) {
			  case "login":
				  login(request,response);
			    break;
			  case "logout":
				  logout(request,response);
			    break;
			  case "register":
				  register(request,response);
			    break;
			  default:
				  login(request,response);
			}
		}
		
			
	}


	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		session.invalidate();
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write("ok");
	}


	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html;charset=UTF-8");	
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			KhachHang khachHang = new KhachHang();
			String name = request.getParameter("name");
			String email = request.getParameter("email");		
			String phone = request.getParameter("phone");
			String password = request.getParameter("password");
			String provinces = request.getParameter("provinces");
			String districts = request.getParameter("districts");
			String wards = request.getParameter("wards");
			String message = "Thêm tài khoảng không thành công!!";
			Part filePart = request.getPart("file");
			String fileName = Path.of(filePart.getSubmittedFileName()).getFileName().toString();
			
			System.out.println("name"+name);
			System.out.println("email: "+email);
			System.out.println("phone: "+phone);
			System.out.println("password: "+password);
			System.out.println("provinces: "+provinces);
			System.out.println("districts"+districts);
			System.out.println("wards"+wards);
			System.out.println("fileName"+fileName);
			
			if(email.equals("")) {
				request.setAttribute("ERRORREGISTEREMAIL", "Vui lòng nhập email của bạn !!");
				request.setAttribute("MASSAGEERR", "MASSAGEERR");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}else if(password.equals("")) {
				request.setAttribute("ERRORREGISTERPASSWORD", "Vui lòng nhập password của bạn !!");
				request.setAttribute("MASSAGEERR", "MASSAGEERR");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}else if(name.equals("")) {
				request.setAttribute("ERRORREGISTERNAME", "Vui lòng nhập name của bạn !!");
				request.setAttribute("MASSAGEERR", "MASSAGEERR");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}else if(phone.equals("")) {
				request.setAttribute("ERRORREGISTERPHONE", "Vui lòng nhập phone của bạn !!");
				request.setAttribute("MASSAGEERR", "MASSAGEERR");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}
			else{
				String address = provinces+","+districts+","+wards;
				khachHang.setTenKh(name);
				khachHang.setEmailKH(email);
				khachHang.setMatKhau(SystemMD5.HashPasswordMD5(password));
				khachHang.setSdtKH(phone);
				khachHang.setDiaChiKH(address);
				khachHang.setAnhDaiDien(fileName);
				if(khachHangControl.them(khachHang)) {
					String readPath = request.getServletContext().getRealPath("/assets/images/KhachHang");	
					if(!Files.exists(Path.of(readPath))) {
						Files.createDirectories(Path.of(readPath));
					}
					filePart.write(readPath +File.separator+fileName);
					request.setAttribute("MASSAGESUCCESS", "SUCCESS");		
					RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
					rd.forward(request, response);
				}else {
					request.setAttribute("MASSAGEREGISTER", message);
					RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
					rd.forward(request, response);
				}	
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}


	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			KhachHang khachHang = new KhachHang();
			DangKy dangKy = new DangKy();
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String message = "Tài khoản hoặc mật khẩu không chính xác!!";
			dangKy.setEmailDK(email);
			dangKy.setMatKhau(password);
			khachHang.setEmailKH(email);
			khachHang.setMatKhau(password);
			if(email.equals("")) {
				request.setAttribute("ERRORUSER", "Vui lòng nhập use của bạn !!");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}else if(password.equals("")) {
				request.setAttribute("ERRORPASSWORD", "Vui lòng nhập password của bạn !!");
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
				rd.forward(request, response);
			}
			else{
				if(khachHangControl.isLoginKhachHang(khachHang)) {
					if(khachHangControl.KhachHangByLogin(khachHang) != null) {
						KhachHang sessionKhachHang = khachHangControl.KhachHangByLogin(khachHang);
						HttpSession session = request.getSession();
						session.setAttribute("LoginName",sessionKhachHang.getTenKh());	
						session.setAttribute("LoginEmail",sessionKhachHang.getEmailKH());
						session.setAttribute("LoginSDT",sessionKhachHang.getSdtKH());
						session.setAttribute("LoginID",sessionKhachHang.getMaKH());	
						session.setAttribute("LoginImage",sessionKhachHang.getAnhDaiDien());
					}	
					response.sendRedirect("Home");
				}
				else if(dangKyControl.isLoginDangKy(dangKy)) {
					if(dangKyControl.DangKyByLogin(dangKy) != null) {
						DangKy sessionKhachHang = dangKyControl.DangKyByLogin(dangKy);
						HttpSession session = request.getSession();
						session.setAttribute("LoginName",sessionKhachHang.getTenDayDu());	
						session.setAttribute("LoginID",sessionKhachHang.getTenDangNhap());	
						session.setAttribute("LoginImage",sessionKhachHang.getAnhDaiDien());
					}		
					
					response.sendRedirect("Admin");	
				}
				else {
					request.setAttribute("MASSAGE", message);		
					RequestDispatcher rd = request.getRequestDispatcher("/views/users/Login.jsp");
					rd.forward(request, response);
				}
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}

}
