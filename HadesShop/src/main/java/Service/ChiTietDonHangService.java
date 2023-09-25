package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.ChiTietDonHang;

public class ChiTietDonHangService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<ChiTietDonHang> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_ChiTietDonHang", condition, orderBy);
        ArrayList<ChiTietDonHang> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	ChiTietDonHang model = new ChiTietDonHang();
        	model.setMaHD(result.getInt("MaHD"));
        	model.setMaSP(result.getInt("MaSP"));   
        	model.setSoLuong(result.getInt("SoLuong"));
        	model.setDonGia(result.getDouble("DonGia"));        	    	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<ChiTietDonHang> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<ChiTietDonHang> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(ChiTietDonHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("MaHD", model.getMaHD());
        insertValues.put("MaSP", model.getMaSP());
        insertValues.put("SoLuong", model.getSoLuong());
        insertValues.put("DonGia", model.getDonGia());
        
      
      
       
        
        Boolean check = connect.Insert("db_ChiTietDonHang", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(ChiTietDonHang model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaHD = '"+model.getMaHD()+"'";
        
        Boolean check = connect.Delete("db_ChiTietDonHang", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(ChiTietDonHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("MaHD", model.getMaHD());
        insertValues.put("MaSP", model.getMaSP());
        insertValues.put("SoLuong", model.getSoLuong());
        insertValues.put("DonGia", model.getDonGia());
        
        
        String condition = " MaHD = '"+model.getMaHD()+"'";
        
        Boolean check = connect.Update("db_ChiTietDonHang", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
