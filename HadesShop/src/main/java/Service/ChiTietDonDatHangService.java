package Service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import DBConnects.MyConnectUnit;
import Models.ChiTietDonDatHang;

public class ChiTietDonDatHangService {
MyConnectUnit connect;
    
    /**
     * Lấy thông tin từ Database
     */
    public ArrayList<ChiTietDonDatHang> docDB(String condition, String orderBy) throws Exception {
        // kết nối CSDL
        connect = new MyConnectUnit();
        
        ResultSet result = this.connect.Select("db_ChiTietDonDatHang", condition, orderBy);
        ArrayList<ChiTietDonDatHang> arrayList = new ArrayList<>();
        while ( result.next() ) {
        	ChiTietDonDatHang model = new ChiTietDonDatHang();
        	model.setMaDonDatHang(result.getInt("MaDonDatHang"));
        	model.setMaSP(result.getInt("MaSP"));   
        	model.setSoLuongDat(result.getInt("SoLuongDat"));
        	model.setDonGiaDat(result.getDouble("DonGiaDat"));        	    	
        	arrayList.add(model);
        }
        connect.Close();
        return arrayList;
    }
    
    public ArrayList<ChiTietDonDatHang> docDB(String condition) throws Exception {
        return docDB(condition, null);
    }
    
    public ArrayList<ChiTietDonDatHang> docDB() throws Exception {
        return docDB(null);
    }
    
    /**
     * Tạo thêm 1 hdách hàng dựa theo đã có thông tin trước
     * @return true nếu thành công
     */
    public Boolean them(ChiTietDonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
       
        insertValues.put("MaSP", model.getMaSP());
        insertValues.put("MaDonDatHang", model.getMaDonDatHang());     
        insertValues.put("SoLuongDat", model.getSoLuongDat());
        insertValues.put("DonGiaDat", model.getDonGiaDat());
        
      
      
       
        
        Boolean check = connect.Insert("db_ChiTietDonDatHang", insertValues);
        
        connect.Close();
        return check;
    }
    
    /** 
     * @param hd chuyền vào dữ liệu hdách hàng để xóa
     * @return true nếu thành công
     */
    public Boolean xoa(ChiTietDonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        String condition = " MaDonDatHang = '"+model.getMaDonDatHang()+"'";
        
        Boolean check = connect.Delete("db_ChiTietDonDatHang", condition);
        
        connect.Close();
        return check;
    }
    
    /**
     * @param hd truyền vào dữ liệu hdách hàng mới
     * Sửa thông tin đăng nhập hoặc là cấp bậc của 1 hdách hàng
     * @return true nếu thành công
     */
    public Boolean sua(ChiTietDonDatHang model) throws Exception {
        connect = new MyConnectUnit();
        
        // tạo đối tượng truyền vào
        HashMap<String, Object> insertValues = new HashMap<>();
        insertValues.put("MaSP", model.getMaSP());
        insertValues.put("MaDonDatHang", model.getMaDonDatHang());     
        insertValues.put("SoLuongDat", model.getSoLuongDat());
        insertValues.put("DonGiaDat", model.getDonGiaDat());
        
        
        String condition = " MaDonDatHang = '"+model.getMaDonDatHang()+"'";
        
        Boolean check = connect.Update("db_ChiTietDonDatHang", insertValues, condition);
        
        connect.Close();
        return check;
    }
}
