package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.KhachHang;

public class KhachHangService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<KhachHang> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_KhachHang", condition, orderBy);
        ArrayList<KhachHang> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	KhachHang model = new KhachHang();
        	model.setMaKH(result.getInt("MaKH"));
        	model.setTenKh(result.getString("TenKh"));   
        	model.setDiaChiKH(result.getString("DiaChiKH"));
        	model.setSdtKH(result.getString("sdtKH")); 
        	model.setEmailKH(result.getString("EmailKH"));
        	model.setMatKhau(result.getString("MatKhau")); 
        	model.setAnhDaiDien(result.getString("AnhDaiDien"));      	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<KhachHang> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<KhachHang> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(KhachHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("TenKh", model.getTenKh());
        insertValues.put("DiaChiKH", model.getDiaChiKH());
        insertValues.put("sdtKH", model.getSdtKH());
        insertValues.put("EmailKH", model.getEmailKH());
        insertValues.put("MatKhau", model.getMatKhau());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
      
      
       
        
        Boolean check = connect.InsertUTF8KhachHang("db_KhachHang", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(KhachHang model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaKH = '"+model.getMaKH()+"'";
        
        Boolean check = connect.Delete("db_KhachHang", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(KhachHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("TenKh", model.getTenKh());
        insertValues.put("DiaChiKH", model.getDiaChiKH());
        insertValues.put("sdtKH", model.getSdtKH());
        insertValues.put("EmailKH", model.getEmailKH());
        insertValues.put("MatKhau", model.getMatKhau());
        insertValues.put("AnhDaiDien", model.getAnhDaiDien());
        
        
        String condition = " MaKH = '"+model.getMaKH()+"'";
        
        Boolean check = connect.UpdateUTF8KhachHang("db_KhachHang", insertValues, condition);
        
        connect.Close();
        return check;
    }
}	
