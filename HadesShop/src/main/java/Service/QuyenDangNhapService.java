package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.QuyenDangNhap;

public class QuyenDangNhapService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<QuyenDangNhap> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_QuyenDangNhap", condition, orderBy);
        ArrayList<QuyenDangNhap> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	QuyenDangNhap model = new QuyenDangNhap();
        	model.setMaQuyen(result.getInt("MaQuyen"));
        	model.setTenQuyen(result.getString("TenQuyen"));      	     	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<QuyenDangNhap> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<QuyenDangNhap> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(QuyenDangNhap model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("MaQuyen", model.getMaQuyen());
        insertValues.put("TenQuyen", model.getTenQuyen());
       
        
        Boolean check = connect.Insert("db_QuyenDangNhap", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(QuyenDangNhap model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaQuyen = '"+model.getMaQuyen()+"'";
        
        Boolean check = connect.Delete("db_QuyenDangNhap", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(QuyenDangNhap model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("MaQuyen", model.getMaQuyen());
        insertValues.put("TenQuyen", model.getTenQuyen());
        
        
        String condition = " MaQuyen = '"+model.getMaQuyen()+"'";
        
        Boolean check = connect.Update("db_QuyenDangNhap", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
