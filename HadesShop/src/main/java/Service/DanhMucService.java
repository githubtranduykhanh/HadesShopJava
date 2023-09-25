package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.DanhMuc;


public class DanhMucService {
	MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<DanhMuc> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_DanhMuc", condition, orderBy);
        ArrayList<DanhMuc> danhMucs = new ArrayList<>();
        while ( result.next() ) {
        	DanhMuc danhMuc = new DanhMuc();
        	danhMuc.setMaDM(result.getInt("MaDM"));
        	danhMuc.setTenDM(result.getString("TenDM"));
        	danhMuc.setAnhDaiDien(result.getString("AnhDaiDien"));
        	danhMuc.setThuTu(result.getInt("ThuTu"));
        	danhMuc.setMaDMCha(result.getInt("MaDMCha"));       	
            danhMucs.add(danhMuc);
        }
        connect.Close();
        return danhMucs;
    }
    
    public ArrayList<DanhMuc> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<DanhMuc> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(DanhMuc dm) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("TenDM", dm.getTenDM());
        insertValues.put("AnhDaiDien", dm.getAnhDaiDien());
        insertValues.put("ThuTu", dm.getThuTu());
        insertValues.put("MaDMCha", dm.getMaDMCha());
        
        Boolean check = connect.Insert("db_DanhMuc", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(DanhMuc dm) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaDM = '"+dm.getMaDM()+"'";
        
        Boolean check = connect.Delete("db_DanhMuc", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(DanhMuc dm) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenDM", dm.getTenDM());
        insertValues.put("AnhDaiDien", dm.getAnhDaiDien());
        insertValues.put("ThuTu", dm.getThuTu());
        insertValues.put("MaDMCha", dm.getMaDMCha());
        
        String condition = " MaDM = '"+dm.getMaDM()+"'";
        
        Boolean check = connect.Update("db_DanhMuc", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
