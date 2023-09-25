package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.KhachHang;
import Service.KhachHangService;
import Systems.SystemMD5;

@SuppressWarnings("unchecked")
public class KhachHangControl {
	private ArrayList<KhachHang> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private KhachHangService service;
    
    public KhachHangControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new KhachHangService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(KhachHang model) throws Exception{
        if ( service.them(model) ) {
        	arraylist = service.docDB();
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(KhachHang model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( KhachHang item : arraylist ) {
                if (item.getMaKH() == model.getMaKH()){
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
    public Boolean sua(KhachHang model) throws Exception {
        if ( service.sua(model) ) {
            // duyệt từng phẩn tử
            for ( KhachHang item : arraylist ) {
                if (item.getMaKH() == model.getMaKH()){                	       	
                	item.setTenKh(model.getTenKh());   
                	item.setDiaChiKH(model.getDiaChiKH());
                	item.setSdtKH(model.getSdtKH());
                	item.setEmailKH(model.getEmailKH());
                	item.setMatKhau(model.getMatKhau());
                	item.setAnhDaiDien(model.getAnhDaiDien());
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<KhachHang> getListKhachHang() {
        return arraylist;
    }
    public String getListKhachHangJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(KhachHang item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("MaKH", item.getMaKH());
        		jsonObject.put("TenKh", item.getTenKh());   
        		jsonObject.put("DiaChiKH", item.getDiaChiKH());
        		jsonObject.put("sdtKH", item.getSdtKH()); 
        		jsonObject.put("EmailKH", item.getEmailKH());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getKhachHangByIdJSON(int id) {  
    	jsonObject = new JSONObject();
    	for ( KhachHang item : arraylist ) {         
            if (item.getMaKH() == id) {
            	jsonObject.put("MaKH", item.getMaKH());
        		jsonObject.put("TenKh", item.getTenKh());   
        		jsonObject.put("DiaChiKH", item.getDiaChiKH());
        		jsonObject.put("sdtKH", item.getSdtKH()); 
        		jsonObject.put("EmailKH", item.getEmailKH());
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public KhachHang getKhachHangById(int id) {  
    	for ( KhachHang item : arraylist ) {         
            if (item.getMaKH() == id) {
                return item;
            }
        }
        return null;
    }
    public boolean isLoginKhachHang(KhachHang model) {  
    	for ( KhachHang item : arraylist ) {         
            if (item.getEmailKH().equalsIgnoreCase(model.getEmailKH())) {          	
            	if(SystemMD5.isHashPasswordMD5(model.getMatKhau(), item.getMatKhau())) {
            		return true;
            	}else {
            		return false;
            	}               
            }
        }
        return false;
    }
    public KhachHang KhachHangByLogin(KhachHang model) {  
    	for ( KhachHang item : arraylist ) {         
            if (item.getEmailKH().equalsIgnoreCase(model.getEmailKH())) {          	
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
