package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.DanhMucTin;

public class DanhMucTinService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<DanhMucTin> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_DanhMucTin", condition, orderBy);
        ArrayList<DanhMucTin> danhMucTins = new ArrayList<>();
        while ( result.next() ) {
        	DanhMucTin danhMucTin = new DanhMucTin();
        	danhMucTin.setMaDM(result.getInt("MaDM"));
        	danhMucTin.setTenDM(result.getString("TenDM"));
        	danhMucTin.setAnhDaiDien(result.getString("AnhDaiDien"));
        	danhMucTin.setThuTu(result.getInt("ThuTu"));
        	danhMucTin.setMaDMCha(result.getInt("MaDMCha"));       	
        	danhMucTins.add(danhMucTin);
        }
        connect.Close();
        return danhMucTins;
    }
    
    public ArrayList<DanhMucTin> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<DanhMucTin> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(DanhMucTin dm) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("TenDM", dm.getTenDM());
        insertValues.put("AnhDaiDien", dm.getAnhDaiDien());
        insertValues.put("ThuTu", dm.getThuTu());
        insertValues.put("MaDMCha", dm.getMaDMCha());
        
        Boolean check = connect.Insert("db_DanhMucTin", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(DanhMucTin dm) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaDM = '"+dm.getMaDM()+"'";
        
        Boolean check = connect.Delete("db_DanhMucTin", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(DanhMucTin dm) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenDM", dm.getTenDM());
        insertValues.put("AnhDaiDien", dm.getAnhDaiDien());
        insertValues.put("ThuTu", dm.getThuTu());
        insertValues.put("MaDMCha", dm.getMaDMCha());
        
        String condition = " MaDM = '"+dm.getMaDM()+"'";
        
        Boolean check = connect.Update("db_DanhMucTin", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
