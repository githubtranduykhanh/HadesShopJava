package Service;


/**
 * Mã hdách hàng là hdóa chính
 */

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.HoaDon;


public class HoaDonService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<HoaDon> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_HoaDon", condition, orderBy);
        ArrayList<HoaDon> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	HoaDon model = new HoaDon();
        	model.setMaHD(result.getInt("MaHD"));
        	model.setNgayLap(result.getTimestamp("NgayLap"));   
        	model.setThanhTien(result.getDouble("ThanhTien"));
        	model.setMaNV(result.getInt("MaNV")); 
        	model.setTenNV(result.getString("TenNV"));
        	model.setMaKH(result.getInt("MaKH")); 
        	model.setTenKH(result.getString("TenKH"));      	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<HoaDon> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<HoaDon> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(HoaDon model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("MaHD", model.getMaHD());
        insertValues.put("NgayLap", model.getNgayLap());
        insertValues.put("ThanhTien", model.getThanhTien());
        insertValues.put("MaNV", model.getMaNV());
        insertValues.put("TenNV", model.getTenNV());
        insertValues.put("MaKH", model.getMaKH());
        insertValues.put("TenKH", model.getTenKH());
      
      
       
        
        Boolean check = connect.Insert("db_HoaDon", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(HoaDon model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaHD = '"+model.getMaHD()+"'";
        
        Boolean check = connect.Delete("db_HoaDon", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(HoaDon model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("MaHD", model.getMaHD());
        insertValues.put("NgayLap", model.getNgayLap());
        insertValues.put("ThanhTien", model.getThanhTien());
        insertValues.put("MaNV", model.getMaNV());
        insertValues.put("TenNV", model.getTenNV());
        insertValues.put("MaKH", model.getMaKH());
        insertValues.put("TenKH", model.getTenKH());
        
        
        String condition = " MaHD = '"+model.getMaHD()+"'";
        
        Boolean check = connect.Update("db_HoaDon", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
