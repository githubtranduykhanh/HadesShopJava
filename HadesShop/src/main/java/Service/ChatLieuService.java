package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.ChatLieu;

public class ChatLieuService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<ChatLieu> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_ChatLieu", condition, orderBy);
        ArrayList<ChatLieu> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	ChatLieu model = new ChatLieu();
        	model.setChatLieuID(result.getInt("ChatLieuID"));
        	model.setTenChatLieu(result.getString("TenChatLieu"));      	     	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<ChatLieu> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<ChatLieu> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(ChatLieu model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("ChatLieuID", model.getChatLieuID());
        insertValues.put("TenChatLieu", model.getTenChatLieu());
       
        
        Boolean check = connect.Insert("db_ChatLieu", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(ChatLieu model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " ChatLieuID = '"+model.getChatLieuID()+"'";
        
        Boolean check = connect.Delete("db_ChatLieu", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(ChatLieu model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("ChatLieuID", model.getChatLieuID());
        insertValues.put("TenChatLieu", model.getTenChatLieu());
        
        
        String condition = " ChatLieuID = '"+model.getChatLieuID()+"'";
        
        Boolean check = connect.Update("db_ChatLieu", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
