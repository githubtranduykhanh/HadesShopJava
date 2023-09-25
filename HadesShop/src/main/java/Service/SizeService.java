package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.Size;

public class SizeService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<Size> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_Size", condition, orderBy);
        ArrayList<Size> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	Size model = new Size();
        	model.setSizeID(result.getInt("SizeID"));
        	model.setTenSize(result.getString("TenSize"));      	     	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<Size> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<Size> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(Size model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("SizeID", model.getSizeID());
        insertValues.put("TenSize", model.getTenSize());
       
        
        Boolean check = connect.Insert("db_Size", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(Size model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " SizeID = '"+model.getSizeID()+"'";
        
        Boolean check = connect.Delete("db_Size", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(Size model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("SizeID", model.getSizeID());
        insertValues.put("TenSize", model.getTenSize());
        
        
        String condition = " SizeID = '"+model.getSizeID()+"'";
        
        Boolean check = connect.Update("db_Size", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
