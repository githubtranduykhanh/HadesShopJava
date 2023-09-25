package Routes.Admins;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import Controls.DanhMucControl;
import Controls.SanPhamControl;
import Controls.MauControl;
import Controls.SizeControl;
import Controls.ChatLieuControl;
import Controls.NhomSanPhamControl;
import Models.DanhMuc;
import Models.SanPham;
import Util.DateUtil;
/**
 * Servlet implementation class AdminProducts
 */
@WebServlet("/AdminProducts")
@MultipartConfig()
public class AdminProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SanPhamControl sanPhamControl;
	private DanhMucControl danhMucControl;
	private MauControl mauControl;
	private SizeControl sizeControl;
	private ChatLieuControl chatLieuControl;
	private NhomSanPhamControl nhomSanPhamControl;
	
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
		try {
			mauControl = new MauControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		try {
			sizeControl = new SizeControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		try {
			chatLieuControl = new ChatLieuControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		try {
			nhomSanPhamControl = new NhomSanPhamControl();	
		} catch (Exception e) {			
			e.printStackTrace();
		}
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		if(!action.equals(null)) {
			switch(action) {
			  case "add":
				  this.add(request,response);
			    break;
			  case "delete":
				  this.delete(request,response);
			    break;
			  case "getproductbyid":
				  this.getproductbyid(request,response);
			    break;
			  case "edit":
				  this.edit(request,response);
			    break;
			  case "loadcategory":
				  this.loadCategory(request, response);
			    break;
			  case "loadcolor":
				  this.loadColor(request, response);
			    break;
			  case "loadsize":
				  this.loadSize(request, response);
			    break;
			  case "loadmaterial":
				  this.loadMaterial(request, response);
			    break;
			  case "loadproductgroups":
				  this.loadProductGroups(request, response);
			    break;
			  case "loadtable":
				  this.loadProducts(request, response);
			    break;
			  default:
				  this.loadCategory(request, response);
			}
		}		
		
	}
	
	

	private void getproductbyid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			String item = sanPhamControl.getSanPhamByIdJSON(id);	
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
			response.getWriter().write(item);	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");	
		String data ="";
		int id = Integer.parseInt(request.getParameter("id"));
		int category = Integer.parseInt(request.getParameter("category"));
		int color = Integer.parseInt(request.getParameter("color"));
		int size = Integer.parseInt(request.getParameter("size"));
		int group = Integer.parseInt(request.getParameter("group"));
		int material = Integer.parseInt(request.getParameter("material"));
		String name = request.getParameter("name");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));
		String created = request.getParameter("created");
		String cancellation = request.getParameter("cancellation");
		String description = request.getParameter("description");
		
		Part filePart = request.getPart("file");
		String fileName = Path.of(filePart.getSubmittedFileName()).getFileName().toString();
		System.out.println(fileName);
		
		SanPham model = new SanPham();
		model.setMaSP(id);
		model.setTenSP(name);
		model.setMauID(color);
		model.setSizeID(size);
		model.setChatLieuID (material);	
		model.setSoLuongSP(quantity);
		model.setGiaSP(price);
		model.setMotaSP(description);
		model.setNgayTao(DateUtil.convertStringToTimestamp(created));
		model.setNgayHuy(DateUtil.convertStringToTimestamp(cancellation));
		model.setMaDM(category);
		model.setNhomID(group);
				
		SanPham modelOld = sanPhamControl.getSanPhamById(id);
		
		if(fileName.equals("") || fileName == null) {
			model.setAnhSP(modelOld.getAnhSP());
		}else {
			model.setAnhSP(fileName);
			String readPath = request.getServletContext().getRealPath("/assets/images/products");
			if(!Files.exists(Path.of(readPath))) {
				Files.createDirectories(Path.of(readPath));
			}
			filePart.write(readPath +File.separator+fileName);
		}
				
		try {
			boolean isData = sanPhamControl.sua(model);
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
		response.setContentType("text/html;charset=UTF-8");	
		String data = "";
		int id = Integer.parseInt(request.getParameter("id"));
		SanPham model = new SanPham();
		model.setMaSP(id);
		try {
			boolean isCheck = sanPhamControl.xoa(model);	
			if(isCheck) {
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

	private void loadProductGroups(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {		
			String data = nhomSanPhamControl.getListNhomSanPhamJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}

	private void loadMaterial(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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

	private void loadSize(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {		
			String data = sizeControl.getListSizeJSON();
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(data);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}

	private void loadColor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");	
		request.setCharacterEncoding("UTF-8");
		String data ="";
		int category = Integer.parseInt(request.getParameter("category"));
		int color = Integer.parseInt(request.getParameter("color"));
		int size = Integer.parseInt(request.getParameter("size"));
		int group = Integer.parseInt(request.getParameter("group"));
		int material = Integer.parseInt(request.getParameter("material"));
		String name = request.getParameter("name");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int price = Integer.parseInt(request.getParameter("price"));
		String created = request.getParameter("created");
		String cancellation = request.getParameter("cancellation");
		String description = request.getParameter("description");

		Part filePart = request.getPart("file");
		System.out.println("filePart"+filePart);
		String fileName = Path.of(filePart.getSubmittedFileName()).getFileName().toString();
		System.out.println("fileName"+fileName);
		SanPham model = new SanPham();
		model.setTenSP(name);
		model.setMauID(color);
		model.setSizeID(size);
		model.setChatLieuID (material);
		model.setAnhSP(fileName);
		model.setSoLuongSP(quantity);
		model.setGiaSP(price);
		model.setMotaSP(description);
		model.setNgayTao(DateUtil.convertStringToTimestamp(created));
		model.setNgayHuy(DateUtil.convertStringToTimestamp(cancellation));
		model.setMaDM(category);
		model.setNhomID(group);
		String readPath = request.getServletContext().getRealPath("/assets/images/products");	
		System.out.println("readPath"+readPath);
		if(!Files.exists(Path.of(readPath))) {
			Files.createDirectories(Path.of(readPath));
		}
		System.out.println("readPath +File.separator+fileName"+readPath +File.separator+fileName);
		filePart.write(readPath +File.separator+fileName);		
		try {
			boolean isData = sanPhamControl.them(model);
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
		System.out.println("San Pham: "+model.toString());
		System.out.println(readPath);
		response.getWriter().write(data);
		
	}
	private void loadCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
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
	private void loadProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
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
	
}
