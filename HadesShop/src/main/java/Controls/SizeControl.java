package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.Size;
import Service.SizeService;

@SuppressWarnings("unchecked")
public class SizeControl {
	private ArrayList<Size> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private SizeService service;
    
    public SizeControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new SizeService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(Size model) throws Exception{
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
    public Boolean xoa(Size model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( Size item : arraylist ) {
                if (item.getSizeID() == model.getSizeID()){
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
    public Boolean sua(Size model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( Size item : arraylist ) {
                if (item.getSizeID() == model.getSizeID()){                	
                	item.setSizeID(model.getSizeID());
                	item.setTenSize(model.getTenSize());               	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<Size> getListSize() {
        return arraylist;
    }
    public String getListSizeJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(Size item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("SizeID", item.getSizeID());
        		jsonObject.put("TenSize", item.getTenSize());       		     	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getSizeByIdJSON(int id) { 
    	jsonObject = new JSONObject();       		
    	for ( Size item : arraylist ) {         
            if (item.getSizeID() == id) {
            	jsonObject.put("SizeID", item.getSizeID());
        		jsonObject.put("TenSize", item.getTenSize());
                return jsonObject.toJSONString();
            }
        }
        return null;
    }  
    public Size getSizeById(int id) {  
    	for ( Size item : arraylist ) {         
            if (item.getSizeID() == id) {
                return item;
            }
        }
        return null;
    }  
}
