package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.NhomSanPham;
import Service.NhomSanPhamService;

@SuppressWarnings("unchecked")
public class NhomSanPhamControl {
	private ArrayList<NhomSanPham> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private NhomSanPhamService service;
    
    public NhomSanPhamControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new NhomSanPhamService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(NhomSanPham model) throws Exception{
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
    public Boolean xoa(NhomSanPham model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( NhomSanPham item : arraylist ) {
                if (item.getNhomID() == model.getNhomID()){
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
    public Boolean sua(NhomSanPham model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( NhomSanPham item : arraylist ) {
                if (item.getNhomID() == model.getNhomID()){                	
                	item.setNhomID(model.getNhomID());
                	item.setTenNhom(model.getTenNhom()); 
                	item.setAnhDaiDien(model.getAnhDaiDien()); 
                	item.setThuTu(model.getThuTu()); 
                	item.setSoSPHienThi(model.getSoSPHienThi()); 
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<NhomSanPham> getListSize() {
        return arraylist;
    }
    public String getListNhomSanPhamJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(NhomSanPham item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("NhomID", item.getNhomID());
        		jsonObject.put("TenNhom", item.getTenNhom());    
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		jsonObject.put("ThuTu", item.getThuTu()); 
        		jsonObject.put("SoSPHienThi", item.getSoSPHienThi());
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getNhomSanPhamByIdJSON(int id) {  
    	jsonObject = new JSONObject();       
    	for ( NhomSanPham item : arraylist ) {         
            if (item.getNhomID() == id) {
            	jsonObject.put("NhomID", item.getNhomID());
        		jsonObject.put("TenNhom", item.getTenNhom());    
        		jsonObject.put("AnhDaiDien", item.getAnhDaiDien());
        		jsonObject.put("ThuTu", item.getThuTu()); 
        		jsonObject.put("SoSPHienThi", item.getSoSPHienThi());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }  
    public NhomSanPham getNhomSanPhamById(int id) {  
    	for ( NhomSanPham item : arraylist ) {         
            if (item.getNhomID() == id) {
                return item;
            }
        }
        return null;
    }  
}
