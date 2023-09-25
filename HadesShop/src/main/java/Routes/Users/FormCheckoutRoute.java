package Routes.Users;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import Controls.DonDatHangControl;
import Controls.SanPhamControl;
import Controls.ChiTietDonDatHangControl;
import Models.DonDatHang;
import Systems.SystemVariables;
import Util.DateUtil;
import Models.CartItem;
import Models.ChiTietDonDatHang;

/**
 * Servlet implementation class FormCheckoutRoute
 */
@WebServlet("/FormCheckout")
@MultipartConfig()
public class FormCheckoutRoute extends HttpServlet { 
	private static final long serialVersionUID = 1L;
	private ObjectMapper objectMapper;
	private DonDatHangControl donDatHangControl;
	private ChiTietDonDatHangControl chiTietDonDatHangControl;
	private Cookie cookie = null;
	private Cookie[] cookies = null;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(false);
		Integer mkh = (Integer)session.getAttribute("LoginID");
		String payment =  request.getParameter("payment");
		String address =  request.getParameter("address");
		if(mkh != null ) {
			if(payment != null && address != null) {
				request.setAttribute("ADDRESS", address);
				request.setAttribute("PAYMENT", payment);
				RequestDispatcher rd = request.getRequestDispatcher("/views/users/FormCheckout.jsp");
				rd.forward(request, response);
			}else {
				response.sendRedirect("Cart");
			}
		}else {
			response.sendRedirect("Login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String action =  request.getParameter("action");
		if(action != null && !action.equals("")) {
			switch(action) {
			  case "proceedtocheckout":
				  proceedToCheckOut(request,response);
			    break;
			  case "completeorder":
				  completeOrder(request,response);
			    break;
			  default:
				  proceedToCheckOut(request,response);
			}
		}else {
			response.setCharacterEncoding("UTF-8");
		    response.getWriter().write("");
		}	
	}
	
	private void completeOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		String data = "";
		
		HttpSession session = request.getSession();
		int makh = (Integer) session.getAttribute("LoginID");
		String cartRequest =  request.getParameter("cart");
		System.out.println("--------------------------------------------------------------------------------------------------");
		Gson gson = new Gson();
		ArrayList<CartItem> arrCart = gson.fromJson(cartRequest, new TypeToken<ArrayList<CartItem>>() {}.getType());
		for(CartItem item : arrCart) {
			System.out.println(item.toString());
		}
		
		String name = request.getParameter("name");
		String email =  request.getParameter("email");
		String sdt =  request.getParameter("sdt");
		String address = request.getParameter("address");
		String payment =  request.getParameter("payment");
		
		System.out.println("Makh: "+makh);
		System.out.println("Name: "+name);
		System.out.println("Email: "+email);
		System.out.println("Sdt: "+sdt);
		System.out.println("Address: "+address);
		System.out.println("Payment: "+payment);
		//data = name+email+sdt+address+payment;	
		try {		
			donDatHangControl = new DonDatHangControl();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {		
			chiTietDonDatHangControl = new ChiTietDonDatHangControl();
		} catch (Exception e) {
			e.printStackTrace();
		}

		DonDatHang model = new DonDatHang();
		model.setMaKH(makh);
		model.setDiaChiKH(address);
		model.setEmailKH(email);
		model.setSdtKH(sdt);
		model.setTenKH(name);
		LocalDateTime current_date_time = LocalDateTime.now();
        //returns time and date object of today's date.
        //printing the time and date
        System.out.println("Local Date Time : " + current_date_time);
        //Timestamp object
        Timestamp timestamp_object = Timestamp.valueOf(current_date_time);
        System.out.println("Time stamp object : " + timestamp_object);
        
        Timestamp timestamp = DateUtil.convertStringToTimestamp(timestamp_object.toString());
        System.out.println("Time stamp : " + timestamp);
        
		model.setNgayTao(timestamp);
		if(payment == "cod"){
			model.setTinhTrangDonHang("0");
		}else{
			model.setTinhTrangDonHang("0");
		}
		double totalPrice = 0;	
		for(CartItem cartItem : arrCart) {
			totalPrice += cartItem.getPrice() * cartItem.getQuantity();
		}
		model.setThanhTienDH(totalPrice);
		try {
			if(donDatHangControl.them(model)) {
				DonDatHang modelNew = donDatHangControl.getDonDatHangNew();
				for(CartItem cartItem : arrCart) {
					ChiTietDonDatHang chiTietDonDatHang = new ChiTietDonDatHang();
					chiTietDonDatHang.setMaDonDatHang(modelNew.getMaDonDatHang());
					chiTietDonDatHang.setMaSP(cartItem.getProductId());
					chiTietDonDatHang.setSoLuongDat(cartItem.getQuantity());
					System.out.println("setDonGiaDat" + cartItem.getPrice() * cartItem.getQuantity());
					chiTietDonDatHang.setDonGiaDat(cartItem.getPrice() * cartItem.getQuantity());
					chiTietDonDatHangControl.them(chiTietDonDatHang);
				}
				data = "ok";
			} 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(data);
	    
	}

	private String processVietnameseData(String name) {
		String value;
		try {
			System.out.println("name"+name);
			byte[] bytes = name.getBytes("UTF-8");
			value = new String(bytes, "UTF-8");
			System.out.println("value"+value);
			return value;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	private void proceedToCheckOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Integer mkh = (Integer)session.getAttribute("LoginID");
		String data = "";
		if(mkh != null) {
			data = "ok";
		}
		response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(data);
	}

	private ArrayList<CartItem> getCartFromCookie(HttpServletRequest request) throws ServletException, IOException {
		ArrayList<CartItem> cart = new ArrayList<>();

        // Lấy danh sách cookie của request
        Cookie[] cookies = request.getCookies();

        // Kiểm tra xem đã có cookie giỏ hàng hay chưa
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                // Ở đây sử dụng tên cookie là "cart"
            	System.out.println("cookie.getName()"+cookie.getName());
                if (cookie.getName().equals("cart")) {
                    // Giải mã cookie thành danh sách sản phẩm
                	System.out.println("cookie.getValue()"+cookie.getValue());
                    Gson gson = new Gson();
                    cart = gson.fromJson(cookie.getValue(), new TypeToken<ArrayList<CartItem>>() {}.getType());
                    break;
                }
            }
        }
        
        return cart;
    }

}
