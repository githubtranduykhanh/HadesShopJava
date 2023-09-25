package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.Mau;

public class MauService {
	MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<Mau> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_Mau", condition, orderBy);
        ArrayList<Mau> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	Mau model = new Mau();
        	model.setMauID(result.getInt("MauID"));
        	model.setTenMau(result.getString("TenMau"));      	     	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<Mau> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<Mau> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(Mau model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenMau", model.getTenMau());
        Boolean check = connect.Insert("db_Mau", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(Mau model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MauID = '"+model.getMauID()+"'";
        
        Boolean check = connect.Delete("db_Mau", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(Mau model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenMau", model.getTenMau());
        String condition = " MauID = '"+model.getMauID()+"'";
        
        Boolean check = connect.Update("db_Mau", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
