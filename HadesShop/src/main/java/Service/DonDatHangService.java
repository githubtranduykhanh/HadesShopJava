package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.DonDatHang;

public class DonDatHangService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<DonDatHang> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_DonDatHang", condition, orderBy);
        ArrayList<DonDatHang> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	DonDatHang model = new DonDatHang();
        	model.setMaDonDatHang(result.getInt("MaDonDatHang"));
        	model.setThanhTienDH(result.getDouble("ThanhTienDH"));   
        	model.setTinhTrangDonHang(result.getString("TinhTrangDonHang"));
        	model.setMaKH(result.getInt("MaKH")); 
        	model.setTenKH(result.getString("TenKH"));
        	model.setSdtKH(result.getString("sdtKH")); 
        	model.setNgayTao(result.getTimestamp("NgayTao"));
        	model.setEmailKH(result.getString("EmailKH")); 
        	model.setDiaChiKH(result.getString("DiaChiKH"));
        	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<DonDatHang> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<DonDatHang> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(DonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        
        insertValues.put("NgayTao", model.getNgayTao());
        insertValues.put("ThanhTienDH", model.getThanhTienDH());
        insertValues.put("TinhTrangDonHang", model.getTinhTrangDonHang());
        insertValues.put("MaKH", model.getMaKH());
        insertValues.put("TenKH", model.getTenKH());
        insertValues.put("sdtKH", model.getSdtKH());
        insertValues.put("EmailKH", model.getEmailKH());
        insertValues.put("DiaChiKH", model.getDiaChiKH());
   
      
       
        
        Boolean check = connect.InsertUTF8DonDatHang("db_DonDatHang", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(DonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaDonDatHang = '"+model.getMaDonDatHang()+"'";
        
        Boolean check = connect.Delete("db_DonDatHang", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(DonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("NgayTao", model.getNgayTao());
        insertValues.put("ThanhTienDH", model.getThanhTienDH());
        insertValues.put("TinhTrangDonHang", model.getTinhTrangDonHang());
        insertValues.put("MaKH", model.getMaKH());
        insertValues.put("TenKH", model.getTenKH());
        insertValues.put("sdtKH", model.getSdtKH());
        insertValues.put("EmailKH", model.getEmailKH());
        insertValues.put("DiaChiKH", model.getDiaChiKH());
        
        
        String condition = " MaDonDatHang = '"+model.getMaDonDatHang()+"'";
        
        Boolean check = connect.UpdateUTF8DonDatHang("db_DonDatHang", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
