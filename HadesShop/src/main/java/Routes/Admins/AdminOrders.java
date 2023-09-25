package Routes.Admins;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controls.DonDatHangControl;
import Controls.ChiTietDonDatHangControl;
import Controls.SanPhamControl;
import Models.DonDatHang;
/**
 * Servlet implementation class AdminOrders
 */
@WebServlet("/AdminOrders")
public class AdminOrders extends HttpServlet {
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
		
		if(!action.equals(null)) {
			switch(action) {
			  case "list":
				  this.list(request,response);
			    break;
			  case "byid":
				  this.byId(request, response);
			    break;
			  case "getlistorderdetailbyid":
				  this.getListOrderDetailById(request, response);
			    break;
			  case "getlistproduct":
				  this.getListProduct(request, response);
			    break;
			  default:
				  this.list(request, response);
			}
		}
	}

	private void getListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			sanPhamControl = new SanPhamControl();
			String data = sanPhamControl.getListSanPhamJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {			
			e.printStackTrace();
		}		
	}

	private void getListOrderDetailById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idString = request.getParameter("id");
		if(idString != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				chiTietDonDatHangControl = new ChiTietDonDatHangControl();
				String data = chiTietDonDatHangControl.getListChiTietDonDatHangByIdJSON(id);
				response.setContentType("application/json");
			    response.setCharacterEncoding("UTF-8");
			    response.getWriter().write(data);
			} catch (Exception e) {			
				e.printStackTrace();
			}	
		}
		
	}

	private void byId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idString = request.getParameter("id");
		if(idString != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				donDatHangControl = new DonDatHangControl();
				String data = donDatHangControl.getDonDatHangByIdJSON(id);
				response.setContentType("application/json");
			    response.setCharacterEncoding("UTF-8");
			    response.getWriter().write(data);
			} catch (Exception e) {			
				e.printStackTrace();
			}	
		}	
	}

	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			donDatHangControl = new DonDatHangControl();
			String data = donDatHangControl.getListDonDatHangJSON();
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
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		
		if(!action.equals(null)) {
			switch(action) {
			  case "opitonorderstatus":
				  this.opitonorderstatus(request,response);
			    break;
			  default:
				  this.opitonorderstatus(request, response);
			}
		}
	}

	private void opitonorderstatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = request.getParameter("status");
		int code = Integer.parseInt(request.getParameter("code"));
		System.out.println("status:"+status);
		System.out.println("code:"+code);
		String data = "";
		try {
			donDatHangControl = new DonDatHangControl();
			DonDatHang donDatHang = donDatHangControl.getDonDatHangById(code);
			System.out.println(donDatHang.toString());
			donDatHang.setTinhTrangDonHang(status);
			System.out.println(donDatHang.toString());
			if(donDatHangControl.sua(donDatHang)) {
				DonDatHang donDatHangNew = donDatHangControl.getDonDatHangById(code);
				System.out.println(donDatHang.toString());
				data = "ok";
			}		
		} catch (Exception e) {			
			e.printStackTrace();
		}
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(data);
	}

}
