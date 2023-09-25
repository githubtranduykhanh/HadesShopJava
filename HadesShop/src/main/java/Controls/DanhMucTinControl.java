package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.DanhMucTin;
import Service.DanhMucTinService;

@SuppressWarnings("unchecked")
public class DanhMucTinControl {
	private ArrayList<DanhMucTin> listDanhMuc;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private DanhMucTinService danhMucService;
    
    public DanhMucTinControl() throws Exception {
    	listDanhMuc = new ArrayList<>();
    	danhMucService = new DanhMucTinService();
        listDanhMuc = danhMucService.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(DanhMucTin dm) throws Exception{
        if ( danhMucService.them(dm) ) {
        	listDanhMuc = danhMucService.docDB();
        	return true;
        }
        return false;
    }
    
    /**
     * xóa 1 tài khoản khỏi danh sách và database
     * @return true nếu thành công
     */
    public Boolean xoa(DanhMucTin dm) throws Exception {
        if ( danhMucService.xoa(dm) ) {
            
            // duyệt từng phẩn tử
            for ( DanhMucTin danhMuc : listDanhMuc ) {
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
    public Boolean sua(DanhMucTin dm) throws Exception {
        if ( danhMucService.sua(dm) ) {
            
            // duyệt từng phẩn tử
            for ( DanhMucTin danhMucItem : listDanhMuc ) {
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

   
   
    public ArrayList<DanhMucTin> getListDanhMuc() {
        return listDanhMuc;
    }
    public String getListDanhMucTinJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(DanhMucTin danhMucItem : listDanhMuc) {
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
    public DanhMucTin getDanhMucTinById(int id) {  
    	for ( DanhMucTin danhMucItem : listDanhMuc ) {         
            if (danhMucItem.getMaDM() == id) {
                return danhMucItem;
            }
        }
        return null;
    }
}
