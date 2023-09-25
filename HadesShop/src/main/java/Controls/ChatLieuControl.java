package Controls;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import Models.ChatLieu;
import Service.ChatLieuService;

@SuppressWarnings("unchecked")
public class ChatLieuControl {
	private ArrayList<ChatLieu> arraylist;
	private JSONArray jsonArray;
	private JSONObject jsonObject;
    /**
     * Xử lý các lệnh trong SQL
     */
    private ChatLieuService service;
    
    public ChatLieuControl() throws Exception {
    	arraylist = new ArrayList<>();
    	service = new ChatLieuService();
    	arraylist = service.docDB();
    }
    
    /**
     * thêm 1 tài khoản vào danh sách và database
     * @return true nếu thành công
     */
    public Boolean them(ChatLieu model) throws Exception{
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
    public Boolean xoa(ChatLieu model) throws Exception {
        if ( service.xoa(model) ) {
            
            // duyệt từng phẩn tử
            for ( ChatLieu item : arraylist ) {
                if (item.getChatLieuID() == model.getChatLieuID()){
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
    public Boolean sua(ChatLieu model) throws Exception {
        if ( service.sua(model) ) {
            
            // duyệt từng phẩn tử
            for ( ChatLieu item : arraylist ) {
                if (item.getChatLieuID() == model.getChatLieuID()){                	
                	item.setChatLieuID(model.getChatLieuID());
                	item.setTenChatLieu(model.getTenChatLieu());               	                 	
                	break;
                }
            }
            return true;
        }
        
        return false;
    }

   
    public ArrayList<ChatLieu> getListChatLieu() {
        return arraylist;
    }
    public String getListChatLieuJSON() {
    	try {
    		jsonArray = new JSONArray();
        	for(ChatLieu item : arraylist) {
        		jsonObject = new JSONObject();       		
        		jsonObject.put("ChatLieuID", item.getChatLieuID());
        		jsonObject.put("TenChatLieu", item.getTenChatLieu());       		     	
        		jsonArray.add(jsonObject);   		
        	}
        	System.out.println(jsonArray.toString());
    	}catch (Exception e) {
    	     e.printStackTrace();
    	}   	
        return jsonArray.toString();
    }
    public String getChatLieuByIdJSON(int id) {  
    	jsonObject = new JSONObject();
    	for ( ChatLieu item : arraylist ) {         
            if (item.getChatLieuID() == id) {
            	jsonObject.put("ChatLieuID", item.getChatLieuID());
        		jsonObject.put("TenChatLieu", item.getTenChatLieu());     
                return jsonObject.toJSONString();
            }
        }
        return null;
    } 
    public ChatLieu getChatLieuById(int id) {  
    	for ( ChatLieu item : arraylist ) {         
            if (item.getChatLieuID() == id) {
                return item;
            }
        }
        return null;
    } 
}
