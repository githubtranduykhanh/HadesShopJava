package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.DangKy;
import Models.KhachHang;
import Service.DangKyService;
import Systems.SystemMD5;

@SuppressWarnings("unchecked")
public class DangKyControl {
	private ArrayList<DangKy> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private DangKyService service;
    
    public DangKyControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new DangKyService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(DangKy model) throws Exception{
        if ( service.them(model) ) {
        	arraylist.add(model);
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(DangKy model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( DangKy item : arraylist ) {
                if (item.getTenDangNhap() == model.getTenDangNhap()){
                	arraylist.remove(item);
                break;
                }
            }
            return true;
        }
        
        return false;
    }
    
    /**
     * sửa thông tin của 1 tài khoản <br>
     * - Trừ thông tin đăng nhập của tài khoản đó
     * @return true nếu thực hiện thành công
     */
    public Boolean sua(DangKy model) throws Exception {
        if ( service.sua(model) ) {
            // duyệt từng phẩn tử
            for ( DangKy item : arraylist ) {
                if (item.getTenDangNhap() == model.getTenDangNhap()){                	       	
                	item.setTenDangNhap(model.getTenDangNhap());   
                	item.setMatKhau(model.getMatKhau());
                	item.setEmailDK(model.getEmailDK());
                	item.setDiaChiDK(model.getDiaChiDK());
                	item.setTenDayDu(model.getTenDayDu());
                	item.setCauHoiBaoMat(model.getCauHoiBaoMat());
                	item.setNgaySinh(model.getNgaySinh());
                	item.setGioiTinhDK(model.getGioiTinhDK());
                	item.setMaQuyen(model.getMaQuyen());
                	item.setAnhDaiDien(model.getAnhDaiDien());
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<DangKy> getListDangKy() {
        return arraylist;
    }
    public String getListDangKyJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(DangKy item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("TenDangNhap", item.getTenDangNhap());
        		jsonObject.put("EmailDK", item.getEmailDK());   
        		jsonObject.put("DiaChiDK", item.getDiaChiDK());
        		jsonObject.put("TenDayDu", item.getTenDayDu()); 
        		jsonObject.put("CauHoiBaoMat", item.getCauHoiBaoMat());
        		jsonObject.put("NgaySinh", item.getNgaySinh());
        		jsonObject.put("GioiTinhDK", item.getGioiTinhDK());
        		jsonObject.put("MaQuyen", item.getMaQuyen());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getDangKyByIdJSON(String name) {  
    	jsonObject = new JSONObject();
    	for ( DangKy item : arraylist ) {         
            if (item.getTenDangNhap().equalsIgnoreCase(name)) {
            	jsonObject.put("TenDangNhap", item.getTenDangNhap());
        		jsonObject.put("EmailDK", item.getEmailDK());   
        		jsonObject.put("DiaChiDK", item.getDiaChiDK());
        		jsonObject.put("TenDayDu", item.getTenDayDu()); 
        		jsonObject.put("CauHoiBaoMat", item.getCauHoiBaoMat());
        		jsonObject.put("NgaySinh", item.getNgaySinh());
        		jsonObject.put("GioiTinhDK", item.getGioiTinhDK());
        		jsonObject.put("MaQuyen", item.getMaQuyen());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public DangKy getDangKyById(String name) {  
    	for ( DangKy item : arraylist ) {         
            if (item.getTenDangNhap().equalsIgnoreCase(name)) {
                return item;
            }
        }
        return null;
    }
    public boolean isLoginDangKy(DangKy model) {  
    	for ( DangKy item : arraylist ) {      
            if (item.getEmailDK().equalsIgnoreCase(model.getEmailDK())) {          	
            	if(SystemMD5.isHashPasswordMD5(model.getMatKhau(), item.getMatKhau())) {
            		return true;
            	}else {
            		return false;
            	}               
            }
        }
        return false;
    }
    public DangKy DangKyByLogin(DangKy model) {  
    	for ( DangKy item : arraylist ) {         
            if (item.getEmailDK().equalsIgnoreCase(model.getEmailDK())) {          	
            	if(SystemMD5.isHashPasswordMD5(model.getMatKhau(), item.getMatKhau())) {
            		return item;
            	}else {
            		return null;
            	}               
            }
        }
        return null;
    }
}
