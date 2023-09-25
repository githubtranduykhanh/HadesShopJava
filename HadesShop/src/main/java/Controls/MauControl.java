package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.Mau;
import Service.MauService;

@SuppressWarnings("unchecked")
public class MauControl {
	private ArrayList<Mau> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private MauService service;
    
    public MauControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new MauService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(Mau model) throws Exception{
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
    public Boolean xoa(Mau model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( Mau item : arraylist ) {
                if (item.getMauID() == model.getMauID()){
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
    public Boolean sua(Mau model) throws Exception {
        if ( service.sua(model) ) {
            // duyệt từng phẩn tử
            for ( Mau item : arraylist ) {
                if (item.getMauID() == model.getMauID()){                	
                	item.setMauID(model.getMauID());
                	item.setTenMau(model.getTenMau());               	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<Mau> getListMau() {
        return arraylist;
    }
    public String getListMauJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(Mau item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("MauID", item.getMauID());
        		jsonObject.put("TenMau", item.getTenMau());       		     	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getMauByIdJSON(int id) {  
    	jsonObject = new JSONObject();
    	for ( Mau item : arraylist ) {         
            if (item.getMauID() == id) {
            	jsonObject.put("MauID", item.getMauID());
        		jsonObject.put("TenMau", item.getTenMau()); 
                return jsonObject.toJSONString();
            }
        }
        return null;
    }
    public Mau getMauById(int id) {  
    	for ( Mau item : arraylist ) {         
            if (item.getMauID() == id) {
                return item;
            }
        }
        return null;
    }  
}
