package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.DanhMuc;

import Service.DanhMucService;

@SuppressWarnings("unchecked")
public class DanhMucControl {
	private ArrayList<DanhMuc> listDanhMuc;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private DanhMucService danhMucService;
    
    public DanhMucControl() throws Exception {
    	listDanhMuc = new ArrayList<>();
    	danhMucService = new DanhMucService();
        listDanhMuc = danhMucService.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(DanhMuc dm) throws Exception{
        if ( danhMucService.them(dm) ) {
        	listDanhMuc.add(dm);
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(DanhMuc dm) throws Exception {
        if ( danhMucService.xoa(dm) ) {
            
            // duyệt từng phẩn tử
            for ( DanhMuc danhMuc : listDanhMuc ) {
                if (danhMuc.getMaDM() == dm.getMaDM()){
                	listDanhMuc.remove(danhMuc);
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
    public Boolean sua(DanhMuc dm) throws Exception {
        if ( danhMucService.sua(dm) ) {
            
            // duyệt từng phẩn tử
            for ( DanhMuc danhMucItem : listDanhMuc ) {
                if (danhMucItem.getMaDM() == dm.getMaDM()){
                	
                	danhMucItem.setTenDM(dm.getTenDM());
                	danhMucItem.setAnhDaiDien(dm.getAnhDaiDien());
                	danhMucItem.setThuTu(dm.getThuTu());
                	danhMucItem.setMaDMCha (dm.getMaDMCha());
                	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
   
    public ArrayList<DanhMuc> getListDanhMuc() {
        return listDanhMuc;
    }
    public String getListDanhMucJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(DanhMuc danhMucItem : listDanhMuc) {
        		jsonObject = new JSONObject();
        		jsonObject.put("MaDM", danhMucItem.getMaDM());
        		jsonObject.put("TenDM", danhMucItem.getTenDM());
        		jsonObject.put("AnhDaiDien", danhMucItem.getAnhDaiDien());
        		jsonObject.put("ThuTu", danhMucItem.getThuTu());
        		jsonObject.put("MaDMCha", danhMucItem.getMaDMCha());      	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public DanhMuc getDanhMucById(int id) {  
    	for ( DanhMuc danhMucItem : listDanhMuc ) {         
            if (danhMucItem.getMaDM() == id) {
                return danhMucItem;
            }
        }
        return null;
    }   
}
