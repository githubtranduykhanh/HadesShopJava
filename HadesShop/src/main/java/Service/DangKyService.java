package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.DangKy;

public class DangKyService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<DangKy> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_DangKy", condition, orderBy);
        ArrayList<DangKy> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	DangKy model = new DangKy();
        	model.setTenDangNhap(result.getString("TenDangNhap"));
        	model.setMatKhau(result.getString("MatKhau"));   
        	model.setEmailDK(result.getString("EmailDK"));
        	model.setDiaChiDK(result.getString("DiaChiDK")); 
        	model.setTenDayDu(result.getString("TenDayDu"));
        	model.setCauHoiBaoMat(result.getString("CauHoiBaoMat")); 
        	model.setNgaySinh(result.getTimestamp("NgaySinh"));
        	model.setGioiTinhDK(result.getString("GioiTinhDK")); 
        	model.setMaQuyen(result.getInt("MaQuyen"));
        	model.setAnhDaiDien(result.getString("AnhDaiDien"));
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<DangKy> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<DangKy> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(DangKy model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("TenDangNhap", model.getTenDangNhap());
        insertValues.put("MatKhau", model.getMatKhau());
        insertValues.put("EmailDK", model.getEmailDK());
        insertValues.put("DiaChiDK", model.getDiaChiDK());
        insertValues.put("TenDayDu", model.getTenDayDu());
        insertValues.put("CauHoiBaoMat", model.getCauHoiBaoMat());
        insertValues.put("NgaySinh", model.getNgaySinh());
        insertValues.put("GioiTinhDK", model.getGioiTinhDK());
        insertValues.put("MaQuyen", model.getMaQuyen());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
      
       
        
        Boolean check = connect.Insert("db_DangKy", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(DangKy model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " TenDangNhap = '"+model.getTenDangNhap()+"'";
        
        Boolean check = connect.Delete("db_DangKy", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(DangKy model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenDangNhap", model.getTenDangNhap());
        insertValues.put("MatKhau", model.getMatKhau());
        insertValues.put("EmailDK", model.getEmailDK());
        insertValues.put("DiaChiDK", model.getDiaChiDK());
        insertValues.put("TenDayDu", model.getTenDayDu());
        insertValues.put("CauHoiBaoMat", model.getCauHoiBaoMat());
        insertValues.put("NgaySinh", model.getNgaySinh());
        insertValues.put("GioiTinhDK", model.getGioiTinhDK());
        insertValues.put("MaQuyen", model.getMaQuyen());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
        
        
        String condition = " TenDangNhap = '"+model.getTenDangNhap()+"'";
        
        Boolean check = connect.Update("db_DangKy", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
